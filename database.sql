PGDMP     +                	    |           world    15.4    15.4 '    "           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            #           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            $           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            %           1262    16398    world    DATABASE     �   CREATE DATABASE world WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE world;
                postgres    false            �            1259    16400    capitals    TABLE     �   CREATE TABLE public.capitals (
    id integer NOT NULL,
    country character varying(45),
    capital character varying(45),
    image_url text
);
    DROP TABLE public.capitals;
       public         heap    postgres    false            �            1259    16399    capitals_id_seq    SEQUENCE     �   CREATE SEQUENCE public.capitals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.capitals_id_seq;
       public          postgres    false    215            &           0    0    capitals_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.capitals_id_seq OWNED BY public.capitals.id;
          public          postgres    false    214            �            1259    16416 	   countries    TABLE     �   CREATE TABLE public.countries (
    id integer NOT NULL,
    country_code character(2),
    country_name character varying(100)
);
    DROP TABLE public.countries;
       public         heap    postgres    false            �            1259    16459 
   countries1    TABLE     �   CREATE TABLE public.countries1 (
    id integer NOT NULL,
    country_code character varying(10) NOT NULL,
    country_name character varying(100) NOT NULL
);
    DROP TABLE public.countries1;
       public         heap    postgres    false            �            1259    16463    countries1_id_seq    SEQUENCE     �   CREATE SEQUENCE public.countries1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.countries1_id_seq;
       public          postgres    false    222            '           0    0    countries1_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.countries1_id_seq OWNED BY public.countries1.id;
          public          postgres    false    223            �            1259    16415    countries_id_seq    SEQUENCE     �   CREATE SEQUENCE public.countries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.countries_id_seq;
       public          postgres    false    219            (           0    0    countries_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;
          public          postgres    false    218            �            1259    16407    flags    TABLE     f   CREATE TABLE public.flags (
    id integer NOT NULL,
    name character varying(45),
    flag text
);
    DROP TABLE public.flags;
       public         heap    postgres    false            �            1259    16406    flags_id_seq    SEQUENCE     �   CREATE SEQUENCE public.flags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.flags_id_seq;
       public          postgres    false    217            )           0    0    flags_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.flags_id_seq OWNED BY public.flags.id;
          public          postgres    false    216            �            1259    16451    inventions1    TABLE     �   CREATE TABLE public.inventions1 (
    id integer NOT NULL,
    invention character varying(255) NOT NULL,
    inventor character varying(255) NOT NULL,
    image character varying(255) NOT NULL
);
    DROP TABLE public.inventions1;
       public         heap    postgres    false            �            1259    16450    inventions1_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventions1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.inventions1_id_seq;
       public          postgres    false    221            *           0    0    inventions1_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.inventions1_id_seq OWNED BY public.inventions1.id;
          public          postgres    false    220            y           2604    16403    capitals id    DEFAULT     j   ALTER TABLE ONLY public.capitals ALTER COLUMN id SET DEFAULT nextval('public.capitals_id_seq'::regclass);
 :   ALTER TABLE public.capitals ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            {           2604    16419    countries id    DEFAULT     l   ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);
 ;   ALTER TABLE public.countries ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            }           2604    16464    countries1 id    DEFAULT     n   ALTER TABLE ONLY public.countries1 ALTER COLUMN id SET DEFAULT nextval('public.countries1_id_seq'::regclass);
 <   ALTER TABLE public.countries1 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            z           2604    16410    flags id    DEFAULT     d   ALTER TABLE ONLY public.flags ALTER COLUMN id SET DEFAULT nextval('public.flags_id_seq'::regclass);
 7   ALTER TABLE public.flags ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            |           2604    16454    inventions1 id    DEFAULT     p   ALTER TABLE ONLY public.inventions1 ALTER COLUMN id SET DEFAULT nextval('public.inventions1_id_seq'::regclass);
 =   ALTER TABLE public.inventions1 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221                      0    16400    capitals 
   TABLE DATA           C   COPY public.capitals (id, country, capital, image_url) FROM stdin;
    public          postgres    false    215   G(                 0    16416 	   countries 
   TABLE DATA           C   COPY public.countries (id, country_code, country_name) FROM stdin;
    public          postgres    false    219   *6                 0    16459 
   countries1 
   TABLE DATA           D   COPY public.countries1 (id, country_code, country_name) FROM stdin;
    public          postgres    false    222   �@                 0    16407    flags 
   TABLE DATA           /   COPY public.flags (id, name, flag) FROM stdin;
    public          postgres    false    217   �@                 0    16451    inventions1 
   TABLE DATA           E   COPY public.inventions1 (id, invention, inventor, image) FROM stdin;
    public          postgres    false    221   FL       +           0    0    capitals_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.capitals_id_seq', 1, false);
          public          postgres    false    214            ,           0    0    countries1_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.countries1_id_seq', 3, true);
          public          postgres    false    223            -           0    0    countries_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.countries_id_seq', 1, false);
          public          postgres    false    218            .           0    0    flags_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.flags_id_seq', 1, false);
          public          postgres    false    216            /           0    0    inventions1_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.inventions1_id_seq', 10, true);
          public          postgres    false    220                       2606    16405    capitals capitals_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.capitals
    ADD CONSTRAINT capitals_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.capitals DROP CONSTRAINT capitals_pkey;
       public            postgres    false    215            �           2606    16466    countries1 countries1_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.countries1
    ADD CONSTRAINT countries1_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.countries1 DROP CONSTRAINT countries1_pkey;
       public            postgres    false    222            �           2606    16421    countries countries_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public            postgres    false    219            �           2606    16414    flags flags_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.flags
    ADD CONSTRAINT flags_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.flags DROP CONSTRAINT flags_pkey;
       public            postgres    false    217            �           2606    16458    inventions1 inventions1_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.inventions1
    ADD CONSTRAINT inventions1_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.inventions1 DROP CONSTRAINT inventions1_pkey;
       public            postgres    false    221               �  x�]Y�r۸]#_�]�qJ��K��#�ek,٩I�"Ih@B�ofu�~���=����V�L�"Яӧ�����rY麑��ˍ+ğ�b1-d�F_jz�b!�V�,+R����'R����$Y�LY�����$�i	Y"�h%K#�Rf&�?��i�k��2zUE�_8�43���p/��iZ��U�*�B���@�H�4�
