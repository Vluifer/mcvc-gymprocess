PGDMP                           {            gimnasio    15.1    15.1 d    v           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            w           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            x           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            y           1262    16607    gimnasio    DATABASE     ~   CREATE DATABASE gimnasio WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE gimnasio;
                postgres    false            ?            1259    16608    auth_perfiles    TABLE     ?  CREATE TABLE public.auth_perfiles (
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
       public         heap    postgres    false            ?            1259    16613    auth_perfiles_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_perfiles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.auth_perfiles_id_seq;
       public          postgres    false    214            z           0    0    auth_perfiles_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.auth_perfiles_id_seq OWNED BY public.auth_perfiles.id;
          public          postgres    false    215            ?            1259    16614    auth_tipo_id    TABLE     ?  CREATE TABLE public.auth_tipo_id (
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
       public         heap    postgres    false            ?            1259    16619    auth_tipo_id_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_tipo_id_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.auth_tipo_id_id_seq;
       public          postgres    false    216            {           0    0    auth_tipo_id_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.auth_tipo_id_id_seq OWNED BY public.auth_tipo_id.id;
          public          postgres    false    217            ?            1259    16620    auth_usuarios    TABLE     ?  CREATE TABLE public.auth_usuarios (
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
       public         heap    postgres    false            ?            1259    16625    auth_usuarios_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.auth_usuarios_id_seq;
       public          postgres    false    218            |           0    0    auth_usuarios_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.auth_usuarios_id_seq OWNED BY public.auth_usuarios.id;
          public          postgres    false    219            ?            1259    16626    logic_membresias    TABLE     	  CREATE TABLE public.logic_membresias (
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
       public         heap    postgres    false            ?            1259    16629    logic_membresias_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.logic_membresias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.logic_membresias_id_seq;
       public          postgres    false    220            }           0    0    logic_membresias_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.logic_membresias_id_seq OWNED BY public.logic_membresias.id;
          public          postgres    false    221            ?            1259    16630    logic_planes    TABLE     {  CREATE TABLE public.logic_planes (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    id_tarifa integer,
    inactivo integer,
    create_at timestamp without time zone,
    usuario_registro integer,
    update_at timestamp without time zone,
    usuario_actualizacion integer,
    deleted_at timestamp without time zone,
    usuario_eliminacion integer
);
     DROP TABLE public.logic_planes;
       public         heap    postgres    false            ?            1259    16633    logic_planes_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.logic_planes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.logic_planes_id_seq;
       public          postgres    false    222            ~           0    0    logic_planes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.logic_planes_id_seq OWNED BY public.logic_planes.id;
          public          postgres    false    223            ?            1259    16634    logic_planes_servicios    TABLE     ?  CREATE TABLE public.logic_planes_servicios (
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
       public         heap    postgres    false            ?            1259    16639    logic_planes_servicios_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.logic_planes_servicios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.logic_planes_servicios_id_seq;
       public          postgres    false    224                       0    0    logic_planes_servicios_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.logic_planes_servicios_id_seq OWNED BY public.logic_planes_servicios.id;
          public          postgres    false    225            ?            1259    16640    logic_servicios    TABLE     ?  CREATE TABLE public.logic_servicios (
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
       public         heap    postgres    false            ?            1259    16645    logic_servicios_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.logic_servicios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.logic_servicios_id_seq;
       public          postgres    false    226            ?           0    0    logic_servicios_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.logic_servicios_id_seq OWNED BY public.logic_servicios.id;
          public          postgres    false    227            ?            1259    16646    logic_tarifas    TABLE       CREATE TABLE public.logic_tarifas (
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
       public         heap    postgres    false            ?            1259    16649    logic_tarifas_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.logic_tarifas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.logic_tarifas_id_seq;
       public          postgres    false    228            ?           0    0    logic_tarifas_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.logic_tarifas_id_seq OWNED BY public.logic_tarifas.id;
          public          postgres    false    229            ?            1259    16765    logic_tipo_planes    TABLE     l  CREATE TABLE public.logic_tipo_planes (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion character varying(250),
    id_planes integer NOT NULL,
    inactivo integer,
    create_at date,
    usuario_registro integer,
    update_at date,
    usuario_actualizacion integer,
    deleted_at date,
    usuario_eliminacion integer
);
 %   DROP TABLE public.logic_tipo_planes;
       public         heap    postgres    false            ?            1259    16764    logic_tipo_planes_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.logic_tipo_planes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.logic_tipo_planes_id_seq;
       public          postgres    false    237            ?           0    0    logic_tipo_planes_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.logic_tipo_planes_id_seq OWNED BY public.logic_tipo_planes.id;
          public          postgres    false    236            ?            1259    16654    logic_tipo_servicios    TABLE     ?  CREATE TABLE public.logic_tipo_servicios (
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
       public         heap    postgres    false            ?            1259    16659    logic_tipo_servicios_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.logic_tipo_servicios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.logic_tipo_servicios_id_seq;
       public          postgres    false    230            ?           0    0    logic_tipo_servicios_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.logic_tipo_servicios_id_seq OWNED BY public.logic_tipo_servicios.id;
          public          postgres    false    231            ?            1259    16660 
   menu_items    TABLE     ?  CREATE TABLE public.menu_items (
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
       public         heap    postgres    false            ?            1259    16665    menu_items_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.menu_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.menu_items_id_seq;
       public          postgres    false    232            ?           0    0    menu_items_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.menu_items_id_seq OWNED BY public.menu_items.id;
          public          postgres    false    233            ?            1259    16666    menu_subitems    TABLE     !  CREATE TABLE public.menu_subitems (
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
       public         heap    postgres    false            ?            1259    16671    menu_subitems_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.menu_subitems_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.menu_subitems_id_seq;
       public          postgres    false    234            ?           0    0    menu_subitems_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.menu_subitems_id_seq OWNED BY public.menu_subitems.id;
          public          postgres    false    235            ?           2604    16672    auth_perfiles id    DEFAULT     t   ALTER TABLE ONLY public.auth_perfiles ALTER COLUMN id SET DEFAULT nextval('public.auth_perfiles_id_seq'::regclass);
 ?   ALTER TABLE public.auth_perfiles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            ?           2604    16673    auth_tipo_id id    DEFAULT     r   ALTER TABLE ONLY public.auth_tipo_id ALTER COLUMN id SET DEFAULT nextval('public.auth_tipo_id_id_seq'::regclass);
 >   ALTER TABLE public.auth_tipo_id ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            ?           2604    16674    auth_usuarios id    DEFAULT     t   ALTER TABLE ONLY public.auth_usuarios ALTER COLUMN id SET DEFAULT nextval('public.auth_usuarios_id_seq'::regclass);
 ?   ALTER TABLE public.auth_usuarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            ?           2604    16675    logic_membresias id    DEFAULT     z   ALTER TABLE ONLY public.logic_membresias ALTER COLUMN id SET DEFAULT nextval('public.logic_membresias_id_seq'::regclass);
 B   ALTER TABLE public.logic_membresias ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            ?           2604    16676    logic_planes id    DEFAULT     r   ALTER TABLE ONLY public.logic_planes ALTER COLUMN id SET DEFAULT nextval('public.logic_planes_id_seq'::regclass);
 >   ALTER TABLE public.logic_planes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            ?           2604    16677    logic_planes_servicios id    DEFAULT     ?   ALTER TABLE ONLY public.logic_planes_servicios ALTER COLUMN id SET DEFAULT nextval('public.logic_planes_servicios_id_seq'::regclass);
 H   ALTER TABLE public.logic_planes_servicios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            ?           2604    16678    logic_servicios id    DEFAULT     x   ALTER TABLE ONLY public.logic_servicios ALTER COLUMN id SET DEFAULT nextval('public.logic_servicios_id_seq'::regclass);
 A   ALTER TABLE public.logic_servicios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            ?           2604    16679    logic_tarifas id    DEFAULT     t   ALTER TABLE ONLY public.logic_tarifas ALTER COLUMN id SET DEFAULT nextval('public.logic_tarifas_id_seq'::regclass);
 ?   ALTER TABLE public.logic_tarifas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228            ?           2604    16768    logic_tipo_planes id    DEFAULT     |   ALTER TABLE ONLY public.logic_tipo_planes ALTER COLUMN id SET DEFAULT nextval('public.logic_tipo_planes_id_seq'::regclass);
 C   ALTER TABLE public.logic_tipo_planes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            ?           2604    16681    logic_tipo_servicios id    DEFAULT     ?   ALTER TABLE ONLY public.logic_tipo_servicios ALTER COLUMN id SET DEFAULT nextval('public.logic_tipo_servicios_id_seq'::regclass);
 F   ALTER TABLE public.logic_tipo_servicios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230            ?           2604    16682    menu_items id    DEFAULT     n   ALTER TABLE ONLY public.menu_items ALTER COLUMN id SET DEFAULT nextval('public.menu_items_id_seq'::regclass);
 <   ALTER TABLE public.menu_items ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232            ?           2604    16683    menu_subitems id    DEFAULT     t   ALTER TABLE ONLY public.menu_subitems ALTER COLUMN id SET DEFAULT nextval('public.menu_subitems_id_seq'::regclass);
 ?   ALTER TABLE public.menu_subitems ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234            \          0    16608    auth_perfiles 
   TABLE DATA           ?   COPY public.auth_perfiles (id, nombre, menu_subitems, descripcion, inactivo, create_at, usuario_registro, update_at, usuario_actualizacion, deleted_at, usuario_eliminacion) FROM stdin;
    public          postgres    false    214   ??       ^          0    16614    auth_tipo_id 
   TABLE DATA           ?   COPY public.auth_tipo_id (id, codigo, nombre, acceso, inactivo, create_at, usuario_registro, update_at, usuario_actualizacion, deleted_at, usuario_eliminacion) FROM stdin;
    public          postgres    false    216    ?       `          0    16620    auth_usuarios 
   TABLE DATA           .  COPY public.auth_usuarios (id, tipo_id, identificacion, nombre1, nombre2, apellido1, apellido2, email, telefono, ciudad, pais, region, direccion, id_perfil, usuario, password, acceso, inactivo, create_at, usuario_registro, update_at, usuario_actualizacion, deleted_at, usuario_eliminacion) FROM stdin;
    public          postgres    false    218   ?       b          0    16626    logic_membresias 
   TABLE DATA           ?   COPY public.logic_membresias (id, id_usuario, fecha_inicial, fecha_final, id_planes, id_pago, inactivo, create_at, usuario_registro, update_at, usuario_actualizacion, deleted_at, usuario_eliminacion) FROM stdin;
    public          postgres    false    220   :?       d          0    16630    logic_planes 
   TABLE DATA           ?   COPY public.logic_planes (id, nombre, id_tarifa, inactivo, create_at, usuario_registro, update_at, usuario_actualizacion, deleted_at, usuario_eliminacion) FROM stdin;
    public          postgres    false    222   W?       f          0    16634    logic_planes_servicios 
   TABLE DATA           ?   COPY public.logic_planes_servicios (id, id_planes, id_servicio, acceso, inactivo, create_at, usuario_registro, update_at, usuario_actualizacion, deleted_at, usuario_eliminacion) FROM stdin;
    public          postgres    false    224   t?       h          0    16640    logic_servicios 
   TABLE DATA           ?   COPY public.logic_servicios (id, nombre, tipo_servicio, descripcion, acceso, inactivo, create_at, usuario_registro, update_at, usuario_actualizacion, deleted_at, usuario_eliminacion) FROM stdin;
    public          postgres    false    226   ??       j          0    16646    logic_tarifas 
   TABLE DATA           ?   COPY public.logic_tarifas (id, precio, fecha_inicial, fecha_final, descuento, descripcion, inactivo, create_at, usuario_registro, update_at, usuario_actualizacion, deleted_at, usuario_eliminacion) FROM stdin;
    public          postgres    false    228   ??       s          0    16765    logic_tipo_planes 
   TABLE DATA           ?   COPY public.logic_tipo_planes (id, nombre, descripcion, id_planes, inactivo, create_at, usuario_registro, update_at, usuario_actualizacion, deleted_at, usuario_eliminacion) FROM stdin;
    public          postgres    false    237   ?       l          0    16654    logic_tipo_servicios 
   TABLE DATA           ?   COPY public.logic_tipo_servicios (id, nombre, descripcion, acceso, inactivo, create_at, usuario_registro, update_at, usuario_actualizacion, deleted_at, usuario_eliminacion) FROM stdin;
    public          postgres    false    230   *?       n          0    16660 
   menu_items 
   TABLE DATA           ?   COPY public.menu_items (id, modulo_categoria, modulo_nombre, icono, ruta, acceso, inactivo, create_at, usuario_registro, update_at, usuario_actualizacion, deleted_at, usuario_eliminacion) FROM stdin;
    public          postgres    false    232   G?       p          0    16666    menu_subitems 
   TABLE DATA           ?   COPY public.menu_subitems (id, id_item, abreviado, descripcion, cabecera, ruta, depende, acceso, inactivo, create_at, usuario_registro, update_at, usuario_actualizacion, deleted_at, usuario_eliminacion) FROM stdin;
    public          postgres    false    234   d?       ?           0    0    auth_perfiles_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.auth_perfiles_id_seq', 1, false);
          public          postgres    false    215            ?           0    0    auth_tipo_id_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.auth_tipo_id_id_seq', 1, false);
          public          postgres    false    217            ?           0    0    auth_usuarios_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.auth_usuarios_id_seq', 1, false);
          public          postgres    false    219            ?           0    0    logic_membresias_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.logic_membresias_id_seq', 1, false);
          public          postgres    false    221            ?           0    0    logic_planes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.logic_planes_id_seq', 1, false);
          public          postgres    false    223            ?           0    0    logic_planes_servicios_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.logic_planes_servicios_id_seq', 1, false);
          public          postgres    false    225            ?           0    0    logic_servicios_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.logic_servicios_id_seq', 1, false);
          public          postgres    false    227            ?           0    0    logic_tarifas_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.logic_tarifas_id_seq', 5, true);
          public          postgres    false    229            ?           0    0    logic_tipo_planes_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.logic_tipo_planes_id_seq', 1, false);
          public          postgres    false    236            ?           0    0    logic_tipo_servicios_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.logic_tipo_servicios_id_seq', 1, false);
          public          postgres    false    231            ?           0    0    menu_items_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.menu_items_id_seq', 1, false);
          public          postgres    false    233            ?           0    0    menu_subitems_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.menu_subitems_id_seq', 1, false);
          public          postgres    false    235            ?           2606    16685     auth_perfiles auth_perfiles_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.auth_perfiles
    ADD CONSTRAINT auth_perfiles_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.auth_perfiles DROP CONSTRAINT auth_perfiles_pkey;
       public            postgres    false    214            ?           2606    16687    auth_tipo_id auth_tipo_id_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.auth_tipo_id
    ADD CONSTRAINT auth_tipo_id_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.auth_tipo_id DROP CONSTRAINT auth_tipo_id_pkey;
       public            postgres    false    216            ?           2606    16689 %   auth_usuarios auth_usuarios_email_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.auth_usuarios
    ADD CONSTRAINT auth_usuarios_email_key UNIQUE (email);
 O   ALTER TABLE ONLY public.auth_usuarios DROP CONSTRAINT auth_usuarios_email_key;
       public            postgres    false    218            ?           2606    16691 .   auth_usuarios auth_usuarios_identificacion_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.auth_usuarios
    ADD CONSTRAINT auth_usuarios_identificacion_key UNIQUE (identificacion);
 X   ALTER TABLE ONLY public.auth_usuarios DROP CONSTRAINT auth_usuarios_identificacion_key;
       public            postgres    false    218            ?           2606    16693     auth_usuarios auth_usuarios_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.auth_usuarios
    ADD CONSTRAINT auth_usuarios_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.auth_usuarios DROP CONSTRAINT auth_usuarios_pkey;
       public            postgres    false    218            ?           2606    16695 &   logic_membresias logic_membresias_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.logic_membresias
    ADD CONSTRAINT logic_membresias_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.logic_membresias DROP CONSTRAINT logic_membresias_pkey;
       public            postgres    false    220            ?           2606    16697    logic_planes logic_planes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.logic_planes
    ADD CONSTRAINT logic_planes_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.logic_planes DROP CONSTRAINT logic_planes_pkey;
       public            postgres    false    222            ?           2606    16699 2   logic_planes_servicios logic_planes_servicios_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.logic_planes_servicios
    ADD CONSTRAINT logic_planes_servicios_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.logic_planes_servicios DROP CONSTRAINT logic_planes_servicios_pkey;
       public            postgres    false    224            ?           2606    16701 $   logic_servicios logic_servicios_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.logic_servicios
    ADD CONSTRAINT logic_servicios_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.logic_servicios DROP CONSTRAINT logic_servicios_pkey;
       public            postgres    false    226            ?           2606    16703     logic_tarifas logic_tarifas_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.logic_tarifas
    ADD CONSTRAINT logic_tarifas_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.logic_tarifas DROP CONSTRAINT logic_tarifas_pkey;
       public            postgres    false    228            ?           2606    16770 (   logic_tipo_planes logic_tipo_planes_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.logic_tipo_planes
    ADD CONSTRAINT logic_tipo_planes_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.logic_tipo_planes DROP CONSTRAINT logic_tipo_planes_pkey;
       public            postgres    false    237            ?           2606    16707 .   logic_tipo_servicios logic_tipo_servicios_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.logic_tipo_servicios
    ADD CONSTRAINT logic_tipo_servicios_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.logic_tipo_servicios DROP CONSTRAINT logic_tipo_servicios_pkey;
       public            postgres    false    230            ?           2606    16709    menu_items menu_items_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.menu_items DROP CONSTRAINT menu_items_pkey;
       public            postgres    false    232            ?           2606    16711     menu_subitems menu_subitems_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.menu_subitems
    ADD CONSTRAINT menu_subitems_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.menu_subitems DROP CONSTRAINT menu_subitems_pkey;
       public            postgres    false    234            ?           2606    16712    menu_subitems FK_IDITEM    FK CONSTRAINT     ?   ALTER TABLE ONLY public.menu_subitems
    ADD CONSTRAINT "FK_IDITEM" FOREIGN KEY (id_item) REFERENCES public.menu_items(id) NOT VALID;
 C   ALTER TABLE ONLY public.menu_subitems DROP CONSTRAINT "FK_IDITEM";
       public          postgres    false    3263    234    232            ?           2606    16717    auth_usuarios FK_IDPERFIL    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_usuarios
    ADD CONSTRAINT "FK_IDPERFIL" FOREIGN KEY (id_perfil) REFERENCES public.auth_perfiles(id) NOT VALID;
 E   ALTER TABLE ONLY public.auth_usuarios DROP CONSTRAINT "FK_IDPERFIL";
       public          postgres    false    218    3241    214            ?           2606    16722    logic_membresias FK_IDPLANES    FK CONSTRAINT     ?   ALTER TABLE ONLY public.logic_membresias
    ADD CONSTRAINT "FK_IDPLANES" FOREIGN KEY (id_planes) REFERENCES public.logic_planes(id) NOT VALID;
 H   ALTER TABLE ONLY public.logic_membresias DROP CONSTRAINT "FK_IDPLANES";
       public          postgres    false    220    222    3253            ?           2606    16727 "   logic_planes_servicios FK_IDPLANES    FK CONSTRAINT     ?   ALTER TABLE ONLY public.logic_planes_servicios
    ADD CONSTRAINT "FK_IDPLANES" FOREIGN KEY (id_planes) REFERENCES public.logic_planes(id) NOT VALID;
 N   ALTER TABLE ONLY public.logic_planes_servicios DROP CONSTRAINT "FK_IDPLANES";
       public          postgres    false    222    224    3253            ?           2606    16771    logic_tipo_planes FK_IDPLANES    FK CONSTRAINT     ?   ALTER TABLE ONLY public.logic_tipo_planes
    ADD CONSTRAINT "FK_IDPLANES" FOREIGN KEY (id_planes) REFERENCES public.logic_tipo_planes(id) NOT VALID;
 I   ALTER TABLE ONLY public.logic_tipo_planes DROP CONSTRAINT "FK_IDPLANES";
       public          postgres    false    237    3267    237            ?           2606    16732 $   logic_planes_servicios FK_IDSERVICIO    FK CONSTRAINT     ?   ALTER TABLE ONLY public.logic_planes_servicios
    ADD CONSTRAINT "FK_IDSERVICIO" FOREIGN KEY (id_servicio) REFERENCES public.logic_servicios(id) NOT VALID;
 P   ALTER TABLE ONLY public.logic_planes_servicios DROP CONSTRAINT "FK_IDSERVICIO";
       public          postgres    false    224    3257    226            ?           2606    16737    logic_planes FK_IDTARIFA    FK CONSTRAINT     ?   ALTER TABLE ONLY public.logic_planes
    ADD CONSTRAINT "FK_IDTARIFA" FOREIGN KEY (id_tarifa) REFERENCES public.logic_tarifas(id) NOT VALID;
 D   ALTER TABLE ONLY public.logic_planes DROP CONSTRAINT "FK_IDTARIFA";
       public          postgres    false    222    228    3259            ?           2606    16742    logic_membresias FK_IDUSUARIO    FK CONSTRAINT     ?   ALTER TABLE ONLY public.logic_membresias
    ADD CONSTRAINT "FK_IDUSUARIO" FOREIGN KEY (id_usuario) REFERENCES public.auth_usuarios(id) NOT VALID;
 I   ALTER TABLE ONLY public.logic_membresias DROP CONSTRAINT "FK_IDUSUARIO";
       public          postgres    false    3249    220    218            ?           2606    16747    auth_usuarios FK_TIPOID    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_usuarios
    ADD CONSTRAINT "FK_TIPOID" FOREIGN KEY (tipo_id) REFERENCES public.auth_tipo_id(id) NOT VALID;
 C   ALTER TABLE ONLY public.auth_usuarios DROP CONSTRAINT "FK_TIPOID";
       public          postgres    false    218    3243    216            ?           2606    16757    logic_servicios FK_TIPOSERVICIO    FK CONSTRAINT     ?   ALTER TABLE ONLY public.logic_servicios
    ADD CONSTRAINT "FK_TIPOSERVICIO" FOREIGN KEY (tipo_servicio) REFERENCES public.logic_tipo_servicios(id) NOT VALID;
 K   ALTER TABLE ONLY public.logic_servicios DROP CONSTRAINT "FK_TIPOSERVICIO";
       public          postgres    false    3261    230    226            \      x?????? ? ?      ^      x?????? ? ?      `      x?????? ? ?      b      x?????? ? ?      d      x?????? ? ?      f      x?????? ? ?      h      x?????? ? ?      j   O   x?3?461 N##c]C]CKCK++b?F?@?(5?$??Ӏ3???2?443%?8?????IE@??F` ?=... ?!O      s      x?????? ? ?      l      x?????? ? ?      n      x?????? ? ?      p      x?????? ? ?     