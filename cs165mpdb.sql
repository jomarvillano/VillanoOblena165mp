--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.6
-- Dumped by pg_dump version 9.2.6
-- Started on 2014-03-06 23:45:46

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 197 (class 3079 OID 11727)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2134 (class 0 OID 0)
-- Dependencies: 197
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 175 (class 1259 OID 24922)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 174 (class 1259 OID 24920)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 2135 (class 0 OID 0)
-- Dependencies: 174
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- TOC entry 173 (class 1259 OID 24907)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 172 (class 1259 OID 24905)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 2136 (class 0 OID 0)
-- Dependencies: 172
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- TOC entry 171 (class 1259 OID 24897)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 170 (class 1259 OID 24895)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 2137 (class 0 OID 0)
-- Dependencies: 170
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- TOC entry 181 (class 1259 OID 24967)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 177 (class 1259 OID 24937)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 176 (class 1259 OID 24935)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 2138 (class 0 OID 0)
-- Dependencies: 176
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- TOC entry 180 (class 1259 OID 24965)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 2139 (class 0 OID 0)
-- Dependencies: 180
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- TOC entry 179 (class 1259 OID 24952)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 178 (class 1259 OID 24950)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 2140 (class 0 OID 0)
-- Dependencies: 178
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- TOC entry 169 (class 1259 OID 24885)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    content_type_id integer,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 168 (class 1259 OID 24883)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 2141 (class 0 OID 0)
-- Dependencies: 168
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- TOC entry 183 (class 1259 OID 24992)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 24990)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 2142 (class 0 OID 0)
-- Dependencies: 182
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- TOC entry 184 (class 1259 OID 25010)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 25039)
-- Name: records_agent; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE records_agent (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    place_id integer NOT NULL
);


ALTER TABLE public.records_agent OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 25037)
-- Name: records_agent_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE records_agent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.records_agent_id_seq OWNER TO postgres;

--
-- TOC entry 2143 (class 0 OID 0)
-- Dependencies: 189
-- Name: records_agent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE records_agent_id_seq OWNED BY records_agent.id;


--
-- TOC entry 186 (class 1259 OID 25020)
-- Name: records_category; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE records_category (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    info text NOT NULL
);


ALTER TABLE public.records_category OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 25018)
-- Name: records_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE records_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.records_category_id_seq OWNER TO postgres;

--
-- TOC entry 2144 (class 0 OID 0)
-- Dependencies: 185
-- Name: records_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE records_category_id_seq OWNED BY records_category.id;


--
-- TOC entry 196 (class 1259 OID 25080)
-- Name: records_crime; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE records_crime (
    id integer NOT NULL,
    classification_id integer,
    "time" timestamp with time zone NOT NULL,
    place_id integer NOT NULL,
    criminal_id integer
);


ALTER TABLE public.records_crime OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 25078)
-- Name: records_crime_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE records_crime_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.records_crime_id_seq OWNER TO postgres;

--
-- TOC entry 2145 (class 0 OID 0)
-- Dependencies: 195
-- Name: records_crime_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE records_crime_id_seq OWNED BY records_crime.id;


--
-- TOC entry 194 (class 1259 OID 25065)
-- Name: records_crime_officer; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE records_crime_officer (
    id integer NOT NULL,
    crime_id integer NOT NULL,
    agent_id integer NOT NULL
);


ALTER TABLE public.records_crime_officer OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 25063)
-- Name: records_crime_officer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE records_crime_officer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.records_crime_officer_id_seq OWNER TO postgres;

--
-- TOC entry 2146 (class 0 OID 0)
-- Dependencies: 193
-- Name: records_crime_officer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE records_crime_officer_id_seq OWNED BY records_crime_officer.id;


--
-- TOC entry 188 (class 1259 OID 25031)
-- Name: records_location; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE records_location (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.records_location OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 25029)
-- Name: records_location_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE records_location_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.records_location_id_seq OWNER TO postgres;

--
-- TOC entry 2147 (class 0 OID 0)
-- Dependencies: 187
-- Name: records_location_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE records_location_id_seq OWNED BY records_location.id;


