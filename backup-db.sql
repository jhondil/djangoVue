PGDMP                     	    y            UdemyTiendaOnline    13.2    13.2 ?               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    35585    UdemyTiendaOnline    DATABASE     o   CREATE DATABASE "UdemyTiendaOnline" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
 #   DROP DATABASE "UdemyTiendaOnline";
                postgres    false            ?            1259    35599    Listelement_category    TABLE     ?   CREATE TABLE public."Listelement_category" (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    url_clean character varying(255) NOT NULL
);
 *   DROP TABLE public."Listelement_category";
       public         heap    postgres    false            ?            1259    35597    Listelement_category_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Listelement_category_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."Listelement_category_id_seq";
       public          postgres    false    203                       0    0    Listelement_category_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."Listelement_category_id_seq" OWNED BY public."Listelement_category".id;
          public          postgres    false    202            ?            1259    35621    Listelement_element    TABLE       CREATE TABLE public."Listelement_element" (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    url_clean character varying(255) NOT NULL,
    description text NOT NULL,
    category_id bigint NOT NULL,
    type_id bigint NOT NULL,
    price numeric(10,2) NOT NULL
);
 )   DROP TABLE public."Listelement_element";
       public         heap    postgres    false            ?            1259    35619    Listelement_element_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Listelement_element_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."Listelement_element_id_seq";
       public          postgres    false    207                       0    0    Listelement_element_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."Listelement_element_id_seq" OWNED BY public."Listelement_element".id;
          public          postgres    false    206            ?            1259    35844    Listelement_elementeimages    TABLE     ?   CREATE TABLE public."Listelement_elementeimages" (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    cover character varying(100) NOT NULL,
    element_id bigint NOT NULL
);
 0   DROP TABLE public."Listelement_elementeimages";
       public         heap    postgres    false            ?            1259    35842 !   Listelement_elementeimages_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Listelement_elementeimages_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."Listelement_elementeimages_id_seq";
       public          postgres    false    230                       0    0 !   Listelement_elementeimages_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."Listelement_elementeimages_id_seq" OWNED BY public."Listelement_elementeimages".id;
          public          postgres    false    229            ?            1259    35610    Listelement_type    TABLE     ?   CREATE TABLE public."Listelement_type" (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    url_clean character varying(255) NOT NULL
);
 &   DROP TABLE public."Listelement_type";
       public         heap    postgres    false            ?            1259    35608    Listelement_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Listelement_type_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."Listelement_type_id_seq";
       public          postgres    false    205                       0    0    Listelement_type_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Listelement_type_id_seq" OWNED BY public."Listelement_type".id;
          public          postgres    false    204            ?            1259    35802    account_userprofile    TABLE     ?   CREATE TABLE public.account_userprofile (
    id bigint NOT NULL,
    avatar character varying(100) NOT NULL,
    user_id integer NOT NULL
);
 '   DROP TABLE public.account_userprofile;
       public         heap    postgres    false            ?            1259    35800    account_userprofile_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.account_userprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.account_userprofile_id_seq;
       public          postgres    false    226            	           0    0    account_userprofile_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.account_userprofile_id_seq OWNED BY public.account_userprofile.id;
          public          postgres    false    225            ?            1259    35662 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            ?            1259    35660    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    213            
           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    212            ?            1259    35672    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            ?            1259    35670    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    215                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    214            ?            1259    35654    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            ?            1259    35652    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    211                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    210            ?            1259    35680 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            ?            1259    35690    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            ?            1259    35688    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    219                       0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    218            ?            1259    35678    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    217                       0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    216            ?            1259    35698    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            ?            1259    35696 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    221                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    220            ?            1259    35758    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            ?            1259    35756    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    223                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    222            ?            1259    35644    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            ?            1259    35642    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    209                       0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    208            ?            1259    35588    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    35586    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201                       0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200            ?            1259    35789    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            ?            1259    44035    django_site    TABLE     ?   CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.django_site;
       public         heap    postgres    false            ?            1259    44033    django_site_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.django_site_id_seq;
       public          postgres    false    234                       0    0    django_site_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;
          public          postgres    false    233            ?            1259    52227    social_auth_association    TABLE     <  CREATE TABLE public.social_auth_association (
    id integer NOT NULL,
    server_url character varying(255) NOT NULL,
    handle character varying(255) NOT NULL,
    secret character varying(255) NOT NULL,
    issued integer NOT NULL,
    lifetime integer NOT NULL,
    assoc_type character varying(64) NOT NULL
);
 +   DROP TABLE public.social_auth_association;
       public         heap    postgres    false            ?            1259    52225    social_auth_association_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.social_auth_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.social_auth_association_id_seq;
       public          postgres    false    238                       0    0    social_auth_association_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.social_auth_association_id_seq OWNED BY public.social_auth_association.id;
          public          postgres    false    237            ?            1259    52238    social_auth_code    TABLE     ?   CREATE TABLE public.social_auth_code (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    code character varying(32) NOT NULL,
    verified boolean NOT NULL,
    "timestamp" timestamp with time zone NOT NULL
);
 $   DROP TABLE public.social_auth_code;
       public         heap    postgres    false            ?            1259    52236    social_auth_code_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.social_auth_code_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.social_auth_code_id_seq;
       public          postgres    false    240                       0    0    social_auth_code_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.social_auth_code_id_seq OWNED BY public.social_auth_code.id;
          public          postgres    false    239            ?            1259    52246    social_auth_nonce    TABLE     ?   CREATE TABLE public.social_auth_nonce (
    id integer NOT NULL,
    server_url character varying(255) NOT NULL,
    "timestamp" integer NOT NULL,
    salt character varying(65) NOT NULL
);
 %   DROP TABLE public.social_auth_nonce;
       public         heap    postgres    false            ?            1259    52244    social_auth_nonce_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.social_auth_nonce_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.social_auth_nonce_id_seq;
       public          postgres    false    242                       0    0    social_auth_nonce_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.social_auth_nonce_id_seq OWNED BY public.social_auth_nonce.id;
          public          postgres    false    241            ?            1259    52283    social_auth_partial    TABLE     T  CREATE TABLE public.social_auth_partial (
    id integer NOT NULL,
    token character varying(32) NOT NULL,
    next_step smallint NOT NULL,
    backend character varying(32) NOT NULL,
    data text NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    CONSTRAINT social_auth_partial_next_step_check CHECK ((next_step >= 0))
);
 '   DROP TABLE public.social_auth_partial;
       public         heap    postgres    false            ?            1259    52281    social_auth_partial_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.social_auth_partial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.social_auth_partial_id_seq;
       public          postgres    false    246                       0    0    social_auth_partial_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.social_auth_partial_id_seq OWNED BY public.social_auth_partial.id;
          public          postgres    false    245            ?            1259    52254    social_auth_usersocialauth    TABLE     =  CREATE TABLE public.social_auth_usersocialauth (
    id integer NOT NULL,
    provider character varying(32) NOT NULL,
    uid character varying(255) NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);
 .   DROP TABLE public.social_auth_usersocialauth;
       public         heap    postgres    false            ?            1259    52252 !   social_auth_usersocialauth_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.social_auth_usersocialauth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.social_auth_usersocialauth_id_seq;
       public          postgres    false    244                       0    0 !   social_auth_usersocialauth_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.social_auth_usersocialauth_id_seq OWNED BY public.social_auth_usersocialauth.id;
          public          postgres    false    243            ?            1259    44046    store_cupon    TABLE       CREATE TABLE public.store_cupon (
    id bigint NOT NULL,
    code character varying(60) NOT NULL,
    valid_from timestamp with time zone NOT NULL,
    valid_to timestamp with time zone NOT NULL,
    discount integer NOT NULL,
    active boolean NOT NULL
);
    DROP TABLE public.store_cupon;
       public         heap    postgres    false            ?            1259    44044    store_cupon_id_seq    SEQUENCE     {   CREATE SEQUENCE public.store_cupon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.store_cupon_id_seq;
       public          postgres    false    236                       0    0    store_cupon_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.store_cupon_id_seq OWNED BY public.store_cupon.id;
          public          postgres    false    235            ?            1259    44012    store_message    TABLE     ?  CREATE TABLE public.store_message (
    id bigint NOT NULL,
    name character varying(30) NOT NULL,
    lastname character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    body text NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    activate boolean NOT NULL,
    element_id bigint NOT NULL,
    user_id integer
);
 !   DROP TABLE public.store_message;
       public         heap    postgres    false            ?            1259    44010    store_message_id_seq    SEQUENCE     }   CREATE SEQUENCE public.store_message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.store_message_id_seq;
       public          postgres    false    232                       0    0    store_message_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.store_message_id_seq OWNED BY public.store_message.id;
          public          postgres    false    231            ?            1259    35821    store_payment    TABLE     ?  CREATE TABLE public.store_payment (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    update_at timestamp with time zone NOT NULL,
    payment_id character varying(255) NOT NULL,
    payer_id character varying(255) NOT NULL,
    price numeric(10,2) NOT NULL,
    element_id bigint NOT NULL,
    user_id integer NOT NULL,
    cupon_id bigint,
    discount numeric(10,2),
    price_discount numeric(10,2)
);
 !   DROP TABLE public.store_payment;
       public         heap    postgres    false            ?            1259    35819    store_payment_id_seq    SEQUENCE     }   CREATE SEQUENCE public.store_payment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.store_payment_id_seq;
       public          postgres    false    228                       0    0    store_payment_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.store_payment_id_seq OWNED BY public.store_payment.id;
          public          postgres    false    227            ?           2604    35602    Listelement_category id    DEFAULT     ?   ALTER TABLE ONLY public."Listelement_category" ALTER COLUMN id SET DEFAULT nextval('public."Listelement_category_id_seq"'::regclass);
 H   ALTER TABLE public."Listelement_category" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            ?           2604    35624    Listelement_element id    DEFAULT     ?   ALTER TABLE ONLY public."Listelement_element" ALTER COLUMN id SET DEFAULT nextval('public."Listelement_element_id_seq"'::regclass);
 G   ALTER TABLE public."Listelement_element" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            ?           2604    35847    Listelement_elementeimages id    DEFAULT     ?   ALTER TABLE ONLY public."Listelement_elementeimages" ALTER COLUMN id SET DEFAULT nextval('public."Listelement_elementeimages_id_seq"'::regclass);
 N   ALTER TABLE public."Listelement_elementeimages" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            ?           2604    35613    Listelement_type id    DEFAULT     ~   ALTER TABLE ONLY public."Listelement_type" ALTER COLUMN id SET DEFAULT nextval('public."Listelement_type_id_seq"'::regclass);
 D   ALTER TABLE public."Listelement_type" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            ?           2604    35805    account_userprofile id    DEFAULT     ?   ALTER TABLE ONLY public.account_userprofile ALTER COLUMN id SET DEFAULT nextval('public.account_userprofile_id_seq'::regclass);
 E   ALTER TABLE public.account_userprofile ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            ?           2604    35665    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            ?           2604    35675    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            ?           2604    35657    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            ?           2604    35683    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            ?           2604    35693    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            ?           2604    35701    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            ?           2604    35761    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            ?           2604    35647    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            ?           2604    35591    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            ?           2604    44038    django_site id    DEFAULT     p   ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);
 =   ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            ?           2604    52230    social_auth_association id    DEFAULT     ?   ALTER TABLE ONLY public.social_auth_association ALTER COLUMN id SET DEFAULT nextval('public.social_auth_association_id_seq'::regclass);
 I   ALTER TABLE public.social_auth_association ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    238    238            ?           2604    52241    social_auth_code id    DEFAULT     z   ALTER TABLE ONLY public.social_auth_code ALTER COLUMN id SET DEFAULT nextval('public.social_auth_code_id_seq'::regclass);
 B   ALTER TABLE public.social_auth_code ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            ?           2604    52249    social_auth_nonce id    DEFAULT     |   ALTER TABLE ONLY public.social_auth_nonce ALTER COLUMN id SET DEFAULT nextval('public.social_auth_nonce_id_seq'::regclass);
 C   ALTER TABLE public.social_auth_nonce ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241    242            ?           2604    52286    social_auth_partial id    DEFAULT     ?   ALTER TABLE ONLY public.social_auth_partial ALTER COLUMN id SET DEFAULT nextval('public.social_auth_partial_id_seq'::regclass);
 E   ALTER TABLE public.social_auth_partial ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245    246            ?           2604    52257    social_auth_usersocialauth id    DEFAULT     ?   ALTER TABLE ONLY public.social_auth_usersocialauth ALTER COLUMN id SET DEFAULT nextval('public.social_auth_usersocialauth_id_seq'::regclass);
 L   ALTER TABLE public.social_auth_usersocialauth ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243    244            ?           2604    44049    store_cupon id    DEFAULT     p   ALTER TABLE ONLY public.store_cupon ALTER COLUMN id SET DEFAULT nextval('public.store_cupon_id_seq'::regclass);
 =   ALTER TABLE public.store_cupon ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            ?           2604    44015    store_message id    DEFAULT     t   ALTER TABLE ONLY public.store_message ALTER COLUMN id SET DEFAULT nextval('public.store_message_id_seq'::regclass);
 ?   ALTER TABLE public.store_message ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            ?           2604    35824    store_payment id    DEFAULT     t   ALTER TABLE ONLY public.store_payment ALTER COLUMN id SET DEFAULT nextval('public.store_payment_id_seq'::regclass);
 ?   ALTER TABLE public.store_payment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            ?          0    35599    Listelement_category 
   TABLE DATA           F   COPY public."Listelement_category" (id, title, url_clean) FROM stdin;
    public          postgres    false    203   ?6      ?          0    35621    Listelement_element 
   TABLE DATA           o   COPY public."Listelement_element" (id, title, url_clean, description, category_id, type_id, price) FROM stdin;
    public          postgres    false    207   ?6      ?          0    35844    Listelement_elementeimages 
   TABLE DATA           T   COPY public."Listelement_elementeimages" (id, title, cover, element_id) FROM stdin;
    public          postgres    false    230   ?8      ?          0    35610    Listelement_type 
   TABLE DATA           B   COPY public."Listelement_type" (id, title, url_clean) FROM stdin;
    public          postgres    false    205   H9      ?          0    35802    account_userprofile 
   TABLE DATA           B   COPY public.account_userprofile (id, avatar, user_id) FROM stdin;
    public          postgres    false    226   z9      ?          0    35662 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    213   ?9      ?          0    35672    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    215   ?9      ?          0    35654    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    211   :      ?          0    35680 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    217   =      ?          0    35690    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    219   u>      ?          0    35698    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    221   ?>      ?          0    35758    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    223   ??      ?          0    35644    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    209   c@      ?          0    35588    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   NA      ?          0    35789    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    224   ?D      ?          0    44035    django_site 
   TABLE DATA           7   COPY public.django_site (id, domain, name) FROM stdin;
    public          postgres    false    234   ?I      ?          0    52227    social_auth_association 
   TABLE DATA           o   COPY public.social_auth_association (id, server_url, handle, secret, issued, lifetime, assoc_type) FROM stdin;
    public          postgres    false    238   ?I      ?          0    52238    social_auth_code 
   TABLE DATA           R   COPY public.social_auth_code (id, email, code, verified, "timestamp") FROM stdin;
    public          postgres    false    240   J      ?          0    52246    social_auth_nonce 
   TABLE DATA           N   COPY public.social_auth_nonce (id, server_url, "timestamp", salt) FROM stdin;
    public          postgres    false    242   !J      ?          0    52283    social_auth_partial 
   TABLE DATA           _   COPY public.social_auth_partial (id, token, next_step, backend, data, "timestamp") FROM stdin;
    public          postgres    false    246   >J      ?          0    52254    social_auth_usersocialauth 
   TABLE DATA           o   COPY public.social_auth_usersocialauth (id, provider, uid, extra_data, user_id, created, modified) FROM stdin;
    public          postgres    false    244   [J      ?          0    44046    store_cupon 
   TABLE DATA           W   COPY public.store_cupon (id, code, valid_from, valid_to, discount, active) FROM stdin;
    public          postgres    false    236   ?L      ?          0    44012    store_message 
   TABLE DATA           y   COPY public.store_message (id, name, lastname, email, body, created, updated, activate, element_id, user_id) FROM stdin;
    public          postgres    false    232   KM      ?          0    35821    store_payment 
   TABLE DATA           ?   COPY public.store_payment (id, created_at, update_at, payment_id, payer_id, price, element_id, user_id, cupon_id, discount, price_discount) FROM stdin;
    public          postgres    false    228   TN                 0    0    Listelement_category_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."Listelement_category_id_seq"', 3, true);
          public          postgres    false    202                       0    0    Listelement_element_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Listelement_element_id_seq"', 5, true);
          public          postgres    false    206                       0    0 !   Listelement_elementeimages_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."Listelement_elementeimages_id_seq"', 6, true);
          public          postgres    false    229                       0    0    Listelement_type_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Listelement_type_id_seq"', 2, true);
          public          postgres    false    204                        0    0    account_userprofile_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.account_userprofile_id_seq', 5, true);
          public          postgres    false    225            !           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    212            "           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    214            #           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 80, true);
          public          postgres    false    210            $           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    218            %           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 19, true);
          public          postgres    false    216            &           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 80, true);
          public          postgres    false    220            '           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 62, true);
          public          postgres    false    222            (           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 20, true);
          public          postgres    false    208            )           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 47, true);
          public          postgres    false    200            *           0    0    django_site_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);
          public          postgres    false    233            +           0    0    social_auth_association_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.social_auth_association_id_seq', 1, false);
          public          postgres    false    237            ,           0    0    social_auth_code_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.social_auth_code_id_seq', 1, false);
          public          postgres    false    239            -           0    0    social_auth_nonce_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.social_auth_nonce_id_seq', 1, false);
          public          postgres    false    241            .           0    0    social_auth_partial_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.social_auth_partial_id_seq', 1, false);
          public          postgres    false    245            /           0    0 !   social_auth_usersocialauth_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.social_auth_usersocialauth_id_seq', 17, true);
          public          postgres    false    243            0           0    0    store_cupon_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.store_cupon_id_seq', 3, true);
          public          postgres    false    235            1           0    0    store_message_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.store_message_id_seq', 7, true);
          public          postgres    false    231            2           0    0    store_payment_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.store_payment_id_seq', 14, true);
          public          postgres    false    227            ?           2606    35607 .   Listelement_category Listelement_category_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."Listelement_category"
    ADD CONSTRAINT "Listelement_category_pkey" PRIMARY KEY (id);
 \   ALTER TABLE ONLY public."Listelement_category" DROP CONSTRAINT "Listelement_category_pkey";
       public            postgres    false    203            ?           2606    35629 ,   Listelement_element Listelement_element_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."Listelement_element"
    ADD CONSTRAINT "Listelement_element_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."Listelement_element" DROP CONSTRAINT "Listelement_element_pkey";
       public            postgres    false    207                       2606    35849 :   Listelement_elementeimages Listelement_elementeimages_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public."Listelement_elementeimages"
    ADD CONSTRAINT "Listelement_elementeimages_pkey" PRIMARY KEY (id);
 h   ALTER TABLE ONLY public."Listelement_elementeimages" DROP CONSTRAINT "Listelement_elementeimages_pkey";
       public            postgres    false    230            ?           2606    35618 &   Listelement_type Listelement_type_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."Listelement_type"
    ADD CONSTRAINT "Listelement_type_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."Listelement_type" DROP CONSTRAINT "Listelement_type_pkey";
       public            postgres    false    205                       2606    35807 ,   account_userprofile account_userprofile_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.account_userprofile
    ADD CONSTRAINT account_userprofile_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.account_userprofile DROP CONSTRAINT account_userprofile_pkey;
       public            postgres    false    226            	           2606    35809 3   account_userprofile account_userprofile_user_id_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.account_userprofile
    ADD CONSTRAINT account_userprofile_user_id_key UNIQUE (user_id);
 ]   ALTER TABLE ONLY public.account_userprofile DROP CONSTRAINT account_userprofile_user_id_key;
       public            postgres    false    226            ?           2606    35787    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    213            ?           2606    35714 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    215    215            ?           2606    35677 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    215            ?           2606    35667    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    213            ?           2606    35705 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    211    211            ?           2606    35659 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    211            ?           2606    35695 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    219            ?           2606    35729 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    219    219            ?           2606    35685    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    217            ?           2606    35703 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    221            ?           2606    35743 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    221    221            ?           2606    35781     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    217                        2606    35767 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    223            ?           2606    35651 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    209    209            ?           2606    35649 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    209            ?           2606    35596 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201                       2606    35796 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    224                       2606    44042 ,   django_site django_site_domain_a2e37b91_uniq 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);
 V   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_domain_a2e37b91_uniq;
       public            postgres    false    234                       2606    44040    django_site django_site_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
       public            postgres    false    234            !           2606    52235 4   social_auth_association social_auth_association_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.social_auth_association
    ADD CONSTRAINT social_auth_association_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.social_auth_association DROP CONSTRAINT social_auth_association_pkey;
       public            postgres    false    238            #           2606    52280 O   social_auth_association social_auth_association_server_url_handle_078befa2_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.social_auth_association
    ADD CONSTRAINT social_auth_association_server_url_handle_078befa2_uniq UNIQUE (server_url, handle);
 y   ALTER TABLE ONLY public.social_auth_association DROP CONSTRAINT social_auth_association_server_url_handle_078befa2_uniq;
       public            postgres    false    238    238            '           2606    52278 :   social_auth_code social_auth_code_email_code_801b2d02_uniq 
   CONSTRAINT     |   ALTER TABLE ONLY public.social_auth_code
    ADD CONSTRAINT social_auth_code_email_code_801b2d02_uniq UNIQUE (email, code);
 d   ALTER TABLE ONLY public.social_auth_code DROP CONSTRAINT social_auth_code_email_code_801b2d02_uniq;
       public            postgres    false    240    240            )           2606    52243 &   social_auth_code social_auth_code_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.social_auth_code
    ADD CONSTRAINT social_auth_code_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.social_auth_code DROP CONSTRAINT social_auth_code_pkey;
       public            postgres    false    240            ,           2606    52251 (   social_auth_nonce social_auth_nonce_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.social_auth_nonce
    ADD CONSTRAINT social_auth_nonce_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.social_auth_nonce DROP CONSTRAINT social_auth_nonce_pkey;
       public            postgres    false    242            .           2606    52268 K   social_auth_nonce social_auth_nonce_server_url_timestamp_salt_f6284463_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.social_auth_nonce
    ADD CONSTRAINT social_auth_nonce_server_url_timestamp_salt_f6284463_uniq UNIQUE (server_url, "timestamp", salt);
 u   ALTER TABLE ONLY public.social_auth_nonce DROP CONSTRAINT social_auth_nonce_server_url_timestamp_salt_f6284463_uniq;
       public            postgres    false    242    242    242            7           2606    52292 ,   social_auth_partial social_auth_partial_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.social_auth_partial
    ADD CONSTRAINT social_auth_partial_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.social_auth_partial DROP CONSTRAINT social_auth_partial_pkey;
       public            postgres    false    246            0           2606    52262 :   social_auth_usersocialauth social_auth_usersocialauth_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialauth_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.social_auth_usersocialauth DROP CONSTRAINT social_auth_usersocialauth_pkey;
       public            postgres    false    244            2           2606    52264 P   social_auth_usersocialauth social_auth_usersocialauth_provider_uid_e6b5e668_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialauth_provider_uid_e6b5e668_uniq UNIQUE (provider, uid);
 z   ALTER TABLE ONLY public.social_auth_usersocialauth DROP CONSTRAINT social_auth_usersocialauth_provider_uid_e6b5e668_uniq;
       public            postgres    false    244    244                       2606    44053     store_cupon store_cupon_code_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.store_cupon
    ADD CONSTRAINT store_cupon_code_key UNIQUE (code);
 J   ALTER TABLE ONLY public.store_cupon DROP CONSTRAINT store_cupon_code_key;
       public            postgres    false    236                       2606    44051    store_cupon store_cupon_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.store_cupon
    ADD CONSTRAINT store_cupon_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.store_cupon DROP CONSTRAINT store_cupon_pkey;
       public            postgres    false    236                       2606    44020     store_message store_message_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.store_message
    ADD CONSTRAINT store_message_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.store_message DROP CONSTRAINT store_message_pkey;
       public            postgres    false    232                       2606    35829     store_payment store_payment_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.store_payment
    ADD CONSTRAINT store_payment_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.store_payment DROP CONSTRAINT store_payment_pkey;
       public            postgres    false    228            ?           1259    35640 (   Listelement_element_category_id_fe434cc4    INDEX     s   CREATE INDEX "Listelement_element_category_id_fe434cc4" ON public."Listelement_element" USING btree (category_id);
 >   DROP INDEX public."Listelement_element_category_id_fe434cc4";
       public            postgres    false    207            ?           1259    35641 $   Listelement_element_type_id_bd883558    INDEX     k   CREATE INDEX "Listelement_element_type_id_bd883558" ON public."Listelement_element" USING btree (type_id);
 :   DROP INDEX public."Listelement_element_type_id_bd883558";
       public            postgres    false    207                       1259    35855 .   Listelement_elementeimages_element_id_f7c6434d    INDEX        CREATE INDEX "Listelement_elementeimages_element_id_f7c6434d" ON public."Listelement_elementeimages" USING btree (element_id);
 D   DROP INDEX public."Listelement_elementeimages_element_id_f7c6434d";
       public            postgres    false    230            ?           1259    35788    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    213            ?           1259    35725 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    215            ?           1259    35726 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    215            ?           1259    35711 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    211            ?           1259    35741 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    219            ?           1259    35740 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    219            ?           1259    35755 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    221            ?           1259    35754 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    221            ?           1259    35782     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    217            ?           1259    35778 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    223                       1259    35779 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    223                       1259    35798 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    224                       1259    35797 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    224                       1259    44043     django_site_domain_a2e37b91_like    INDEX     n   CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);
 4   DROP INDEX public.django_site_domain_a2e37b91_like;
       public            postgres    false    234            $           1259    52269    social_auth_code_code_a2393167    INDEX     [   CREATE INDEX social_auth_code_code_a2393167 ON public.social_auth_code USING btree (code);
 2   DROP INDEX public.social_auth_code_code_a2393167;
       public            postgres    false    240            %           1259    52270 #   social_auth_code_code_a2393167_like    INDEX     t   CREATE INDEX social_auth_code_code_a2393167_like ON public.social_auth_code USING btree (code varchar_pattern_ops);
 7   DROP INDEX public.social_auth_code_code_a2393167_like;
       public            postgres    false    240            *           1259    52296 #   social_auth_code_timestamp_176b341f    INDEX     g   CREATE INDEX social_auth_code_timestamp_176b341f ON public.social_auth_code USING btree ("timestamp");
 7   DROP INDEX public.social_auth_code_timestamp_176b341f;
       public            postgres    false    240            8           1259    52298 &   social_auth_partial_timestamp_50f2119f    INDEX     m   CREATE INDEX social_auth_partial_timestamp_50f2119f ON public.social_auth_partial USING btree ("timestamp");
 :   DROP INDEX public.social_auth_partial_timestamp_50f2119f;
       public            postgres    false    246            9           1259    52293 "   social_auth_partial_token_3017fea3    INDEX     c   CREATE INDEX social_auth_partial_token_3017fea3 ON public.social_auth_partial USING btree (token);
 6   DROP INDEX public.social_auth_partial_token_3017fea3;
       public            postgres    false    246            :           1259    52294 '   social_auth_partial_token_3017fea3_like    INDEX     |   CREATE INDEX social_auth_partial_token_3017fea3_like ON public.social_auth_partial USING btree (token varchar_pattern_ops);
 ;   DROP INDEX public.social_auth_partial_token_3017fea3_like;
       public            postgres    false    246            3           1259    52301 '   social_auth_usersocialauth_uid_796e51dc    INDEX     m   CREATE INDEX social_auth_usersocialauth_uid_796e51dc ON public.social_auth_usersocialauth USING btree (uid);
 ;   DROP INDEX public.social_auth_usersocialauth_uid_796e51dc;
       public            postgres    false    244            4           1259    52302 ,   social_auth_usersocialauth_uid_796e51dc_like    INDEX     ?   CREATE INDEX social_auth_usersocialauth_uid_796e51dc_like ON public.social_auth_usersocialauth USING btree (uid varchar_pattern_ops);
 @   DROP INDEX public.social_auth_usersocialauth_uid_796e51dc_like;
       public            postgres    false    244            5           1259    52276 +   social_auth_usersocialauth_user_id_17d28448    INDEX     u   CREATE INDEX social_auth_usersocialauth_user_id_17d28448 ON public.social_auth_usersocialauth USING btree (user_id);
 ?   DROP INDEX public.social_auth_usersocialauth_user_id_17d28448;
       public            postgres    false    244                       1259    44054    store_cupon_code_324d0ecf_like    INDEX     j   CREATE INDEX store_cupon_code_324d0ecf_like ON public.store_cupon USING btree (code varchar_pattern_ops);
 2   DROP INDEX public.store_cupon_code_324d0ecf_like;
       public            postgres    false    236                       1259    44031 !   store_message_element_id_f900f1c3    INDEX     a   CREATE INDEX store_message_element_id_f900f1c3 ON public.store_message USING btree (element_id);
 5   DROP INDEX public.store_message_element_id_f900f1c3;
       public            postgres    false    232                       1259    44032    store_message_user_id_2dfbf1b7    INDEX     [   CREATE INDEX store_message_user_id_2dfbf1b7 ON public.store_message USING btree (user_id);
 2   DROP INDEX public.store_message_user_id_2dfbf1b7;
       public            postgres    false    232            
           1259    44060    store_payment_cupon_id_ab49554b    INDEX     ]   CREATE INDEX store_payment_cupon_id_ab49554b ON public.store_payment USING btree (cupon_id);
 3   DROP INDEX public.store_payment_cupon_id_ab49554b;
       public            postgres    false    228                       1259    35840 !   store_payment_element_id_40b04c0a    INDEX     a   CREATE INDEX store_payment_element_id_40b04c0a ON public.store_payment USING btree (element_id);
 5   DROP INDEX public.store_payment_element_id_40b04c0a;
       public            postgres    false    228                       1259    35841    store_payment_user_id_5edbc869    INDEX     [   CREATE INDEX store_payment_user_id_5edbc869 ON public.store_payment USING btree (user_id);
 2   DROP INDEX public.store_payment_user_id_5edbc869;
       public            postgres    false    228            ;           2606    35630 I   Listelement_element Listelement_element_category_id_fe434cc4_fk_Listeleme    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Listelement_element"
    ADD CONSTRAINT "Listelement_element_category_id_fe434cc4_fk_Listeleme" FOREIGN KEY (category_id) REFERENCES public."Listelement_category"(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public."Listelement_element" DROP CONSTRAINT "Listelement_element_category_id_fe434cc4_fk_Listeleme";
       public          postgres    false    207    203    3026            <           2606    35635 O   Listelement_element Listelement_element_type_id_bd883558_fk_Listelement_type_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Listelement_element"
    ADD CONSTRAINT "Listelement_element_type_id_bd883558_fk_Listelement_type_id" FOREIGN KEY (type_id) REFERENCES public."Listelement_type"(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public."Listelement_element" DROP CONSTRAINT "Listelement_element_type_id_bd883558_fk_Listelement_type_id";
       public          postgres    false    3028    207    205            J           2606    35850 P   Listelement_elementeimages Listelement_elemente_element_id_f7c6434d_fk_Listeleme    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Listelement_elementeimages"
    ADD CONSTRAINT "Listelement_elemente_element_id_f7c6434d_fk_Listeleme" FOREIGN KEY (element_id) REFERENCES public."Listelement_element"(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."Listelement_elementeimages" DROP CONSTRAINT "Listelement_elemente_element_id_f7c6434d_fk_Listeleme";
       public          postgres    false    207    230    3031            F           2606    35810 H   account_userprofile account_userprofile_user_id_5afa3c7a_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.account_userprofile
    ADD CONSTRAINT account_userprofile_user_id_5afa3c7a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.account_userprofile DROP CONSTRAINT account_userprofile_user_id_5afa3c7a_fk_auth_user_id;
       public          postgres    false    226    3054    217            ?           2606    35720 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    211    215    3041            >           2606    35715 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    3046    215    213            =           2606    35706 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    209    211    3036            A           2606    35735 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    213    219    3046            @           2606    35730 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    219    3054    217            C           2606    35749 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    211    3041    221            B           2606    35744 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    3054    217    221            D           2606    35768 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    223    209    3036            E           2606    35773 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    3054    223    217            M           2606    52271 V   social_auth_usersocialauth social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.social_auth_usersocialauth DROP CONSTRAINT social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id;
       public          postgres    false    244    3054    217            K           2606    44021 I   store_message store_message_element_id_f900f1c3_fk_Listelement_element_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.store_message
    ADD CONSTRAINT "store_message_element_id_f900f1c3_fk_Listelement_element_id" FOREIGN KEY (element_id) REFERENCES public."Listelement_element"(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.store_message DROP CONSTRAINT "store_message_element_id_f900f1c3_fk_Listelement_element_id";
       public          postgres    false    232    3031    207            L           2606    44026 <   store_message store_message_user_id_2dfbf1b7_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.store_message
    ADD CONSTRAINT store_message_user_id_2dfbf1b7_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.store_message DROP CONSTRAINT store_message_user_id_2dfbf1b7_fk_auth_user_id;
       public          postgres    false    3054    232    217            I           2606    44055 ?   store_payment store_payment_cupon_id_ab49554b_fk_store_cupon_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.store_payment
    ADD CONSTRAINT store_payment_cupon_id_ab49554b_fk_store_cupon_id FOREIGN KEY (cupon_id) REFERENCES public.store_cupon(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.store_payment DROP CONSTRAINT store_payment_cupon_id_ab49554b_fk_store_cupon_id;
       public          postgres    false    228    236    3103            G           2606    35830 I   store_payment store_payment_element_id_40b04c0a_fk_Listelement_element_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.store_payment
    ADD CONSTRAINT "store_payment_element_id_40b04c0a_fk_Listelement_element_id" FOREIGN KEY (element_id) REFERENCES public."Listelement_element"(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.store_payment DROP CONSTRAINT "store_payment_element_id_40b04c0a_fk_Listelement_element_id";
       public          postgres    false    3031    228    207            H           2606    35835 <   store_payment store_payment_user_id_5edbc869_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.store_payment
    ADD CONSTRAINT store_payment_user_id_5edbc869_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.store_payment DROP CONSTRAINT store_payment_user_id_5edbc869_fk_auth_user_id;
       public          postgres    false    228    3054    217            ?   +   x?3?LN,IM?/?T0?3u??????1B?????? ?K?      ?   ?  x??U͎?0>'O1?H?(-l?\??V+?L?!u???c/з???x???SmUV+?{!J?M????{U??Q|
?:??P????m?2҇I?H;&?} q??Wꅢ8'6M??s,F?J??YS?P{Q????????2?=BeOv??h??ꮅ??O-M5x??YH??&F???O???5?SJ?z??`L;?ǟ\ʘ?T?A?(??T??hd/????!?Î??R???.??Nb,`i?.9?a???[lD?sg? @Qb&?VМ??L?3?y???3?H??$???)???Ao,??&d?????h?ٵ??0e????㖞7?"?/??(lP???.??^?J?????ي?8?7%??=M???2?K*4 u<>(1?Tu*????%}?X?F?S(?+y?-{'??΁"???j?gӵ]W?g
?D?G.^?*.T|)*.T[??R???|??9_??j??rq7?T??y*i??\?Y??YW?v??o???????E?K???~??S?s[?????+      ?   Y   x?3??J,H,?/??KM/?/???MLO-և??e?s?r?p???ebHA?M9?rJ??a*?s3?P&\f0IF?J?Jb???? ?X.j      ?   "   x?3?,(?O)M.ɇ3?9??K?W? ??      ?   H   x?3?,-N-?O,K,I,?72024?00?741656??*H?4??2EQ????????oTb?
Ue????? ??      ?      x?????? ? ?      ?      x?????? ? ?      ?     x?m????0?????L??-\?5&Md????h???/u?8?w$??????j?^??|???=?ƙ??ִ?5!??a?yEŭ6^??o?[<?w???od?e?>?u???$-o??)??ۣ>Ų@`OY?"I#pgQy{ί?4$?~[w@q)κq?)!,??:KI ??p#
^??#	?Zw??9??G?????#???9LG?`/'_?i?Vm?ś??־c?	?0R?u<?C?>d?Mr?D????v$?W?V???)?????<???3D?ɕ~6???x????*s???	?j?tkB??K?\?t?'RE?ب??(????lXE??9L??`?????g?t8?l?j;3,A0U?c!?A?g???+?U?s?3޽	&O??-ۜJ?!??s?CL C???A?q1??????M????K{T%PꡉS5\Ꟊ??*??Ĵ??j|7?W?S??k??7/?9??%???0M????>*??4$%??????〗?U?????k,?&;i??b?m[e?N????D?GX'?c{?(̈?z????/l??BRS????I????"b+????a]??8l{v??Ö??
?u)^9??Y???Mzsa?????~?N?(?	=	????88??r??j???????????`̨*?%0,???????v???ھ?;K???????>z?$h????-T?AƼ??̒v?9????¶?ܑii{???#3???t?ȝ?!@qG?̯?????
M      ?   G  x?m?_O?0 ???S@a?]?lKL,٘?(????6d???ނE??????~)$?U??s??DhQCE?F??}?Y ???? ?j???Jޏ8?r??g4?T?qP?pn-??????k?/ 2lC??X?A?E?Ap? ??(??(?:-6Ն?J?6hZ??[8??W=?%^m??2?8{?w?l?t??O?`?????m"??`?Y%??4A_?E)2?KQ????"?J?????-??APǐ`r?Y?9?tv?$JY??rF???WV?*??^NXQ??8?}???D??ߗ??$??Ƨ?????K?6?=??tM????}      ?      x?????? ? ?      ?     x?%һq@!D?ط?C/??þhI8?ڏՏ?/?x䋤^????~?9/?ta??a??1a?8KL?&?j????	??K??K???K??%{Ⓗp?޸d\?o\?Br,Br!9???!9??EH?&$??c?㐒s???H???伳?????,Rr6)9????????\??\FI.?$WP????[\Q??)?5??ڔ?:??^??6Zr;-????IK?ۉ?MK??%??%?a$?b$?1?????IF?#yn߾?#y6#y[?^?????f?      ?   ?   x?u?A? @??p?^@? 꺫??Dbi,$?&?}?Mj?????)$V(*i/H??V\iV? t?b*a???9????????
@3?D"Ө]R?|?ԇ?F??O??Դw?e,??<??o?W??@?D?R-?X?mcW\??5????c:?<i      ?   ?   x?m??n? ??퇙Jڮ?;?&M?x?)?????L?Ik??|???8?G?Z?7??BuN"?3?7+???M4??W??l???_Ahu??o??Di?ْ x??????W??	?7?????K??4:?\	?_????;??Gt?=}??????$????C+6??=8$?}??>G/?־????G?p???9~p?a#?Cq8??W5??/??"o??      ?   ?  x???]r?:???*??q?[-	????[?b????S?l ????*?????QH?)??W???>B?+??/?*A?????f2%?????095uϢ??????H?Q)?|?=W?JIѨ?$/.e?\??Q?F??%???̍???????w\?qyQl3@)?#C?93X??S_6?{???;?j?;??B??,????????????F?$?#*??C?W?o?շ???ƖF?????????R?BSv"?i???_??z
?$m?	Ą?%f??4?~??2D`B?%?ʻ~t????Ξ?R?`?D?l???l'w??n?l?ud??4?N??UY?}?va?}?6??????{?nI???	?nz??e??0?D?+?^Bq~llJ?Q n?s???0??ڀ1?pe???????"???h?*S???z/?W?????I?oE?
#??8?8??S3?M????"r????y?ǹ???{??`֧P??H?d? ?1?8Q~??B?Ș?>??%彤//_?? :??IRJ?&?5??I?? x??	?s?#0?1??+?????0??H Q?F???oj??L??P????G??0???}Jw?M?Ea2??nX'????t???Y?J?@-?????=???> ??A?hmJ?t͉?????Ji?FpC?z?J?+>?????E??pf$>~?B$?e?ٿ;????oXL????7A???1???L?ZJ'H?m J)#@?v??xyH?Q?A??z?~p?Dz??????W?5owS???ހ]k__?w}ɧ??/?m??W?p?H????3JJچ?H???? ?
??B?x??0|?eኟ|P
??@?G, 亏???J!U\?1?R??????ڗ?e%J?+?k̷gMtլQ/?o}????????_?+3      ?   ?  x?U?ǎ?h?u?S???~?w?Pd?d??s~?qմFj?n???;:s??0%????87???h??R??3?7??8%-+K?JS>??B?~g??%qL???Q??+???f?
=????U?dp??!K??P=??F8??L>=??90???A??R????L??ސeꚹ-?,ˆ4??ƈh2?ޛ??NIq????Ɗ???f
o??q?,?֖k?$???ر.?#Ğo??·?֔R^\??:??
?Q???????6B?K\??>??zF???ѳ᷻??a???vl2:???_MJ?]#h?wu??,`?N??9!?????g???HR?	??????n??آ݆?9??q߅????r???9?3?'??/%:???Uf?*,p??zbt??{p؅89xE??6jٯ(1?:?]/+s?O?*?'u?b??G~2]?)???A??*???????)??.?­?E?Wn???J?F???9??|f?~?|Y?9?R#e??MO1??܏?NS ????їT??~????п??3>??h???D|?eX???_:&`k?bM@E,5?~Ż<?\?r1x?QIE???]?\w???????*??F???????Ѧ!????;t?3춬?v ?ch?a?ܛ?Hz}<???????T䌓g?$
R??[H?e?s?t4?VdS>??l@?)U-o?{GFBU??LA鏔-v?????񜂚5??|bƋ w@C?c?????'E??Y???v2V?.?A2X??????.??X:Gė?S?-\]?!4,?b)?{PZ?V??/s?̫,?????a???????R???????!?A?#?rlT???D??)x??5ٽ??6??!H?????w???Q???L
*?T??"g?qK <?.???DCz?????R~r?_???Qg~R??V^Й.?Ҿ?2X!CA?.٫,?Q??q?V??S??????x?ImL2?? l??ռeR2uz4?,,?I??)????F?~?)yc[tZ?:/?A??VLn?"???׺8B?{??H?IO???,h??C?&??EQ??C(*??????;^?i?KK ?l??9u??????\|y[A??*QknIw^U-68?s?MI"?f-A2t9?????}?(??????B?=??6???r??P F	I҃ݝR\?~`??c??/u?ރ$?I? ??>?>>?[?        ?   1   x?3?442?3 BC+4.?gIjqIJVb^z?^r~.?+F??? -??      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   f  x?u?K??P???+?XG???????c@񅒤?+\塀?????LM????M???%??^B?;??]B߽?a?I??o???<?7|$ $?^8Vނ?e??Ij?<????W??ʍMY?5:u?e?wܒ?B?Oyy??T???zR????;Kc?9???b?Q????EV??X???XqM??ռ?}?޺bf-?"??Ǆ???X?պ9)L?׶j?|?d??????????3a?????s??O❢k?$6Ꭓ5?pK<?OH?C?|? ?0?????1???J?<??/???.t??a?$?v?A(Q ?zEm??ۖ?9?}h\ D?l4/?q??c?$?w??c??Z??q
?xK?s2?W#?,?uǏ0??EcY֋?o???3U??H?=}U??2?Ԫ??zJ?=????Н?L??n?XJ2???5?v?w?????fζfh??s?? ???d?<?ՑR????"???R?6?3?"?͂f?">w??7??@?Q^n?h?? ò?i???x???I??q?*r?ͷ?@????^?????-WNw[Ϋ??/k?P
}Lu????z?!?????H?cI?D?r??	/`????~???? ?      ?   j   x?M??	1DѳTEP????Q-?B?ퟬ71??1???_߉?i?9nl?-?f????+?Py?zn????D?σ??`b?!?X?y?DϘ?hh??UVy?㮪u~$?      ?   ?   x???An? ?5>?/?3??	z?lhm5D1H??\?nJ[[???/??P??)??G??8?|??sܿ>??%??ξ??K?|???C?Q(??A?(Y?v?:???Pb#??t,O???~?oi???ѡ??[???~?j?Cv??H٢-k??\C??u???_?R?'?)?uda???Q?٠?1?j??4|'??>Zp?,??F??fC*?,?%m -???"͒}P"	Ȍvk{E??TU??s??      ?   Z   x???=? @??=???jaSو?q????????{?@H80Y??^բ?즁???Z$??8??z??vm?_[Ws????0?Έ?sW     