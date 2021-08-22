PGDMP             	            y        
   radiencedb    13.3    13.3 }    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16703 
   radiencedb    DATABASE     n   CREATE DATABASE radiencedb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE radiencedb;
                postgres    false            �            1259    25357    asset_damage    TABLE     !  CREATE TABLE public.asset_damage (
    a_type character varying(50) NOT NULL,
    a_id character varying(50),
    a_location character varying(50),
    a_specifications character varying(50),
    a_criticality_index character varying(50),
    a_operational_limits character varying(50)
);
     DROP TABLE public.asset_damage;
       public         heap    postgres    false            �            1259    16705 
   cb_details    TABLE     �   CREATE TABLE public.cb_details (
    cb_id character varying(10) NOT NULL,
    cb_loc character varying(10),
    cb_status character varying(2)
);
    DROP TABLE public.cb_details;
       public         heap    postgres    false            �            1259    25413    crew_requirement    TABLE     �   CREATE TABLE public.crew_requirement (
    crew_type character varying(50) NOT NULL,
    manpower character varying(50),
    crew_location character varying(50)
);
 $   DROP TABLE public.crew_requirement;
       public         heap    postgres    false            �            1259    16708    economic_mode    TABLE     C  CREATE TABLE public.economic_mode (
    id integer NOT NULL,
    eco_timestamp timestamp without time zone,
    eco_tf character varying(10),
    eco_gf character varying(10),
    eco_tif character varying(10),
    eco_dcl character varying(10),
    eco_clnl character varying(10),
    eco_res_val character varying(10)
);
 !   DROP TABLE public.economic_mode;
       public         heap    postgres    false            �            1259    16711    economic_mode_id_seq    SEQUENCE     �   CREATE SEQUENCE public.economic_mode_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.economic_mode_id_seq;
       public          postgres    false    201            �           0    0    economic_mode_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.economic_mode_id_seq OWNED BY public.economic_mode.id;
          public          postgres    false    202            �            1259    16713    event_details    TABLE     =  CREATE TABLE public.event_details (
    id integer NOT NULL,
    event_timestamp timestamp without time zone,
    event_type character varying(10),
    event_lat character varying(10),
    event_long character varying(10),
    event_wind_speed character varying(10),
    event_wind_direction character varying(10)
);
 !   DROP TABLE public.event_details;
       public         heap    postgres    false            �            1259    16716    event_details_id_seq    SEQUENCE     �   CREATE SEQUENCE public.event_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.event_details_id_seq;
       public          postgres    false    203            �           0    0    event_details_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.event_details_id_seq OWNED BY public.event_details.id;
          public          postgres    false    204            �            1259    16718    expected_outage    TABLE       CREATE TABLE public.expected_outage (
    id integer NOT NULL,
    eo_timestamp timestamp without time zone,
    eo_fault_loc character varying(10),
    eo_iso_sec_detail character varying(10),
    eo_wind_speed character varying(10),
    eo_wind_direction character varying(10)
);
 #   DROP TABLE public.expected_outage;
       public         heap    postgres    false            �            1259    16721    expected_outage_id_seq    SEQUENCE     �   CREATE SEQUENCE public.expected_outage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.expected_outage_id_seq;
       public          postgres    false    205            �           0    0    expected_outage_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.expected_outage_id_seq OWNED BY public.expected_outage.id;
          public          postgres    false    206            �            1259    16723 
   gu_details    TABLE     $  CREATE TABLE public.gu_details (
    g_id character varying(10) NOT NULL,
    g_kv character varying(10),
    g_unit_id character varying(10),
    g_status character varying(20),
    g_ctrl character varying(10),
    g_mw_measured character varying(10),
    g_rating character varying(10)
);
    DROP TABLE public.gu_details;
       public         heap    postgres    false            �            1259    25428    inventory_available    TABLE     �   CREATE TABLE public.inventory_available (
    inv_type character varying(50) NOT NULL,
    specifications character varying(50),
    quantity character varying(50)
);
 '   DROP TABLE public.inventory_available;
       public         heap    postgres    false            �            1259    25403    inventory_estimation    TABLE     �   CREATE TABLE public.inventory_estimation (
    inv_type character varying(50) NOT NULL,
    inv_specifications character varying(50),
    inv_requirement character varying(50),
    inv_availability_status character varying(50)
);
 (   DROP TABLE public.inventory_estimation;
       public         heap    postgres    false            �            1259    16726    load_details    TABLE     -  CREATE TABLE public.load_details (
    l_id character varying(10) NOT NULL,
    l_kv character varying(10),
    l_unit_id character varying(10),
    l_status character varying(20),
    l_type character varying(10),
    l_mw_measured character varying(10),
    l_mvar_measured character varying(10)
);
     DROP TABLE public.load_details;
       public         heap    postgres    false            �            1259    16729    radience_dynamic_nodesGIS    TABLE       CREATE TABLE public."radience_dynamic_nodesGIS" (
    id integer NOT NULL,
    node_lat character varying(20) NOT NULL,
    node_long character varying(20) NOT NULL,
    node_code character varying(10),
    node_desc character varying(100),
    node_status integer NOT NULL
);
 /   DROP TABLE public."radience_dynamic_nodesGIS";
       public         heap    postgres    false            �            1259    16732     radience_dynamic_nodesGIS_id_seq    SEQUENCE     �   CREATE SEQUENCE public."radience_dynamic_nodesGIS_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."radience_dynamic_nodesGIS_id_seq";
       public          postgres    false    209            �           0    0     radience_dynamic_nodesGIS_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."radience_dynamic_nodesGIS_id_seq" OWNED BY public."radience_dynamic_nodesGIS".id;
          public          postgres    false    210            �            1259    16734    radience_dynamic_nodes_links    TABLE     _  CREATE TABLE public.radience_dynamic_nodes_links (
    id integer NOT NULL,
    from_node_lat character varying(20) NOT NULL,
    from_node_long character varying(20) NOT NULL,
    to_node_lat character varying(20) NOT NULL,
    to_node_long character varying(20) NOT NULL,
    link_desc character varying(20),
    link_status character varying(5)
);
 0   DROP TABLE public.radience_dynamic_nodes_links;
       public         heap    postgres    false            �            1259    16737 #   radience_dynamic_nodes_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.radience_dynamic_nodes_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.radience_dynamic_nodes_links_id_seq;
       public          postgres    false    211            �           0    0 #   radience_dynamic_nodes_links_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.radience_dynamic_nodes_links_id_seq OWNED BY public.radience_dynamic_nodes_links.id;
          public          postgres    false    212            �            1259    16739    radience_output_edge_file    TABLE     �   CREATE TABLE public.radience_output_edge_file (
    name character varying(20) NOT NULL,
    from_node character varying(6),
    to_node character varying(6),
    status character varying(1)
);
 -   DROP TABLE public.radience_output_edge_file;
       public         heap    postgres    false            �            1259    16742    radience_output_node_file    TABLE     #  CREATE TABLE public.radience_output_node_file (
    name character varying(6) NOT NULL,
    voltage character varying(6),
    load character varying(6),
    gen character varying(6),
    kind character varying(6),
    critical character varying(1),
    pathredundacy character varying(1)
);
 -   DROP TABLE public.radience_output_node_file;
       public         heap    postgres    false            �            1259    16745    radience_static_nodesGIS    TABLE     �   CREATE TABLE public."radience_static_nodesGIS" (
    id integer NOT NULL,
    node_lat character varying(20) NOT NULL,
    node_long character varying(20) NOT NULL,
    node_code character varying(10),
    node_desc character varying(100)
);
 .   DROP TABLE public."radience_static_nodesGIS";
       public         heap    postgres    false            �            1259    16748    radience_static_nodesGIS_id_seq    SEQUENCE     �   CREATE SEQUENCE public."radience_static_nodesGIS_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."radience_static_nodesGIS_id_seq";
       public          postgres    false    215            �           0    0    radience_static_nodesGIS_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."radience_static_nodesGIS_id_seq" OWNED BY public."radience_static_nodesGIS".id;
          public          postgres    false    216            �            1259    16750    radience_static_nodes_links    TABLE     8  CREATE TABLE public.radience_static_nodes_links (
    id integer NOT NULL,
    from_node_lat character varying(20) NOT NULL,
    from_node_long character varying(20) NOT NULL,
    to_node_lat character varying(20) NOT NULL,
    to_node_long character varying(20) NOT NULL,
    link_desc character varying(20)
);
 /   DROP TABLE public.radience_static_nodes_links;
       public         heap    postgres    false            �            1259    16753 "   radience_static_nodes_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.radience_static_nodes_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.radience_static_nodes_links_id_seq;
       public          postgres    false    217            �           0    0 "   radience_static_nodes_links_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.radience_static_nodes_links_id_seq OWNED BY public.radience_static_nodes_links.id;
          public          postgres    false    218            �            1259    25433    resilience_analysis    TABLE     �   CREATE TABLE public.resilience_analysis (
    asset character varying(50) NOT NULL,
    impact_magnitude character varying(50),
    with_technology1 character varying(50),
    with_technology2 character varying(50)
);
 '   DROP TABLE public.resilience_analysis;
       public         heap    postgres    false            �            1259    25463    resilience_analysis_casea    TABLE     �   CREATE TABLE public.resilience_analysis_casea (
    property character varying(50) NOT NULL,
    _value character varying(50)
);
 -   DROP TABLE public.resilience_analysis_casea;
       public         heap    postgres    false            �            1259    25468    resilience_analysis_caseb    TABLE     �   CREATE TABLE public.resilience_analysis_caseb (
    property character varying(50) NOT NULL,
    _value character varying(50)
);
 -   DROP TABLE public.resilience_analysis_caseb;
       public         heap    postgres    false            �            1259    25438    resilience_investment_analysis    TABLE     �   CREATE TABLE public.resilience_investment_analysis (
    property character varying(50) NOT NULL,
    _value character varying(50)
);
 2   DROP TABLE public.resilience_investment_analysis;
       public         heap    postgres    false            �            1259    16755    resiliency_scores    TABLE     !  CREATE TABLE public.resiliency_scores (
    id integer NOT NULL,
    res_timestamp timestamp without time zone,
    res_rg character varying(10),
    res_tif character varying(10),
    res_dcl character varying(10),
    res_clnl character varying(10),
    res_val character varying(10)
);
 %   DROP TABLE public.resiliency_scores;
       public         heap    postgres    false            �            1259    16758    resiliency_scores_id_seq    SEQUENCE     �   CREATE SEQUENCE public.resiliency_scores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.resiliency_scores_id_seq;
       public          postgres    false    219            �           0    0    resiliency_scores_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.resiliency_scores_id_seq OWNED BY public.resiliency_scores.id;
          public          postgres    false    220            �            1259    16760    resilient_mode    TABLE     m  CREATE TABLE public.resilient_mode (
    id integer NOT NULL,
    resilient_timestamp timestamp without time zone,
    resilient_tf character varying(10),
    resilient_gf character varying(10),
    resilient_tif character varying(10),
    resilient_dcl character varying(10),
    resilient_clnl character varying(10),
    resilient_resval character varying(10)
);
 "   DROP TABLE public.resilient_mode;
       public         heap    postgres    false            �            1259    16763    resilient_mode_id_seq    SEQUENCE     �   CREATE SEQUENCE public.resilient_mode_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.resilient_mode_id_seq;
       public          postgres    false    221            �           0    0    resilient_mode_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.resilient_mode_id_seq OWNED BY public.resilient_mode.id;
          public          postgres    false    222            �            1259    16765    subs_details    TABLE     �   CREATE TABLE public.subs_details (
    sub_id character varying(10) NOT NULL,
    sub_loc character varying(10),
    sub_out_feed character varying(10),
    sub_remarks character varying(20)
);
     DROP TABLE public.subs_details;
       public         heap    postgres    false            �            1259    16768    system_info    TABLE     �   CREATE TABLE public.system_info (
    key_code character varying(6) NOT NULL,
    key_desc character varying(20),
    key_val integer
);
    DROP TABLE public.system_info;
       public         heap    postgres    false            �            1259    16771    threat_impacts    TABLE     �  CREATE TABLE public.threat_impacts (
    id integer NOT NULL,
    threat_timestamp timestamp without time zone,
    threat_vol character varying(10),
    threat_freq character varying(10),
    threat_sch_load character varying(10),
    threat_sch_gen character varying(10),
    threat_present_load character varying(10),
    threat_present_gen character varying(10),
    threat_affected_loc character varying(10)
);
 "   DROP TABLE public.threat_impacts;
       public         heap    postgres    false            �            1259    16774    threat_impacts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.threat_impacts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.threat_impacts_id_seq;
       public          postgres    false    225            �           0    0    threat_impacts_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.threat_impacts_id_seq OWNED BY public.threat_impacts.id;
          public          postgres    false    226            �            1259    25362    threat_type    TABLE     v   CREATE TABLE public.threat_type (
    t_property character varying(50) NOT NULL,
    t_value character varying(50)
);
    DROP TABLE public.threat_type;
       public         heap    postgres    false            �            1259    16776    trans_details    TABLE     �   CREATE TABLE public.trans_details (
    trans_id character varying(10) NOT NULL,
    trans_rating character varying(10),
    trans_loc character varying(10),
    trans_op_condition character varying(20)
);
 !   DROP TABLE public.trans_details;
       public         heap    postgres    false            �           2604    16779    economic_mode id    DEFAULT     t   ALTER TABLE ONLY public.economic_mode ALTER COLUMN id SET DEFAULT nextval('public.economic_mode_id_seq'::regclass);
 ?   ALTER TABLE public.economic_mode ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    201            �           2604    16780    event_details id    DEFAULT     t   ALTER TABLE ONLY public.event_details ALTER COLUMN id SET DEFAULT nextval('public.event_details_id_seq'::regclass);
 ?   ALTER TABLE public.event_details ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    203            �           2604    16781    expected_outage id    DEFAULT     x   ALTER TABLE ONLY public.expected_outage ALTER COLUMN id SET DEFAULT nextval('public.expected_outage_id_seq'::regclass);
 A   ALTER TABLE public.expected_outage ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    205            �           2604    16782    radience_dynamic_nodesGIS id    DEFAULT     �   ALTER TABLE ONLY public."radience_dynamic_nodesGIS" ALTER COLUMN id SET DEFAULT nextval('public."radience_dynamic_nodesGIS_id_seq"'::regclass);
 M   ALTER TABLE public."radience_dynamic_nodesGIS" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            �           2604    16783    radience_dynamic_nodes_links id    DEFAULT     �   ALTER TABLE ONLY public.radience_dynamic_nodes_links ALTER COLUMN id SET DEFAULT nextval('public.radience_dynamic_nodes_links_id_seq'::regclass);
 N   ALTER TABLE public.radience_dynamic_nodes_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211            �           2604    16784    radience_static_nodesGIS id    DEFAULT     �   ALTER TABLE ONLY public."radience_static_nodesGIS" ALTER COLUMN id SET DEFAULT nextval('public."radience_static_nodesGIS_id_seq"'::regclass);
 L   ALTER TABLE public."radience_static_nodesGIS" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    16785    radience_static_nodes_links id    DEFAULT     �   ALTER TABLE ONLY public.radience_static_nodes_links ALTER COLUMN id SET DEFAULT nextval('public.radience_static_nodes_links_id_seq'::regclass);
 M   ALTER TABLE public.radience_static_nodes_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            �           2604    16786    resiliency_scores id    DEFAULT     |   ALTER TABLE ONLY public.resiliency_scores ALTER COLUMN id SET DEFAULT nextval('public.resiliency_scores_id_seq'::regclass);
 C   ALTER TABLE public.resiliency_scores ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            �           2604    16787    resilient_mode id    DEFAULT     v   ALTER TABLE ONLY public.resilient_mode ALTER COLUMN id SET DEFAULT nextval('public.resilient_mode_id_seq'::regclass);
 @   ALTER TABLE public.resilient_mode ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            �           2604    16788    threat_impacts id    DEFAULT     v   ALTER TABLE ONLY public.threat_impacts ALTER COLUMN id SET DEFAULT nextval('public.threat_impacts_id_seq'::regclass);
 @   ALTER TABLE public.threat_impacts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            z          0    25357    asset_damage 
   TABLE DATA           }   COPY public.asset_damage (a_type, a_id, a_location, a_specifications, a_criticality_index, a_operational_limits) FROM stdin;
    public          postgres    false    228   �       ^          0    16705 
   cb_details 
   TABLE DATA           >   COPY public.cb_details (cb_id, cb_loc, cb_status) FROM stdin;
    public          postgres    false    200   t�       }          0    25413    crew_requirement 
   TABLE DATA           N   COPY public.crew_requirement (crew_type, manpower, crew_location) FROM stdin;
    public          postgres    false    231   ��       _          0    16708    economic_mode 
   TABLE DATA           s   COPY public.economic_mode (id, eco_timestamp, eco_tf, eco_gf, eco_tif, eco_dcl, eco_clnl, eco_res_val) FROM stdin;
    public          postgres    false    201   �       a          0    16713    event_details 
   TABLE DATA           �   COPY public.event_details (id, event_timestamp, event_type, event_lat, event_long, event_wind_speed, event_wind_direction) FROM stdin;
    public          postgres    false    203   *�       c          0    16718    expected_outage 
   TABLE DATA           ~   COPY public.expected_outage (id, eo_timestamp, eo_fault_loc, eo_iso_sec_detail, eo_wind_speed, eo_wind_direction) FROM stdin;
    public          postgres    false    205   G�       e          0    16723 
   gu_details 
   TABLE DATA           f   COPY public.gu_details (g_id, g_kv, g_unit_id, g_status, g_ctrl, g_mw_measured, g_rating) FROM stdin;
    public          postgres    false    207   d�       ~          0    25428    inventory_available 
   TABLE DATA           Q   COPY public.inventory_available (inv_type, specifications, quantity) FROM stdin;
    public          postgres    false    232   ϡ       |          0    25403    inventory_estimation 
   TABLE DATA           v   COPY public.inventory_estimation (inv_type, inv_specifications, inv_requirement, inv_availability_status) FROM stdin;
    public          postgres    false    230   1�       f          0    16726    load_details 
   TABLE DATA           o   COPY public.load_details (l_id, l_kv, l_unit_id, l_status, l_type, l_mw_measured, l_mvar_measured) FROM stdin;
    public          postgres    false    208   ��       g          0    16729    radience_dynamic_nodesGIS 
   TABLE DATA           q   COPY public."radience_dynamic_nodesGIS" (id, node_lat, node_long, node_code, node_desc, node_status) FROM stdin;
    public          postgres    false    209   �       i          0    16734    radience_dynamic_nodes_links 
   TABLE DATA           �   COPY public.radience_dynamic_nodes_links (id, from_node_lat, from_node_long, to_node_lat, to_node_long, link_desc, link_status) FROM stdin;
    public          postgres    false    211   ��       k          0    16739    radience_output_edge_file 
   TABLE DATA           U   COPY public.radience_output_edge_file (name, from_node, to_node, status) FROM stdin;
    public          postgres    false    213   ��       l          0    16742    radience_output_node_file 
   TABLE DATA           l   COPY public.radience_output_node_file (name, voltage, load, gen, kind, critical, pathredundacy) FROM stdin;
    public          postgres    false    214   S�       m          0    16745    radience_static_nodesGIS 
   TABLE DATA           c   COPY public."radience_static_nodesGIS" (id, node_lat, node_long, node_code, node_desc) FROM stdin;
    public          postgres    false    215   ڨ       o          0    16750    radience_static_nodes_links 
   TABLE DATA           ~   COPY public.radience_static_nodes_links (id, from_node_lat, from_node_long, to_node_lat, to_node_long, link_desc) FROM stdin;
    public          postgres    false    217   P�                 0    25433    resilience_analysis 
   TABLE DATA           j   COPY public.resilience_analysis (asset, impact_magnitude, with_technology1, with_technology2) FROM stdin;
    public          postgres    false    233   m�       �          0    25463    resilience_analysis_casea 
   TABLE DATA           E   COPY public.resilience_analysis_casea (property, _value) FROM stdin;
    public          postgres    false    235   �       �          0    25468    resilience_analysis_caseb 
   TABLE DATA           E   COPY public.resilience_analysis_caseb (property, _value) FROM stdin;
    public          postgres    false    236   ��       �          0    25438    resilience_investment_analysis 
   TABLE DATA           J   COPY public.resilience_investment_analysis (property, _value) FROM stdin;
    public          postgres    false    234   ��       q          0    16755    resiliency_scores 
   TABLE DATA           k   COPY public.resiliency_scores (id, res_timestamp, res_rg, res_tif, res_dcl, res_clnl, res_val) FROM stdin;
    public          postgres    false    219   ��       s          0    16760    resilient_mode 
   TABLE DATA           �   COPY public.resilient_mode (id, resilient_timestamp, resilient_tf, resilient_gf, resilient_tif, resilient_dcl, resilient_clnl, resilient_resval) FROM stdin;
    public          postgres    false    221   &�      u          0    16765    subs_details 
   TABLE DATA           R   COPY public.subs_details (sub_id, sub_loc, sub_out_feed, sub_remarks) FROM stdin;
    public          postgres    false    223   C�      v          0    16768    system_info 
   TABLE DATA           B   COPY public.system_info (key_code, key_desc, key_val) FROM stdin;
    public          postgres    false    224   ��      w          0    16771    threat_impacts 
   TABLE DATA           �   COPY public.threat_impacts (id, threat_timestamp, threat_vol, threat_freq, threat_sch_load, threat_sch_gen, threat_present_load, threat_present_gen, threat_affected_loc) FROM stdin;
    public          postgres    false    225   .�      {          0    25362    threat_type 
   TABLE DATA           :   COPY public.threat_type (t_property, t_value) FROM stdin;
    public          postgres    false    229   K�      y          0    16776    trans_details 
   TABLE DATA           ^   COPY public.trans_details (trans_id, trans_rating, trans_loc, trans_op_condition) FROM stdin;
    public          postgres    false    227   �      �           0    0    economic_mode_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.economic_mode_id_seq', 1, false);
          public          postgres    false    202            �           0    0    event_details_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.event_details_id_seq', 1, false);
          public          postgres    false    204            �           0    0    expected_outage_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.expected_outage_id_seq', 1, false);
          public          postgres    false    206            �           0    0     radience_dynamic_nodesGIS_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."radience_dynamic_nodesGIS_id_seq"', 1, false);
          public          postgres    false    210            �           0    0 #   radience_dynamic_nodes_links_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.radience_dynamic_nodes_links_id_seq', 1, false);
          public          postgres    false    212            �           0    0    radience_static_nodesGIS_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."radience_static_nodesGIS_id_seq"', 1, false);
          public          postgres    false    216            �           0    0 "   radience_static_nodes_links_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.radience_static_nodes_links_id_seq', 1, false);
          public          postgres    false    218            �           0    0    resiliency_scores_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.resiliency_scores_id_seq', 8543, true);
          public          postgres    false    220            �           0    0    resilient_mode_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.resilient_mode_id_seq', 1, false);
          public          postgres    false    222            �           0    0    threat_impacts_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.threat_impacts_id_seq', 1, false);
          public          postgres    false    226            �           2606    25361    asset_damage asset_damage_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.asset_damage
    ADD CONSTRAINT asset_damage_pkey PRIMARY KEY (a_type);
 H   ALTER TABLE ONLY public.asset_damage DROP CONSTRAINT asset_damage_pkey;
       public            postgres    false    228            �           2606    16790    cb_details cb_details_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.cb_details
    ADD CONSTRAINT cb_details_pkey PRIMARY KEY (cb_id);
 D   ALTER TABLE ONLY public.cb_details DROP CONSTRAINT cb_details_pkey;
       public            postgres    false    200            �           2606    25417 &   crew_requirement crew_requirement_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.crew_requirement
    ADD CONSTRAINT crew_requirement_pkey PRIMARY KEY (crew_type);
 P   ALTER TABLE ONLY public.crew_requirement DROP CONSTRAINT crew_requirement_pkey;
       public            postgres    false    231            �           2606    16792     economic_mode economic_mode_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.economic_mode
    ADD CONSTRAINT economic_mode_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.economic_mode DROP CONSTRAINT economic_mode_pkey;
       public            postgres    false    201            �           2606    16794     event_details event_details_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.event_details
    ADD CONSTRAINT event_details_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.event_details DROP CONSTRAINT event_details_pkey;
       public            postgres    false    203            �           2606    16796 $   expected_outage expected_outage_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.expected_outage
    ADD CONSTRAINT expected_outage_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.expected_outage DROP CONSTRAINT expected_outage_pkey;
       public            postgres    false    205            �           2606    16798    gu_details gu_details_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.gu_details
    ADD CONSTRAINT gu_details_pkey PRIMARY KEY (g_id);
 D   ALTER TABLE ONLY public.gu_details DROP CONSTRAINT gu_details_pkey;
       public            postgres    false    207            �           2606    25432 ,   inventory_available inventory_available_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.inventory_available
    ADD CONSTRAINT inventory_available_pkey PRIMARY KEY (inv_type);
 V   ALTER TABLE ONLY public.inventory_available DROP CONSTRAINT inventory_available_pkey;
       public            postgres    false    232            �           2606    25407 .   inventory_estimation inventory_estimation_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.inventory_estimation
    ADD CONSTRAINT inventory_estimation_pkey PRIMARY KEY (inv_type);
 X   ALTER TABLE ONLY public.inventory_estimation DROP CONSTRAINT inventory_estimation_pkey;
       public            postgres    false    230            �           2606    16800    load_details load_details_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.load_details
    ADD CONSTRAINT load_details_pkey PRIMARY KEY (l_id);
 H   ALTER TABLE ONLY public.load_details DROP CONSTRAINT load_details_pkey;
       public            postgres    false    208            �           2606    16802 8   radience_dynamic_nodesGIS radience_dynamic_nodesGIS_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."radience_dynamic_nodesGIS"
    ADD CONSTRAINT "radience_dynamic_nodesGIS_pkey" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public."radience_dynamic_nodesGIS" DROP CONSTRAINT "radience_dynamic_nodesGIS_pkey";
       public            postgres    false    209            �           2606    16804 >   radience_dynamic_nodes_links radience_dynamic_nodes_links_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.radience_dynamic_nodes_links
    ADD CONSTRAINT radience_dynamic_nodes_links_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.radience_dynamic_nodes_links DROP CONSTRAINT radience_dynamic_nodes_links_pkey;
       public            postgres    false    211            �           2606    16806 8   radience_output_edge_file radience_output_edge_file_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.radience_output_edge_file
    ADD CONSTRAINT radience_output_edge_file_pkey PRIMARY KEY (name);
 b   ALTER TABLE ONLY public.radience_output_edge_file DROP CONSTRAINT radience_output_edge_file_pkey;
       public            postgres    false    213            �           2606    16808 8   radience_output_node_file radience_output_node_file_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.radience_output_node_file
    ADD CONSTRAINT radience_output_node_file_pkey PRIMARY KEY (name);
 b   ALTER TABLE ONLY public.radience_output_node_file DROP CONSTRAINT radience_output_node_file_pkey;
       public            postgres    false    214            �           2606    16810 6   radience_static_nodesGIS radience_static_nodesGIS_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public."radience_static_nodesGIS"
    ADD CONSTRAINT "radience_static_nodesGIS_pkey" PRIMARY KEY (id);
 d   ALTER TABLE ONLY public."radience_static_nodesGIS" DROP CONSTRAINT "radience_static_nodesGIS_pkey";
       public            postgres    false    215            �           2606    16812 <   radience_static_nodes_links radience_static_nodes_links_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.radience_static_nodes_links
    ADD CONSTRAINT radience_static_nodes_links_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.radience_static_nodes_links DROP CONSTRAINT radience_static_nodes_links_pkey;
       public            postgres    false    217            �           2606    25467 8   resilience_analysis_casea resilience_analysis_casea_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.resilience_analysis_casea
    ADD CONSTRAINT resilience_analysis_casea_pkey PRIMARY KEY (property);
 b   ALTER TABLE ONLY public.resilience_analysis_casea DROP CONSTRAINT resilience_analysis_casea_pkey;
       public            postgres    false    235            �           2606    25472 8   resilience_analysis_caseb resilience_analysis_caseb_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.resilience_analysis_caseb
    ADD CONSTRAINT resilience_analysis_caseb_pkey PRIMARY KEY (property);
 b   ALTER TABLE ONLY public.resilience_analysis_caseb DROP CONSTRAINT resilience_analysis_caseb_pkey;
       public            postgres    false    236            �           2606    25437 ,   resilience_analysis resilience_analysis_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.resilience_analysis
    ADD CONSTRAINT resilience_analysis_pkey PRIMARY KEY (asset);
 V   ALTER TABLE ONLY public.resilience_analysis DROP CONSTRAINT resilience_analysis_pkey;
       public            postgres    false    233            �           2606    25442 B   resilience_investment_analysis resilience_investment_analysis_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.resilience_investment_analysis
    ADD CONSTRAINT resilience_investment_analysis_pkey PRIMARY KEY (property);
 l   ALTER TABLE ONLY public.resilience_investment_analysis DROP CONSTRAINT resilience_investment_analysis_pkey;
       public            postgres    false    234            �           2606    16814 (   resiliency_scores resiliency_scores_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.resiliency_scores
    ADD CONSTRAINT resiliency_scores_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.resiliency_scores DROP CONSTRAINT resiliency_scores_pkey;
       public            postgres    false    219            �           2606    16816 "   resilient_mode resilient_mode_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.resilient_mode
    ADD CONSTRAINT resilient_mode_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.resilient_mode DROP CONSTRAINT resilient_mode_pkey;
       public            postgres    false    221            �           2606    16818    subs_details subs_details_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.subs_details
    ADD CONSTRAINT subs_details_pkey PRIMARY KEY (sub_id);
 H   ALTER TABLE ONLY public.subs_details DROP CONSTRAINT subs_details_pkey;
       public            postgres    false    223            �           2606    16820    system_info system_info_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.system_info
    ADD CONSTRAINT system_info_pkey PRIMARY KEY (key_code);
 F   ALTER TABLE ONLY public.system_info DROP CONSTRAINT system_info_pkey;
       public            postgres    false    224            �           2606    16822 "   threat_impacts threat_impacts_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.threat_impacts
    ADD CONSTRAINT threat_impacts_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.threat_impacts DROP CONSTRAINT threat_impacts_pkey;
       public            postgres    false    225            �           2606    25366    threat_type threat_type_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.threat_type
    ADD CONSTRAINT threat_type_pkey PRIMARY KEY (t_property);
 F   ALTER TABLE ONLY public.threat_type DROP CONSTRAINT threat_type_pkey;
       public            postgres    false    229            �           2606    16824     trans_details trans_details_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.trans_details
    ADD CONSTRAINT trans_details_pkey PRIMARY KEY (trans_id);
 J   ALTER TABLE ONLY public.trans_details DROP CONSTRAINT trans_details_pkey;
       public            postgres    false    227            z   G   x�sv2�t6500��K�)��S.��440Pp�-(�4���5U�
)J3�1Ģ*;̑Ӕ3L��@�+F��� I�      ^   4   x�sv2��rv�4�rv2�t�t��42�!� �	D������(���� bW+      }   E   x�s�L�IQ��+.HM.�/�4��K�)��S.��
J-H�,RIM��44@�	.-(ȩ�Ș"K��qqq ��J      _      x������ � �      a      x������ � �      c      x������ � �      e   [   x�U�K
�0E���bJ�8�

���ӪEg��wWgX�	��Wd,^��@$���[G�(5p��j�jCk�wmL�+���[˳=]�N�      ~   R   x�)J3�440�s�44�rv�s�9M��J�SAG 6�rNL��K-)�0ɇ�io�f�^#��f\1z\\\ 0��      |   `   x�)J3�440�s�4�44�rv�s��4���[iqj1���id
����2�RK@�a��`U!EiF@�`�L8-�����k����� h�      f   `   x�U͹�@D�x\�9"Ģ$������'D�,W�;[��c�d�q�~x<��Zj�V�Sk�B�D��Ro�Ҁv?��(��1��A�BD7%!^      g   �  x����nTA��ݧ�$�����* ��$Q
� ($����3�""{�����}|��;-G�R�vW�rT��N�(����㟇��ǧ���//w��o��=�<\����Z���;�c�Q�2�k��Dp��⤘q�8g��MT
��	@����P�0�b�~�������Jp���áT3��*�HQ�R �j��&	��:�J�Pҁ��(��,��� ; �w۬�lFitB\��aB�~x��~z����Փ�xb|0'�����2�t��\\��j\J 4�^ź�R,�|9,���lM}��0�ޮn�@5Y@k�@�n-%�U�A'PcC�&Ӧ��[�q-=��t�	��e<4"o���8�ޡnć����$v��nm����+T6��#��'aE$���MbxYX�ۖe�i�k��J=��S+��C�>qK�z�Oix���$��o�Q�Q�ڊ�:�Qj4��=%w����r���`�@@T�t�dNŨHM"����wy*�󓇯�^9E;тHGѯ�t�2��Dw���������D�e8����DU���?CA��h��tt`W�	@$�r�2����E+
�&3����?�ִoF�#�Oig�.�W�~"�/�I�~��g��D���A4?W�J��_����/�k�      i      x������ � �      k   �  x�e�Ir� е|�x`�e�O��!�ܿ"�h[�%�_V�����ˊ�_�d���6��P'�+�	��]kBŏ]#r�����
hh ��ȒԨe{�(`��\c?�q�cB��`��򋏜aՆ���8�O�m�e�!�f��$� m'�|wP���D�w�#`G�mv�WMأ�?HFV&T�;�Kr�8� Q�%DI �+j�g��Q@E��P5S�P8�Q � |�N@��R9�� ��L�A2
�;�c%�S���bu;W��&T͍�A���;;�Zd(R)S�epn����\�ǳo�7�����o��O���ʕ���T�Q*C�
6�.�ul�V jqܠ8n~#t�z��y�T��M�˲�#�-�      l   w  x�m�=N1���)��؎��#!$4!A�5�/qf��a��}q���x��aJ��������@�EdCqIiq?�T��w{{���E	&�AB�Id%�!MCZ.�Y9�C}�����</��
d@
�5Cs��21��+�f
j�X��e �d�"�n!��I�f.��t�:��L�X���#�Gb(��.C��S������v�N����h�xY)���Y}b��g-+��^ӖI�Y�4:۪�V�N+�f�O;k��L��:��K	->^�u,�T³zA���|�og~"��f��LE�F������	c�~������x>�������p����9�k�ӵ�XW�Ғ�r�j��; �|�t߷m���      m   f  x���=o1�g�Wx��&�(��)-еKd(�6E�����$�AsFpK��̣]�k���+R�.�;�nq���ӟ����燇���׻�/�/ߟ~��'��?�x� �E
WEDK��,Ed�I�pRM*���(5��-�����vU�% /O�?~��޿MG���x� %�b��0�rGB�X�l��f���U�%ÊZb�J�8;{bµ�浌�Ln@�r�p�}7�0-��������;F[G�'�p�!=�z �I(��J�u9I����:ZE:�nA��>f�%F�
2��6���m��4q�۸e0T��Q�V�/pR�Zn{ЂAy��1j{KZ�u�ڻ��l�n�u�h�2W�z��^��/��Lc��;�%w���7T�^}Y	Ü[�3kՒ���]�:gJ��L}�W�8�t�_܄�������^�tiO��u��Y�V(n�
J�4퉑�.h5���=�-:����uU�;M{�g^i���8v��*Ǐt�ѽv{�4�y�J������k�u�ŧ�]{-��7�e��Ą`��	������B�&/`ݝ�Y�Z+��[��y�<�w�s׻��]7���\���J?_d|JJ���J�� ��_      o      x������ � �         h   x����S�OSH.-.��M-�4400�4�4�415�r�(HM.IMQ�/-ILOUPH)-J,����44� �E\�e�E ����| �R�$37������*b���� � �      �   �   x�e��n�0Dg�+�qAg��-Z��d�-&�P%���WI�Ynཻ��Q�����بB.���}��������װ='�;����Cc͘��`x���D�ఐ46k|Q��>M�y�=���R�2|)w)�H����(�<?�z��S��J��QÓ�9�`ܣr�Ug��~�uʅ���lǱ�W���X�}��a� ڨY1      �   �   x�]O�n�0<{�b? ����B����ĥ�M�PK�:ڵ�=N{�e�Ҍ�Q���>��V�� ��;�J�x��~7����e��d�06����j�{�Ч��N&����D!R٭��M��<����5���R�|)/�H"�������O�`Sn!��^I�t�
4}��3*[*��)����2͒{��3��	 /oT/      �   a   x��(JM,Qp��+�LI-JM�).�K���
IM�����O��5�44�uq*�Q040�u��,F�6�4E�B��L��Ҝ�̼���Ē��b�=... d�"�      q      x���m�䪮��EO�;���ր+�G�D�87n�A_KKrf����{��{���ߐ�������?�~���S�Ə�X�_9/��w�/$���������3?��??t��t>-�����/�x�{��C�+�n���r�?���?"�����������<����������"�[?�������ú����OO�S�>���W3�W5W�y��=��M��ü��������;��qy��O}|Ǽ�{�?����"�{>�#�y�������>r�]��`��q�ş��{>��=�<�{N�#Bռ���G��ü��>rޟ��{N��db0�=ݧ�X��0�=E�>~�����SB���`���6�	ֽ�۔d�;m�u��6壿�M���ܦ|��<�{����n�u�)���j�$X��r�$��<�u%�I����e��p��)���-��H��Y7úEcqJU��ú������ɰnQ�YRm�u��?oȰn��G�3��a�2���<�nq��}~Ǽ��қ�f��K���7S*��qO5o��ſ�s�S�[?v���T��;8��n���~>:��+E���}~WI��u���#7�j��y'u����~|�:ϩ�m������7G���qǶ�I�P�`۠�gA��j�VC�
��/��|��G��2?_�������|��:��_��O���u����������K�,�s����q��v~>��\|�����M�����l�	���aފb|��pݰn����'̜��a����Ͽ��V���_,�0o�|��y��Vس&�%���~~�����[?oSO�uou��X���YQL���u%�f�Ǻ����b�8�ͫ��e�8�ͻ�i���7]�Qƭ�����X��$�ގ��y�����e?`�����t�* ���Z�`��x����q�|��G��+[q��f����9i8;�U�B<��1tZϰd�Cg'���Vj7;�<�/�A�P?�OMU�!�V���%U��2W�z�*���K�!:g�kZ�'��a�$��q��ܒ+P])���o̻G��	P)Poo���"�W@B��i�^+��_�34�����ahu�f���I)ꙛ�WS4T�Ι�%1eD9�w�^ję�[��'�̡>��sW�5�W;.)�M;�ۘeC���콗j���7�jN�Hh.�4����7��VV��-���>1�
8��5���q�>�z	v�O��ѓ`��x��}$ C�Ǔ6 #$:>��f�j�C�Ǖv��CWb��chо�!�������	v�Ǔ60>$��O�g��C��I�^�K�0�=�$��C��J�B���q%/��gdڦ�$�`g{<�+%��`g{<��=M�c����ٱ�w=oȰsz��B�	3�ɑ��<a��8��}� ̜&GҎ�=̜\B�w�'����I���G>a�����]윦�D�-��s�R���&���ӓ.�О�� �5%������T��m�
;�ɓ���WXnb��,kq[1=��&�j�M�]��f$�_M`{�jg�_U�KI�c��j��]4�*�wg�g�>��7z���99��`���ɑ��[	V��﭂k�`�0���q�|<�K��0�����a���.	LXHN�~\X��$�aU jp��54�0�&ĭ���}�+MY�&1PbU�KJC ��\Wz�;_��ǈ�Ě���~g��Ī�L��Ě����!�����m��̈���OP��s�8Sb�@�4�~>�$�Ϗ�̈�[V�i�)*fX�8��KIqf�~qMDS�4��8~�g
�' �q1��ļ�_Y�%�� ;����fO�z�c�(0�ȱsv4�f�s|<I��zR���D��?m�
f�{ƭ)�0s�����f���a税4u=��sT�s5C����I2쇆��D@���C�Ǖ<,�58�W� C;�c��A�E�-��a� �A�Mgp�v�����{���4CA�򪤾�y��������'8y�U�	��n5^Pp>���E��˥V�p3�iƘ[�h���4�9
�;z�-AC�J��E_����㞥��4D���5�!�,�A</mO���|���ܺ���T�~�mC�	2heh�fŉ�j�2)����4!�H��24$��oV�Аu�������#��pNF3F34���Ʃn��!�'ʧ�g~�����4r�g���S��n	�sf�hvs4���а44dͫ�Oh�S^��<�)|�sA��W2ފ{.G��2�G2�Sd�d�	�j�4�AA�4���mo�enGCނ�fhh�.8|�	y%^DC�9�5C�hh85~�=^�pMWKt=Í�p�#���F���
�%�	�Y/�ZI�ƙ/(�������R��Q�.wd�f�Y��x^�h��Z�~�ɱ�ƴGr�X���Hf�����Z���]8�-)0�=9��ig(��=�UE�M ��z�����z�n��o�b��l]`�[k���,}�˚�,}�X�%;K����p,�m޺ ,]�-����E���OI������.nR�Y�Ȋ�	#iI1,�-���+n��C7տ�DR������E��I�y���Ȋ��R5����6�<\��п(*�[RC�v��kUK/+S�VZ���æ@�۱r;������L'������o)�=BPC/�w����mq�9�zh�ߺ��^��chq���6�b�~��M ����,-fa�J],��s7�%�
�:+onZz-�΂�Ko9A#`A��z�KEK3|3p>��$O�|܁��i���z�Jm�v
y����l��Bݏ��ni�$xFt�՛d@tY�W���)#�K��c�񶨄���Ž�5����肫7����̌3�����������z�̎����V��)[T�[�1�h�R>?`���7V���̝ս�]��Yu0����{X�\��B of:���Xٔ�_Z`�~�4�j�l�6P�fn
����XB�%w8��6P�\�g5',M~� =�֖ԏV�����.�͒;�{�-���VN#���=���J(��* }k>�k�4���\��$K#�& 3gU+F�����5�AA�L�kC�4���Uo�%f>�����,+�<Eg�$0P��F�n�>�;��VP�Qݚ�A���*c�Fh�\`�+	��]�����L߰�Jl�nw�g��&�(@_��D�^a,� n��� z	/�,�>%�C����N�)�Ds��	�9h�s�KBuK�ǯ��Q6�3��	B���-� \�������T>v��	�]��A�d�r7�����L�*�n�����z��4���ޯ�$6��}U�6�ť���F/�W�@���'�/�����KI?;m��chi��ߟ[Um0Z�GEϺ۳7����/�0@é~�X�@q۩/���z�.w�jh���\jU/i��`�l] nw���@B�v�%�'�L*n�z��DLٳ-e��H�������c�����c��L�0��$�^R�V��Q��}g�27&iv*��x��s��48
�G�$?l�f:��Ɂ]���3'��v�(���mL^� ݋��*%R��]�����4�,�.�u_�W�C������IXki�
�����ۭ�gH3ͨ%�E���_�m��F�����F�����P���b�g�V��b*f��)�Y%�]t���1�n�.�X�(����P\|��)��V�7�NN���ڠұ&�6@Cp��o0@Ap�����%0�K��@����������K �W�%��n�-wJ,ŏ1];2�dt���y��RTd%G@J�:�[�*8����X�KQ��TJ��K��䂡X�d�>��3�K����C�bɔQZ��X�)nM{�Z��%���2`Œ�O{"z�%$�����r�/�)�l?+i���/6���R�^�M �)�M���ަ�f�ԃ�K��G����J+�B��f�[��vN���
�sRGZ�$���{�b`cR�݁	�ThYS�ܚL��))hX�pOJ    �WƼ�z5e�c�,F)emY'�k�Cg������$�+��h���r�:�dAV�X���m��YA�Le�V)����9�BӪ�1�v��}�+x�frI1�G:���W{2��t~�"�������4}�Gϙ�P��gW�AߤSi��Ve���t���EgF��%h-=�̘4�S���S��&ī灁J���J2ngv̼}i�+��/��y	Òt)LZ�dA�@r��-]�I�o�fH�[�^�C+���=�7�t)ٳ�38�t�'-�0]n39�Η��U�c���(-0�J��W9w
�>��HK�������Πz��Y�2��*�W�V�l0�߅�&N���"ؔd�����Z�t�=}_����*�|�W�L�=�|��E��9sVr����^*��2}�8G�Rtع<�᥼fg�e�V-� j��賸_����2�=���qع�Wج�CҰ�_��:��2y� ��H0t�<I�v�%����#h3Y��_a�b����� �����Z��y���#���@p��s��y�¯#������V���Ϯ�C�* _��V�aM�y�!�v�i��&�@�5��Sʨ�!V�.�ꭂk�w��g6�a9�_`�Z|Xp�MI�ê@X��eMz�Ú��aXvSJR�\��e�Kc�tXƗ�N
� ��ߪ�>+��=��S�lX���dXni{?�XYJ��� �r�/g[�6Ȱ�#W� 2,G���/��q�#I��'<`�8}a����Q�	i��ay��QO v�.H�9Ȱ#�udX�ӷ�:�lX�Si��X ��~c䒑@�e|��� òM I�y�T�a_=:9F�$�a�ԓ�$	2,��;�������0�M��[�a_=��0�a����>;�����6��^N�y�	2,�Wm;���4y����- �rr����N�a9���k����u�ZI�
��I��v=3̜ԑ����T��/�`�_ζ>̜l/����գ�r��i�H�aڏ#9v��ȯ��`ò�գ�N����-����	2,gu�%o� �r־m�Ȱ���-i���~_��H �rV��$�dX�nm���գ�D��__=�~˱���G���^���dX>]Gz]lX>��- ��Oe VC������U���sB�b��Sa��9�m�U�̠��m��'�|����*�|Nx[��v���`�v=��@��s�$ �lX>��'W��6,_�%�YtX�>����/דޤ>,_��!��>,���� >,_�T�`�K]i�����y���6,__�_/lX���~G��=��g�aM���Ra�{�J6`Ú�� ��	:�
x���I�Ú���I��Sy��`�[ɤ��eX��HJ��H���ȡa���>��5H���$ v�W�Ov��J>�������?@�����7ӓ+�J��ꖾ*��}�0)���n����K �ۊ��h$܊����~q��bH�E�k<�p+�S9b8R��TN��M8RqG1�#�q+߽!7�@�Y(��j�[�ۥ�tZ?�.C8�. ���ZZH�G��IC�E��hxs��n��o�Ѕ�Է_8��|~}�����������]ykG�C{_?C���h򆡃�J�n����#��������a�0���C� C��|;�KMKk3V`�w�f�K�T�~u�.c5	���K�-��ٱÛ�ci��鑚 ,u��4����ņ-��a���=`��j�e3G����뀙���Wt03H�%�_�u�7y^� 3GMJSk`渧��o�����:;{�g<m{���s���^K�\�6ו~�yX�+�v���`o��W���_�RT�4���&�! K��~�3�ҦT�}� K�Nd`r��^�{�K{F~�/��i��
ӛ ,�toe�JW���ޕ�wG<��3�C'��S+�4���sm�0tҵ���;�v���N��Tl�sҭ�5כcg!� s�cgu:ky[���Y;��^;gݫc���^�1vκ ��+���^�v���_�$�9k��4KW���k��`�������cg��|]/9v���j�[����� }N��=�`�I�k�g��O�*߀N0����Ӧ!��Tz;C��A��tƕah0�gd�t7W�`��MJ�+e������Ov-:��������i/���~���З�@��ꄡ�#^+8a��_�NXT�j����P��턡/�UOC_�P��'�*}��ӱ�P��̞�^W=a���a���V�u��V�V�]?zQ�+�?��	wt�~��c�>��ѽ���
X�^��|Oq���;{�n�p��ح+Pk4�	�N|O�T�1<�)���ǰ��*y��w�+���Y��f��H8CQrr�=$Ŋ&�5���y�_x�+Z���"'�{��İ'���Xq7�^�%�5�p`�=q9��9�
ԛ$A����o %wu�pb��S�M��9`O|	��X8ܟ_���R,��7H� �{n{npbk�0�*��y��* ;���v�a�m�������ۿ�s�A���7(���L�T@����I�#�a���A�p��@����\i�
J,���48��8�9�#�.Ӎ#�K���;$~=�X�����`��Lr�9�@������y�9��m�<�Տ�+��G��@q/��|���T�a��Ka������ۚ���kt��9v���Q�Wyn�a�����ӶmA�7��`�L7��tX0Ūk!@p˙a��=�|X0w���|X�	�����s���� Ă�[��b!iq��v=�0o�K��`��M��XHnN�tڻR3�����YA���9��A����X�4��飺U Ă�+�����?	�K�ǆ�z� �Bv�2�[!|�����κM� 1�a!�o��>,d��V��rI3�A����v�*谐5)� tX�
���:,d]�]�6,��^��&p.7�^*�p�=����aM����;��QÛ�@�5��1��a��o��o�#�N^�=`Ī@��ې 7�&�jXk�*����_���>�(x�$ء�u� �C��}�v�&Or��[8���`���$�]mg���#,tU�||87h�&��zІU��X�- Ě��Z��bU ��:�ghbM`�)eT� #V�j�5�kkRZ��X�W�h��;�SNrj�*�y�[H'�S<+�I�r1�=�/
��2�$���_!P��V�W�Z�ډ�qK0�=��fn�g��2E4���)�WW2eJJNWOj�B������)��
I����{K���P���窟�Ǖ<��F
��$#.��	4�@A�
����s�^�hGV��a=��&I���`變�Z�`� �f��2�<R;�*hV[�h�`�ڙ���3�S@p��G���w�n�>���%I�[U������o�ϯ�p�R\U�+U?�.`���NC�2��k;d، ��	��5�S���xM����vZ�&��	��#�7,������* ��	�[�0\��UP���	8��0\U m�a{$:|����
��-�A�����(�'Ƞ�Wp�ᛷAqU���`���}R��*�yқ�p5���<)������0sԜ�V*�[U@��`�[M�q�7'�ߪ|~��X9o���V6MI�[��j���>+���Ko�B�Vp���٠��@����D0�M}�h�
`f���)�����TR��ފ69��if���ҳ��hSq�,�~�	|�[1)�\��V����߂~+�)!iA�f ��n����bR����[M���ު�hx��Vp�ah����I��VAo5������NC3�&�h��a�[1ki���v�}��$^��ݪ����j�����Yi�0`�������v�
l��vf�[M�9�<���@��& 3g�mC��*�*�I��@o�<�$�vf�t����n�󳶁܊>[�~f>l�H�V<?2R=ȭxNI��?f/�t��u��    z?�OUk��I����&��^3��,�jgp��\��[z�lX��mI] �q)��[��R\��!`n��pɓU��tV���J�ؗ�Ȧ���/e��0�5�D��zUU���y�W	�rɃ_~��Ž�8I8&�;�?���:5Y��p�K��du���ڸ_���o���r�Q��`����}Z�ǀ��}���,�^��.�0
�'��oW�<;�v8y�{_#�ݒX+
��Q%pU�d� $�S�s(�m:@�ر��u	�	v�9:�J@Gps�8�Y�	.�]�ptl���vO���FB$�Wܒ<���Y��n�豇�cB"�����;�����aA��;�AK��[
E�m�6	���<9��r�CI;�����w�z��uT���.��>�?怎�XE�T��)�ic�ݢ�	�(t��C-�C�k�W�*�J�l7���y��TY0�v�Yadi�t>Z�����MZW	��d�W�e�(�6=U�\ԧ��	�a��4$K���åߦJ �`F���t`���ptd���g�����Yt�1�@�.���.X8�������������cઢKbMG��� ~8	�8�+N]�IVy�r��B@�v��`��4!����3�鷀J�qf
�$邑3S�>٣�67�/,A����]v�$`sӵ��e�������vass���'��3S�Zk �9���S7�9Kb��0yRL)�
�%���`�,)��f�s���ë��Yr�����Y��n�0x��!�`o��Yr�W(7K�K��y��;87�.,��Ͳ�,�������0���e7QMWs�x���Ͳ��'	<� �Ͳ�p�n@�Y�e�5Eo�5Q-����̾;�-�w3���n�}� h7þ�tnk���G��5`��]��t��焪ĵZ�
���tw^�S�w�S�Zbx7;�C�v�����L��x �f ��B����9ө���.�0�����u��ׄ��b@����x� �f���$�_��'AjȮ���� /��/SuGD�m���U6���:�1`��s�\%�g�o�c��% A����ë��ڭX}Jo]���x:����y;8�{�~ˣ��
��5�l���t#��o���G�$#v+߱���ͼ,b= �,��ϯ����B�@ڴ��ʺ��w
=2(駢+V+X ?R�]�<������_��ReIP�<�^�kV��I�b��cqWk���k
R����C@�*��	���=�U��7V�#`ԑ��vC?�Z<:^�R�8a-}�uj�t|�F�݂tK��q5��-{��[�[:4U�idU
.�3�$O�R�D59������@*��!.�n<�=:��N6�[ ߦ1��5���dD��תQ��#52p��q#�z���|����7����O����ɡ#��T�� ��;��
DR���t�(�4�0��7O{��}s�m󒋇~��/��u �xsnD�ټ���(�h�R�{D�`�uP����*��8��!�Tn
�
#(	h�n�4��a�����ݒ���a՜��t�'�_
]\cm""(��$��<�[H�IW��ѓ7'�����dT�ha��B��UVT��OA����^;�"�T`�SܿR�:��E�*6�u=x�qGG^�j�H/6P��Ѡ�
pI�C�?� oZ� a����Ǐ�� ��堩 ��--�Uפ�s0�HQy7�
��q���a.�$X��$_idn�NZА�L�Y㱸�"�?�����5��L��F�nU"�N��N�[�p0��H�YqՄ�Z���$.��qU`ݪDZ�����X�&��H�*�W�$�έ	�YdHuD�9����[�xU8|J�V%B��x� ݚ���1`���)
pnM���[pnUBr��"H�&�^��EpnU 9��p)���ǥ�<Տ�X<���(�&���["(�t=N%�e���/����p��9ĀG ܚ����ۂq����F���$V��	���<��-�&��7��A�U�� ����59�Z�߮c�:�d�~��y=�@bpn�~�j�F��5��4lέJ'��9��5	��#+�s������������<����W�'�s����{	I�{JV� v	���ze��~��ͳSc�J���J�t�*�nE+�I��n%�K
�h˿6)��x�
(p��Y�~`*h]L^&�R�u���q�mJ$�Tԭ$��+��ɇ]fѾF	{�2��T{(��EY7�l���c����y(5y�������,W�-�ꮋ֩I8Q>���*�Հ$`���C]'�S%���9��7��(GX%���dR�I8��0�*�w����\���Ё��A����],&NZF�*X<L5н*X<�d�H� ݪ����vЪ�x��]�����I�Ph?��*���]��W�J�y�]��x^�!i��]d5],��\P�U"8h`Ě�-�&�G����0�i[�%`�jq\���}��ثi���~��I��s��ų��^j�A4	'����@HgS`5��f?�Mb����*vU���&�xո]S�D�Qb�lnZU6�	Xy��*ۄH�vU`zrڧܮI_�B�������򜵒�����晱���%���5�Ё�)�n%ឡ����Vj�.��O����v�kr��[��Z��ꞼJ��,I����錥�h	�e�!%0�ߎw�1\�t�)�J��:���4�@���I�'ɺ`sҬ+��-�=^�'k���V/46�=�tY�!�$��삁]�3�� vC[�/w�5��lk%�m`���i���[G6R=�x�	���S���x�� �-:�Y�@�'����
��0�Pv�4��&�f@�	r���z���aF*5���ok;k u3�6r���ܓ���@"�sr+�� �2(v�`�2�i�ptlɷ�T�I�L�:m��^ �(ŀ}y���&�.���asv�E��Q�csG{�U&�J" I�b?L�r�J���.����ޒ��c��c�����"�_�1��t\S!q�%@�f�a�Al����[��12i�KA��!#U\�4��Mُ�{vΣ׎�ɠ�Ca�M]d�Nb��r��E0��i�N�ETd-N�ݠ"k�&M&u9+�t�	W>���`2�O���LT��\�"�5��W�A��[1���u�CK���[��\:�;~��$e���`a����-x<�tQ":Xa�\������P�$��H���vO�IJx���I��Gb�tN�ɻ��rt:sx��k�t��J.,>� ��&�.�`p��k���g��j�X�g��j�,t¼v))��ק�j^`�0y�w� �eB׎.X<�6��Sp,���z
��eļ�H��A���V
0yT �f�`�=�0��Q��ڒ���^� �0y�%+q��Gwqo:L�L�E��ɣ;����;�w��8?��Fy��Dw�3'�BI):>�w*�WE����m��GL�<k�>B~��*1�W�)|�'�_k\��%+\�\�tz(X���C���uÑ&��5ў���9&�g�&��{LݨO	&�V�����Z�`�m��;��i"��O��,����F6%<�Ta�R��AoMe�yH������%�;)d]�Ҕa�� 	��[Z�[#;�wB��3,��4O�ų��JɰxvS����V�k�����HʰxV�WrB�ų�d���.�t���m���NX<�'ҏ�c�-���w:�����?].~��&?] 6��	���Dz�l~�d��T���P����J쉎6Ƕ���6?��Y�_]���v��v/���p���cr�i	�rL��(!x�䗎%<.����W&]09�%M�0���#<n���h���rW�&0����׽a�k�V�l~�[Y�S���'њn���}�n��1��?3=L~�[�#���k����=�jϤ����7�3)��^���L2�(�]�XF�=X��1���C9�)�[����n3���)�}��V������3Pn��:�qS��������     WU	s0�[�3I����Z�gT��~Vj�]�-q߻����lM])����{In����گ���ȸ9����] ��v�^$�������Ё��*��e�	���[��\�1�:¡��x���M��e��#EIk�����ϻ?��0�n��hM[���>���
{\�c(�
�B-ȝ�W�&��ᤅar������O�::����k��|�q�@I�?1���8���UO�W�{�*��v�����������EqI?x�����YP�o�HE���W�J�M�C(��y��o����F}� )�;�yctR��	�
�0-ʝ�0I@�MpA=��r�H���1��ai�^�F�٧��=�� y��B{e���q�5ʃ�vF��M��m�e���1���CSl�L�#|�(.4~[��1]8tMt`����lׁ�P��UC1	A��S�������\S������G�L�o�,2 H�玷�z�Fm\�+�ڱ��
��X [WC���#���ja~��S�BGv��Z���zU��@G��`���-����/�*q'���t{^p�� ��U\t�������ۣ\u��ce�G����k~˘�c�R˓�#�_O�A���Z����oW��S�q�G>�ئ5�p����Ÿ��'	GGvR�{��-Ɲnv�t�#I����N[��<hk��3|
�aq�S�Cǩ��T9�oM�A�à����N*z�&qSb��E��0��
�UM��1�
b�Ȏ�ON7���ۄkbI<���$v:���S�<go:N0����q%VN+U"��R��ͯɯz��k�û�������y���n����/�������x���KVo&9[��S�߼~��[�j�I'��&���� �U%�XY�Չ��	8y}�!���x�<�[3OV�[k�����=�jq�u��Tn��U��K�7dqO�JaR*��ٹ�q��ܓW9m�IֱL^�9���jV'����u����i��/�W9$�I�<^��t�ra��x�6粧+�[9�I|X�F;8�6ej��HNR�ej!��o�K:������L���M�6	gl�ӧ*�GY�Lv�p(��`ŪD\�!��I��aP{W���x���I8�p�-�*!׺b��^�pbc<A���#��h/��G�&�0���uuP�U 8y�$� �V�Jĝ�L(���r� �����i�5[] ��L#O��kNN>�{o�Σñ���O?�'F��f=IM©3#Q�-����Ёiq���=U��3G*��Mb-4Snk� #�6t��v	�<~��NL�cT���Z�'�����rl.c�?0{1*�T� �2{"��}��F��&�R��΁�B�xD��h
�%�wD��J�џ
6�=a�}#�h
��1���Q`Z#�5#�����J��&���o��uGx��yJW��5GOg�ISU\h��?�I���߅�4�����]�i���S���F�z4qf	�^ ���ڱ�"d���7E�w���7+\�fc���H����ש.�r;����Tj��T�T��g����9ׂ�O���B�2@�C�E�K��YAnQy�5�^rU�f�An�S���_r3��kKw#�-M~%O�r*Z^J0	��b����IVБܶ�m��F���U��Y��x����T~dy��[<'x�\��*��V�]�y�5�~W:.����������`G~��f�C����S��\lA�L��b��V�Z#y��SVpp��o��s �G��
���4���,(y��:�"�5`/����C!n��
A/ĸ��nK �q3E0�JM*��o�L����/Kuq^t�Ӊ�[L:S�n���? h�\�xb�+��
�k�መ)��ݯ�Q�����	;^
A�F��/��e�i�?VHz
��{O�<p:��999����Z�/�Ie�r�]@Uء\�9�;\:���@�)v��R�������~�*D�Ew�>�QnQ���OA���sܑ��f�WI6y�t��J[���#ik�֎��1M�	4�I�i��Q��D�<�� >fE��`��A|� ��7��N�l���4��C���xMiAb�nPq���|�3��b����=�'�r�~�Sn�m���L�Fܷ�,)���S�H���w��w_qjU�:��RO���0�mК�@�1=Uǔ����s �-~�w\�r��B����f��pDD��l���BGRmM�7�ܒ˖�nubS3&w��u�������X�����8�g�����ω_��Xl��;�~���8�}y���r8���q�{x��cv?t:܃��c�"T`#Dz�E��׾�͢<�s{>Tv��͈q���ᓔ@��pg��10�����t�uF�Re1#�81�w��:���b;:���(O�q����
S�Zc�F�[rk�[nĸ%�]�%(ʴ_����,)q3]U;MK�;7�����#WYv7[^��ư�>V���o���]H�:ɍ������xRZޏ��
��c��7F6���_+�V������m�ew�6�`l�8
��p��'�'h��S����m��\u���sj���{�۩A�B���$�o&?�}��`�d��_�r�O&�-��>�N�W��F!�ӥ/��L~*�$���Ώ\���<;�i8	�-C�(L �W�[a�iמ�� �o����n`��R��E�h���Ă V|(a�Ѭ]�ި6^ص��{�
6��t��n��v����rL��O��o-���ح�J�$��.-6�m���6�Ⱥ�������A����uܟ�`E��v��a��C��%\�?��~��Ž8�1�O���xٯ�s�T)�Urr�e�)�S��e���98�+S�H�`q���aq��K	d�4��;��勲�ڝ�����V�I�1�WGu"��n���9��C���D��	|cc�t�>�c������[�]�[��l:&�R
��6a���jÍaq��[�4�)�p߶�$����êG�1xv�j=���w	X<�SMn؟
&�קۅɃ�<Rc�,��=zW�yp_����&Q6�Ԯ
ӭ*����s��6��@ ����N5�
��*1N!�	GGvt	���B�}SUAC^%��}��
zٔ�;k��BX%<�}�BA�گJ�s/�9R�7��^%���I@GmL����pX%l5�����t�[��@������(�U";ef�0ݏ[��G���q?n�a�~�L��q�]Q�����
�
üLn���a�~��9�/��0o����c=U *��V..n���/[y��J@ǜ����*�(����W;j��;:�l����@����3y;8�<��JSh����/Y�e�Q��%+ϵ:�U^����4�8����ʫ�X�r���|�M���k%�:=T��
�\]�i 5kZN
yﶀl�cM=��EK�qu�ģ�}j��h��Iyʠj�v��va� MP%�S���E�JG��@������
xef�34t�r�>%�`'t?N�&�vSl"�ǩ�Z�S|�)�z� h-�@����'���"�[�X-��S-����T� �[�pL>�s�6�]:�A�%h����L�X?���k.�M��1'+ �* �½Q�yNV�=����B�����c�@G�\�(�@k�>�WU�:T����)/��U��߈'�Z%p2�[3�<U�kT�St�Q�0�5S����k^wt���GR�b״�uܮ�o+;����7�iZ��UM��V
@2��q���{p2\�zՌ����!�n�i��LݯJ��:��T����Vv����J��d�ꎎ���@o�x��ѱ�%լa��: s����4����~*�L�5[�lʩ,�Q%[N��@���mj;7�0uy}i���H�X��T��aD[ZptL�a�`�*E+N� >t$�:�\��:t��u��B ����SaX�
���޼�kM��z)�N�B����ٱ� ��B��    3{Z��k�Sa�
��w����L����w�,/�[�:�Tf=(�0�y:8�1�U�J��<�*��L�i:|���T��#Y��� �q*�bĞt�9j�]<��i�0�n�1���z�=�1��4��e���	Lv��Uxi�M	v��H@G�wO^��h�{K 6y��S��Б&���� *�:�T;ZwTdǡFZ�.S+�8́�6%p�1J9vgZ%ؒ��Cǩ����W	GG.|��kmJ���p+,�J����@ǭn��BI�S��<���2yak���2�L=5�;:�����@u�B�+���6#pr� ��V�lnM�P4.��J8*$W-�[?qʇŅ �s���,� ���ݪt�b7�����ܧ'��4y��>� � ��p��	�J�`IV�� )s���t�vr����BL4sr�d�x�?&��� <rv�_�R%P��f1 2h�S�%�t����~�)<k=[2n����>M���|��&��n���E7�|9�sr/80W��td�,�m��U?��9`�S3��֏���Sy��H>u�b�ɫLJ����4�R��t�,��u�q����#���'��-�. ���U����ū$�^�%�Y�C����2=],~�.��X�|M4��x��͗�*I�@I�r9�aq,_�%��`q�>�J��&����0������0��_�c�$_.�22(f��r)�Q�@2�[[!ɠ�"��n-�� h���E���0���J�4g���b���qM:`���x��6VX|�!<�����-��L~��jDI��í����[و�Ѭ0yQ�Z���T�l5=L^��S���I���qY�!��=�z$`���^,8Z/��f��!Lq������Ep����Lx]j��ñ�P�SW�,(+%��osd��Hl���92%�E��ҝ>���?�E��>S�q;��}�(���M�A��G¡��'J��%<J~Ġ��=ە�f����[	}�y����.��1`�kk���
�9�*����W=B����U��	*��I��2t�; �-C��e���p:*�\��pBE��c-i��\xꂊ������"�nˊ)��Gl�(���O����!|�ڪ�:.���j�:������ �s塘ro-�kR�LU������/���8nd�c�6�F�P����k��xD���=���gB��_�v��7�""�����gz+MD��_�v�hxB�����|x��!�~���o4E�x��[G�1�~�ڹ�q�x���c�x�9��׭��o\.B������!��T�i�os�U��0B��7�x!�!��/�|���"@Rp��1���������Wsz�N��	FU�
�9�K�
s��q���F��	I�!A�'t$��!q9:d�ru�pAG�x㫝ㆎ��f��e*0ќ@n/�P�Q@RqtdGǨNt\�0~T�:0�\/7���o�=lSn¼w	��ƋFyQ�N2"�m�Z4�퇧�?�ݨ6�Vf��yID���>>
A���z�r�����k�Y�b�UY��1�~vz-�1��x���n�o?;}�A8��#�[�u<p��Б�b#��A��l����y�0mc�񾀱�x{(C�wO��ެ`��Vew0�i�A,�����dѐ����ՃA�.�:��"~�5��::�u�5��x_oE�!C���&ژBGr��qBG��M���^�y�qAEV�[�qC����B���h(�q�/�:.}t9x<�s�������yt`!������ы,t�HO� /
��Cc�w�=�e�Ѫ��������N�4�Y�Sg#O��:�����Z��,�ʮ���)tħظp��YG��Sk
���Y谩a�(�:����ע)�Q���NG/�P�#�s\.���YKNE�ё��C�w��9z���֦��H�}��Y�����#&��og����fB�M�C;�N�B^��c�Бt�`�ᄎ�D8�L���j�Y���������m��Y����@�x�z�š@ǵ���r��rߚ����[ڦ��Ёת�#�l����fBGq_���,t�j�+Dy�g�j��#��Jخ>5����֣�#�k	�r�O	��0u�z�]:�T:Ԃ�7���r�/xC��zv������V3�&~�Dy��;���\�HS�+ح@Cr�ȸ(y+�N~� Y����Aޗ7�������_ܱO���r������lؗ��̅�.�)AG����5:l���t��aZ:��,;*�6՚	����rO�H�;�ႎ�g� Td�ڲ�C���{d����]�/�q��w��>1����E�Z ��r�"F8��v_���F�]������RȹQ��-Gd�����9�m �P��� �[�t2�x*y�<�89���L'�����@�t*��uJ�%:�S;</�~�(o5Ӂ�o=C��	��G�C!�[�\em�m��4;�i�M��>5:��~�v�ӿБ�r}��L�8'��J�%��T<���@&������t�pt���!����C,��аz�$��Y��0F
�v�H��5�/�f���g�I渦�ߡm+$U":�d�&�KV��@�Uo�bR�_��:M�!�W������M�&�\��T�ɳ3�� E�$���F��A��V�z	���o-���JO�غU?9��Mb=�
)Tk��k�Xa��Ѽ?�S���oׯ��r5�v���������`d�o�3%!�_��Agyt8&߶6��\�*Sbw��qZ\��_1���.�`o8"����j哌��L�V��~pX����n���Y�j��/��K�%}Qt\,��h������[�g�~N�f���0"��&�I�Z<S��
 4��0GV��C��,!�C�$�T�5P͡&�`Ŧ(�:����J�b?96��H9�
���"8�h6�`(~̷ẑ��_ITR���0-��9�]a�2-�k�l�
�A�4=l>�U�l�"������Io�Fh�7[#�s`�%MWkŜ.w�e,e�غ�h�-����Zc�M�vtb��F ƍ1�{�`�l�� v��1���㩰��B�):�űk�ۤ?��4Ʃz��8�	��-7����0�Gp���8��MW�'��1��x/7�6�`���z��v6fY��BA~�Oh�bv7��xJh<��~3d�z����1 t��ξ�- �K�jMn	�*ޟ������W�.�hȻ�W�X܁��!�EW�W���p�J
��w���T	n��Ԋ�B܂r"�����q�SwZӌ��.x�n��f�sEb��T�ઌ7S�Z�����6�o�ʈqK���=b��T ��t�q�.�:
1nY����3b�N�US�i�@�۩0w�Qn���8	�ܾrUӁ0�9WyN�0��o�ts�k�����YT:j�
4��a�~K��xI;8����T�8�����%.%����|4�*��|�da�WK�`�c�5��G���	��<�}
�U4s�ʣ	J?O�W��ϩ.{�0GE>��y���K��W� �)^na~Aoo%������ˁ�H�=C�������%6���ƣu|�*�p�gF�G'd>�1�
1n�]��1ns�<A������A��AG:D�[T��
Zˇr�s�Htr�s��3���]��AnHV��rK.�4��ܐ�V'�r�t�<An���We����V��r;���#��j=b�>&b]b�n-�kG���F�S�
�yt�<��5U�?���p*j�:�P\�����;��TCC#'/�'`xC:Fmk�F���t���w�t����ޭ6���4k�P��&O]f��
ɞ+4L��Ǭ{�kJH�`Ǽ'`�:N͞��bd���.���o��cF�����#�q)�:A��T
�[��tW]:n}�NN�)D��0d�V��Md���5@�ۡ�و�g�C�d��anA��$����̃07|/�
�3�ܢ��:�LĹ���9yF���e�M�s3׭T����`4��M���#Б�ڛ��c�ȺQ���(����F�E�۩콐�r;���    Ё(7?[�D�۵�`��E���:�(��۝��� ��*,+M��5Y�����A^�U�Ht|�* Y��H��G�⾠*Û��>z��u@�p�>��Ǥӳ�OIx5<&m}%�����)�hd����A2r4��b���xo�NX��Ζ��b�*�ڤ�ͤxi>\�0a�'booe�Va��1��h:n�RDw/n�呡�;e_e;wE���P���M�a���:�H0���u�Ẉr�W��;V���R�����.kF�[t���C�[ԙ�t�ND@��<���㍤V9�\�w*rK�}�yF���CJ?����eF�[��t �|ǚ�3��N����r�ܽ򉋀��d�LS[��S�K���; ���]]�� /ϠC��@b��L:ĭ�U1�k�:����_��s����c��8��� �����ފ���JD'0�#�B���x+>����OIx[!��>�Cy@E�݊(��c�ojv�*N��]#ֱ��1�t\.G2t`�7^��'z���C�h��7No�R�R�M��m;�ɹ�Xܯ�:��/ OpAuءԛ��hv��۽�O�r��*�>뀎��Ǐ�B�[t75GbG���U$��冯"Y3IF������Pa.z�QnIћb�HMttd�Ύ�0���d��e] ܃0�s�S�;��J(��]�F�`+��]:�X�UF�����S1̑����ۥtG1g�wz1�+ü<�9��`��������1^
C�I�q���i�Ú��&�z�bp"�T���xO~bY�I8ä����ܕ��t	�=��^-,M �-<&�5D'2b�XU����[������?�ba���m�H�*a[�7����+=�ثDr��c`s�	lן��c����t��n'?��6'����S������87��4��'���n��}
~��ԕl��E[�$��S=:`���O#�`��I8���0'��﹮�������u��`�D޵h��c��d��q��~n�q��0�M��ë����ݥ�~�`I��3\=��
����Zk�p��qU�۴(~�
�ǩ�C 7ק��ݚĮl<�p�wP���g��.Su	̷گ
%\0VM`�)�@�UBϊ����ɧ��h.�%��[ǎ�G5Ø�Il�H*�<M���
@�Mbg��`�4��W����$v鰻ƍ�W��sG��$v�nt)O��)�X�n� |T���q+��a���	U)��0yV��c��y�6z��z��V�G9�jY�p���on;�p� ��$��b�����]X�&,�7g0;\+r�� :���M��-�-�N-��z�K�w���^:]�!v?x��c��׆�/]%�Sȇ��K�w"p�����`}m�/��e��R��S]�f~]!L�`�Q�d���p=���w�����)�j�����!xX���qr`�'�R�m(�x}��E0G�m�P<�i/��{�n67]�y�B��I�6��_��b.w�8�I�����ٯÂ���񑀎9_9�B���ퟆ���ڷ��7�<_J'���8���Wr�v�7�<�����x��[�j�o7üh�4N�T0ʋ�kf��E���~�D��S񋰺%ʻ�g;{'�.�z����\P�CJw����7M�'T�	[iȶ����}W�t\�a�y��^�a.�����N5�uhHʻ��GE>yI����ӄ��倊�>�6*倎s���%@���|��o����/��?�ӛ���ߐێ��	t��k*��7���Z�I!�*�A�������.R�Ea�Z4.p��P�"�
�i>t�s�;.Ѝ�p)�q�t9(m*`W�P;��]X<�N%G�� \D������D]����#4�9M�E�qt$E/� #+�%D�笅F�$�<gE/k�!���R\#�3��J@���V7�<_{��ua��=~ypt�:U�{�+�p��+nPQ��S��c��9�x&	���^�p��#�^{���į�*�[�sg��Tu'TĩJ���:�w����E ���e-���Ukʽo� ��za���Au	� ߸V�r8:�:=P:N�&^�ߔ��8ف��s
q�p��7eT��5����ݣP*��j�Š�b\}�sh��xK��Cq�6��t����}�����ě:1{a���9nV������C����V��br��"����n��sW�
��ׄxaƓM�J 	�#ٴt���B�v\I�\�� �UM���*��{��Tdm��܈����U���Ħ����"Ƴ��ƹ��j�o�x�����1��Nq��������7c��o�<8:�\�i��e�xqQ��� �%ƻ�~��0Lrtd���te��:����w���\�`1��5�G:�t2�y(4�0�~�䗣c��סT`?@ �ir+���@����v�*��s�������倎���{��ė�4(�pb��O|IH:��?�%!���H'�[B�D�b�.��+l=�5!����v,���gFf��h���%�.�N.`_1��N�U��_>>:����c��6�rP�+��٩僱�2S��n�Ḡ#*����g�)$�b'���et����et�rҁ��_] *������#�sv���"�s���+�.�t��<ک��<������|헀:����.#��N5Y�UYF����Б���;��2d��#�<��UGG=a��k������g�����#��<&�����a��Q+�p='t�;��Su�:L_#X��}Aǜz��	G�vq�JБ\���iO�t��e�'	���^Sb��
:N���y9��tW���8�}'m�k;X�@�YG��˞������+6����V���N�ޗ��'d��~�|Y��_�$�dSt=WJ9_O){��l���|h)��7"������.�J������Aަct��Q�H9`+��st��0��st�|H`�8����rse�0�V�k�X^_]��Bh���8L��?;�.�<�����B����N��NlO�(ϧ��6.Q�O���#����j�Q�/�$R���v'{�巻��3�� /�� �Pܥ�qnyq���$�,��{w�tPb�*��rAG�{�"�AY�����"���pAr�J@G�q�H\�a�;��_Ё\5��T��rKWqCEr��	%9:�;&�
:����B�r@^%X1h9�����K��ӥ��S5Ow���%�{;ݝ��D���pN�w��Zv�.wWe�܀���A�P����V������&a�K��fJ���"v�.]�Q0��[�+�V"L���BK��/�0�y�D�܇�/+�1�,yL]D�pL��Q"l~+���asPkI+�����`�*q�������p��U��^Bң����\%�Mv{p����"��W=
w���sU��:&��UM��u8&���n\.FJ�/^(�D��U��M�T����`����IA�ǫ��m�#P*�Wy4eW��ɩ$c=*`��8�6-p�X�rkG�)X�<^�Mo�{��*����29����_��@l?o�&�U~�l�x�Э�	1hm�3ٮB�
��S�4�]�����U"F��W,�5��.uT�����n�Pi��$LZ��٦�j�
ou4	�CF��Ba�'�j��w���T#Q����*/�	�<<^��+�<<n%`��M©f#�`|_%��u������W[	tOU�"?<"o�4���w��*����t��5��v��Y%�ρ�*��n]��&#���.6<�D���X�i_1�UU	�H�9\��������@��P��l%x�� ���Ɉ��T%�����P%�'k�T���T	�� �	 ����I�=*�/�,���%8�t O.��&]��g������~��8Wr���P��xL�J�ү
1��1��C�x{8ٟ
1��Ā���/Wy=G�܀�s�"7T%y��K �㜪�[����)��s �㜫 �� T$�������Y�    �H�t�W5������ 4��T����T���T �#���e*�Ķ��xM>��hO��]8�&���'�r�B`��	�k6lg���j�!n�T�ĩ������!އ�q�3�+~�z����N�T�B������R1#B�>2U@���S�U<"�ʹ�M�r;B���Tr���q� U]1n�u��An�����'�R���b��6��`�џa���bi�?�8:�tW��}ފ��������m��iɇ��Anj-f�y�ޖ��-��[%�ny 7�-�v,>P1��*��� �����RO]:N�e����M���ա㚺e�HCǥ��R30hN���J�5 N���yY%/:��I����ɭ�t ��1����@o��=}�����k��񛼨@:�2�S��`:�����H:�&�)�6�0��O�- ʣ)���NQmr+)�&!�cR��`:҄A%�u��]:��<"[I��(�s�R������f�ӱ4T��W��B��K���s�<��J�w{*Dy���������f=8����fM=�A^��f<���5px�܎}��[Uر�l:�E�ۡ���F�����Q~�co��,/�)"�͇UoR�q�3���֡�;SED��@� �f:����t �-MP�n����5▵ .�J@�G�z��3S��U\|��Iذ7ַ�Dr��ﮪt������"c�0�4������KE�Б��\����K�<�A�Б��[���0J�J����ty�+X�hP�i"3G����c����H��ň����89f�K�",X��L�%�����y����a����y<���9;�<Z���@��0��^x �#�zk�=�1h�ԂQ�(�7�P*���jDy4��++��+[u,����UM�:�ۨ��#�c�\��:�`��1O^�T��(�~��(�����a@��sO@=X:.u���u^:.w ���(����R6+4��{����ё?��(/
*�u�er+���v�v���j"��PZe�T"�ܰL1�W�����5�DD����C!�-~��"�ܢ.X��dC��k`'t�f�W��(7�Ne�OQniO�u�i*�j��Pr�J�,�fD�[v����~ӎ�0��
���/Y�J@G܏	h���;����T��T$m��4r`�ai'`�~���h}!:�ԣ�S5X�G9
��K;��	C��٨T	G�,��Ua����
ˣKg[:�)Gk��7B����/h��{e�F� c�(�(Wr��Xq��x*Dy<������<S�"�ĳ���[:Dy��ۚ�yY��k@�G���<F7MO@:Lk��]:L;`���󘔥\�ـ8�IYJ9�<��vI@��<u��]!�c��J.��x@��B�q��觫q��xj'A��˝�O�:����t���W������,`0�����0����rtC���d�:k�ko�v�������5�s����}]="�͇V�r��b�h����*�#�͔V�����s�Cr�b"b�ҾOy66�V��!n V����4����ᥱ��=$�J��EpT���>H*�����aڞ��z�7��V���i�$yp?bР�n��@i���xrH��Ɇ�wy��Pq*����)c�8�m����[�\�x9�>Հ�x����՛���n�%-����9���T�:�eOQv�EW)&�턱�«��B��ÝOWG���Nv	��ΰ�<�M~� �Qw�'֦i���@#�݁ʋ-��jr��-���/<�:�(U:��SDA�Cّ7td��Ɂ��1�w��:N%���4 ����x*Dy���|���;Dy��ů	Cǭ�4)��[�tk�� G�ZaX`���&�o_8:ī�pB�ޅ\aB���LD�[p�������T�;����Ô5F��!S�.��^G����w�T�_�d���DD�%ק�5���ZnHTkJ�p�A�����"�DlpY���H��N���F͸�TXo
Y�N�������S)�)D,����jL� ������Ep
vN�[���!������I�r���|g�uv�i�.Ɔ�?Gp����Z�����r##��]� F��_��a(6�@�& �9P��Ľ��G��c-]-^�zĺb��7W�H���_1��]�7?<I8�N+�&+����?0�t��{8M��C�����.8�
Z��U�0,*4���c���u?n%�:��o׭�s����V,�$�ɭ��N�s����p]�Qv?n��=\���r�߮c�|�^�5���͍�<~啴Gl^�r���$`������Pƍ������l����	��<n奓�0yy�j��ג���T<�L^>ܪ��s���h����6ʛ��=�t<^%�g��Mb�U�1��U"�y�'�I�s��I
k�1l�T���0GGvx��?3l����@ַ�0l�T	�=FZ�
I��x�6H��9�x3�a��J�̮�� �S�j�ؤ=`kH�SI���:ո[l�U	��_{( �t�S�C����Y+�8*`��j�����~�1�O !�Vi�T��#�D�"�~O	WRI{(�=��&���>�񫦂>�[q�&���HSkO���/MyТK �󜧴��&s�Җ��<Ÿ*�S��'x���v)!!³MeC3t�+Dx����=�z���\�>���흆�#��D�坄�YA��B<���}U��ϧ�UϹ�I@ſD���f�ϧ�E޲�����J`R�@�g���s3�<ϭ��vF�=y�㇙Q~O��I��Q��q�=���*K���K��Ϯ}P� ���&9�	a��C�P��-9:_�����~AC�����v�*��
kN�7t̙��%����9�#G���E�y@ER�Z�󀊤�\��bNS�<�I@��z�g��s�(�"T�<U(�������ET���$�'M�r&踞/Ҕ??�'�~Z���ea�JxY�}*��Ok�>[X��T	���a�@[���.l�$�#>�+��"b,���DȰ����PaS'�64Б�q�D7�	�Z�j���9@�W�l���@`�h��zGy��bm=�zUS�i7�~��1��hف;��
K3��aIpH�R��$zK�T`��:n��z�(�t�u0���UN��/�
ہ:b<��^B��C9�5)$�x�Y�M!�s�+� b<�����A�g�*��ٴǔ�B�gs���#��M�K@GR�~ʇ�Eqtl���V���Fy�Q�#��ꑀ�S����Ȉ�|�{̆���t�� ��|���88�<��JL�45�1'+�2��}��45�Q�&s�s�25������[��D�{6�!5��]��CK�FtT�G�rc�BJi��%p������>���w�iG��`��|�a�*����8��Dt�Y�V` X��YD�+�q����a��Ҫ=(����.��`H��/I*�TӴ)@7W_� @��/5%�	TN�?���`H��0�m��)2���V204� �G�M��zꚸ{�[$�ni%tJ�^`�� 0?��k�l44����*�:yUO�Ѽ���iO뭄�&�F���B'ɭ�N�H�L��W���-��NjX7 D�{{���"���������:`�:}��FY���'Z.�rH��N�����U������>n��x�m=�k{ʹZ�m/9H��3)ެO���o��4�:)�l�i�9P\.���4��rٽ������a�eU&(�B����  D�Ɯ�(.qi1�{� `�e���3p\�H�T�5Ryu)8.�܎�� ���N�XC����"V�]־�b��E��R�~�1��v�Yj��r�6�%�� C�( � V-ߪ[ �ڍL�G����r�#'ɛ��؝]H������b��e��YMymh�B�-�^9"�W�^� !XAl�����Nn�
����Iu�M<��     ֜�-����&����Fv7�g�}#
%8�-�^�@|��^� B�n�3�D@��p���'R5���J���[�c����#;� Kd��:�z���Өw�FzK �����n\����9!} !�v�6p��c`��������ٛՀ�ܽ�1
���%��
1��p��S�Ǚfb��Z9��8NL<ʵ{��T8i�E�Q��q�����D�1h��ȩ�F@Oh",̿�+�	��Z�ҝ���i9�6�zݾ������]��:�I�I�z���$��{=1�p4-�t��q��F�Yh��r}�8u`[,9�N9H.���{��K<���j��nSǜ�\��'4=$��as� �$�OvVZ �d+��	n�%/��7�\�`5����e�^�8���f~�K�;��F�%�>�嶻㻯X.��X&�WA�y{��� ���m���,ǉ�MT��Y��)+$ys7�F�+��@1�j�!İ�-���f&�����8z?V�"�u�i ��n��٫���O�ʺ:�9�ɍ�d7��d4`${8o�z��l{w�r#[1l_�J ��N5�&@��S#�)с8���v0�-1��P0�҂�%C_�>������烳8���r��MxxA����f�@��VA�>�n�`���,��������4^�s>Nz8(��UN%��5������q&{�����5f�������Z N�k)t���A��v�i�	'��:�M}:p�Z�8�m8����Q7�0�[f.�0��ae��8U�G}�9Oo��m7�w�*�c��>&�����ʸ{:�I��ʸ�G2Y�΋����]d�\��3N�v�r�}L���`e-��`e+!`�����\��3m)��֙�(��qI��(o]�*S����*�#�~0�Y��mq�ȮS����ݲ�q�q+^�G�q���� �ؽ���Bն�(.���q�嶛�K����T�4戸B�#T�/E�W[e�3.�xs��&9��݁ia8�B'��=�Sia9�X�/EL
���9���g�n0�V��YD�
D�=�������9�8�I�/@d�ֿ�r#���f�!���J �X�2È�8�p�%�,h��T0�Ҁff�� �^�~��d`�˖�xJF]����dB�ou�\��
���2[�(�`_���N�[�S��8�n����{gǢ��?/JM/4�w>ܥ��*��U�Z��A%��~�f}Μ{{������V�.i�W�w��~e��� 7���W^��C	�����u�|p�h�_�F�K��WN�av[�d����Y��3��^;*{mq+�ȼ��vv���0���*/��3�N��zՑ�l�h�WyZ��(��Z���e}����E;Xt�9��"8��X�W�]J2a�#�Etw�:�V�p�7DB�x89���jq������9���E���`�X�ړ��J-N����Vfe���1e���X�͗�c�����
�c3�2������̯����<�j��$�p-�MIz��~q�FO��D�,�c�7z��*�}��G)z��&zg�G�z�'Io�w�n�MIz����x�є�7�;,Q�FS��D�dV���FO�^D��Qg�hJҋ�O+�B�'I/�?�u�R���Ze�׿�p[���|$܋SفwC�9XC����&9���x��!wM��UCU�Nef�o6=ܒ��_�cQA�x�,w�Q��z�^Tp<[=mè�x��~���h�*(�u��⏫WP<"Tm.RA��:��4����m�d�c�����P<�ŧ�V0<���}�`x�r�[�cY*3���@�Xlhf���s�
����{��`x\�7�`x�n22�A�#N�kY#�����m	��9�}܍o������3ܨ���w���N�y�6�;[������iM��4����/N��M�����
	Ok�2����y���2��zh`xZ��C���8�-����/��'mt ��)��k�'N9��ȹ�KK�"��(�ׅ;��/�����n��?6e��R70?e�T�� ��^�s�X �	TN���T�>�T�=����}i�[$'�"U�/-�~s����>�}i�[���/:p\T.��� ǵO_���H�*��Ё��ڨ�d��S��ڟ��m����n�e���Zʞ6;N�#yAG���NT��:������'%�E:ʞ��,g[Nu��Lk�S�T/�Q�ԗaw������reO�y9���FG��G����'�"�f�{�wc�"�n����mk��Gy��f�	m9܋@`��[��o����T3�-3�^��-�������������?q�[�:H/7I~XA�x�bn��+H����T� yK5�(U,��,t�<��N�[�:F"0eX�U3w��`yLK�����1۝�ݯ*h��̪��Q����X �j/���(�M�fʻ�`e��mA�X\�`)d��.�mͬ y��2Cy�X⫉����.���G�W+f��=)��)�KR|�ͳd�ZO�R��z+_��.+f�l�B��A�Pej_P<!��CU�S<;�[�#ڂnOH(����muj`x�Ӫ��Dr�Ym��ɏT�s8����3�x�V˯�	�����{&�@r�e\�_`���3i����s_����_wL ��/�BXЧ�.B��aAk_'�ͺaA�Z��{~��)e�Qe���p0�4
����
�L�ϩ@4[.�Vˈ
Z�:��R-[=�1f�|�������q:�0��F�da�ԁ}�
z6cw*#E *h����`�EX �S�b?=,+�-L��m�Oa�����m�Z��j�^ؠ��L�l},�7���=I�����ZF���F���q�U�>�����u �Ī��z��@x��Da(�\0z%�b��Z �v�Y_��+ܮN>g]R��ƃ	�Y@���o��@�1���,���3�6�fer����r�9�x���y� ��dU^!���&�K!�`������1��/�H�c�������Л5&8Ӓ�;�X�cru�Yc��1����c>�
�.0Ċ�K���G��Z�{��'W�)�c��:T1��X���/,�����[���^�u����y��9i^mh<�4G����I�vn���/ �G�`y�l�)l��h���,O�Y}�e@�e	t����րK��h�v�6�<E�<�X��U��8���|����8&Vo-D��z,��&V&��#�2�i�7r!K�������G0��\�_'Ώ��K��a�0�eW��Z6�����^�l�� F��z��h�B��e[�|�^�:��Ͳ�,o�f�W6�����L��� ��9c$�Z֙�� ��@̸֩�q-eOE�[�:�N�s��qq*�2Ft���ǵ�u*�G
��zjY#�/kf��E�t�(�4_��W��)�Le�����u
��o<��Xx%�b�`[4�b�6��ɍ���=�D�G���۔�xK��S�a�Ux�)5�C#�Kn�p/y�ũ��m��֎��m��|\D
�[Ս�'xB=+oo1 �+�O݆gF��
���Es��%����z՜?�<^V*0�?X/+,^��e��[0��/0�=f*�<�@���,��#O������)�Yۀ�1����
���p�53X�yc�N���U�[#[	�ԁ`yۅ`�4��v!y,��=69y�<�%����Nh�����XA�F+{q
���V4���R����q\3Ҽ�n5scҼ�[{�( ˛{�m`y��,
��tY������)Xj����`�T��,Oa�
��,O�v ���S�"���s� yJ��$OH�>��S�V6X��]MY���ǝ� ˓������ԍ0��r�g�@5%���H�-�^�:�;��?�it�fg!�k=�$b�0�-�B�)O�Q���J1}s�-�L��y�S��Y�`[ô���4ׂ��(g)��H�®ק��[y+s7 B8���    z�A�c$�'���<=�)0�m,����6��z�9�,NXXjM�ߍ�w��,0��[�3=+��zS��3�g?�!<d�geO�|�Ux�L��/���CfzV�Xew`��<�<d��e���N�Q�[�nܿ�ټzHS�}�}��no�� �}����a"T���Xo^�P�Z`��w4��|�ټ
�Y�`_o�o�&෠��:'J�n�ň�{Tj7�yKYg�z6�����Ky�`�q�4��|b� F�������yL�]e�_�3�����cv�-�,0�GY׫S�+릓��Qܽ�9�<�y��׳�(�eQKu
��XX,ϫ�����v��9p�<�V��3�
���.�#.T��ڲn�[�b��>�n�f�,���Sk:�b>��<]��.�@�{dH���)o y
�b>����5pZ��)Z��R������#�5pK�` Z�<��5���)�-`#z���V�@�@r=5{��|7[!�������S�����(��-�$�S�����:ƽu�독�av��Si�ښnb �崰�Z{�	���t����,0��-ߜ�)4o����ca1���>[�yJM��ŬS@���C�������q-g�X`F��Y��l�5��)�-�=�8�ʏO�ɵ�u�0���=��p���pfA-Ns�Z`�9-b��(ij��) X�;]���V�@-�Jv�8z��;�IЯ�N�]�A"/�������?�X`��B�uq�D-���K0Ly���V�<��H0�?��l5�u�|0�ٮ&��$��Gp\����%ZYeZ}���v�1����]��WM�+	���8���g]~*tA=�	�*�����2�
Ky�D��*\�����Bq�(�V�V�X`��	��rq�1���$��V[m�X8s>��|0u��SY������\lj�G݀��\��f�9�)-w?_hJ�����@SZ��l�a!�)-Wwf,��Mi�^���O���aʓ��!�ٕ|'G`Wz떰�N��4�,��,4�+M.{
��*t�I����S�+M�%��2	v)_U�� q9��+�ĥc�0V!�rH:/��Er%ن�=��*I�Y�F"(.�BnF�� y)-�w"(.b����#(.�n��Q��R>@�Q����/��@q)K��,���é����ܮS�q��6�������ŏ����")����A�H���j~*Cq��={U���na���UF�E��bFX���V�����_�ÏU#�K0>b�k��qi�Z`�E\0s�#��u�_�> ���8�AA� \�ȅS1-0�=�n>f�> �-R�_͑g`<��9N�X �	W�#���u	�a���a�k�q��[-�J-
0��<Rc�� C_�ئ{_�p�"9�1}�<�X}y� ���WG�%���W�w�uAs���t�B� ��������~��������E,�A���຅��1��P�����O:r�\��cvmV�\�����>�-�'h����>��)�p��G~�	���h�U�
���`e���mA�+��$���׻ �X�T���n!����_�:�b��n������Zo�/�_�NE��ũ��ܾ �-�������֛#�%p|\� \��N��x��W�U�}�[$�#V�'�Zo�p���h)��ގ�D�._@��[#g����\Ωn�4�R�oW_��R�o� �'��0Ww�c��	�;��(ln5-�R��jV��)lˑ7O�AS�\����:�h*tF�$��P��V��`�jϦ�;$X�Z�C�	$�R�z0� z#�0-��'�3EW�-�wG�*y�
,�lORn�l�%�/\� ���*S��"�*�=�� � X� $�bw;L��K�g��|\�\n�U{��r���+a c���~Y^����#Y�ܺ|Q$��h�/P�,G�2��"�|��/�wϯ��+0��*V`�����q�|�P�|�ܫ/ #Z���t#�Ep�H�� �ɼ�� �oΎ��"0���S?�?"B�L�|�n ����d ��&��^W# Q�<׬�C���O#_O��Mt���[`�n�����V�ً�D��s���H�x[�r_5�\��j��q�z�8�q�#
�8�ͅ������KQn�i���q}��Txt�\���UH��5�jV� ��_b����3�9r�\初�K��q��z\c�s3x�`eh�G��l�r#(��Aܺ|�<��=�[uy�j=����W�uA�P�[-�0n׭y~�����h�\3Y������(������Yez��,_���]^��Z$D�z$���:+�:�<+��`@Oh.�E�T�����n4���V妎GSh�hm}-S?��M����5_`ԥ*w"h`S����K�{B�{`q��	m�̏ߗ� C.�1m�=�r-E�	?� kk��T���d��_i�f��"Ђ(�l5�@���~逖7�[�O�WL���\��.- #�����F0\ЀhJ@P\йg~(.���*P\�6`�_������V@�ũ=#.k��M]X �}��Q\n�~�W���/>�	^]�pV�$x��bFQ!��&���GR����^���
^w�C�W�8q��
����.*0��*6�nFt�jVB0�Y>|���yf����/bKi�+3��oy�+g�SF^�\�<%B>6S�,�]ŵf̀�e?��(�ŭȧ!�(KE�C qۂ|'`*��mAn���`�#^�u�����#V%r����9�l����H�^��w��o���ײ�iú���
�"+ #,���H �`'S����<ݱݦ�
��֫L9���t����@q�!%i�/���<�Q��]���.�X928��VfNަCN�� ��U]T �|o�gP<��� �CY����^����>�������V�ө@�p���. ����4 "�^h	)��2����x;K<Z��ͮ~�k��<�*��|ò�g��Fp���W�<皋�hx��k�����.���o���.�����}���V�m},M�����[���6��xĄ��\�*��4��*�=a��m�k�r���(��*��v���n�Ŭ�q�R�[�)�!E��2��p �5N�Ir�"���i2I�n���p
K������X��K�^� b���RcE��[�� ���)�AX��;]! F9�o-�qۻ�MI
�ʽ���蚂�-#�D�.���W�|��c����%�H�����7��{���s6�_I�k���0���
<�md�����#݉�.g{��.`D���Y�^�W��b. �����0��8"0�y��������a��0����*Cl�N��q�Qͥ�rn��#`�%e�4�m7���,@����6%�B�H��A�� �j���K�y[� 3��W���Ul��A��?�Jv����HN/����B�Eioo F�^�'�,�w��Z?m��BND�`���w*��:�UT8zU?:������*����`d+��BR�C^�k��v� k��i�N H�=�0�X�J6{ړ��P%�	�,�vP,�lW"�q�_�� �۞l03��5Z���0>�U� ��hechW��h�+!͛=0�����˺ծ���Z�@���<^:n�<���	o��f���Y=��\>*�~���zz�`ܶ�s�܀�rs��»��Zn�>��Znu���b��宏��a�@�%ӵ�XW
,�\n�;�!���b_���������J���F��uTl�^���$ѽtnD���$ڝ�=#	�8H����<p�$ۙ�o��F�{�a�O��E�ۘ3�'�\��N�\�,��0��O�TArۙc~H.Ŗ�bAr)�.���#H.�٭^=�{k�<����`�򺸕� ^C�o5�.i�l]n*yҼ��xO��"����M�t�V���`��K�X�쁙-��x�|�b��Χt/���N0�]M�    �����G�q�Y1G`d׫F����ɮ��� ��M��?Cܪ|)ƨM3 �R>�T��8 �,�ݒ �i�憩 �>WO��	@T��C���OV�p �)ǧ%���'<=�onI>���q��)�b�E�.�WZp0��f�	��E�S�����q:8�����^ʂ�E8e�� ���SMP\ň#7���!G�_� �l�sLI��l�j�P<�Y>|�@��j�(p<Ȳ���n�ny�O��bo�0U?H�P5e4�<��};�W��ZY�|+��#X�&B��!$ys��>	I޾���<^V��9+`y�\��G��x�}��|��^��`�~��}���Vv�
�^��|͏4���H��*�$�H������J�Aӂ�,�}��:��M��q��F��Sݾ�9��n'����Dp".F{5�t�k1��ۜr��1���@"X;b��j	=�Wa��ۏ��S��}1�7m:�3��fǜ?���{�*X��R�b`�q����cr�j��N���(l�d����c)��=>2�R�����lɱ+y���:V�(��aC�+y����!�(n�nX�cq�Ԛ!y,nȝ��Jo�	o����<�x��z�J�y�@}�p%�n�Hz
W����6F^����}���%pO[��t}\��-,F�>b��*��t�`�'��*���9X�¹&-�ݻ���S����Q@��Rn0@����C��� ��q���{
h��`us:F~Q@s}�5�Q���'Zݜ�I(���H�5\�������ߠyz��>���ޠ�c����q�rs���	W�y����t�W��A�����uu>nҼ�n�-�
A��׫�W���,o�[y'���V����󵸕Sq�`�c���Wu����}{�v��9,ne�7�V`�c�ם�����	;��7h�X$�[Mz��9-ne㴎4�k�rr�4�k�2�P/��yF��M �F+3':�
�g?Z�	�`y��V^`�`y�ŭ������/Zy�M���,ne�:�U�y��2�Q���y��r��
��h���*Ҽ.neAu�|WN��_���1��dys��:[Ar�V�±��r}��: ���ʦ�:n�\��Nv������������*$�h�j����_�2t3��rA��3��KZ�ʮ����_���� ��+oj ��,^e��Mฬ�ʦƊ��_���a� �e�U��(.kbe��B��r[�2��Wb��uq*'�l$�_����HrdV{2�H�P�Z cͬl �q�$WY��K�^յ���̬XF�u9^��s�� ��K��� ��7��0��׷P�?V�>�c�'V%����	.��=��\�Z'��5r�E�1���}�7��l��=�n�b�����M�����&�X�"{�7���Ft3�.	�&�X�x��Vp�xč�V��}������՞��\�U��j�{�-�J7�o+Z�M��C����$�F�i�m�t���c�*ؾH��nGnD���<��Ҭ`y
��?�-H��	��O$O�|ơ)�<������˧��8�,�S�����c��5+`�%ku��'yW���*0ĭ�fQ����B6*�H��f��B�8np��'��M���duR<�R �?GA���Q��P� Q�SR�.z�?oR�-^Eǽ��d�&\u��"�k�.X4�`��U{��8�**`xV�ً�W���T����¨6K	��*`ĥr2�,������oP<����[P<'�T{���xF�ړ�
��lk!#���Y�Zh��
��P�ՙ]L�����0���� ��b�.�8@�|�ZȈ y��Z�����Z���6dy]J!3���`�C��$�y;��]�D���*�\�e�f,?Z���%�p[�*H.V;�+H.�:վbV�\��Tf�B�K<;U/�ArI�W�?���5V���
\�8�Z(.ٮ˷����8-@qw�b��5R�Qt%�b��v�	�b}j�@p��S^���U���K�o��v5�9n0\�S]��V
��F�%U����fE�}6�p$U�����p���XUi1����]��H7|,��U�)�+8��710�Vm��\O�J�˿��� ���a߆)4���e�Z�N���V��b�������5Vp�|̶��j0d�F�0p�|��-�՞�Q܆�E��z]����s��G\��'{�{�#^���z�=���d����X]�f������u���.�g���\#�^4����������G�L�,D��a�E��O���t�}\CIB�i
�]���[Ъ���i���@��1{�P@�≠A��+��S��)Y�fY
z�0�G~��*`d[a�\媓��Z8�H�[��*WW�.WC>ڸz�0��o3����o���U�:��)�[
M�\�*gm|�,Oզ�{Rr������Y��
{*7iެ_�j�M�7W�x��*Y9�t�[��E>�1}�jV������c�"���\5+��fhu�y���;4W���~Q��sr7�l��9Y�f+�n�<g��O_�s������ʁ����NϲC��VA�,V�?T�s���^>UP<��j��
���6S� ��C�{��U����%UP<�s�i� ūu�}A��x�%�R8��*`4�ȼg��o�%����ݸa���r-�6v��V�@�Z�D�
$�`��}� ��s's�U`��ů��K�r��R6�\�[d���@sA��e�\���Y�X.�m8�X.��u��KcM�첬`���n�����R�t����Kq׿�$�b�����G�z;��q/N��
$��x��s{�0��n������]Z#�۲:�l#��X�m���f�1ρ�-<����.`��o�0��c��C���!ǒ�kV��Ve��@�"0�XUO��wX�	VN=>�r��L���}E�I�=�qV�$A���̽B<I�����(x� �{�v���I��>�`��n�bOJ�u��M����eV�(A�χ�������]r �#0Ӭ�x� V{�z
%��\�>��W	>^�鿊�4�V{�Zx������]�b$<�Ƿ���i}��S���\��_��S8���V���q��WuA	�����<E��鉠��V�ܸ�Fr��_jU�rլN	ƫ@"���s`�jV��'� ɓجu���_
bJi,OŞh�+�,W���~�
P�������,W��(��)C��`�JV��q]�Fu��$o�M�ې��v�l�B�I�fw�w�� y���,mnp\�S.��Dp��!À�W�:�ގ)@�sgD�Q�
V�Q������cq��o�紤�6���H���)�A����;�<��Sb��9�i� `ɳ�́�$��ʁ�W�乜;n���3��I@�|��:	
��t�-Sdo� y��-��$�Vd6�A�7�H�b�f[n������m�kG��*�qv�\�ŭX�V�\�{�s�X.���ZR�n�x޻��X.�|�m�r0� ����KrOJY$����(H.�ݺa������^=��0��F���؞#G��"v	ܣB�eM������Rܽ��v4�\n{Tx)	���*�# ����s�Ar��؈�$�6]��F��ū�e����z՞Q6��#�z��6�W����GY�v��iV���c��wM�O��
���Y�_�#W���8��!;���K��'XU��?�����}^aോ�ݫ��W	^��ٽ�f��ോ(K�m�.rCl�ͮ�᱋(�.�e�{� �h����.bqŜ��c�r�����E�]�f�p0�+B�_���1�=�>wQm�͞->w�Χ�^�
ͽ"t
��1]���eE�=S#]���%�&�1��Ђk�Rp�Z��
��%��������EoV�F����4/�y����Kz0��n�����*Y�Q�_��z1�G�x�U�rV�9����Ku*�_`��L4�{�>�!�\5���
n�\������U���S���^��D��U�:��{��Q?N�w���r��V7Y�����     �페���TN�2�-H���qǱ�L9�x���$W����^	
�=�7���hub�{h���a��U�:���C{�Hg�zE+`$���+X��-���[��h���Y����F+@Ȣڵ�+P�wXj��乸';'H�����W�
���|}`�U`y��݋!������ப���n�I�z>���M�7{�sw�J���;n*H.�-�vV�\.�:�ߺ\�q��r��e��v�D���X��0�hoN2"	8.�6����v����qI��7#Ā��{�\�d��f���K��G��"��X8.�^�5����"��$�be�-�l ��?p�H.��Uf6�,�����E����q]FW� Q퍔�ے�~��� �۹�� �}l�����K��[b:�������,�9���0��i�X#�}�MUy,��W�qD`D{_���C��k\	O�rB�ϭܕ�X���9�i	��S9����X�[�ػŬ��.���_B�X�[��#���_x{,�;��I-~Y�c᜻���|]t�e{��FZ�24�l�vn��c�9�ng�_}0���5�l�<c���V''�V�9L;P��(�H~�Є��U���F�5qA�!��Y�>��f��ES������Z@��N�l(��@�>K�Q��;^ٯ���iǭ.RQ_/�~�B�ݶ.A�[��%�!옾�v��:�I(�V�����}�[A ݶ�z}���^��X�ZR7�U�a�)�G7 Dx}�-��K!D?�c�Q:�����UP<�%DS&x,��6���-@�.56|��C^�
ɞ0<dש�(��U���A��'Ծ� ���tP<��ʲ�;�E �����-��*�������ˎɈ�x���Ϗ��x���N�H��E���FR�-�Ū���gkr�#B�"8/7��H���(o=�����m��.[��X #.鋉�:P<�ūL��� ����d2���jO#8�He�P=�yI�e���c^��Y�"H��&GX� y��??�0��q�UN���X��I�X���O�<ދ[1�K y\����@���̧�-��������D�#XmA"ɑU�4��kZ��8H��e4aT8�.{��>�xBRe>8��P��	�9gnD�����#��-��z#G�����z��Y�G�M����Ts#&p\O7��K�9��q�8�x�( 2(�r������醝���gp\/�h�Aí28���1���^���Yǔgp\O78��Ar����X:2H���zc�<���u�S^��������3i�^�:�,o�[1�d�\��ؽj��$��N�9~8��q�0����'y�?
ψU��v`�ŪS!+�x��S�?� �����p<�����b���/T�Ve�s^|�D�����jb���/V�����7�I�ź��&�U�x��Uf*�8�������8����V�x��[�1W@�����1∐�k�2}>����G9i��N�2t�����B}Y*G>�q	0d�S���%M`ȢzeQ-�u70�-�w~\70�E���*��-ʧE�MI��cʯ�����0��]�f�JA`�w{3]�6�*( �[���<��-;U�|��.+I/^���V��T�w5	�!XMzϓ:�U8u��2lT��O6ATl�n��A���г̆Z��!�}�=Vp<$W�n��S��x�v��X��!ے܌���� �(�H$$����>�<��*�[u` V9	$��VƬ��1V�:( ���D�׏m\�U$y�JϾ�G����h�X��m'�`y��2YF9X��[u��
�;;"X�����W�cte�A#X�:�^�����X�h5>H���O�yq*��.�"�p<"8���6ֳ�G�U�iB�*m�$p<�E>��SWA�Q�쒺�6��5T��wp<~��>p<�V��ɑ��X�rȑ��jw�9��fǶ�'ry�����v� z�S��.�U�O�ݖ݇��`Ei�mA�ܽ��พ�9�$W�ԑaF�I ���q��<	W�ԑ/����z��T�wQ�-ɽ2�\��9J$�ۀ�*��{���q=b�dTc�W�t�a7�q��z�f�>W��4�
�{)ɝ��qNw�uK�28�'l��e���n�(��G��ժ���������I��/}~*��-��TN-��q4��#�
��a�:(0��*�'�\�SG� �s�:�^
H��:˲���/Tya�����C�฀�9�[�P%�x�>�UP@dW=�!�xήz827ų|8U�4�!�;�g��=�
8��y��M�q/��ջ

��C=�*��!ΔO'�s]�:��$y]V@��v����s>HrĪ=^��y�%�1W�:A��X�g��K�!�v��q�k���� ����o�(0�?3�{bu����4w�hW�}V��n�@�1?콠���i�Ńս�����;h�F��>��A[*r'�8w��F��s������^�s�űO�c�܁�N��܀s��W�M��p�41����X��i�U]9u0��aX�m�1� �C�B�����#ۦ�=�
`y�V��#I ��������� n��U`yW�q!�桸���_�����W���m�����pT�*����� ϫ�@\f�[ ���,�����V+��hnc��U�y��Up�<��W��ӥS�;�3B{�c�~�ǒ��p�u�y�n�r�<"\m�`�c�������,�P,��|ow�5��]�Z,�����
���K\��)0�n��xˣ,��]Ӻ�
�r֥߆P`��	,��U�w�'�<��h�CXo��g%�,��.���dy�{���������h��u�	,Ok���R�[-F���4����F��
<Oa�F3�x�S`��ʩ=x���.�����zE�#���U>u�n�x�WeZLO�U?=u(u
<�+�v��Q�t��*��:ƾ�e�\�(rJͱ�e�\�v�U�+���:�Ɯg�\�cm��H�Q�>�9�\�Sm����EN�6�.x�
��w߮P`�E�v��������c������+/��>R@4��:q�j�"g�c5�`�
�N�/�� �^Q���GX� ��N��$ (���c̺|��5�8i����/�x�`o�esrw0����t֚_y={'�lζY��*P6���D���B���O�fD��q����Ȧ����O��5�nW�pC_�w̏z-q��tC2�Z�yϬ���v=3�Nʶũ���ʸ� [-fW�.�� �6���b�=ǿ��!N�;b�U�Qlͼ�h����&R@�V�ٓ���v��A����I��NPi�Tw�-������#\�h��7f<\�h�W��"���橶y{B-F��c�@�a�-��p��	����y,��Qz`D�h�.�Pe�k�8�m�YٮS#Y�2�
���[X�x���5^a�|j�m���:�n�q����i��� �������Plύ�p<ܮ3"n��}�|-�Q�/؈�x�8���9^�j�O`$ɛ��ګ�H�7�"�����kY�ޖP�/{���*�<^Wlt]�m;�� �c��!����1ھӽ���y����Xm"h�Gߩ�*�<��#�]�t0�5p��4�W���*�<"�2�yׯ`������Gq�)'�汸�9
&�<��Oy���.�ch��ʉ�	4��|��[��~j5(�H�j_�q���=��X ���@�t��C�#���X7&�<]K�n�я�V������uX�����ż�FtK��'�<%W�_
WUs<�U7p�
�,�WQ�t�7�"���"Ƞ�j���:"U��9g��^����O1	O�U��fP\5M�S��&������WM�(?������Y�2)^����3^�f���eR���!̏K�7{�x'l��e7"v�'���r�9�����M�.�"��!�(��q�w����F��l�|�<G�μ���do    C�'P�����1r�s:�3��P@dW1��sv�:	H����?
�_��w�:�S�/�gĪ}�p<��������Ϸ��<�-8��{��Q�x��[;�����y/�o�W���-������W����m�����-����`���L]F�>a|`�Jߟ�\�q>�ׅS@��ƽ��-ɷ$�@�K�d��~�ս�x�ϫ9���]F���`����M�[����Ew󣂅P��� W���7~����E�%�z��r`�s��+�#�ρv0\eӓ$�O�"�}�=�<|��US@���}���8e��^#71@� ��#o`x(g�z�����ህT{�@�p���w��js����J<�#^�=r;�"^?NUF"���n�WfF;�XES�/{�x�����=:G���nt���x�t�,f$���x`D�µ�,���X��-�����遁`�gn,��yFn��������F汞E�<"Z�9ˣ�/��) ���y/Kh�{�b���r~o� �>+��x@�v�k����>/0�0��H�����j���4����ږ����m��GX�.�pj�,O~^5&$O�n�oyU�S�X����8>;���q�LOMb�d
����NM�j��<2}�E�*O?J�`ȩX~;��m����]6Fv/�>�Ar�Rt�� �����,�+E�%��$W��9�?�덢_y�U5��y2H�7�fZ�� ���_ww���=�>!�����;�0���^O���,oK��q�W�z��������rUM���_��Ar�Rԩ�&H����U{��A����A��̳EP�s�����F��[���|Ao?|�@�I��J (���Tf5�M���S�?n(�ŕaϲ�N~/�x.�;u�����[[�LZ��\�}������a-��y��m����������AuYk���`x7�Α���í�0���0���g��qD�����ی��c:-p��\6�,1��X�\;p�/^{�\�m����t�eo3��녰W�3=:�U�����Yr�r�o��}�kQ�m��ą�O�Z6:\�G��d�x���\��3��������_-�|�ᵀ��s���G��	6Z��B�6��%ϵQ�+�yp��HRp�{��{
n��p�� S���S����O��\��XgʽSn#,\�#ѽdjP�ਉ�s���
�����Yhr��t�.�܋.Ѻ՞�$ѽ}:;��HtOi'��g�Ё#��x����<��a{5[p��D{d�D+���h[a���`�\��&=�"ʚ�:Ie�5��έ0�4I��j�*N0Ir_8���n�${��q]互�y���*�y�������j?pKp��Dv�-HZVA3)}Α�K�'�v���� �_j��
f	.�ZfP�G�$�O������p��*�yv������m��^\�%�_r|wF��.6�B���{������V��� ٦�&���2���9������a�F�Գ'�E��A�W�1
�\,0���U���&���G�z�8&\�N����M�ũ����mr�[���ŉK�%X��
�I"�1��qQ����WuLy����U��,�fb��{��B'�q�XI��UJ�R�{�
�8<�b�i\�'�\	v�xqŷ9h�bAk�������q�R��ř��:&��x嶙�	n�x�{�U�00����0�U{�pբ���X�GpY�Wu��m�j��0�U&wó9r[�2_
F�mC��Q΄�	���S&�@y_A����T����Kpհ�tju�b�/�W+Y�_��6[7�&�=<g�ju�jV&~Rz�����ܙs��[gν*p��ޚ����wSz�oS��M���o	#Y-0��n1/n%j��hvʷ��V�>���(|��.5�hC��u��� �m4�n��Y�bD`<�9���wF����As����A�;#���1>UD������AwD�.���T��"w�7�C��ԥח`<���MW/�\�a�'�n`<5�3����70�����-6wDY��D�QQ^��r�������������*Ox�_U/`ܯ[�1� Z/`�׭܅@1�������c	�dy{����Y�^�r�U�p0d�ǾV�\�ĝq���`���v񟟿
4k�r�
�����S`W�<�E+w��q���/Zy+���!.n�,h,�Vf:���������`yX������@��2�J���`e��/�W�<��*�E��A� �S��j�x��Un!��k�rJ�������}yj�x��������D��?V�婑�~��yz#���S�{uR�Y��h#śu�=�i�x��r����5T�5S?.8�W����h����NqG�k�x9�F�Q�����������%^�{F�n��>��x_28�]�`�������,�$�.�¯��x,	�O�(H�]�y�*�\�O����Ūr���%^��>�X ��^��U����.��5p�\�Os>�� ɵM�lc^�H�'!C=m�R[�T�I�n1�����9�^�2��89���
��*��-^e�b���%�3p��=
�-��t���/V����bCv���-�*�0d��ry��<�+/�Pg��!�ŌV\4�=�j�|l��!���V����Ð�?�6\��S��!�E܇�O�=�-�H�U`yB�ڴ�b�Cv���׵�!Cow�9�y*�5��*�<�E+W[����[�2L��!�A>z�N X���UƵ�����cN Yޖ5вC�A��E�����VG����N�Ǟ���4:
{2�6�ӗ�ok�Cvo	�B��{)��W=�
zl,i�zŽ/5�6�O��W�K�;#,U�S.�aѸ�r'`D+F��ޝ���yv0<�k�GFZ4.��uFr���u�-�_�_U���t���p0���征!"�����&����(�_����j�[�!wƽ��7����2�z9��S���Q��ѩ5+y^_�:䈏0��䗚K1�����U]�!ϛ��Y��,���uF�T���{Nl��yXÕ���W[Y'4�
f�y�gA��{��,7r Ң�2C�
�����K��![�t�Q�x��U�_5Ё0S�����x�c�� ǃ���ԓ��P���+��,ʩ�6p<��*��~-�q�k��n���bU�C=��]W!��X�=$y;���$ov�g�I�X�;{��e���B���������G��Z��Z�8~��4�\���K���~,��"��O<�G�j�9x�
�Q�o��#_{n�<W��(B�"��#_�|�+�c�@Ȯ�m�X.�\��r��)���*���0����˧[},�QE��n�@s}�+F�>@�����ϫH���q_�Օ�F�x��mQOY��$o�a�i8I��2f]߳���1�(���N�-�-(��+�9�������OqQ�<�)ZI~I�U� ���<=	O�z�>Oi�*+/tE���O�
O�z��$O��kV�x+�oyR	�x*��5�� ���PuHtK �ӽ�\&�-�q�;=ӭ@�t/2��q��T]�����@��e�%�c ?TM!���TH����E��P�%b����k��)OP�aq*�&#x<���i�d�6�:���]
0ґۜ���M#���ᅐ������-���##ئ�=�0�-������ˎ�S>��
7{By0�[yU�k�`�#x�q`d+�l��c�l��e>��qk���n`�"��nQo��8*0���-_���XAp��`ܮ�<u�����o��:`ԥȶޮ�y^m�ے�t���G�Jy�\Ap�G%ϛ�z�r�๾[��<�X�cb���:�<�-���Cp�)�?�� �%󽺓��!��s�yHn��t+�<����Z8^3�8X�"���@ȶC�jo�W�Y,��`�M_ǃXA��x�c�o�źԢ,t��mz�    g����^�@�:w�k�r<�������J)^�B/�on�ȓ�\�y��H�ZX�x-2�ze4CN��k�p�[_�6����V'�k��ժ�<���z�)�e4`$�I�do����'��m�F^6������֓��;� !g� A1ЖO�O΁����[� Q�
{J$฾Y�t��V����z��Q.�\߬r&|��H���:���*nH��V�C��H��:�!+I��2�O Iޖ�Q
.�\߬��c[�������'�`�y+"`�+��B0�"2[�[ cVV��u��v�b+"`$�W˷�B0��A���iX��u�@��WmA��<�۟4e�<�ݹ0`y��m�X��m�^,T�˓��X�n�.,��0�s3eX��G�n�����w�́�z)�t��m��R�-��l�۾��<_v	\�UW�,F���)7%�����	���� 2��N�y3��8�l4������:ns�{6��������W��V�O�#��',��N����k�;#���F�wg`$[n��[���q���Ł�Ҽ�D���AG�~`dW������v���+���z՞��������OW��݀qۓO�E��q����x�0���Ly%ǫU���p0ę���,o)W��mi`�D4�\�����*�9�j�,��U{�`yX���u����Ѫ[ #�g��|��!�~��K����^U��=,�ma�������&��y�K��*h�h5-@�he4r>S�6���]��z,�Q�3�4eY=�4����n��۽�`b�桺g�n����v����F�W{S�V6J#ɛ����,�����U$��׷�汰�k��(5��g>'�����h��9^8BO�U�s0F���r={jCx�=`${Rs�U:r�\��~��z,�{�r={*g�T�l�>mQ�\ ���=5��Mr���+���u�(֭H�jݩ�y�7C�O5��4W��頙�h��`��y*7���uN{ٯ����jOԭ��1p�p �7��m9Pg~X?6�f���Aq=�($��AqU�N�Fo�0��x�P��j��C��)�G�1� F<)e7`��sJO��Ro�0�m5������8*]�œ��8@�m���K œ��l�3��+�o+y	�x*����]眃����Wu`�V5jH�n�O�B��AҼ���*ҼZy}��4o�_��&��n.R��ȗu�-�,,F^��z�s�׻��5�rʭ��%4{�1���0es=��$�ԙ�u�� Fp����	a�/��#"�=�]Z�3 �+�M&;^j?�!�H���}6iid&wD>�~ϳ#/'����}C���1�r�b�I΁��`�aFY:#��݀Q�*�Ju]x�m��@��q���"�9^@^U0��U�H`T��t�N�$o�T���qV`4׭~vǵAΙ���@r=�z��.�9G�zo�D�W�m9�Tp<�oc�C�<D����<DW��C�W��	�C:7��S��l�*8�� z7 B>�����5R9%Ń�:�"�9�{�h���6NA��
Y�k�r�B��m���ũ�����6�����ᅍ�V�߂H#Û{ޢ��}8U�F�b��|ޫ�Y��@e��'�����m��ń��|��^���Z"�z:(��q���(�S�����Y$7`${Jj�.p\�㜳�S� ��$�Iy57`�=%�N8�GY�q��\���ǝ�"����$�� VW� Q�^�_��X �^�ʰ��H��q��n�`x�Ŝ?���':�l���=&5GN�7�3p|\r��%�pp\��N=b��"�A�O�O�mܲ���,���R��N�^T��^�9P<EW��(��{JxJ�xJn��TS@�t�� ���^i0�0��)[��(6 y�s��C���w	 y�#4-��s�(���L98��=&�Īn��m��0���ͦ�l(8�n���î��~.��0�m6]2�.���Ǆ�"˛=}���%����w,�l ��e�j_:"X�/�U�|t��v�o~q\=���e=���F�A��.�����G��9����>�
=��s���$�o9�ֵ�xЫϷ tH�ѽyu��h�,�O�-0Ḯ�X���-�}�pw@N�N��d�g����< �{����|���5��< �ۮ��d��U�d9���[��\���xU���� �+y���v�������F�Ẹ= �K*fh� D�n��%�� ܁`f��4����5��4���ᇉ!������B���I��	,���o~��qX�On���^��r}���4������0YI�U`���|ӫ���r}T8~00���|��KG����4V���s��o�����bO�H�ϓ��>��H��tF��� �>��`�H�@r}ҁK��F�s�`�>D8f��u�\�������d�\߾s�X �Z�Z��g�,��W�eS`�׫\�TY���_W����[�̆�o��,��<�w��ؓ30�h�#�/Z���~]F\�ʌ�c0�h5Uq0��JU��L�ڿ�������W��X���V��* �����9��@ȉ�I0�.��0����O%0�p��\.`��+3�_M ��:e�@��ʩ4%:��7Q�S�e���uYmX�E���S�-$�_���1H�5���DG���`e���
H.��$�<�U��( y�W92����j[��U�8�P�����i���P�-6��@�H���ٮ���*�xȋS��C]���A�S�kǃ,+�S�p< ��8^��F*'�p<����m��SN�P@�H����zv�nA��ũ�ٗ�c�b�r�S��O�J��cU�O�w��P��
�}���}�[���j7��t���N�6�H����W��=%�g��
,����B�}N�[�S΍q��4b�bx���Ҵ�it�3���4b�b��K~���it�V[va��������H�۲Nb�#�-�n0��Y�[�o�:�8���;7�S�o�&��1
P\����å"��r\�[-������;Ɨ�ت�ɽ6hd<[U9Ym}��"v�r�o��%G��S��n q�՘�y��^��E"6�rY�ro����/�O���I�*b�)��G�"3b�)��%@�G���}��x�K���W�F�$�\�}��6��a$l#�uNX_�b�
�(S�e9i�]KeU=�������!yeU=eI�q���$G�'��*�k-� �%-)���b��*����p\��� �- ���@�%0d�*�N	$W��,M �c!�r����(K��$�	,�S�.�&0�ũ�t2�㏅WMy$W�(��I^�^�Z �.���U*���m)��J��I�\��0�w}�:MG�����������K���ᇪ�m�zղ�+� #Z�f�r��~Q!B��mo@��jN��5T9���T]�D���nЀ 罰��bu��E�r0<uy�) �HeC�B@[\��S0n���1�^�eu���@x[asd���%V�p?P��PHq�=D)�@���.NZ���L�9(��j~+P<\���$���`�-�P<��:��>���l����xX#���z��!G��g#-[aN�. y@V������j_1X��jZ��aV����5VYQ�	$bs���X��թ*`y(�[9,/`y���Q�<ܮ[v�<��
�g�,���� ˫�
�+�B��W�q���h����G�n����К�
4W���h5�
4׳)�24����ts�y�a��a��}�ؾ�-� �Mqʦ�#7H�
h�o_ʞ��zft�7=~�*��#~h�_w}rz�����ׯZ�������]��v��,��_�rc:@r=���û���ׯ��;����n�i
ca�    �_��/�)��l����"�:ی+��U3�>ۜ\�pLy�}�ٿB�7���d_�t\g���^!p�m��%'s��6�Uw:E�f��>��'���f��:�j+�2�\��9f��6{��^�D�f�o۟�g�����^�4Ѻj
�j�Sw6E^f��͏�e����.�PE���6�I�l�e�ͭ���$�ҫl�TOCuC�c�NEouLgΞ*$0\���=����Q�덠��V<��0�⪚�ڒPv���l�㪚:i�`l�9���
��$i���Ȏ@2t���lzj�#����T�\eSG�#˥��i_X���W���r�m#�I2X����82X.��՞�f��.���<�`�Јb�y����f���iOŲ��+�~)���[xZ�yv0Ν��y�v.��+��n;�/�f�՞���h�S���) ��ɗ����Hn{������j�F��gsFv���U򹁖 �m$�2��@x]Ͽ	���#� ?V�o+�U�J ��L��RQ�*�O�����繷�:�F�WF[�@�W��~�����Jϒ�����nul�������f
8������C�����
��P��W���� �C���{N)�xH�
�M H����7v#�ݎmH����^@� �W9EDɃ���("
H��������=�.`yX�}����jϾHn���{n�Cu[H�W�����m�-�x]�C��o���i�l
���0b�8����1�B��m���H�U6=�n���:>�-(�k�/��;�ON�(������HK'��߫�#-���s��gc:��ίnz��J+0�"� �m���N��X�����s�ߔۧ�_��$�����(֫�p��18����<j0@r�Eۙ���ا�_��q���˅s��&�7�r�����".��%�#F\.��{)�o#��y�� �n�;���?�n�,���c#��b/�ا<�n�\����q�p���Jq�p.V�^,z�)0�;��M��������#�n�\��h{x��[��}��G�j��:՘�Ļ����M���$�-�l�k+\)"��M�s���8T8u��G>��q	�hߖ$%P\�Sgc�M����gxa�U8=���)0�+����qNOG�^�V��U��'�uS@�E�q����nz��x�M�!�v����l�5c�O���t�(����1~��Z֦~��R����(�Xxmҿ��pM��2t	��d_�p0>�L�7ש��er��m��p���Vǐ��_���T""�6�=-��j��b���8m�J��W�r.��V�ٗ�\��\Ez�FZi'�Ϸ�ql?|�M��mA�W��#�-�#V��5V�u�c4`����|R.`�Ol|]��Q���>�k�^"�y�cD`��9�As���gM�c���c	�-�Ʊ���A�Ѭ~�+$B�7+��k�����?�4x.��'��`�j�W����Z	x�ۀ8x�����վn
x���Q��>���_��5�rj�����4����!�4����&X` ��������Vp�<�\�p��$W[�T��p�������p�Ou�u��w��B���������R��t���Rϩn,$y[��*����a���U �J��9�_QW�������_�qUN���cE+�x�����0��>#��op���|����KۯtzR�� �����ʾ��*���]����A'����pZ����n_���t*'��/m�©�T���/mwU�\�0ͺ�
��ܙ`>��>�@�q»0�e��*\]8���Pb��q�kt��#�DM��p_ cF�M���cF^n�u�阁���c�ʩ�a.�ݿn`�{(~$oQ�!�,m~�{�(0�"K;�-`����I���`��1֧x�v/N�*V`��P���w��}dmb4`T�����^�oԞ��վj���'As�p��j��ޤ��b���W%�\�����n�`S��P	4W�ԩ��&�\���aN������Oh�׏:	� �U<=)��Y}`����S@d�Q�,i���r�~�K��U;u�F�J ��>���v�d�s��>z*�^)��g�`ܶ�uO�28����P�k�j�j/439^����M��hnS��H�fO��$ys�j�z6$��cQ�o���N�?"h��gm��O��6��,�����ў
܃U.��VD��\���.�4���H�&C3�k�28��= �ǭs�8J=��{`�{��F�آ|�޺x
�b�0�D.`��e]�	�w1��	����c���]�|H���"�����WnF�K��`Y��M��	��z&X������bdV˯�R(0�U{��(`y��xX�mA��=�C<7��R D�ῗ����^74�'�Cr��愃�yվh�< �ڝ���!�W��	/ y�������q�C-@�P>��n��n�Α���O����<��d�yWBq�S��P�';��H�W�V��r�-b��@� ��Gb�p0$F������:ǋ����:�t+�\�S����V�y�f�'u)��8��v`Dۄ���,W���A�~��z�h�>|��U<u��`�^?�(���`���_�q��z�����8�rUO?/* ��Rǭ��AsUO��v`�1�`����W��eێ�����VT���ͶT��q��5-��\#��i"�"��W!v��mA�z����o��a��G����*�wK��e�`K����ɧ�0�ӝ�|�ޫ�.��ɧ]�x���\�wV�6��c��GtrI����a�������n��N.ɲ�!y�q�j͙��q�.�~m;��E�U�dh��ƪ�x8��c��K>�ťX��g��R���S��q�vM!~F G��8p�A��x��N.Ͳ�9����*S�H��*�U���[g�{,��X�j�#h�>T�w9��O۸O��}���+:ѧZ���j�����0D�C-|{D�!�$�gf�]�5޹��"�%�/�`�.0v��#�d�W���%��{t�WYA��;v�B���C��W�]��/����R�̏:��8�_�Q���Q��ri�Uj��m�^.͞�yN�z�tk�xxF G��s�q���k�Y��9i���~o�i]6\�|U� �|��^�rL[���
�erX�|3'�w�h6��29T��c�9� GR}��U�e�[��#"��$�>k[wG��L��j:߂�2ɶ��a���]&b���@qYu��2)�����.�b��0�:�ˤ�=P�yǨ�Qm�}���e��,~��K�Gs��@'�fw����\��狣�K/0α
��{e|�<8�8�������+kgh�1ݭ@�NB}��~�ϑ���ܳ��l9l��I��óM��i�����)��ʚ)�K����G�Cr��	�5T!��Ϭ�:�/���"�3�3�IQ����q��N��!NK�{�8-,՝��&��j�f�ia��S��ה9��)��ǥ)R9m�..8���;v����`�]��m���$��m�m�gyع�v�OM���m���i�$�C��4�
�m�p�\5�B��^��R$[���m%�s�{4�v[���5� GvG�ߠ���"����l!�ة�����H�j$�Л��|nÇ��Rlf�8��
v?i8��V�kؐ
�m���b�tri�V����U����YuIȁmæ�Fu!����uҭ����QZ���p�(gb��� ��t;0\G�$��,�F7A�t�Ľ���w�
��d�����4s����V,��=aڊ���n$��kX�0s'*uÝ�M���xWׯw �Nո����;!�b�t��� ��ôʱ~���ų����U��_�ɏ&�=�B��6��j��8���j��\vR��F���s���^�M�QèO����h5) ��׎�S�wx��B尺�uX���
�����
Z9\7�_�����Y}�IRR���&ft尤z~f'J�r���MC,��.�4,��v    �p(b�p7��������i��,��;�q+����pbU�${,�1���Jrg��tb~]�{��!*�l)f�
�'׏KE �,��7�BY�]Q�����$�X���OT�%ٕY�˱�\�����{ ��>ߺ��gW*P�̵ncz�̳kx��%؛t�0�neu�.$���O�C�)ٝ�����)WɁֺ۪ ���o�E��]߽AH�%Cg0�w��*`�c�60��e��u����]/@�/b+v�݄�V�����%8��;-6`q+��q�Z�n�����*7d�"XĚ��*3��c��=�GRʻ:{�( ^�<�9e�XQ)�}�:s@�,�N��
A���QE ��cV�
��R��$X*����Є@[����ش�@[���(��*��~��� ���wZ�9�/�f�.����4�ΧLhK�[[Ӻ~`"X|���=Vr�����;��U����'GuH�ǫ~��]��t�?Wr�y�ә�����0��x>+���ƆO����9���J���~|���3���>���c_	��Vg R���ch?0Z�a��{��r�ʓIv
t�}�������ɷ�᳡��~����`��(bVr��Tf��:��f>�{V+9�?^�����	�|����e:�66t&�?&t�}��+�o+9��*�$��:���y�?�&��:���s����c���ٍ�>��X�g���c��-?��}|*Z9�H2}\��`�q�G�d:�a�3��Q'����!GR�����`G��*���w��`e~�@�li��@q���n�&r��>��+��Q���cI>������˜��Õe��U9!G����Ȟr�;\��`���Ňg�ǫ��3r�;\�U���3�W����|(����U�1��uݿ��X�+X���QU=��gա���`'ֹ��7����>T�����rE�nO�=Yr`A���y�������ڊ��Ǽ���Ԏ����]����Q;(VNE]S"� h|�S�)JT�kS���+xF@Sڦ2��~�J�bv��V��mc�ʼ~iw���.\����f��T浚�o�^�+׷���U���T��W�m�^�K�g������U��k~�.z�.]�7K�˷��S$�b9������,D���
μ��Т���u��'���E'߶2o�rE�n?��yAB'߶2���]0��W=Xُ�Y�"�g�J���N6��nb7�v^`
8vs������e�������W���7�90\���Y�"G�(ຓ�>���ȁ��1	N)�h�M�R��n�N�ş#{�N���P�(�V�W�b�@��$3L_e(R�`Z ;9�;-�sd�h�Uv@�92r4��"��Q��������nu��+���r,ծ�?�jE G��� �*9���Wr���_W���{�����=E��V�������'�n�����xp#ư��gI��S�gm�sV�H1�Nb뽳lur�M͙w�4���ɍ������9�_U�#��$g R�L�>�i�j�f�V����]���Vnv��=7��Ƿ�[�~��H!�"�U�"EQ�������.��V����-z�vB|Kq��P��������ѩ*�2$t�]�:�t�T�����˴#пw����rV���-�L��+ַ��@�L3O�9F̩�>]A������;�ۊ=�߁�*6]��X���o
�L?#ʳ��­!Gr���0�r$w��7���o��+R`�2�;�"�j ����_|"���'�&r[�ي9����7���IQ��6'd�v��1B��N���5���Ug!BU�����~��-�I����tV��V�0u���$�cȪ>�o���̏�gE G�Z��c��O�h�{�/�9��ɥ�f��D�n��>4���n�}�T�d��n��6lf���۲�%�"�pWM�ڂ�g�e���Y~"Ǵ�[7���iՑ�d`��6�*?��[<��]�:��l�[�7��V�HJ1��U"Ev��w��P�b�z���C5ۏ��g R�����!:��0�zVb:��X��2�|ExC��5��w������ꇐ�>�Kַ�������e��]��U�W͊=�F���r{~������	}�;�4U��P_Y�:d�X�Z��L�c�+�盳�O%�����L�9�
ԌU��u2���Yߦ�W������SC�d�yG���[H�E.rd5ɴZ�Y�:9�W�w��!j����� �����D
=V9:���
�)`>���g��}:p�HHQ-��뜑BU�!�Ċ�~���H��v���۵�KJuώ�u��}�ծ�m�%�ZkS�liv'��U"\X�oE G����?���g�UA�������Vy�Õ;�<W6�=�w��Y�.S=0_�1]&��'����ht;prf���E���+1�����˹p��U;n8*rd;�=�[�>D����
;�w�6�=S���-���v�b��u�{G���-��wB/�%h�;����ӷ��V��������館�k�)��)�m����S�Ľ?���7����������:y�v�S�8W�c���J��|����zb���iJ����*�ɯ�v�.�L'�JPG�IҜ����U�Hv�h
��ɝ6��S�ȑ�V�\ȑ�@w���o�ҵ
��N���D
qk��z;���E$U�[T��X����9!Gui�#IN�Q�O��#;9�?g�h�V�-r4wiRE Gw+��u�L��O�n*s�9��_���]�� �����6�����-� q�v͞`���_�9M����~o��π� �<�o֟���_��gy��ם�"^�5g
�]���-�
��D�	r�5X�9#��O��p7c��+oA]|�9ǲ쳼��c���`W �l]l&���w��Lě;��s�ě�Ҙ��q=_�ߦ�R��`1s#ހx����xuZ����x}������{]|� ��n�4=�����w�Vw���\/�;5O��R�������閍 �8�e#�y�b����S���sO2����=��i; �^S  ��_1 �P�F;�ؐ@��9� �OST
�x��TNG�����C��^r���j�']�"��I?k��n�E��]��o��2�x^�����E�g
��`���J������9��_D�+�Û���a��6]vr�W=�O�t ���JE8��WV�_uF r}����W����J�*`^ܫ�U���^!�7��ȋ�ճ�������% /�VO�<n��E���( ^.V���Lċb�)w'��A�>2W��|�;� ������� �U���:I��"���Uo��x����Ng ^�}���q6n��b��A*�W˪�7S��TN--	�W�*g����*��L�Ձ�G�� ^���e �ԭ�Τ_2o.�~��d �,�LSe ��P���ɵN��������s��������;z�7ֿ�w@e�H�P���V�7��y�C���	�X[�������R;��LA�K2�/�-?R����"��󝠟�q���26a��z��e��,��k�����t��5g�ʈ��u��ci��Ft�8��T���߭4�{=��٪��߭T�юۭ$��/���J�W�ݮ�D���#
��w3�QN���f-��#�uWt����7�hE��w�"J:�wKy,@{�M�� ��#`�C��!`�C��#`�S��#`�S3���Z���z�]@�
���t��z�/Q@�j�������}km�X-�+"���բ�~M��Z����-"`�X��_Cyl�}�n��,�+��N.��{E�ډl�}Qo{'`�I��G�����G�����C�����G�����G����z;��wS9��z�G	 �^�	 k�7��@[����� ���=`xز����i�����O��W�w�|�' �4C> �im0| �s�.`� ��n&��h׻�<�]�r8�uU�p �z7�G����N.�N'�n�Q��`7�J$��M��G�	����G    �	����C�	����G�	����G�	���z'��wS9�����rX`��H�r ������{(:9,��Q��� �C�X@=T+9,��N����	X`=��hOE'��%��(�$�=�����j(��	XO�'��ɢ}��0Y��[�&��u�����w땀�B}]�0Y��f�uO|@�l���?�-��e`�E������h'5>��X'�P3�ΊO3�ΊN3�ΊN!�]7)��d�J$ Գ�؀��Ϯ�B?�n����1  4]8��v�\�N@Hhr:�����QBB�ӫ�PФ܂�K@(hr�5MNW�7B>��Z��z&U��G@�gR�Vr	�L����Ի�\B@�z7�K@hR��	M��T!�IS��4�'��PФ):y��&M��# 4i�Q���Ϥ�V"��IW����tE'���Ϥk:9��&]��# 4�N!���		M��H@Hh2�z�C@Hh2�BA����
�E'��P�djFYB>��Z��z&S��G@�g2�<B@�����LE'����ʡ��Z9� EBB+��H@h�P�Z9�BD+���G@�h��#" D�}��J@(h�R�㝀���YGD@�g���#" �}y�ھ��	m_,uD�����:BB�w>����w�����{G@@�h{'�"��W"��%�N@(h{�[@@�g{�ZH@�g{+ZH@h{cYH@Hh{�XD�
	m���X���M\+$��#띀��^�BCۛ�V�h{�SD�
mod�X!��mI��P���wV�g{�PD�
�lo��X!�m����ڶ>
		mU	m�{F���϶���=�CBC�vL!����!!�m�ѐ���q�wBAۮ���m{������i���жjH@Hh���	m;�����жiU
	m[�wB@ۦ�)" 4�mI�BDۗ���Ѷ�V�m��WBA�6�靀�϶EB��l_��"B@۾^)" $�m�ڶ�	m;7D����hm{������!"BD�v�!!�m/������������B?�V!��mߐ�ж�EH@HhU�<BB����Z=@���Ъ����VE5�G@hhU�BD�E��# D�Z�<BD�E3�
Z-��H@�g��V�����s�VM'����jUt�	�VE'����j�		�V5>���jU�ZU��=BD�M��# D�}'JH@�h��PжK@@�g��:$ ��m�ھ�%G���sD@Hh�&G���m�s@@Hh�ǳ(h�☀��жb�X�h۰&b,4���2ZU��Xhh�.��a����s�N�z*>�����'�� �mӝ�$�}�N��	�v��E�g���>����F>;��[���FA;#�^��l����l���%��FC;#jس���O�����Hhg@z'`3��|�،�vFH@�v ������;):9l�ΚQ��� �Y��@�U+9l��z'����	��ΊN[ڢ���%�-z�"�5>��	X�j(��	X��C��E��#`�E��#`�E3�0�Z�̀��V��uQt��u�tr���i�0��U) `ڧ��;3�Vg>f`��|����4M}'`��n'�����N.x���H@�M�	(���V�(��ݭ�P u�tr(��+:y���<
����&@�Gg�[�]5�G����C�����G�����G���f�%`�C�	X �P��� ���� ���� �����������(����'�Z�ӡ�#`�X���Z�W@	X-�+BBV���(����xX-�)�V��,�+"�l��C6������h'E'��h'=@��hg5>��Xg�P�ΊO�ΊN�ΊN;�ΚQ��`o��wv@}�Y��ӭ5 `�罬;�>�؁�lw���h���<v�]�r؁uQ�p �r7�G����N.�.w;���jFY�]U+��PW�J���N���N���N�n�N'�n��9�@��M�p��# 4�s/S@@�h�KD@�h�0" D��������j%�Yꪕ<B?K]��!`�����	�!������CBKC��!`�����@�	-5>��Z��vhh�#% `������C�-ME'��"Z��Q��
Z���@��l[�D�����;������Z>�<BBˇ.BC�)!��C�O$ �|���m{�D������G@�h�"%$ D��4�,��m��wW��l[�D�R�ٶH�l�:�m��JuHh�ZD@Hh�"%������ˊBB;/y' �Ӳ?" 4���Ju�h�$%���ѶKJd+�!�m��W[�m[��~�=RBB?�.)!!�m�����жKJH@Hh�%%$ 4���6I	m{�����]R"BD�&)!!�m����Ѵ%"	�a�HB?�ʮ�% ���=B@�M��! $�ܴ�C@HhY9����{���!��9;vh��ΎZc���{���!��;;v�hyΎ
Z��c�~�G��ء��;;vhy�ΎZ��c���g��ء��:;vHh�$��׬C@�ڳ�# 4��<=BD�ʲ�% D4Q��.!���,$��ɡ}�@@�gr�Ύ����c��&G���!�I��;$4I��c��&)tv��$EΎ���ٱCC�:;v�h�cg�Mr���!�I�;4ɑ�c�~&9vv���$�Ύ�H���!���Ύ�H��ء���Ύ�H���!�����M��C@�hR�<BD����p@D��e8��IQ��gRT+9�Ϥ*:9Фj:���TE'���TE'���T=@���T5>���4�P44i�O$����MR"�h�%%$ D���N@(h�"%  �����vI		m������]RBBB�.)!��m���zv@B�&)�ֳ��H��g4��X��h�$%��ѶKJd=; �m���J@(h�"�����H���m���vI�!�m���vI���m�����жIJ@@h�#%$ 4��"�6I		m�����V�f�% �m��ٶT		�l������}UBBB۾*!!�m_����ж�JD@Hh�V%  �m��vU��(q��ъv���f�% ���I@�gE����~V��K@h�W%$ $�����U		m��D���mUB@ۦ*!��mW���Ѷ�JH@�h�V%$ D����N@(h�T%  ��m���vU		���zvX��y��
���VZlU; ��[�hn��V��[i�U��VZlU;���Z��n��V��[�U��Vz`U;���Y��m��V�z[�U��VFlU; ��[�Hne�V��[�U��V��C@nE;�{��V��G@�nE����V��G@�nejFYBq+�p���V�߸K@�m�о�!��C��! $�z�6Br��t�# 4��M�Br��s��ܪvw8��U�8�pBt��p�#���V��C�	ѭ��	ŭ��	����	����	����	ɭ��	ɭ��	ͭJxa˄�V%��eBp�_�2��m��)tBt�6,�S��V%����j	�j'�Z"��	���تvBo�%����j��j'$�Zb��	ɭ�تvBs�5�����j��j'�Zc��	ͭ�ЪvBt�5���ݪv�ѭ6�(K@(nU����۪�w	��6����[m�N!�Ue9��[զ�����;!�U�9����TIAHn���&4�:�e�[�	ŭ�pCل�VG��lBp�#�P6!���Ѱ�:4a�ܾLX&��	��˄eBp�2a��B�i��a�2��6>MX��Ƨ	�4���4a� �  Fp�&,�n�ӄe�m|��L#���i��i�2��6�LXf�&,���ـwd�2�MXf�&,���� ��	����Äev��a�2;ЎMXfڡ	����Äev`����?LXf�&,��Ȅev�����?LX� �&,s ��9�uUt�8�vUt�8�v�	8�vU�	8�u�v���O�n�N'�n�N'�n�Q��`�&,s��9��	˜��ÄeN`�a�2'��0a�h�&,s�Ȅe��MXV�MXV ЎMXV��MXV�LX�� ;2aY��؄eE �؄eE �؄eE �؄e	h�&,+h�&,+ hG&,�y���	ˊ�X�&,+���a²",�&,+������-ء	�z�B�a²�`Dd²",�&,+�b�a²"�vl²"�vh²��Ȅe=�c��C� �c��c�q�LX�� [T+���E��G@Ԣ?vP���C@֢��P�����!� ��(P�vQ�	(�:6aG֡	�
 ڱ	ˊ ޱ	ˊ ށ	�z`G&,�y@���@���@���`���������Єe �Ȅe=�c��C� �c��c����8��LX��:6aY�:6a����`����������� �����ul²"�uh²�vl²"�wl²"�w`�2(h�	�zP�&,+P�&,+�B�a²",�&,+¢�a²",ڱ	�
�h�&,�y���	ˊ�X�&,〈�a²",�&,+������vR�DB?�&,!��m����>LXV��MXVЎMXV�MX�	-4aY��؄eE �Єe �؄eE �؄eE ���e=�#��<��MXV��MXV��MXF���a²"�vl²"�vh²�vd²�ֱ	ˊ ֡	�
 ڱ	ˊ ޱ	ˊ ށ	�z`G&,#A?�0aY�:6aY�:6aY�:6aY@;6aY@;4aY@;2aY��؄eE �Єe �؄e$�h&,+x&,�q�����ul²" ul²" ul²"�ul²"�vl²"�vh²��T�	m������MX"BD�0aY��a�LX���Єe=o��0aY��a��0aY����E�ÄeEX�c�`�MX���:6aY�uh²�vl²"�wl²"�w`²߄������ul�2����c��c��c��C� �#��<��MXV�MXV ЎMXV��MXF������vd²�Ա	�H��>LXV��MXV��MXVЎMXV�MXV ЎLX���:6a	Zl²�vl²"�wl²"�w`²ؑ	�zP�&,+P�&,+P�&,+X�&,+h�&,#AC�&,!��&,�y`���`��� �������������vd²�Ա	ˊ Ա	�H�>LXV��MXVЎMXV�E;6aY�Єe=o��0aY�؄eX�?LXV���ÄeEX�#�����&,�y��	ˊ�P���@���`�����!셓x+Cs�pmY�G�ڲ@�ȵe=rĮ-+�][F����ڲ"@�صeE� �k�z�\[���F�ڲ" u�ڲ" u�ڲ"�u�ڲ"�v�ڲ"�v��224�еe=�cז�Cז �cז�cז�ז�8��\[��:vmY�:vmY��i:9��]XBBs�paY@;taY@;raY��؅eE �Ѕe �؅eE �؅eE ���e=�#��!�}���@���@���`����������� �����u�²"�u�²�v��22T�����8��\X����a��paY��a��paY��aю]XV�E;ta�ۇˊ�X�.,+����²"�w�²"�w�²ؑ�zP�.,+P�.,+P�.,+X�.,#Cs�paY@;taY@;raY��؅eE kQ|r�m�����]XBBu�.,���]XBp�pa�ۇˊ Աˊ ֱˊ ڱˊ ڡ�
 ڑ��P�>\XV�]XV Ў]XV��]XF������v�²�Աˊ Աˊ Աˊ ֱˊ ڱˊ ڡ�
 ڑ�zXo����m�����m������m���w�$�m���$�m����m��~�{ ��9�����%жK��%Ъ�^�iXhu�k��x�A �=X��!F@��˻~!F@;���hgD�� F@;#�51��9��Έp�A��6O�@@#������|>\s#��њ�d���5��;�k��w�$��9H�9^s��s�� 01>r�� �s�� �%^B�.!� m��D���K"�Z�%�-���.���.���.��@]�%)���KR u��� �/!H�5^B��k�� h�h	A
����`]�%)@��KR�w����,!H�-ZB�
�[�� P�x	A*����T`��%�@����!`�=\B�
�{�� X�x	A���4�=�%i�{�KҀ����-!H�#^B��g�� �B]�߉G�f�.���%`�hWmy��[��=*H�nѮ����zh�!���b]��F�E��1�t������-�[�~��/�B�5�hÿt����2�t�O�� �)>q"P��ĉ ��'2�s�O�� �9>q"P��ĉ`��'2���'Nd m	O����8�	�%>q"XKx�D&��',=N��X����hFYN��X:��Z��8��x�C�	���JﾙX�����	K��� �UP `9��>a	�XW}��,���+I�r m}��!`9��:c����iF�`��$`I�Z�tX�~�$K��x�G@h���!�U}��# $��� EBA���%	��i�����! �3m�����# ��8����t*���J����S�@<�3��+���=�
�:cO�M��^;=հm]�؞���S�"R0�/b��jU�}�vEH4�/O=�(����î���<�<�������쩅])�Ǘ�vE�h_�r�!�<���wh{�Y�z��C(l�~h��xX���H)�:��GJ�9^�)x�x-������R �Dk9� j��rJ���
�%^�)XK��S*Жx-�T�]µ�R�v��rJ�%^�)X�p-�T�]ⵜR�w��rJ�5X�)`�6�+ XW�-b�6 ]��i����d;�ڀtS��^�6`��7�mV`��G��
�#���<p�m�G��9��^�:��^�:��^@;��^@;��^@;��.X�t��c��ҁ��Mw���æ���t��C��2 ��Mw��æ�@�a�]����.h�t��c��2�vh�]���˦�L���Mw��/��2q~�æ�L�wh�]�;��.�B�e�]���˦�L��Mw��/��2���Mw=�vl�]��t�X�t�Xg�H�hge����;+E��� �Y����m�l	X@-ʍ�!`= �h7N�&@-ʍ�!`M�Z���s26m�Υ�.�j�!`�Er��	X�t��c���MwM��æ�&��t��C����Mẁ�æ�f@�a�]3����h�t��c�vh�]3����X�6�ڗMw���e�]���6��Yl�]!�}�tW�g_6�
ڗMw���>l�+��a�]���ئ�B@K�Mw�|�>l�+����������?�-�      s      x������ � �      u   O   x�u2��rv�t�PpN�K-���/���K�
u2�t�t���M��S�/�C�3Ƨф����>S��X���qqq �b+�      v   |   x���q����S�OS(��I-�45�����	f��$��sp�:�$�K��KK2��z��}C��2��E%
��%�@]�\n.Ap]n��) a#S.��p��f�BpyfIrF*XK� 0�-Y      w      x������ � �      {   �   x�̱
�0��9������	T�D0��%6'�piH.`�^���|�]((����R��'ӤQY���0��jK�w�J��v�g��JP����4�<I�_j����FNk&��:�m���&Ys�m�Fe�̺zf�-r�G _��7�      y   B   x�	r�6�420��rv�0�
	q�p8sC�9�j<���j!"&@94]�Ȋb���� ގv     