--
-- TOC entry 192 (class 1259 OID 25052)
-- Name: records_suspect; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE records_suspect (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    place_id integer NOT NULL
);


ALTER TABLE public.records_suspect OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 25050)
-- Name: records_suspect_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE records_suspect_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.records_suspect_id_seq OWNER TO postgres;

--
-- TOC entry 2148 (class 0 OID 0)
-- Dependencies: 191
-- Name: records_suspect_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE records_suspect_id_seq OWNED BY records_suspect.id;


--
-- TOC entry 1899 (class 2604 OID 24925)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- TOC entry 1898 (class 2604 OID 24910)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 1897 (class 2604 OID 24900)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- TOC entry 1902 (class 2604 OID 24970)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- TOC entry 1900 (class 2604 OID 24940)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- TOC entry 1901 (class 2604 OID 24955)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 1895 (class 2604 OID 24888)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- TOC entry 1903 (class 2604 OID 24995)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- TOC entry 1906 (class 2604 OID 25042)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY records_agent ALTER COLUMN id SET DEFAULT nextval('records_agent_id_seq'::regclass);


--
-- TOC entry 1904 (class 2604 OID 25023)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY records_category ALTER COLUMN id SET DEFAULT nextval('records_category_id_seq'::regclass);


--
-- TOC entry 1909 (class 2604 OID 25083)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY records_crime ALTER COLUMN id SET DEFAULT nextval('records_crime_id_seq'::regclass);


--
-- TOC entry 1908 (class 2604 OID 25068)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY records_crime_officer ALTER COLUMN id SET DEFAULT nextval('records_crime_officer_id_seq'::regclass);


--
-- TOC entry 1905 (class 2604 OID 25034)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY records_location ALTER COLUMN id SET DEFAULT nextval('records_location_id_seq'::regclass);


--
-- TOC entry 1907 (class 2604 OID 25055)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY records_suspect ALTER COLUMN id SET DEFAULT nextval('records_suspect_id_seq'::regclass);


--
-- TOC entry 2105 (class 0 OID 24922)
-- Dependencies: 175
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 2149 (class 0 OID 0)
-- Dependencies: 174
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- TOC entry 2103 (class 0 OID 24907)
-- Dependencies: 173
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2150 (class 0 OID 0)
-- Dependencies: 172
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 2101 (class 0 OID 24897)
-- Dependencies: 171
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add category	7	add_category
20	Can change category	7	change_category
21	Can delete category	7	delete_category
22	Can add location	8	add_location
23	Can change location	8	change_location
24	Can delete location	8	delete_location
25	Can add agent	9	add_agent
26	Can change agent	9	change_agent
27	Can delete agent	9	delete_agent
28	Can add suspect	10	add_suspect
29	Can change suspect	10	change_suspect
30	Can delete suspect	10	delete_suspect
31	Can add crime	11	add_crime
32	Can change crime	11	change_crime
33	Can delete crime	11	delete_crime
\.


--
-- TOC entry 2151 (class 0 OID 0)
-- Dependencies: 170
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 33, true);


--
-- TOC entry 2111 (class 0 OID 24967)
-- Dependencies: 181
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$12000$JMwXwlNYHpHe$eanpsDdL3oMtGM9wKudZjCue/yypRAhdY5FgJn1MJeg=	2014-03-06 23:36:57.84+08	t	cs165			cs165@yahoo.com	t	t	2014-03-06 23:36:23.483+08
\.


--
-- TOC entry 2107 (class 0 OID 24937)
-- Dependencies: 177
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 2152 (class 0 OID 0)
-- Dependencies: 176
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- TOC entry 2153 (class 0 OID 0)
-- Dependencies: 180
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- TOC entry 2109 (class 0 OID 24952)
-- Dependencies: 179
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2154 (class 0 OID 0)
-- Dependencies: 178
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 2099 (class 0 OID 24885)
-- Dependencies: 169
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) FROM stdin;
1	2014-03-06 23:37:03.985+08	1	8	1	North	1	
2	2014-03-06 23:37:25.444+08	1	7	1	Arson	1	
3	2014-03-06 23:37:40.53+08	1	7	2	Robbery	1	
4	2014-03-06 23:38:10.181+08	1	7	3	Murder	1	
5	2014-03-06 23:38:16.945+08	1	8	2	East	1	
6	2014-03-06 23:38:22.423+08	1	8	3	South	1	
7	2014-03-06 23:38:26.464+08	1	8	4	West	1	
8	2014-03-06 23:38:50.558+08	1	9	1	Bennie Bowen	1	
9	2014-03-06 23:39:07.705+08	1	9	2	Ella Parker	1	
10	2014-03-06 23:39:38.452+08	1	10	1	Grenushav	1	
11	2014-03-06 23:39:40.015+08	1	11	1	1	1	
12	2014-03-06 23:39:53.222+08	1	11	2	2	1	
\.


