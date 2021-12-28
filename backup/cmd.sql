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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: cms1
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO cms1;

--
-- Name: department_staffs; Type: TABLE; Schema: public; Owner: cms1
--

CREATE TABLE public.department_staffs (
    id bigint NOT NULL,
    department_id bigint,
    staff_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.department_staffs OWNER TO cms1;

--
-- Name: department_staffs_id_seq; Type: SEQUENCE; Schema: public; Owner: cms1
--

CREATE SEQUENCE public.department_staffs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.department_staffs_id_seq OWNER TO cms1;

--
-- Name: department_staffs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cms1
--

ALTER SEQUENCE public.department_staffs_id_seq OWNED BY public.department_staffs.id;


--
-- Name: departments; Type: TABLE; Schema: public; Owner: cms1
--

CREATE TABLE public.departments (
    id bigint NOT NULL,
    name character varying,
    location text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.departments OWNER TO cms1;

--
-- Name: departments_id_seq; Type: SEQUENCE; Schema: public; Owner: cms1
--

CREATE SEQUENCE public.departments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.departments_id_seq OWNER TO cms1;

--
-- Name: departments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cms1
--

ALTER SEQUENCE public.departments_id_seq OWNED BY public.departments.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: cms1
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO cms1;

--
-- Name: staffs; Type: TABLE; Schema: public; Owner: cms1
--

CREATE TABLE public.staffs (
    id bigint NOT NULL,
    name character varying,
    salary integer,
    address text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.staffs OWNER TO cms1;

--
-- Name: staffs_id_seq; Type: SEQUENCE; Schema: public; Owner: cms1
--

CREATE SEQUENCE public.staffs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.staffs_id_seq OWNER TO cms1;

--
-- Name: staffs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cms1
--

ALTER SEQUENCE public.staffs_id_seq OWNED BY public.staffs.id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: cms1
--

CREATE TABLE public.students (
    id bigint NOT NULL,
    department_id bigint,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    admission integer
);


ALTER TABLE public.students OWNER TO cms1;

--
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: cms1
--

CREATE SEQUENCE public.students_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_id_seq OWNER TO cms1;

--
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cms1
--

ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;


--
-- Name: department_staffs id; Type: DEFAULT; Schema: public; Owner: cms1
--

ALTER TABLE ONLY public.department_staffs ALTER COLUMN id SET DEFAULT nextval('public.department_staffs_id_seq'::regclass);


--
-- Name: departments id; Type: DEFAULT; Schema: public; Owner: cms1
--

ALTER TABLE ONLY public.departments ALTER COLUMN id SET DEFAULT nextval('public.departments_id_seq'::regclass);


--
-- Name: staffs id; Type: DEFAULT; Schema: public; Owner: cms1
--

ALTER TABLE ONLY public.staffs ALTER COLUMN id SET DEFAULT nextval('public.staffs_id_seq'::regclass);


--
-- Name: students id; Type: DEFAULT; Schema: public; Owner: cms1
--

ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: cms1
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2021-12-21 07:24:28.337691	2021-12-21 07:24:28.337691
schema_sha1	024086d35e003ecf971b1aabef900b6ee9840a61	2021-12-22 04:37:30.127148	2021-12-22 04:37:30.127148
\.


--
-- Data for Name: department_staffs; Type: TABLE DATA; Schema: public; Owner: cms1
--

COPY public.department_staffs (id, department_id, staff_id, created_at, updated_at) FROM stdin;
3	5	4	2021-12-22 07:37:07.655295	2021-12-22 07:37:07.655295
4	2	4	2021-12-22 12:13:47.010679	2021-12-22 12:13:47.010679
5	2	5	2021-12-22 12:13:47.093926	2021-12-22 12:13:47.093926
6	2	8	2021-12-22 12:13:47.099495	2021-12-22 12:13:47.099495
7	2	7	2021-12-22 12:13:47.10333	2021-12-22 12:13:47.10333
8	3	7	2021-12-22 12:15:57.745236	2021-12-22 12:15:57.745236
9	3	8	2021-12-22 12:15:57.751914	2021-12-22 12:15:57.751914
10	3	19	2021-12-22 12:15:57.755473	2021-12-22 12:15:57.755473
11	3	18	2021-12-22 12:15:57.760069	2021-12-22 12:15:57.760069
12	6	5	2021-12-22 12:17:14.538168	2021-12-22 12:17:14.538168
13	6	7	2021-12-22 12:17:14.543096	2021-12-22 12:17:14.543096
14	11	9	2021-12-22 12:23:13.290862	2021-12-22 12:23:13.290862
15	10	9	2021-12-22 12:23:13.296047	2021-12-22 12:23:13.296047
16	4	4	2021-12-22 12:34:20.233225	2021-12-22 12:34:20.233225
17	9	13	2021-12-22 12:37:06.277715	2021-12-22 12:37:06.277715
18	9	14	2021-12-22 12:37:06.281563	2021-12-22 12:37:06.281563
19	9	15	2021-12-22 12:37:06.28587	2021-12-22 12:37:06.28587
20	9	16	2021-12-22 12:37:06.290246	2021-12-22 12:37:06.290246
21	9	17	2021-12-22 12:37:06.293644	2021-12-22 12:37:06.293644
22	12	7	2021-12-22 12:38:57.831917	2021-12-22 12:38:57.831917
23	12	10	2021-12-22 12:38:57.835959	2021-12-22 12:38:57.835959
24	12	14	2021-12-22 12:38:57.839745	2021-12-22 12:38:57.839745
25	12	21	2021-12-22 12:38:57.84274	2021-12-22 12:38:57.84274
26	12	24	2021-12-22 12:38:57.845826	2021-12-22 12:38:57.845826
27	12	19	2021-12-22 12:38:57.848714	2021-12-22 12:38:57.848714
28	10	11	2021-12-22 13:12:10.545901	2021-12-22 13:12:10.545901
29	10	12	2021-12-22 13:12:10.560601	2021-12-22 13:12:10.560601
30	10	20	2021-12-22 13:12:10.567136	2021-12-22 13:12:10.567136
31	10	23	2021-12-22 13:12:10.574742	2021-12-22 13:12:10.574742
\.


--
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: cms1
--

COPY public.departments (id, name, location, created_at, updated_at) FROM stdin;
2	Computer	Sangam Vihar	2021-12-22 05:00:53.39653	2021-12-22 05:00:53.39653
3	Electrical	Bata Chowk	2021-12-22 05:00:53.411417	2021-12-22 05:00:53.411417
4	Electronics	Sarai	2021-12-22 05:00:53.424637	2021-12-22 05:00:53.424637
6	Physics	Tuglakabad	2021-12-22 05:00:53.472759	2021-12-22 05:00:53.472759
9	Mechanical	Janakpuri	2021-12-22 09:24:29.410887	2021-12-22 09:24:29.410887
10	Thermal	Saket	2021-12-22 09:24:29.437945	2021-12-22 09:24:29.437945
11	Chemical	Faridabd	2021-12-22 09:24:29.461036	2021-12-22 09:24:29.461036
12	Civil	Noida	2021-12-22 09:24:29.493645	2021-12-22 09:24:29.493645
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: cms1
--

COPY public.schema_migrations (version) FROM stdin;
20211221072220
20211221072309
20211221080409
20211221111402
20211221120604
20211221175330
20211221075744
20211222073205
\.


--
-- Data for Name: staffs; Type: TABLE DATA; Schema: public; Owner: cms1
--

COPY public.staffs (id, name, salary, address, created_at, updated_at) FROM stdin;
4	Clarke	20000	Tuglakabad	2021-12-22 05:20:59.002673	2021-12-22 05:20:59.002673
5	Peter	30000	Janakpuri	2021-12-22 05:20:59.031216	2021-12-22 05:20:59.031216
7	Alex	80000	Noida	2021-12-22 05:20:59.074101	2021-12-22 05:20:59.074101
8	Southe	50000	Escort	2021-12-22 05:20:59.098147	2021-12-22 05:20:59.098147
9	Mayank	20000	South Delhi	2021-12-22 09:33:53.675221	2021-12-22 09:33:53.675221
10	Deepak	30000	Faridabad	2021-12-22 09:33:53.801862	2021-12-22 09:33:53.801862
11	Anwar	40000	Noida	2021-12-22 09:33:53.835887	2021-12-22 09:33:53.835887
12	Fahmida	20000	Faridabad	2021-12-22 09:33:53.857303	2021-12-22 09:33:53.857303
13	Devanshi	30000	Noida	2021-12-22 09:33:53.87836	2021-12-22 09:33:53.87836
14	Jagdish	25000	Vaishali	2021-12-22 09:33:53.901178	2021-12-22 09:33:53.901178
15	Himanshu	80000	Noida	2021-12-22 09:33:53.922231	2021-12-22 09:33:53.922231
16	Vivek	50000	Escort	2021-12-22 09:33:53.945204	2021-12-22 09:33:53.945204
17	Sagar	42000	South Delhi	2021-12-22 09:33:53.967037	2021-12-22 09:33:53.967037
18	Pankaj	70000	West Delhi	2021-12-22 09:33:53.989338	2021-12-22 09:33:53.989338
19	Mukesh	80000	Badarpur	2021-12-22 09:33:54.014098	2021-12-22 09:33:54.014098
20	Preet	60000	Tuglakabad	2021-12-22 09:33:54.040882	2021-12-22 09:33:54.040882
21	Badhana	90000	Janakpuri	2021-12-22 09:33:54.05456	2021-12-22 09:33:54.05456
23	Sumit	70000	Noida	2021-12-22 09:33:54.102399	2021-12-22 09:33:54.102399
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: cms1
--

COPY public.students (id, department_id, name, created_at, updated_at, admission) FROM stdin;
3	2	Jay	2021-12-22 09:46:21.00651	2021-12-22 09:46:21.00651	2019
4	2	Abdullah	2021-12-22 09:46:21.02221	2021-12-22 09:46:21.02221	2020
5	2	Tamara	2021-12-22 09:46:21.049711	2021-12-22 09:46:21.049711	2021
7	3	Maya	2021-12-22 09:58:22.168599	2021-12-22 09:58:22.168599	2019
8	3	Jai	2021-12-22 09:58:22.188294	2021-12-22 09:58:22.188294	2020
10	3	Ram	2021-12-22 09:58:22.232565	2021-12-22 09:58:22.232565	2018
11	3	Aisha	2021-12-22 09:58:22.255599	2021-12-22 09:58:22.255599	2019
12	3	Ana	2021-12-22 09:58:22.278189	2021-12-22 09:58:22.278189	2020
13	3	Rohan	2021-12-22 09:58:22.299853	2021-12-22 09:58:22.299853	2021
15	4	Anika	2021-12-22 10:32:29.801266	2021-12-22 10:32:29.801266	2019
16	4	Sandeep	2021-12-22 10:32:29.858535	2021-12-22 10:32:29.858535	2020
17	4	Amit	2021-12-22 10:32:29.865096	2021-12-22 10:32:29.865096	2019
18	4	Anjali	2021-12-22 10:33:10.317192	2021-12-22 10:33:10.317192	2018
19	4	Ashwin	2021-12-22 10:33:10.323645	2021-12-22 10:33:10.323645	2019
20	4	Arya	2021-12-22 10:33:10.329527	2021-12-22 10:33:10.329527	2020
21	4	Ira	2021-12-22 10:33:10.338364	2021-12-22 10:33:10.338364	2019
22	6	Dev	2021-12-22 10:34:20.906588	2021-12-22 10:34:20.906588	2018
23	6	Riya	2021-12-22 10:34:20.92887	2021-12-22 10:34:20.92887	2019
24	6	Arjun	2021-12-22 10:34:20.952459	2021-12-22 10:34:20.952459	2020
25	6	Priya	2021-12-22 10:34:20.965931	2021-12-22 10:34:20.965931	2019
26	9	Dev	2021-12-22 10:35:52.818747	2021-12-22 10:35:52.818747	2018
27	9	Riya	2021-12-22 10:35:52.825752	2021-12-22 10:35:52.825752	2019
28	9	Arjun	2021-12-22 10:35:52.831724	2021-12-22 10:35:52.831724	2020
29	9	Priya	2021-12-22 10:35:52.86521	2021-12-22 10:35:52.86521	2019
31	10	Abhishek	2021-12-22 10:39:05.842475	2021-12-22 10:39:05.842475	2019
32	10	Abhinav	2021-12-22 10:39:05.84892	2021-12-22 10:39:05.84892	2020
33	10	Prakash	2021-12-22 10:39:05.855011	2021-12-22 10:39:05.855011	2019
34	11	Atul	2021-12-22 10:41:22.771188	2021-12-22 10:41:22.771188	2019
35	11	Arya	2021-12-22 10:41:22.909574	2021-12-22 10:41:22.909574	2020
36	11	Arav	2021-12-22 10:41:22.935392	2021-12-22 10:41:22.935392	2018
37	11	Apeksha	2021-12-22 10:41:23.089289	2021-12-22 10:41:23.089289	2019
38	12	Kaushik	2021-12-22 10:42:53.32813	2021-12-22 10:42:53.32813	2019
39	12	Anamika	2021-12-22 10:42:53.542257	2021-12-22 10:42:53.542257	2020
40	12	Sahar	2021-12-22 10:42:53.586024	2021-12-22 10:42:53.586024	2018
41	12	Sambhu	2021-12-22 10:42:53.604113	2021-12-22 10:42:53.604113	2019
42	4	alfia	2021-12-27 13:31:06.242001	2021-12-27 13:31:06.242001	2018
43	4	alfia	2021-12-27 13:31:13.539152	2021-12-27 13:31:13.539152	2019
\.


--
-- Name: department_staffs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cms1
--

SELECT pg_catalog.setval('public.department_staffs_id_seq', 31, true);


--
-- Name: departments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cms1
--

SELECT pg_catalog.setval('public.departments_id_seq', 12, true);


--
-- Name: staffs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cms1
--

SELECT pg_catalog.setval('public.staffs_id_seq', 24, true);


--
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cms1
--

SELECT pg_catalog.setval('public.students_id_seq', 43, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: cms1
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: department_staffs department_staffs_pkey; Type: CONSTRAINT; Schema: public; Owner: cms1
--

ALTER TABLE ONLY public.department_staffs
    ADD CONSTRAINT department_staffs_pkey PRIMARY KEY (id);


--
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: public; Owner: cms1
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: cms1
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: staffs staffs_pkey; Type: CONSTRAINT; Schema: public; Owner: cms1
--

ALTER TABLE ONLY public.staffs
    ADD CONSTRAINT staffs_pkey PRIMARY KEY (id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: cms1
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- Name: index_department_staffs_on_department_id; Type: INDEX; Schema: public; Owner: cms1
--

CREATE INDEX index_department_staffs_on_department_id ON public.department_staffs USING btree (department_id);


--
-- Name: index_department_staffs_on_staff_id; Type: INDEX; Schema: public; Owner: cms1
--

CREATE INDEX index_department_staffs_on_staff_id ON public.department_staffs USING btree (staff_id);


--
-- Name: index_students_on_department_id; Type: INDEX; Schema: public; Owner: cms1
--

CREATE INDEX index_students_on_department_id ON public.students USING btree (department_id);


--
-- PostgreSQL database dump complete
--

