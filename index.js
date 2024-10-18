import express from "express";
import bodyParser from "body-parser";
import pg from "pg";


const connectionString = 'postgresql://quiz_kvpf_user:2beTuPJH93zKc9K4JJATqPuy0cKGywNP@dpg-cs8pthlsvqrc739l62vg-a.oregon-postgres.render.com/quiz_kvpf';


const db = new pg.Client({
  user: "postgres",
  host: "localhost",
  database: "world",
  password: "EmbeddedSystems",
  port: 5432,

  connectionString: connectionString,
});

db.connect(err => {
  if (err) {
    console.error("Database connection error:", err.stack);
  } else {
    console.log("Connected to the database");
  }
});

const app = express();
const port = 3000;

db.connect();

let quiz = [];
let currentQuestionIndex = 0;
let totalCorrect = 0;
let responses = [];

// Middleware
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static("public"));

// Fetch all questions from the database
async function loadQuestions() {
  const res = await db.query("SELECT * FROM inventions1 ORDER BY id");
  quiz = res.rows;
}

loadQuestions().catch(err => console.error("Error loading questions:", err));

// GET home page
app.get("/", (req, res) => {
  totalCorrect = 0;
  currentQuestionIndex = 0;
  responses = []; // Clear previous responses
  res.redirect("/question");
});

// GET the current question or results
app.get("/question", (req, res) => {
  if (currentQuestionIndex < quiz.length) {
    const currentQuestion = quiz[currentQuestionIndex];
    res.render("index.ejs", {
      question: currentQuestion,
      totalScore: totalCorrect,
      responses: responses,
      gameOver: false
    });
  } else {
    res.render("index.ejs", {
      responses: responses,
      totalScore: totalCorrect,
      gameOver: true
    });
  }
});

// POST a new answer
app.post("/submit", async (req, res) => {
  let answer = req.body.answer.trim();
  let isCorrect = false;

  // Get the current question
  const currentQuestion = quiz[currentQuestionIndex];

  // Check if the user's answer matches the correct answer
  if (currentQuestion.inventor.toLowerCase() === answer.toLowerCase()) {
    totalCorrect++;
    isCorrect = true;
  }

  // Record the response
  responses.push({
    invention: currentQuestion.invention,
    userAnswer: answer,
    correctAnswer: currentQuestion.inventor,
    correct: isCorrect
  });

  currentQuestionIndex++;
  res.redirect("/question");
});

app.listen(port, () => {
  console.log(`Server is running at http://localhost:${port}`);
});