--
-- TOC entry 2155 (class 0 OID 0)
-- Dependencies: 168
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 12, true);


--
-- TOC entry 2113 (class 0 OID 24992)
-- Dependencies: 183
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	log entry	admin	logentry
2	permission	auth	permission
3	group	auth	group
4	user	auth	user
5	content type	contenttypes	contenttype
6	session	sessions	session
7	category	records	category
8	location	records	location
9	agent	records	agent
10	suspect	records	suspect
11	crime	records	crime
\.


--
-- TOC entry 2156 (class 0 OID 0)
-- Dependencies: 182
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 11, true);


--
-- TOC entry 2114 (class 0 OID 25010)
-- Dependencies: 184
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
56m9ez04v6vzgj7qq8civmzcdbsx05pw	YzdmOGY1ZmY4ZjQzNmNiNTk5YjhkNjAzYWJjMDA4ZWY1Y2UzZWE4Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2014-03-20 23:36:57.841+08
\.


--
-- TOC entry 2120 (class 0 OID 25039)
-- Dependencies: 190
-- Data for Name: records_agent; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY records_agent (id, name, place_id) FROM stdin;
1	Bennie Bowen	1
2	Ella Parker	3
\.


--
-- TOC entry 2157 (class 0 OID 0)
-- Dependencies: 189
-- Name: records_agent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('records_agent_id_seq', 2, true);


--
-- TOC entry 2116 (class 0 OID 25020)
-- Dependencies: 186
-- Data for Name: records_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY records_category (id, name, info) FROM stdin;
1	Arson	Burn baby burn!
2	Robbery	Ka-ching!
3	Murder	Mamaaaa, i just killed a man.. Put a gun against his head...
\.


--
-- TOC entry 2158 (class 0 OID 0)
-- Dependencies: 185
-- Name: records_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('records_category_id_seq', 3, true);


--
-- TOC entry 2126 (class 0 OID 25080)
-- Dependencies: 196
-- Data for Name: records_crime; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY records_crime (id, classification_id, "time", place_id, criminal_id) FROM stdin;
1	3	2014-03-06 23:38:12+08	4	1
2	1	2014-03-06 23:39:45+08	1	\N
\.


--
-- TOC entry 2159 (class 0 OID 0)
-- Dependencies: 195
-- Name: records_crime_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('records_crime_id_seq', 2, true);


--
-- TOC entry 2124 (class 0 OID 25065)
-- Dependencies: 194
-- Data for Name: records_crime_officer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY records_crime_officer (id, crime_id, agent_id) FROM stdin;
1	1	1
2	1	2
\.


--
-- TOC entry 2160 (class 0 OID 0)
-- Dependencies: 193
-- Name: records_crime_officer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('records_crime_officer_id_seq', 2, true);


--
-- TOC entry 2118 (class 0 OID 25031)
-- Dependencies: 188
-- Data for Name: records_location; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY records_location (id, name) FROM stdin;
1	North
2	East
3	South
4	West
\.


--
-- TOC entry 2161 (class 0 OID 0)
-- Dependencies: 187
-- Name: records_location_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('records_location_id_seq', 4, true);


--
-- TOC entry 2122 (class 0 OID 25052)
-- Dependencies: 192
-- Data for Name: records_suspect; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY records_suspect (id, name, place_id) FROM stdin;
1	Grenushav	1
\.


