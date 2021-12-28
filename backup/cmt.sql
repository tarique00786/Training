--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: aziz
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO aziz;

--
-- Name: department_staffs; Type: TABLE; Schema: public; Owner: aziz
--

CREATE TABLE public.department_staffs (
    id bigint NOT NULL,
    department_id bigint,
    staff_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.department_staffs OWNER TO aziz;

--
-- Name: department_staffs_id_seq; Type: SEQUENCE; Schema: public; Owner: aziz
--

CREATE SEQUENCE public.department_staffs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.department_staffs_id_seq OWNER TO aziz;

--
-- Name: department_staffs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aziz
--

ALTER SEQUENCE public.department_staffs_id_seq OWNED BY public.department_staffs.id;


--
-- Name: departments; Type: TABLE; Schema: public; Owner: aziz
--

CREATE TABLE public.departments (
    id bigint NOT NULL,
    name character varying,
    location text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.departments OWNER TO aziz;

--
-- Name: departments_id_seq; Type: SEQUENCE; Schema: public; Owner: aziz
--

CREATE SEQUENCE public.departments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.departments_id_seq OWNER TO aziz;

--
-- Name: departments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aziz
--

ALTER SEQUENCE public.departments_id_seq OWNED BY public.departments.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: aziz
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO aziz;

--
-- Name: staffs; Type: TABLE; Schema: public; Owner: aziz
--

CREATE TABLE public.staffs (
    id bigint NOT NULL,
    name character varying,
    salary integer,
    address text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.staffs OWNER TO aziz;

--
-- Name: staffs_id_seq; Type: SEQUENCE; Schema: public; Owner: aziz
--

CREATE SEQUENCE public.staffs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.staffs_id_seq OWNER TO aziz;

--
-- Name: staffs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aziz
--

ALTER SEQUENCE public.staffs_id_seq OWNED BY public.staffs.id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: aziz
--

CREATE TABLE public.students (
    id bigint NOT NULL,
    department_id bigint,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    admission integer
);


ALTER TABLE public.students OWNER TO aziz;

--
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: aziz
--

CREATE SEQUENCE public.students_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_id_seq OWNER TO aziz;

--
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aziz
--

ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;


--
-- Name: department_staffs id; Type: DEFAULT; Schema: public; Owner: aziz
--

ALTER TABLE ONLY public.department_staffs ALTER COLUMN id SET DEFAULT nextval('public.department_staffs_id_seq'::regclass);


--
-- Name: departments id; Type: DEFAULT; Schema: public; Owner: aziz
--

ALTER TABLE ONLY public.departments ALTER COLUMN id SET DEFAULT nextval('public.departments_id_seq'::regclass);


--
-- Name: staffs id; Type: DEFAULT; Schema: public; Owner: aziz
--

ALTER TABLE ONLY public.staffs ALTER COLUMN id SET DEFAULT nextval('public.staffs_id_seq'::regclass);


--
-- Name: students id; Type: DEFAULT; Schema: public; Owner: aziz
--

ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: aziz
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
schema_sha1	024086d35e003ecf971b1aabef900b6ee9840a61	2021-12-21 20:32:59.110843	2021-12-21 20:32:59.110843
environment	test	2021-12-21 20:32:59.084939	2021-12-22 04:37:31.190675
\.


--
-- Data for Name: department_staffs; Type: TABLE DATA; Schema: public; Owner: aziz
--

COPY public.department_staffs (id, department_id, staff_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: aziz
--

COPY public.departments (id, name, location, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: aziz
--

COPY public.schema_migrations (version) FROM stdin;
20211221175330
20211221072220
20211221072309
20211221080409
20211221111402
20211221120604
20211221075744
20211221113820
\.


--
-- Data for Name: staffs; Type: TABLE DATA; Schema: public; Owner: aziz
--

COPY public.staffs (id, name, salary, address, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: aziz
--

COPY public.students (id, department_id, name, created_at, updated_at, admission) FROM stdin;
\.


--
-- Name: department_staffs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aziz
--

SELECT pg_catalog.setval('public.department_staffs_id_seq', 1, false);


--
-- Name: departments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aziz
--

SELECT pg_catalog.setval('public.departments_id_seq', 1, false);


--
-- Name: staffs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aziz
--

SELECT pg_catalog.setval('public.staffs_id_seq', 1, false);


--
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aziz
--

SELECT pg_catalog.setval('public.students_id_seq', 1, false);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: aziz
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: department_staffs department_staffs_pkey; Type: CONSTRAINT; Schema: public; Owner: aziz
--

ALTER TABLE ONLY public.department_staffs
    ADD CONSTRAINT department_staffs_pkey PRIMARY KEY (id);


--
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: public; Owner: aziz
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: aziz
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: staffs staffs_pkey; Type: CONSTRAINT; Schema: public; Owner: aziz
--

ALTER TABLE ONLY public.staffs
    ADD CONSTRAINT staffs_pkey PRIMARY KEY (id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: aziz
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- Name: index_department_staffs_on_department_id; Type: INDEX; Schema: public; Owner: aziz
--

CREATE INDEX index_department_staffs_on_department_id ON public.department_staffs USING btree (department_id);


--
-- Name: index_department_staffs_on_staff_id; Type: INDEX; Schema: public; Owner: aziz
--

CREATE INDEX index_department_staffs_on_staff_id ON public.department_staffs USING btree (staff_id);


--
-- Name: index_students_on_department_id; Type: INDEX; Schema: public; Owner: aziz
--

CREATE INDEX index_students_on_department_id ON public.students USING btree (department_id);


--
-- PostgreSQL database dump complete
--

