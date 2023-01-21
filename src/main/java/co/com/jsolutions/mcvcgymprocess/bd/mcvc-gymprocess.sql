PGDMP                          {            gimnasio    15.1    15.1 d    v           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            w           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            x           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            y           1262    16398    gimnasio    DATABASE     ~   CREATE DATABASE gimnasio WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE gimnasio;
                postgres    false            �            1259    16434    auth_perfiles    TABLE     �  CREATE TABLE public.auth_perfiles (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    menu_subitems text NOT NULL,
    descripcion character varying(255),
    inactivo integer,
    create_at timestamp without time zone,
    usuario_registro integer,
    update_at timestamp without time zone,
    usuario_actualizacion integer,
    deleted_at timestamp without time zone,
    usuario_eliminacion integer
);
 !   DROP TABLE public.auth_perfiles;
       public         heap    postgres    false            �            1259    16433    auth_perfiles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_perfiles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.auth_perfiles_id_seq;
       public          postgres    false    217            z           0    0    auth_perfiles_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.auth_perfiles_id_seq OWNED BY public.auth_perfiles.id;
          public          postgres    false    216            �            1259    16404    auth_tipo_id    TABLE     �  CREATE TABLE public.auth_tipo_id (
    id integer NOT NULL,
    codigo character varying(50) NOT NULL,
    nombre character varying(100) NOT NULL,
    acceso json,
    inactivo integer,
    create_at timestamp without time zone,
    usuario_registro integer,
    update_at timestamp without time zone,
    usuario_actualizacion integer,
    deleted_at timestamp without time zone,
    usuario_eliminacion integer
);
     DROP TABLE public.auth_tipo_id;
       public         heap    postgres    false            �            1259    16403    auth_tipo_id_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_tipo_id_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.auth_tipo_id_id_seq;
       public          postgres    false    215            {           0    0    auth_tipo_id_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.auth_tipo_id_id_seq OWNED BY public.auth_tipo_id.id;
          public          postgres    false    214            �            1259    16507    auth_usuarios    TABLE     �  CREATE TABLE public.auth_usuarios (
    id integer NOT NULL,
    tipo_id integer NOT NULL,
    identificacion character varying(50) NOT NULL,
    nombre1 character varying(100) NOT NULL,
    nombre2 character varying(100),
    apellido1 character varying(100) NOT NULL,
    apellido2 character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    telefono character varying(100),
    ciudad character varying(100),
    pais character varying(100),
    region character varying(100),
    direccion character varying(100),
    id_perfil integer NOT NULL,
    usuario character varying(100),
    password character varying(100),
    acceso json,
    inactivo integer,
    create_at timestamp without time zone,
    usuario_registro integer,
    update_at timestamp without time zone,
    usuario_actualizacion integer,
    deleted_at timestamp without time zone,
    usuario_eliminacion integer
);
 !   DROP TABLE public.auth_usuarios;
       public         heap    postgres    false            �            1259    16506    auth_usuarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.auth_usuarios_id_seq;
       public          postgres    false    233            |           0    0    auth_usuarios_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.auth_usuarios_id_seq OWNED BY public.auth_usuarios.id;
          public          postgres    false    232            �            1259    16443    logic_membresias    TABLE     	  CREATE TABLE public.logic_membresias (
    id integer NOT NULL,
    id_usuario integer NOT NULL,
    fecha_inicial timestamp without time zone NOT NULL,
    fecha_final timestamp without time zone NOT NULL,
    id_planes integer NOT NULL,
    id_pago integer NOT NULL,
    inactivo integer,
    create_at timestamp without time zone,
    usuario_registro integer,
    update_at timestamp without time zone,
    usuario_actualizacion integer,
    deleted_at timestamp without time zone,
    usuario_eliminacion integer
);
 $   DROP TABLE public.logic_membresias;
       public         heap    postgres    false            �            1259    16442    logic_membresias_id_seq    SEQUENCE     �   CREATE SEQUENCE public.logic_membresias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.logic_membresias_id_seq;
       public          postgres    false    219            }           0    0    logic_membresias_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.logic_membresias_id_seq OWNED BY public.logic_membresias.id;
          public          postgres    false    218            �            1259    16452    logic_planes    TABLE     �  CREATE TABLE public.logic_planes (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    id_tarifa integer NOT NULL,
    tipo_planes integer NOT NULL,
    inactivo integer,
    create_at timestamp without time zone,
    usuario_registro integer,
    update_at timestamp without time zone,
    usuario_actualizacion integer,
    deleted_at timestamp without time zone,
    usuario_eliminacion integer
);
     DROP TABLE public.logic_planes;
       public         heap    postgres    false            �            1259    16451    logic_planes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.logic_planes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.logic_planes_id_seq;
       public          postgres    false    221            ~           0    0    logic_planes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.logic_planes_id_seq OWNED BY public.logic_planes.id;
          public          postgres    false    220            �            1259    16471    logic_planes_servicios    TABLE     �  CREATE TABLE public.logic_planes_servicios (
    id integer NOT NULL,
    id_planes integer NOT NULL,
    id_servicio integer NOT NULL,
    acceso json,
    inactivo integer,
    create_at timestamp without time zone,
    usuario_registro integer,
    update_at timestamp without time zone,
    usuario_actualizacion integer,
    deleted_at timestamp without time zone,
    usuario_eliminacion integer
);
 *   DROP TABLE public.logic_planes_servicios;
       public         heap    postgres    false            �            1259    16470    logic_planes_servicios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.logic_planes_servicios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.logic_planes_servicios_id_seq;
       public          postgres    false    225                       0    0    logic_planes_servicios_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.logic_planes_servicios_id_seq OWNED BY public.logic_planes_servicios.id;
          public          postgres    false    224            �            1259    16489    logic_servicios    TABLE     �  CREATE TABLE public.logic_servicios (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    tipo_servicio integer NOT NULL,
    descripcion character varying(255),
    acceso json,
    inactivo integer,
    create_at timestamp without time zone,
    usuario_registro integer,
    update_at timestamp without time zone,
    usuario_actualizacion integer,
    deleted_at timestamp without time zone,
    usuario_eliminacion integer
);
 #   DROP TABLE public.logic_servicios;
       public         heap    postgres    false            �            1259    16488    logic_servicios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.logic_servicios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.logic_servicios_id_seq;
       public          postgres    false    229            �           0    0    logic_servicios_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.logic_servicios_id_seq OWNED BY public.logic_servicios.id;
          public          postgres    false    228            �            1259    16480    logic_tarifas    TABLE       CREATE TABLE public.logic_tarifas (
    id integer NOT NULL,
    precio integer NOT NULL,
    fecha_inicial timestamp without time zone NOT NULL,
    fecha_final timestamp without time zone NOT NULL,
    descuento integer NOT NULL,
    descripcion character varying(255),
    inactivo integer,
    create_at timestamp without time zone,
    usuario_registro integer,
    update_at timestamp without time zone,
    usuario_actualizacion integer,
    deleted_at timestamp without time zone,
    usuario_eliminacion integer
);
 !   DROP TABLE public.logic_tarifas;
       public         heap    postgres    false            �            1259    16479    logic_tarifas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.logic_tarifas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.logic_tarifas_id_seq;
       public          postgres    false    227            �           0    0    logic_tarifas_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.logic_tarifas_id_seq OWNED BY public.logic_tarifas.id;
          public          postgres    false    226            �            1259    16461    logic_tipo_planes    TABLE     �  CREATE TABLE public.logic_tipo_planes (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion character varying(255),
    inactivo integer,
    create_at timestamp without time zone,
    usuario_registro integer,
    update_at timestamp without time zone,
    usuario_actualizacion integer,
    deleted_at timestamp without time zone,
    usuario_eliminacion integer
);
 %   DROP TABLE public.logic_tipo_planes;
       public         heap    postgres    false            �            1259    16460    logic_tipo_planes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.logic_tipo_planes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.logic_tipo_planes_id_seq;
       public          postgres    false    223            �           0    0    logic_tipo_planes_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.logic_tipo_planes_id_seq OWNED BY public.logic_tipo_planes.id;
          public          postgres    false    222            �            1259    16498    logic_tipo_servicios    TABLE     �  CREATE TABLE public.logic_tipo_servicios (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion character varying(255),
    acceso json,
    inactivo integer,
    create_at timestamp without time zone,
    usuario_registro integer,
    update_at timestamp without time zone,
    usuario_actualizacion integer,
    deleted_at timestamp without time zone,
    usuario_eliminacion integer
);
 (   DROP TABLE public.logic_tipo_servicios;
       public         heap    postgres    false            �            1259    16497    logic_tipo_servicios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.logic_tipo_servicios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.logic_tipo_servicios_id_seq;
       public          postgres    false    231            �           0    0    logic_tipo_servicios_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.logic_tipo_servicios_id_seq OWNED BY public.logic_tipo_servicios.id;
          public          postgres    false    230            �            1259    16565 
   menu_items    TABLE     �  CREATE TABLE public.menu_items (
    id integer NOT NULL,
    modulo_categoria character varying(50) NOT NULL,
    modulo_nombre character varying(50) NOT NULL,
    icono character varying(50),
    ruta character varying(100),
    acceso json,
    inactivo integer,
    create_at timestamp without time zone,
    usuario_registro integer,
    update_at timestamp without time zone,
    usuario_actualizacion integer,
    deleted_at timestamp without time zone,
    usuario_eliminacion integer
);
    DROP TABLE public.menu_items;
       public         heap    postgres    false            �            1259    16564    menu_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.menu_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.menu_items_id_seq;
       public          postgres    false    235            �           0    0    menu_items_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.menu_items_id_seq OWNED BY public.menu_items.id;
          public          postgres    false    234            �            1259    16575    menu_subitems    TABLE     !  CREATE TABLE public.menu_subitems (
    id integer NOT NULL,
    id_item integer NOT NULL,
    abreviado character varying(50) NOT NULL,
    descripcion character varying(255) NOT NULL,
    cabecera character varying(50),
    ruta character varying(100),
    depende integer,
    acceso json,
    inactivo integer,
    create_at timestamp without time zone,
    usuario_registro integer,
    update_at timestamp without time zone,
    usuario_actualizacion integer,
    deleted_at timestamp without time zone,
    usuario_eliminacion integer
);
 !   DROP TABLE public.menu_subitems;
       public         heap    postgres    false            �            1259    16574    menu_subitems_id_seq    SEQUENCE     �   CREATE SEQUENCE public.menu_subitems_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.menu_subitems_id_seq;
       public          postgres    false    237            �           0    0    menu_subitems_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.menu_subitems_id_seq OWNED BY public.menu_subitems.id;
          public          postgres    false    236            �           2604    16437    auth_perfiles id    DEFAULT     t   ALTER TABLE ONLY public.auth_perfiles ALTER COLUMN id SET DEFAULT nextval('public.auth_perfiles_id_seq'::regclass);
 ?   ALTER TABLE public.auth_perfiles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    16407    auth_tipo_id id    DEFAULT     r   ALTER TABLE ONLY public.auth_tipo_id ALTER COLUMN id SET DEFAULT nextval('public.auth_tipo_id_id_seq'::regclass);
 >   ALTER TABLE public.auth_tipo_id ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    16510    auth_usuarios id    DEFAULT     t   ALTER TABLE ONLY public.auth_usuarios ALTER COLUMN id SET DEFAULT nextval('public.auth_usuarios_id_seq'::regclass);
 ?   ALTER TABLE public.auth_usuarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            �           2604    16446    logic_membresias id    DEFAULT     z   ALTER TABLE ONLY public.logic_membresias ALTER COLUMN id SET DEFAULT nextval('public.logic_membresias_id_seq'::regclass);
 B   ALTER TABLE public.logic_membresias ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    16455    logic_planes id    DEFAULT     r   ALTER TABLE ONLY public.logic_planes ALTER COLUMN id SET DEFAULT nextval('public.logic_planes_id_seq'::regclass);
 >   ALTER TABLE public.logic_planes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    16474    logic_planes_servicios id    DEFAULT     �   ALTER TABLE ONLY public.logic_planes_servicios ALTER COLUMN id SET DEFAULT nextval('public.logic_planes_servicios_id_seq'::regclass);
 H   ALTER TABLE public.logic_planes_servicios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    16492    logic_servicios id    DEFAULT     x   ALTER TABLE ONLY public.logic_servicios ALTER COLUMN id SET DEFAULT nextval('public.logic_servicios_id_seq'::regclass);
 A   ALTER TABLE public.logic_servicios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    16483    logic_tarifas id    DEFAULT     t   ALTER TABLE ONLY public.logic_tarifas ALTER COLUMN id SET DEFAULT nextval('public.logic_tarifas_id_seq'::regclass);
 ?   ALTER TABLE public.logic_tarifas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    16464    logic_tipo_planes id    DEFAULT     |   ALTER TABLE ONLY public.logic_tipo_planes ALTER COLUMN id SET DEFAULT nextval('public.logic_tipo_planes_id_seq'::regclass);
 C   ALTER TABLE public.logic_tipo_planes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    16501    logic_tipo_servicios id    DEFAULT     �   ALTER TABLE ONLY public.logic_tipo_servicios ALTER COLUMN id SET DEFAULT nextval('public.logic_tipo_servicios_id_seq'::regclass);
 F   ALTER TABLE public.logic_tipo_servicios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    16568    menu_items id    DEFAULT     n   ALTER TABLE ONLY public.menu_items ALTER COLUMN id SET DEFAULT nextval('public.menu_items_id_seq'::regclass);
 <   ALTER TABLE public.menu_items ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235            �           2604    16578    menu_subitems id    DEFAULT     t   ALTER TABLE ONLY public.menu_subitems ALTER COLUMN id SET DEFAULT nextval('public.menu_subitems_id_seq'::regclass);
 ?   ALTER TABLE public.menu_subitems ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236    237            _          0    16434    auth_perfiles 
   TABLE DATA           �   COPY public.auth_perfiles (id, nombre, menu_subitems, descripcion, inactivo, create_at, usuario_registro, update_at, usuario_actualizacion, deleted_at, usuario_eliminacion) FROM stdin;
    public          postgres    false    217   ��       ]          0    16404    auth_tipo_id 
   TABLE DATA           �   COPY public.auth_tipo_id (id, codigo, nombre, acceso, inactivo, create_at, usuario_registro, update_at, usuario_actualizacion, deleted_at, usuario_eliminacion) FROM stdin;
    public          postgres    false    215   ��       o          0    16507    auth_usuarios 
   TABLE DATA           .  COPY public.auth_usuarios (id, tipo_id, identificacion, nombre1, nombre2, apellido1, apellido2, email, telefono, ciudad, pais, region, direccion, id_perfil, usuario, password, acceso, inactivo, create_at, usuario_registro, update_at, usuario_actualizacion, deleted_at, usuario_eliminacion) FROM stdin;
    public          postgres    false    233   ��       a          0    16443    logic_membresias 
   TABLE DATA           �   COPY public.logic_membresias (id, id_usuario, fecha_inicial, fecha_final, id_planes, id_pago, inactivo, create_at, usuario_registro, update_at, usuario_actualizacion, deleted_at, usuario_eliminacion) FROM stdin;
    public          postgres    false    219   ܋       c          0    16452    logic_planes 
   TABLE DATA           �   COPY public.logic_planes (id, nombre, id_tarifa, tipo_planes, inactivo, create_at, usuario_registro, update_at, usuario_actualizacion, deleted_at, usuario_eliminacion) FROM stdin;
    public          postgres    false    221   ��       g          0    16471    logic_planes_servicios 
   TABLE DATA           �   COPY public.logic_planes_servicios (id, id_planes, id_servicio, acceso, inactivo, create_at, usuario_registro, update_at, usuario_actualizacion, deleted_at, usuario_eliminacion) FROM stdin;
    public          postgres    false    225   �       k          0    16489    logic_servicios 
   TABLE DATA           �   COPY public.logic_servicios (id, nombre, tipo_servicio, descripcion, acceso, inactivo, create_at, usuario_registro, update_at, usuario_actualizacion, deleted_at, usuario_eliminacion) FROM stdin;
    public          postgres    false    229   3�       i          0    16480    logic_tarifas 
   TABLE DATA           �   COPY public.logic_tarifas (id, precio, fecha_inicial, fecha_final, descuento, descripcion, inactivo, create_at, usuario_registro, update_at, usuario_actualizacion, deleted_at, usuario_eliminacion) FROM stdin;
    public          postgres    false    227   P�       e          0    16461    logic_tipo_planes 
   TABLE DATA           �   COPY public.logic_tipo_planes (id, nombre, descripcion, inactivo, create_at, usuario_registro, update_at, usuario_actualizacion, deleted_at, usuario_eliminacion) FROM stdin;
    public          postgres    false    223   ��       m          0    16498    logic_tipo_servicios 
   TABLE DATA           �   COPY public.logic_tipo_servicios (id, nombre, descripcion, acceso, inactivo, create_at, usuario_registro, update_at, usuario_actualizacion, deleted_at, usuario_eliminacion) FROM stdin;
    public          postgres    false    231   �       q          0    16565 
   menu_items 
   TABLE DATA           �   COPY public.menu_items (id, modulo_categoria, modulo_nombre, icono, ruta, acceso, inactivo, create_at, usuario_registro, update_at, usuario_actualizacion, deleted_at, usuario_eliminacion) FROM stdin;
    public          postgres    false    235   2�       s          0    16575    menu_subitems 
   TABLE DATA           �   COPY public.menu_subitems (id, id_item, abreviado, descripcion, cabecera, ruta, depende, acceso, inactivo, create_at, usuario_registro, update_at, usuario_actualizacion, deleted_at, usuario_eliminacion) FROM stdin;
    public          postgres    false    237   O�       �           0    0    auth_perfiles_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.auth_perfiles_id_seq', 1, false);
          public          postgres    false    216            �           0    0    auth_tipo_id_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.auth_tipo_id_id_seq', 1, false);
          public          postgres    false    214            �           0    0    auth_usuarios_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.auth_usuarios_id_seq', 1, false);
          public          postgres    false    232            �           0    0    logic_membresias_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.logic_membresias_id_seq', 1, false);
          public          postgres    false    218            �           0    0    logic_planes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.logic_planes_id_seq', 1, false);
          public          postgres    false    220            �           0    0    logic_planes_servicios_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.logic_planes_servicios_id_seq', 1, false);
          public          postgres    false    224            �           0    0    logic_servicios_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.logic_servicios_id_seq', 1, false);
          public          postgres    false    228            �           0    0    logic_tarifas_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.logic_tarifas_id_seq', 4, true);
          public          postgres    false    226            �           0    0    logic_tipo_planes_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.logic_tipo_planes_id_seq', 3, true);
          public          postgres    false    222            �           0    0    logic_tipo_servicios_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.logic_tipo_servicios_id_seq', 1, false);
          public          postgres    false    230            �           0    0    menu_items_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.menu_items_id_seq', 1, false);
          public          postgres    false    234            �           0    0    menu_subitems_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.menu_subitems_id_seq', 1, false);
          public          postgres    false    236            �           2606    16441     auth_perfiles auth_perfiles_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.auth_perfiles
    ADD CONSTRAINT auth_perfiles_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.auth_perfiles DROP CONSTRAINT auth_perfiles_pkey;
       public            postgres    false    217            �           2606    16411    auth_tipo_id auth_tipo_id_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.auth_tipo_id
    ADD CONSTRAINT auth_tipo_id_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.auth_tipo_id DROP CONSTRAINT auth_tipo_id_pkey;
       public            postgres    false    215            �           2606    16518 %   auth_usuarios auth_usuarios_email_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.auth_usuarios
    ADD CONSTRAINT auth_usuarios_email_key UNIQUE (email);
 O   ALTER TABLE ONLY public.auth_usuarios DROP CONSTRAINT auth_usuarios_email_key;
       public            postgres    false    233            �           2606    16516 .   auth_usuarios auth_usuarios_identificacion_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.auth_usuarios
    ADD CONSTRAINT auth_usuarios_identificacion_key UNIQUE (identificacion);
 X   ALTER TABLE ONLY public.auth_usuarios DROP CONSTRAINT auth_usuarios_identificacion_key;
       public            postgres    false    233            �           2606    16514     auth_usuarios auth_usuarios_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.auth_usuarios
    ADD CONSTRAINT auth_usuarios_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.auth_usuarios DROP CONSTRAINT auth_usuarios_pkey;
       public            postgres    false    233            �           2606    16450 &   logic_membresias logic_membresias_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.logic_membresias
    ADD CONSTRAINT logic_membresias_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.logic_membresias DROP CONSTRAINT logic_membresias_pkey;
       public            postgres    false    219            �           2606    16459    logic_planes logic_planes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.logic_planes
    ADD CONSTRAINT logic_planes_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.logic_planes DROP CONSTRAINT logic_planes_pkey;
       public            postgres    false    221            �           2606    16478 2   logic_planes_servicios logic_planes_servicios_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.logic_planes_servicios
    ADD CONSTRAINT logic_planes_servicios_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.logic_planes_servicios DROP CONSTRAINT logic_planes_servicios_pkey;
       public            postgres    false    225            �           2606    16496 $   logic_servicios logic_servicios_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.logic_servicios
    ADD CONSTRAINT logic_servicios_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.logic_servicios DROP CONSTRAINT logic_servicios_pkey;
       public            postgres    false    229            �           2606    16487     logic_tarifas logic_tarifas_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.logic_tarifas
    ADD CONSTRAINT logic_tarifas_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.logic_tarifas DROP CONSTRAINT logic_tarifas_pkey;
       public            postgres    false    227            �           2606    16468 (   logic_tipo_planes logic_tipo_planes_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.logic_tipo_planes
    ADD CONSTRAINT logic_tipo_planes_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.logic_tipo_planes DROP CONSTRAINT logic_tipo_planes_pkey;
       public            postgres    false    223            �           2606    16505 .   logic_tipo_servicios logic_tipo_servicios_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.logic_tipo_servicios
    ADD CONSTRAINT logic_tipo_servicios_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.logic_tipo_servicios DROP CONSTRAINT logic_tipo_servicios_pkey;
       public            postgres    false    231            �           2606    16572    menu_items menu_items_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.menu_items DROP CONSTRAINT menu_items_pkey;
       public            postgres    false    235            �           2606    16582     menu_subitems menu_subitems_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.menu_subitems
    ADD CONSTRAINT menu_subitems_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.menu_subitems DROP CONSTRAINT menu_subitems_pkey;
       public            postgres    false    237            �           2606    16583    menu_subitems FK_IDITEM    FK CONSTRAINT     �   ALTER TABLE ONLY public.menu_subitems
    ADD CONSTRAINT "FK_IDITEM" FOREIGN KEY (id_item) REFERENCES public.menu_items(id) NOT VALID;
 C   ALTER TABLE ONLY public.menu_subitems DROP CONSTRAINT "FK_IDITEM";
       public          postgres    false    3265    235    237            �           2606    16524    auth_usuarios FK_IDPERFIL    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_usuarios
    ADD CONSTRAINT "FK_IDPERFIL" FOREIGN KEY (id_perfil) REFERENCES public.auth_perfiles(id) NOT VALID;
 E   ALTER TABLE ONLY public.auth_usuarios DROP CONSTRAINT "FK_IDPERFIL";
       public          postgres    false    233    3243    217            �           2606    16534    logic_membresias FK_IDPLANES    FK CONSTRAINT     �   ALTER TABLE ONLY public.logic_membresias
    ADD CONSTRAINT "FK_IDPLANES" FOREIGN KEY (id_planes) REFERENCES public.logic_planes(id) NOT VALID;
 H   ALTER TABLE ONLY public.logic_membresias DROP CONSTRAINT "FK_IDPLANES";
       public          postgres    false    3247    219    221            �           2606    16549 "   logic_planes_servicios FK_IDPLANES    FK CONSTRAINT     �   ALTER TABLE ONLY public.logic_planes_servicios
    ADD CONSTRAINT "FK_IDPLANES" FOREIGN KEY (id_planes) REFERENCES public.logic_planes(id) NOT VALID;
 N   ALTER TABLE ONLY public.logic_planes_servicios DROP CONSTRAINT "FK_IDPLANES";
       public          postgres    false    3247    221    225            �           2606    16554 $   logic_planes_servicios FK_IDSERVICIO    FK CONSTRAINT     �   ALTER TABLE ONLY public.logic_planes_servicios
    ADD CONSTRAINT "FK_IDSERVICIO" FOREIGN KEY (id_servicio) REFERENCES public.logic_servicios(id) NOT VALID;
 P   ALTER TABLE ONLY public.logic_planes_servicios DROP CONSTRAINT "FK_IDSERVICIO";
       public          postgres    false    225    229    3255            �           2606    16539    logic_planes FK_IDTARIFA    FK CONSTRAINT     �   ALTER TABLE ONLY public.logic_planes
    ADD CONSTRAINT "FK_IDTARIFA" FOREIGN KEY (id_tarifa) REFERENCES public.logic_tarifas(id) NOT VALID;
 D   ALTER TABLE ONLY public.logic_planes DROP CONSTRAINT "FK_IDTARIFA";
       public          postgres    false    227    3253    221            �           2606    16529    logic_membresias FK_IDUSUARIO    FK CONSTRAINT     �   ALTER TABLE ONLY public.logic_membresias
    ADD CONSTRAINT "FK_IDUSUARIO" FOREIGN KEY (id_usuario) REFERENCES public.auth_usuarios(id) NOT VALID;
 I   ALTER TABLE ONLY public.logic_membresias DROP CONSTRAINT "FK_IDUSUARIO";
       public          postgres    false    219    233    3263            �           2606    16519    auth_usuarios FK_TIPOID    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_usuarios
    ADD CONSTRAINT "FK_TIPOID" FOREIGN KEY (tipo_id) REFERENCES public.auth_tipo_id(id) NOT VALID;
 C   ALTER TABLE ONLY public.auth_usuarios DROP CONSTRAINT "FK_TIPOID";
       public          postgres    false    215    3241    233            �           2606    16544    logic_planes FK_TIPOPLANES    FK CONSTRAINT     �   ALTER TABLE ONLY public.logic_planes
    ADD CONSTRAINT "FK_TIPOPLANES" FOREIGN KEY (tipo_planes) REFERENCES public.logic_tipo_planes(id) NOT VALID;
 F   ALTER TABLE ONLY public.logic_planes DROP CONSTRAINT "FK_TIPOPLANES";
       public          postgres    false    223    221    3249            �           2606    16559    logic_servicios FK_TIPOSERVICIO    FK CONSTRAINT     �   ALTER TABLE ONLY public.logic_servicios
    ADD CONSTRAINT "FK_TIPOSERVICIO" FOREIGN KEY (tipo_servicio) REFERENCES public.logic_tipo_servicios(id) NOT VALID;
 K   ALTER TABLE ONLY public.logic_servicios DROP CONSTRAINT "FK_TIPOSERVICIO";
       public          postgres    false    231    229    3257            _      x������ � �      ]      x������ � �      o      x������ � �      a      x������ � �      c      x������ � �      g      x������ � �      k      x������ � �      i   :   x�3�461 N##c]C]CKCK++b�F�@�(5�$��Ӏ3�������� ��      e   k   x�3��M�+.M��K��L�W(H,JT(�S�M-VHIUH���K,���4���C&��8r��hN<�1_!5O!5��B�2�v���RRt PH2(F��� �U<6      m      x������ � �      q      x������ � �      s      x������ � �     