--
-- TOC entry 2162 (class 0 OID 0)
-- Dependencies: 191
-- Name: records_suspect_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('records_suspect_id_seq', 1, true);


--
-- TOC entry 1926 (class 2606 OID 24929)
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 1921 (class 2606 OID 24914)
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- TOC entry 1924 (class 2606 OID 24912)
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 1929 (class 2606 OID 24927)
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 1916 (class 2606 OID 24904)
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- TOC entry 1918 (class 2606 OID 24902)
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 1932 (class 2606 OID 24942)
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 1935 (class 2606 OID 24944)
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- TOC entry 1943 (class 2606 OID 24972)
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 1938 (class 2606 OID 24957)
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 1941 (class 2606 OID 24959)
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- TOC entry 1945 (class 2606 OID 24974)
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 1912 (class 2606 OID 24894)
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 1948 (class 2606 OID 24999)
-- Name: django_content_type_app_label_model_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_key UNIQUE (app_label, model);


--
-- TOC entry 1950 (class 2606 OID 24997)
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 1953 (class 2606 OID 25017)
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 1960 (class 2606 OID 25044)
-- Name: records_agent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY records_agent
    ADD CONSTRAINT records_agent_pkey PRIMARY KEY (id);


--
-- TOC entry 1956 (class 2606 OID 25028)
-- Name: records_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY records_category
    ADD CONSTRAINT records_category_pkey PRIMARY KEY (id);


--
-- TOC entry 1968 (class 2606 OID 25072)
-- Name: records_crime_officer_crime_id_agent_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY records_crime_officer
    ADD CONSTRAINT records_crime_officer_crime_id_agent_id_key UNIQUE (crime_id, agent_id);


--
-- TOC entry 1970 (class 2606 OID 25070)
-- Name: records_crime_officer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY records_crime_officer
    ADD CONSTRAINT records_crime_officer_pkey PRIMARY KEY (id);


--
-- TOC entry 1974 (class 2606 OID 25085)
-- Name: records_crime_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY records_crime
    ADD CONSTRAINT records_crime_pkey PRIMARY KEY (id);


--
-- TOC entry 1958 (class 2606 OID 25036)
-- Name: records_location_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY records_location
    ADD CONSTRAINT records_location_pkey PRIMARY KEY (id);


--
-- TOC entry 1963 (class 2606 OID 25057)
-- Name: records_suspect_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY records_suspect
    ADD CONSTRAINT records_suspect_pkey PRIMARY KEY (id);


--
-- TOC entry 1927 (class 1259 OID 25112)
-- Name: auth_group_name_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_name_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 1919 (class 1259 OID 25110)
-- Name: auth_group_permissions_group_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_permissions_group_id ON auth_group_permissions USING btree (group_id);


--
-- TOC entry 1922 (class 1259 OID 25111)
-- Name: auth_group_permissions_permission_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_permissions_permission_id ON auth_group_permissions USING btree (permission_id);


--
-- TOC entry 1914 (class 1259 OID 25109)
-- Name: auth_permission_content_type_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_permission_content_type_id ON auth_permission USING btree (content_type_id);


--
-- TOC entry 1930 (class 1259 OID 25114)
-- Name: auth_user_groups_group_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_groups_group_id ON auth_user_groups USING btree (group_id);


--
-- TOC entry 1933 (class 1259 OID 25113)
-- Name: auth_user_groups_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_groups_user_id ON auth_user_groups USING btree (user_id);


--
-- TOC entry 1936 (class 1259 OID 25116)
-- Name: auth_user_user_permissions_permission_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_permission_id ON auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 1939 (class 1259 OID 25115)
-- Name: auth_user_user_permissions_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_user_id ON auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 1946 (class 1259 OID 25117)
-- Name: auth_user_username_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_username_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 1910 (class 1259 OID 25108)
-- Name: django_admin_log_content_type_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_admin_log_content_type_id ON django_admin_log USING btree (content_type_id);


--
-- TOC entry 1913 (class 1259 OID 25107)
-- Name: django_admin_log_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_admin_log_user_id ON django_admin_log USING btree (user_id);


--
-- TOC entry 1951 (class 1259 OID 25119)
-- Name: django_session_expire_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_session_expire_date ON django_session USING btree (expire_date);