�I��LgNFx{t%���-��s����G�nWLm��F\9U�:�j�X	�R��(���ޅ��m�x��[��^�]�XY`���6��"ŀ�jU���0���F�-�z%w�K���[�+���%/�@Xe�LU��Y.w^w�$SS�+��L5��0�+UH�4]�;/�I�iWb��kUx���Qѣ4{�0��k�C,�m��9�h��mIN���.ë��*w�;�\���[�ĕ)�F�\b;/0��{�V�j��E6��e�J©s8PU����S# ~���G���j%�ܪp0x�4�%��k*�a.2��!1z���G]У�/����F�y��#a���k�Q7ƶb��yt�,��/+�)>���
�]�L��{�+2I�_��Wp��;���ڈ''3�e�;�7$��	�ܺr�8�z#$U�18�X�)���r��FY�p�!~��O(%���48�/�d{ԍ�X�D���q[��S��)����!����F� 4��W�ڻM���N�U=q��?ζ8P@�>��P�,�}@B�8���ʼl���>��h��n)(������&A�~�+�n�]�O����}8�����+������1%��A���>�g��g�Q 1~�,7fw�bz@]y��� }�g�XT��70�4*�}�r0H������n.�Ҡ��Y�Tŵ5()��̪���1���5�s#���4���<A� .i�T���`�Q%�{����	�b�J�X욜D�G� U�s@G.k~��R�,�#�$ �xG̶zc\��?��RW�g�E���g�O	D�a"�]�'n�h�%T]��싛ġR��ݡ �l n�v� }5;s87��8��+�w�R���_N��5r���JI@m��걸A�[�5���'��Q�C�ѕ�|�7M�͞�]�j������V�_��
�Z�(��u֭����ڞ�EI�����}�+����n]��SFq�.����2�GC�T���<��6����ht�-M�V�Re	@P��'�
�̕}G?��H��R��/��2l7�[��A�<�͸1U^�>M�eV1�2��37�l��ǐZ PK.���ɀi�p$�}q�]d�N��'�ĝU
~��ܕ?�x�e�G�|C�H�a�� �S��X�!�Taܞ��&yI�=R���L6\���U"}�?E׺aFK\X��7�i��R`� �e#�_	�9Qyrg�� ���u��	R��������'��˥Ք�"m�=�?�"�a��=G�;NF��T)���2��L{�xL�,�ӟ��������`"�]���8�&����:�K�| �U��_w��
�lţz�f��5�cNЯ <�a*��/����m`c�>��B��<T�3����Ȅ�C�R�X�g�,�/�,Z U�D�3Ʈ�$�fu`:��r"Ik�k������J�4�Np_Vu�WcS,��e8-(�\�.�d{J�2�ʹ�Zx��l�~ ��k�7�i`�]<Fc���Xْ�>�b$���T�W�[��G�+2)�) ��D'$f��0��|���gD�E]�@��	4m�8����6Mn��5���������;�$��k��`��d E�jP��B�^eꎬB���O���@Y1�P�r6���W�q�D�S������:n��P�Շ���^�k��~co����d�;��W�$�T�HE�E�>/,�.�{@"���Y���`{ � u��~/��~�[$��4t�hC�(��F�����d�E*���o	 Ruz�_0�,��|4N��4�~'(ɿ�уq!<}rJ��
O0���D�R�P�p�k�bO�TE���%^��ĚS�)�N���	�HZh ��oP�H�><�pH�0�%/��\c�{F�BިnX�43��?��^W�ֈeі��X5��/��h����9R�".��1��+- �`(�6Z�:Z�7V�����7]��	Ej�w:P=�<�N����@�79� e�A�u��.A�@�%�h��5�*5!j�
3���+�Q�"b��p
|LPߓ~��\�:;P`H�_0tp5/#"�q۰�i8bZ`na	�2��)Nd�WhĔu��}Z���*r�(�`�jg�[NM0;�%�A�8�;��:�ݡ��M��.86`{O�����8��-��2�%%"�M�I�T[�B��X��A�E��������J����1@��<���i��@���*D'tu_P�8Uo¢���EpU������:���}KLOz�Ǜ��+]�@,ufOSh�D�2�����H�qh�ؤޜ��k�U@ß�z�0��A�~�D�f&��힕��о�]b6`z�&�!��%9�?0 0�g=�#ԉ�Ӏ�=����9��3��s'��X�[��ڹn��_�<�u��ך]��������	�:���[jZ�d�ʾ8[�^=�_�L�I{���H�P	�3N�[�$e5��aCF�� �#/`Ȏ>ֽ��цa�Wv_�M����><��2?��$c{�Vy���,�U�a��hj����V����+�S�ǌh�Ke�����4�nTmQ>�Ή��X���)����3K�$��/�GE�O�Kc`��ZH8B�/3ל��uPoB���)WZȎ�E�,��nƺ^�/�� ���b��+�~�qOpd��C�>M3��Y �~$
��]�lm����dsg[��]���0�Wʄ��I�rD��Mx��;���e��у�v2�j��()�|�jk� ��t�~l�! 
,� V�:�bC� ��W�B�y �ƴ�iU�O�����dAc.���u��R,[5&����]o�9r_��.��j�m3��N���p�Zj�3�c�4G����g̧ڄ]�PUG�23���Tv�K>$]J��U��iO4����Mf`/F�b�
�gI	2���}�h��.8l���x<0���H�����b�$��O�����g�=p]�us����Nb�]R2�]K��9���GUT�ۺx�c'n]%�;�]�%c���^r#���_vt�0#�˺�ҍJ=DD7�F�����Y.y:����*�?ā2'����A�j�o��:�(1(�/z pel�����u(�A�_���S��N�3(��q�B��%�6{��UV��G�U�lC��k(��|��ӽ)�Y��_����x0�$��X�KPg�NM��*Þg~Հ�sME������L�C��+_Vt�j��є�����]@qܺ��D����KÙ�Mw�D�V�{d�Mq9�څM�UR��H9��}����?���u�z� t��pG����e�,�         p
  x�UX˖������Z����CTDA
��t�I�Q�v �m�Q�����>`>zR�>�����ș���x�*+�69�����`.J��4:�,!�a�0�4��葓�s��^�f"΅0��L�������8�0��,��VЈ�@���
����X�~,��>`�"'&G%s`� �%�cA�G�z��.9kr��"�5藶�4��oR��S�%)%�0��,�ߌ����"kH���$΢4��猴Pp�=��@�1Y�ۢ�X_q(Jöi�Dc�	]uh�2:��l�]o�7i�=? �|i��)�Ou��W4.2��m�� ����r.��</��=b�*_`�m �Y�ht�^Lc-�Tftl�x �R���(}T�g�;�X},.�BXW{�S�!.�������\*s�6�"g�kps����f��j�3QFf-XT�f�3$Nq��?�I�P�ȍ�=M�\ �M6 in�>H�k����,>��vh2�	��7��mV��R�2�7�]J�49�����d�O��>MB������4/����f���miH��&�Č9a�#
V��(���A��q�F9!u�cЃ��y�K�??~�мg�d�լ8︬:��Ź�H�^�&�����|��'Q�oFF��ϟ���M������?��Bii�`4ׅ��nر�	�K��N�>����M�O�.�[4�i*���Fߦ�M�]QW��whд8����GgX}�/~��ȝ���Q������=^/��Gn���9��vuH�r��RM!�^�r��G���"5���\�ܲ*�,rSr��*.m��4���&f����f:4[a�.��]�=�L�RƠG�>�&p�>�b�i��1�7�9�ո�C�>dQ�]sY�#J?�	v�����,��=yyb�lZ��n�?��sɓjnf���Wc�%oNމy�#oA��!��G�a���<-%TB�eZ;���qSP�yy�̊�ne�,8#��g%ς;5��)�ƨC^H�������6V��1�ZO�]Y�Q��)�:�1B"4�B�6�E.�O�i�����Hi�mDդ�DU�TP�1�<�=Ԛ;��=��4�st�+�E��{�m�#
�^MX��3y�7�K���m�]������a�wi1%���=ZĴ@|o�=��G��7�i�7���-\|��0�E@8%���x�G�XB����o��HiQ���z �4��{� /|\��҃�l����B��S
��P��>�[�śx>5�n��|�|�_y�wA��j�ȏ�/P]�]X���<{O~�.lR�����ׯ)��G�U�o�π�-A��4��rX1�Y �嘖����L ˢ:�ZƴT�f��@{�'��0hn� @{�d^V�i��)�թ�,`�rM��O	R������<p���度��q�%d�܂GH2�
��҂�]�4 ����
����>7�
-X�2=��]�\rO�@�ug�G�[���1ب?j� � ��F�hm��D�|�KO|�*>�@����!�,� rѠ!#`�]P�eʣ�P3i$%Z�@HA`��.�|�+��qojTY�)���=�

Q�f��R��zFʋ@����% w��&'�*2y �2�-�*�`�՜����#
��p+E[^ �pA!�E��X�`D�)�ZЌ�Pv�v���!��;�B
wFԔ 7�g�/!�+^�A0�*�ՙ3����v���Y�#p��h�����,9���,0X�`1G��y@��l��Z���	��L>եȥH���Yќ"4�r�v(
�B�T�J�;�(���G�VL�zU�D�X��~8�C0�X��xEqqn��)ư��ߺh�,AW�#�?�@W�%�j�W�a"�N����3�s%�vl&y����M櫪*^勂���䶸��������j̻�^ ў@sQp;)����Nݬ�vD��[7�1-6;Zfl]2|L�}�X�Äols!��@��I}P��E��`��pY�s��1n�S�Y�Q�ߔ��I��ZL�%VP�K	��Ӑ�삞�������fDɢ�����%cJxj,>�`�� >7o ���ܾo31d���&���������,?�*���Z���LR3��`E�K�(B���V�R���#�gJ�[aK b��-��<+o��C���b
�1�R��/�N옸 �p)�q��zU�[�? B�(�r�6��l�w����!�H�P�L�_�6�����~�[-۠�tI�&Y�G��db�`�9�'�+x?���Y�k�x�bo���FKf{
��.)U��3��� �ԣ�8��P���Yr[�A��
9 �SJ�bu�O�b'�c�?����Mc@��A�ѦA��I��M'����	Ƒ����7�`��ݵG�c�lp�ڡ�3?��>H�q��&$�Y���`~���is<x#�v�ɻ�cL3oh�z������B���ʮ8�E���h��S������o;�O��fM�cʅ���KT������ݴ��#R��MH��5�o�����H�ҡ�=��U�Y]�_h���sz� k���	m�=��$Ϝݠ�m@��M`�ʷ��U�ؽJ��5��� )Y            x�3��ttw�2�tw��1z\\\ /��         `  x�eX�V9}����&Yk:�U�?!@���NzMּȶb+�KnU�����yk���%t�0?4�0[RIe�`��J���-�d��h��f,!��Ͽ���	��B̒a���?�3�I�0�1�9�� ����~~�:Y� �$貉��h�,$C����h�H��J[�E\bg�,cj�aV�~�aE�b�� ��L�󡷟�0$j�1$��-រ�9/�h�T���#�X�f����-Zb�4�W�\���\����-��Ɗ	������Q̆<;��F��Ά2u��B��c�r���Q����';�QUcb�;�'�j��r�sՁ�I�΁�9j��q^���5ɢ�Ů�þ�e|+&�{�I,���<t�tYߏ�F#x-Spkl�\���-��C��H�Y��J�VA��wyV$��|�U�ؾ�tK��A�L��`-
�ٻ��W����gf�U�����5���<1UzyJ�p2W;�h����Nh��9�q��6������pab[mi�+)����j`�,���ZД�r���l/���D��%$1R1X�d�j�O�~,��Z���13�ݛ��� ��/�R�k$�{����꟰t��CS�5x)2^�s$X2z9�5=��ഌ�/��_iNˉT��pE��Z��ݨSZ�WR�<����D��E������x��ok����_5�$K��n�E�.)��4�~���Ϣ�MGz��b�=`~K���gӢ��u8���0�6��|"
k�=���l̃'��z��	S;�O^�F���,�2τ�i�ʉH
ߏ{�ȃOcdoT�2Hz�����Y��*;6k���h6�rJ����]7��$d�I���I �Vr�p��SS�YF�)��m��f�h�Ǧ;5+d99-�{���<?cN+�F%�s�Wڬ�7�xn8�������:y�X2���� � ���>��x�Mgْ�,���5����P��*�੣��d��m���RoU���zc��+�
�
�j$��i+�P�3V`U�2���ڪ��G#�Y��3ڪ����/qK[yNNMB��u���$f�EV�#<���OpC[mO�@�d|�b��=mÕ��|f�B<�|�F��6{�;״]-�_E���Yi��9��v��2a+�]�AV9S.u̺��kQ�t�b�n7ɪL��ub-��u���j���+g���6Y��3��ܯT�ڀ;:��r0$��q�5�HCҧЙ!9�Tɚ�'�	PX�i�7�h1S�d�c���*�c�]k����������[6aE�87���6��]��D5�bz�Ujtn��Jz+հ�3i���������I�<��cO^#�B�>�1�0)�`X���5-�O�k6�z��`�qPYPI�35���/��[�l0{�\�Z
!�6XVH�KӢBh�Aj�N� #����ҁT҆�;�zic �p�����3��~�3�0e����KK=4�F�;������(��|.��,��:����[�W�g(��kO8�@�hlV�ӕ�%TСص��ʲa��L����f� lz��C�
��z�Hk�&L*�8���+�zª�GAJ��r�p�-$N��h���+Kn�R�"�Ӏ��vr&�����n

����	>��*K�����#������ m:h ����ݢ�
�(��GʏF#a5������H��̠��5ӑ����q��$�}Mʰb�:�l"
�t]�P]� ��ɧ,v��e��#���Je��K,�Cw�^[��X��#g��\�k�M4�p_r0�*dS�� pb�r^d'4Ȧ��^�PBvlJ�I�;s�Q�NP�um��h��F��.A�[������P,ƨ�؎���2S4��{l��CMAż��������v����X�4�g΍-1�@<թ=���b�O���ș-lj��B	5�Ŧ��&��<�n,m�3[��CQ��2[\�]�sh�-�u1�b��Pw2["�����|c���eCn@�l��|dS�ƖT�N�LjY-�i��V�o�#�m�'¶�[�A��m9qE~ki�l��ӴĐ�-۸�=�!\�L�Wy���~g݃x��u�e���o�]�pb���e�E�C�XÖ@иU�$c�c�L�ı�>�A�Ջ@�V9������_p%G&�|bw`Ʌ�V���4��ߗ.G��F������P�ټN�c ۃ�2���z��@X1vg�����C,(V��;*ȣ��e6�w�0(�.W�2*zup�g8[wכּ�B]�68z��hWAn}l�
v�)����+@��e^��<w�}GL�Mz����Р���δ����o����W`=Ȼ���+@��xq!֖���*�Z�IlP6
ӓ�t�o���2��|Aiu���q�/%����TԎ�����h�����n���ZP[�]����y�֤Č���s�/{��(�;��#���r��10�'�}{Thá����;S%y? 5H��=��{S��Y�}e��/���컲�/v�&�1���/:�E������
�A�������n��^��{K!t[�_a�j�A1d����r�{��UZ��`�ڱ"����1��7��,Mc��g	Z��7eA��r��o�;�6y?r���zm�~G?�q"'!��'"�CS���D@cp�����"7b%7�����+l��}�`���{bB�K�
��Y<�<�~<Xo�߫ܝF6!�	���y�f�,��/w��``f^"�D6�+/Vqq���tC��m��i�9�B~<K���t����u�(�����B����]?@�;��W�Wa��&���Ѵ�"�W��Zgt���?N�b�%��'��~;n���=r��LBH~�>��q�>�����EG�y         -  x�U�OK1Gϳ�"G�T���-���E(���f$�,�l���mZS<�=����6�ftl�x���8J�+��S���� ̾����D�+����7��Ԭ-z� �X�������J1«X��Y��BC���f2���ر�j���b�P[	\�|���1����/9�.aMA�R�+Ι��c޶����w�N�5Ľh��v�,=A��a����T�v<U\˞�r$�'"k��U9����R7k��DV��Р��41�CO�cB�Un�����- ��p��C�/T�%��' 󟳪�~��     