--
-- TOC entry 1954 (class 1259 OID 25118)
-- Name: django_session_session_key_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_session_session_key_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 1961 (class 1259 OID 25120)
-- Name: records_agent_place_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX records_agent_place_id ON records_agent USING btree (place_id);


--
-- TOC entry 1971 (class 1259 OID 25124)
-- Name: records_crime_classification_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX records_crime_classification_id ON records_crime USING btree (classification_id);


--
-- TOC entry 1972 (class 1259 OID 25126)
-- Name: records_crime_criminal_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX records_crime_criminal_id ON records_crime USING btree (criminal_id);


--
-- TOC entry 1965 (class 1259 OID 25123)
-- Name: records_crime_officer_agent_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX records_crime_officer_agent_id ON records_crime_officer USING btree (agent_id);


--
-- TOC entry 1966 (class 1259 OID 25122)
-- Name: records_crime_officer_crime_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX records_crime_officer_crime_id ON records_crime_officer USING btree (crime_id);


--
-- TOC entry 1975 (class 1259 OID 25125)
-- Name: records_crime_place_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX records_crime_place_id ON records_crime USING btree (place_id);


--
-- TOC entry 1964 (class 1259 OID 25121)
-- Name: records_suspect_place_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX records_suspect_place_id ON records_suspect USING btree (place_id);


--
-- TOC entry 1979 (class 2606 OID 24915)
-- Name: auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 1981 (class 2606 OID 24945)
-- Name: auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 1983 (class 2606 OID 24960)
-- Name: auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 1977 (class 2606 OID 25000)
-- Name: content_type_id_refs_id_93d2d1f8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT content_type_id_refs_id_93d2d1f8 FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 1978 (class 2606 OID 25005)
-- Name: content_type_id_refs_id_d043b34a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT content_type_id_refs_id_d043b34a FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 1988 (class 2606 OID 25101)
-- Name: crime_id_refs_id_95adf3cd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY records_crime_officer
    ADD CONSTRAINT crime_id_refs_id_95adf3cd FOREIGN KEY (crime_id) REFERENCES records_crime(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 1980 (class 2606 OID 24930)
-- Name: group_id_refs_id_f4b32aac; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT group_id_refs_id_f4b32aac FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 1985 (class 2606 OID 25045)
-- Name: records_agent_place_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY records_agent
    ADD CONSTRAINT records_agent_place_id_fkey FOREIGN KEY (place_id) REFERENCES records_location(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 1989 (class 2606 OID 25086)
-- Name: records_crime_classification_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY records_crime
    ADD CONSTRAINT records_crime_classification_id_fkey FOREIGN KEY (classification_id) REFERENCES records_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 1991 (class 2606 OID 25096)
-- Name: records_crime_criminal_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY records_crime
    ADD CONSTRAINT records_crime_criminal_id_fkey FOREIGN KEY (criminal_id) REFERENCES records_suspect(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 1987 (class 2606 OID 25073)
-- Name: records_crime_officer_agent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY records_crime_officer
    ADD CONSTRAINT records_crime_officer_agent_id_fkey FOREIGN KEY (agent_id) REFERENCES records_agent(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 1990 (class 2606 OID 25091)
-- Name: records_crime_place_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY records_crime
    ADD CONSTRAINT records_crime_place_id_fkey FOREIGN KEY (place_id) REFERENCES records_location(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 1986 (class 2606 OID 25058)
-- Name: records_suspect_place_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY records_suspect
    ADD CONSTRAINT records_suspect_place_id_fkey FOREIGN KEY (place_id) REFERENCES records_location(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 1982 (class 2606 OID 24980)
-- Name: user_id_refs_id_40c41112; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT user_id_refs_id_40c41112 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 1984 (class 2606 OID 24985)
-- Name: user_id_refs_id_4dc23c39; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT user_id_refs_id_4dc23c39 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 1976 (class 2606 OID 24975)
-- Name: user_id_refs_id_c0d12874; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT user_id_refs_id_c0d12874 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2133 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2014-03-06 23:45:46

--
-- PostgreSQL database dump complete
--

