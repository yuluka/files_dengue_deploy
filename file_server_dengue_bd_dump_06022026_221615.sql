--
-- PostgreSQL database dump
--

\restrict SqfkaSsPSghkJq6yw43DleKgOL6bfgIBpWV7cbVPdjwPYSiNTHEg7ybSUdsF8c4

-- Dumped from database version 18.4 (Ubuntu 18.4-1.pgdg24.04+1)
-- Dumped by pg_dump version 18.4 (Ubuntu 18.4-1.pgdg24.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: backup_clima_state_file_20260520_1515; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backup_clima_state_file_20260520_1515 (
    id integer,
    name character varying,
    path character varying,
    epi_week character varying,
    uploaded_at timestamp without time zone,
    file_type_id integer,
    hash character(64)
);


ALTER TABLE public.backup_clima_state_file_20260520_1515 OWNER TO postgres;

--
-- Name: backup_clima_state_pe_20260520_1515; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backup_clima_state_pe_20260520_1515 (
    id integer,
    start_at timestamp without time zone,
    end_at timestamp without time zone,
    pipeline_id integer,
    file_id integer,
    current_exec_status_id integer
);


ALTER TABLE public.backup_clima_state_pe_20260520_1515 OWNER TO postgres;

--
-- Name: backup_clima_state_pse_20260520_1515; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backup_clima_state_pse_20260520_1515 (
    id integer,
    start_at timestamp without time zone,
    end_at timestamp without time zone,
    error_message text,
    pipeline_execution_id integer,
    pipeline_step_id integer,
    current_exec_status_id integer
);


ALTER TABLE public.backup_clima_state_pse_20260520_1515 OWNER TO postgres;

--
-- Name: bkp_fs_clima_endat_orig_20260527; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bkp_fs_clima_endat_orig_20260527 (
    id integer,
    end_at_original timestamp without time zone,
    bkp_ts timestamp with time zone
);


ALTER TABLE public.bkp_fs_clima_endat_orig_20260527 OWNER TO postgres;

--
-- Name: bkp_fs_clima_exec60_exec_20260527; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bkp_fs_clima_exec60_exec_20260527 (
    id integer,
    start_at timestamp without time zone,
    end_at timestamp without time zone,
    pipeline_id integer,
    file_id integer,
    current_exec_status_id integer
);


ALTER TABLE public.bkp_fs_clima_exec60_exec_20260527 OWNER TO postgres;

--
-- Name: bkp_fs_clima_exec60_file_20260527; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bkp_fs_clima_exec60_file_20260527 (
    id integer,
    name character varying,
    path character varying,
    epi_week character varying,
    uploaded_at timestamp without time zone,
    file_type_id integer,
    hash character(64)
);


ALTER TABLE public.bkp_fs_clima_exec60_file_20260527 OWNER TO postgres;

--
-- Name: bkp_fs_clima_exec60_steps_20260527; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bkp_fs_clima_exec60_steps_20260527 (
    id integer,
    start_at timestamp without time zone,
    end_at timestamp without time zone,
    error_message text,
    pipeline_execution_id integer,
    pipeline_step_id integer,
    current_exec_status_id integer
);


ALTER TABLE public.bkp_fs_clima_exec60_steps_20260527 OWNER TO postgres;

--
-- Name: bkp_fs_file_20260527; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bkp_fs_file_20260527 (
    id integer,
    name character varying,
    path character varying,
    epi_week character varying,
    uploaded_at timestamp without time zone,
    file_type_id integer,
    hash character(64)
);


ALTER TABLE public.bkp_fs_file_20260527 OWNER TO postgres;

--
-- Name: bkp_fs_pipeline_execution_20260527; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bkp_fs_pipeline_execution_20260527 (
    id integer,
    start_at timestamp without time zone,
    end_at timestamp without time zone,
    pipeline_id integer,
    file_id integer,
    current_exec_status_id integer
);


ALTER TABLE public.bkp_fs_pipeline_execution_20260527 OWNER TO postgres;

--
-- Name: bkp_fs_pipeline_step_execution_20260527; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bkp_fs_pipeline_step_execution_20260527 (
    id integer,
    start_at timestamp without time zone,
    end_at timestamp without time zone,
    error_message text,
    pipeline_execution_id integer,
    pipeline_step_id integer,
    current_exec_status_id integer
);


ALTER TABLE public.bkp_fs_pipeline_step_execution_20260527 OWNER TO postgres;

--
-- Name: correction_batch; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.correction_batch (
    id integer NOT NULL,
    pipeline_execution_id integer NOT NULL,
    cod_event character varying NOT NULL,
    direccion_norm text,
    latitud double precision,
    longitud double precision,
    cod_barrio character varying,
    submitted_at timestamp without time zone DEFAULT now() NOT NULL,
    applied_at timestamp without time zone,
    submitted_by character varying
);


ALTER TABLE public.correction_batch OWNER TO postgres;

--
-- Name: correction_batch_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.correction_batch_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.correction_batch_id_seq OWNER TO postgres;

--
-- Name: correction_batch_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.correction_batch_id_seq OWNED BY public.correction_batch.id;


--
-- Name: exec_status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.exec_status (
    id integer NOT NULL,
    name character varying NOT NULL,
    pipeline_id integer
);


ALTER TABLE public.exec_status OWNER TO postgres;

--
-- Name: exec_status_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.exec_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.exec_status_id_seq OWNER TO postgres;

--
-- Name: exec_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.exec_status_id_seq OWNED BY public.exec_status.id;


--
-- Name: file; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.file (
    id integer NOT NULL,
    name character varying NOT NULL,
    path character varying NOT NULL,
    epi_week character varying NOT NULL,
    uploaded_at timestamp without time zone NOT NULL,
    file_type_id integer NOT NULL,
    hash character(64)
);


ALTER TABLE public.file OWNER TO postgres;

--
-- Name: file_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.file_id_seq OWNER TO postgres;

--
-- Name: file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.file_id_seq OWNED BY public.file.id;


--
-- Name: file_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.file_type (
    id integer NOT NULL,
    name character varying NOT NULL,
    update_frequency_days integer NOT NULL,
    source character varying NOT NULL,
    template bytea
);


ALTER TABLE public.file_type OWNER TO postgres;

--
-- Name: file_type_columns; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.file_type_columns (
    id integer NOT NULL,
    name character varying NOT NULL,
    required boolean NOT NULL,
    file_type_id integer NOT NULL
);


ALTER TABLE public.file_type_columns OWNER TO postgres;

--
-- Name: file_type_columns_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.file_type_columns_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.file_type_columns_id_seq OWNER TO postgres;

--
-- Name: file_type_columns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.file_type_columns_id_seq OWNED BY public.file_type_columns.id;


--
-- Name: file_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.file_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.file_type_id_seq OWNER TO postgres;

--
-- Name: file_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.file_type_id_seq OWNED BY public.file_type.id;


--
-- Name: pipeline; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pipeline (
    id integer NOT NULL,
    name character varying NOT NULL,
    file_type_id integer NOT NULL,
    main_function character varying NOT NULL,
    path character varying NOT NULL,
    is_automatic boolean DEFAULT false NOT NULL,
    depends_on_pipeline_id integer,
    abbreviation character(3) NOT NULL,
    name_to_display character varying NOT NULL
);


ALTER TABLE public.pipeline OWNER TO postgres;

--
-- Name: pipeline_exec_status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pipeline_exec_status (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.pipeline_exec_status OWNER TO postgres;

--
-- Name: pipeline_exec_status_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pipeline_exec_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pipeline_exec_status_id_seq OWNER TO postgres;

--
-- Name: pipeline_exec_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pipeline_exec_status_id_seq OWNED BY public.pipeline_exec_status.id;


--
-- Name: pipeline_execution; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pipeline_execution (
    id integer NOT NULL,
    start_at timestamp without time zone NOT NULL,
    end_at timestamp without time zone,
    pipeline_id integer NOT NULL,
    file_id integer NOT NULL,
    current_exec_status_id integer
);


ALTER TABLE public.pipeline_execution OWNER TO postgres;

--
-- Name: pipeline_execution_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pipeline_execution_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pipeline_execution_id_seq OWNER TO postgres;

--
-- Name: pipeline_execution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pipeline_execution_id_seq OWNED BY public.pipeline_execution.id;


--
-- Name: pipeline_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pipeline_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pipeline_id_seq OWNER TO postgres;

--
-- Name: pipeline_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pipeline_id_seq OWNED BY public.pipeline.id;


--
-- Name: pipeline_step; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pipeline_step (
    id integer NOT NULL,
    step_order integer NOT NULL,
    pipeline_id integer NOT NULL,
    step_id integer NOT NULL
);


ALTER TABLE public.pipeline_step OWNER TO postgres;

--
-- Name: pipeline_step_execution; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pipeline_step_execution (
    id integer NOT NULL,
    start_at timestamp without time zone NOT NULL,
    end_at timestamp without time zone,
    error_message text,
    pipeline_execution_id integer NOT NULL,
    pipeline_step_id integer NOT NULL,
    current_exec_status_id integer NOT NULL
);


ALTER TABLE public.pipeline_step_execution OWNER TO postgres;

--
-- Name: pipeline_step_execution_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pipeline_step_execution_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pipeline_step_execution_id_seq OWNER TO postgres;

--
-- Name: pipeline_step_execution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pipeline_step_execution_id_seq OWNED BY public.pipeline_step_execution.id;


--
-- Name: pipeline_step_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pipeline_step_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pipeline_step_id_seq OWNER TO postgres;

--
-- Name: pipeline_step_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pipeline_step_id_seq OWNED BY public.pipeline_step.id;


--
-- Name: step; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.step (
    id integer NOT NULL,
    name character varying NOT NULL,
    name_to_display character varying NOT NULL
);


ALTER TABLE public.step OWNER TO postgres;

--
-- Name: step_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.step_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.step_id_seq OWNER TO postgres;

--
-- Name: step_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.step_id_seq OWNED BY public.step.id;


--
-- Name: correction_batch id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.correction_batch ALTER COLUMN id SET DEFAULT nextval('public.correction_batch_id_seq'::regclass);


--
-- Name: exec_status id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exec_status ALTER COLUMN id SET DEFAULT nextval('public.exec_status_id_seq'::regclass);


--
-- Name: file id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.file ALTER COLUMN id SET DEFAULT nextval('public.file_id_seq'::regclass);


--
-- Name: file_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.file_type ALTER COLUMN id SET DEFAULT nextval('public.file_type_id_seq'::regclass);


--
-- Name: file_type_columns id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.file_type_columns ALTER COLUMN id SET DEFAULT nextval('public.file_type_columns_id_seq'::regclass);


--
-- Name: pipeline id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline ALTER COLUMN id SET DEFAULT nextval('public.pipeline_id_seq'::regclass);


--
-- Name: pipeline_exec_status id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline_exec_status ALTER COLUMN id SET DEFAULT nextval('public.pipeline_exec_status_id_seq'::regclass);


--
-- Name: pipeline_execution id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline_execution ALTER COLUMN id SET DEFAULT nextval('public.pipeline_execution_id_seq'::regclass);


--
-- Name: pipeline_step id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline_step ALTER COLUMN id SET DEFAULT nextval('public.pipeline_step_id_seq'::regclass);


--
-- Name: pipeline_step_execution id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline_step_execution ALTER COLUMN id SET DEFAULT nextval('public.pipeline_step_execution_id_seq'::regclass);


--
-- Name: step id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.step ALTER COLUMN id SET DEFAULT nextval('public.step_id_seq'::regclass);


--
-- Data for Name: backup_clima_state_file_20260520_1515; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backup_clima_state_file_20260520_1515 (id, name, path, epi_week, uploaded_at, file_type_id, hash) FROM stdin;
70	clima_downscaling_2026-18_20260506T212804.trigger	/home/iaslab/iaslab-file-server-dengue/uploads/clima_downscaling_2026-18_20260506T212804.trigger	2026-18	2026-05-06 21:28:04.389546	20	\N
73	clima_download_2026-19_20260511T152043.trigger	/home/iaslab/iaslab-file-server-dengue/uploads/clima_download_2026-19_20260511T152043.trigger	2026-19	2026-05-11 15:20:43.770975	19	\N
74	clima_downscaling_2026-19_20260512T154657.trigger	/home/iaslab/iaslab-file-server-dengue/uploads/clima_downscaling_2026-19_20260512T154657.trigger	2026-19	2026-05-12 15:46:57.612907	20	\N
75	clima_download_2026-20_20260520T135010.trigger	/home/iaslab/iaslab-file-server-dengue/uploads/clima_download_2026-20_20260520T135010.trigger	2026-20	2026-05-20 13:50:10.218642	19	\N
45	clima_download_2026-17_20260430T070008.trigger	/home/iaslab/iaslab-file-server-dengue/uploads/clima_download_2026-17_20260430T070008.trigger	2026-17	2026-04-30 07:00:08.664743	19	\N
46	clima_downscaling_2026-17_20260430T071505.trigger	/home/iaslab/iaslab-file-server-dengue/uploads/clima_downscaling_2026-17_20260430T071505.trigger	2026-17	2026-04-30 07:15:05.378846	20	\N
69	clima_download_2026-18_20260506T204409.trigger	/home/iaslab/iaslab-file-server-dengue/uploads/clima_download_2026-18_20260506T204409.trigger	2026-18	2026-05-06 20:44:09.849615	19	\N
\.


--
-- Data for Name: backup_clima_state_pe_20260520_1515; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backup_clima_state_pe_20260520_1515 (id, start_at, end_at, pipeline_id, file_id, current_exec_status_id) FROM stdin;
53	2026-05-12 15:46:57.745345	2026-05-12 15:47:29.740993	3	74	2
48	2026-05-06 20:44:09.871563	2026-05-06 20:49:28.509021	2	69	2
49	2026-05-06 21:28:04.448867	2026-05-06 21:28:22.562593	3	70	2
26	2026-04-30 07:00:08.707393	2026-04-30 07:05:08.770777	2	45	2
55	2026-05-20 13:50:10.443472	2026-05-20 13:50:10.479878	2	75	3
27	2026-04-30 07:15:05.407214	2026-04-30 07:15:37.816584	3	46	2
54	2026-05-20 13:50:10.245695	2026-05-20 13:54:42.844234	2	75	3
52	2026-05-11 15:20:43.803977	2026-05-11 15:28:32.744987	2	73	2
\.


--
-- Data for Name: backup_clima_state_pse_20260520_1515; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backup_clima_state_pse_20260520_1515 (id, start_at, end_at, error_message, pipeline_execution_id, pipeline_step_id, current_exec_status_id) FROM stdin;
150	2026-05-06 20:44:09.950571	2026-05-06 20:44:24.212821	\N	48	11	14
69	2026-04-30 07:00:08.741357	2026-04-30 07:00:22.718937	\N	26	11	14
70	2026-04-30 07:00:22.839976	2026-04-30 07:04:42.03466	\N	26	12	15
71	2026-04-30 07:04:42.120341	2026-04-30 07:05:08.688279	\N	26	13	23
72	2026-04-30 07:15:05.978094	2026-04-30 07:15:18.092741	\N	27	14	16
73	2026-04-30 07:15:18.144077	2026-04-30 07:15:28.463642	\N	27	15	17
74	2026-04-30 07:15:28.514525	2026-04-30 07:15:35.582936	\N	27	16	18
75	2026-04-30 07:15:35.630638	2026-04-30 07:15:37.75129	\N	27	17	27
151	2026-05-06 20:44:24.266075	2026-05-06 20:49:01.964673	\N	48	12	15
176	2026-05-11 15:20:43.832936	2026-05-11 15:20:55.85231	\N	52	11	14
179	2026-05-11 15:20:55.908247	2026-05-11 15:28:13.909004	\N	52	12	15
182	2026-05-12 15:46:58.038907	2026-05-12 15:47:12.413035	\N	53	14	16
199	2026-05-20 13:50:10.280125	2026-05-20 13:50:25.223017	\N	54	11	14
183	2026-05-12 15:47:12.485062	2026-05-12 15:47:21.580148	\N	53	15	17
185	2026-05-12 15:47:21.635841	2026-05-12 15:47:26.875064	\N	53	16	18
186	2026-05-12 15:47:26.935518	2026-05-12 15:47:29.665475	\N	53	17	27
152	2026-05-06 20:49:02.039596	2026-05-06 20:49:28.438292	\N	48	13	23
180	2026-05-11 15:28:13.981891	2026-05-11 15:28:32.681095	\N	52	13	23
202	2026-05-20 13:50:25.281453	2026-05-20 13:54:17.185515	\N	54	12	15
209	2026-05-20 13:54:17.21313	2026-05-20 13:54:42.694265	\N	54	13	23
153	2026-05-06 21:28:04.619499	2026-05-06 21:28:10.688823	\N	49	14	16
154	2026-05-06 21:28:10.736664	2026-05-06 21:28:17.335255	\N	49	15	17
155	2026-05-06 21:28:17.390436	2026-05-06 21:28:20.25907	\N	49	16	18
156	2026-05-06 21:28:20.30593	2026-05-06 21:28:22.504928	\N	49	17	27
\.


--
-- Data for Name: bkp_fs_clima_endat_orig_20260527; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bkp_fs_clima_endat_orig_20260527 (id, end_at_original, bkp_ts) FROM stdin;
54	2026-05-20 13:54:42.844234	2026-05-27 12:01:57.598359-05
58	2026-05-20 16:30:42.548132	2026-05-27 12:01:57.598359-05
\.


--
-- Data for Name: bkp_fs_clima_exec60_exec_20260527; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bkp_fs_clima_exec60_exec_20260527 (id, start_at, end_at, pipeline_id, file_id, current_exec_status_id) FROM stdin;
60	2026-05-24 00:00:03.855333	2026-05-27 11:48:19.002021	2	264	3
\.


--
-- Data for Name: bkp_fs_clima_exec60_file_20260527; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bkp_fs_clima_exec60_file_20260527 (id, name, path, epi_week, uploaded_at, file_type_id, hash) FROM stdin;
264	clima_download_2026-21_20260524T000003.trigger	/home/gtamura/iaslab-file-server-dengue/uploads/clima_download_2026-21_20260524T000003.trigger	2026-21	2026-05-24 00:00:03.509519	19	\N
\.


--
-- Data for Name: bkp_fs_clima_exec60_steps_20260527; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bkp_fs_clima_exec60_steps_20260527 (id, start_at, end_at, error_message, pipeline_execution_id, pipeline_step_id, current_exec_status_id) FROM stdin;
224	2026-05-27 11:30:11.777012	2026-05-27 11:30:25.540176	\N	60	11	14
225	2026-05-27 11:30:25.585448	2026-05-27 11:34:16.846946	\N	60	12	15
226	2026-05-27 11:34:16.889077	2026-05-27 11:34:19.558109	RuntimeError: GEE produced no usable images: {'ndvi_exported': 0, 'ndwi_exported': 0}\nTraceback (most recent call last):\n  File "/home/gtamura/dengueia-dwh-etl/ETL-Scripts/climatic/automatic/downloading/pipeline.py", line 134, in _execute_step\n    result = STEP_HANDLERS[step_name](fecha_inicio, fecha_fin)\n             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n  File "/home/gtamura/dengueia-dwh-etl/ETL-Scripts/climatic/automatic/downloading/pipeline.py", line 108, in _run_gee\n    raise RuntimeError(f"GEE produced no usable images: {result}")\nRuntimeError: GEE produced no usable images: {'ndvi_exported': 0, 'ndwi_exported': 0}\n	60	13	24
227	2026-05-27 11:45:11.60273	2026-05-27 11:45:23.251848	\N	60	11	14
228	2026-05-27 11:45:23.300909	2026-05-27 11:48:16.500033	\N	60	12	15
229	2026-05-27 11:48:16.556498	2026-05-27 11:48:18.961085	RuntimeError: GEE produced no usable images: {'ndvi_exported': 0, 'ndwi_exported': 0}\nTraceback (most recent call last):\n  File "/home/gtamura/dengueia-dwh-etl/ETL-Scripts/climatic/automatic/downloading/pipeline.py", line 134, in _execute_step\n    result = STEP_HANDLERS[step_name](fecha_inicio, fecha_fin)\n             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n  File "/home/gtamura/dengueia-dwh-etl/ETL-Scripts/climatic/automatic/downloading/pipeline.py", line 108, in _run_gee\n    raise RuntimeError(f"GEE produced no usable images: {result}")\nRuntimeError: GEE produced no usable images: {'ndvi_exported': 0, 'ndwi_exported': 0}\n	60	13	24
\.


--
-- Data for Name: bkp_fs_file_20260527; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bkp_fs_file_20260527 (id, name, path, epi_week, uploaded_at, file_type_id, hash) FROM stdin;
71	variables_sinteticas_2026-18_20260506T223903.trigger	/home/iaslab/iaslab-file-server-dengue/uploads/variables_sinteticas_2026-18_20260506T223903.trigger	2026-18	2026-05-06 22:39:03.437908	24	\N
72	prediccion_dengue_2026-18_20260506T224303.trigger	/home/iaslab/iaslab-file-server-dengue/uploads/prediccion_dengue_2026-18_20260506T224303.trigger	2026-18	2026-05-06 22:43:03.18169	21	\N
76	variables_sinteticas_2026-19_20260520T135403.trigger	/home/iaslab/iaslab-file-server-dengue/uploads/variables_sinteticas_2026-19_20260520T135403.trigger	2026-19	2026-05-20 13:54:03.161434	24	\N
54	Casos dengue_2026-17.xlsx	NOT_UPLOADED	2026-17	2026-05-06 22:03:26.650097	1	\N
77	prediccion_dengue_2026-19_20260520T135602.trigger	/home/iaslab/iaslab-file-server-dengue/uploads/prediccion_dengue_2026-19_20260520T135602.trigger	2026-19	2026-05-20 13:56:02.870093	21	\N
55	Casos dengue_2026-18.xlsx	NOT_UPLOADED	2026-18	2026-05-05 13:24:06.675	1	\N
53	Casos dengue_2026-16.xlsx	NOT_UPLOADED	2026-16	2026-05-12 19:40:13.327395	1	\N
\.


--
-- Data for Name: bkp_fs_pipeline_execution_20260527; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bkp_fs_pipeline_execution_20260527 (id, start_at, end_at, pipeline_id, file_id, current_exec_status_id) FROM stdin;
34	2026-05-05 13:24:06.675	\N	1	55	5
56	2026-05-20 13:54:03.19653	2026-05-20 13:56:05.771322	8	76	2
57	2026-05-20 13:56:02.985728	2026-05-20 13:56:29.921478	4	77	2
50	2026-05-06 22:39:03.475592	2026-05-06 22:39:22.686063	8	71	2
51	2026-05-06 22:43:03.212991	2026-05-06 22:43:07.924099	4	72	2
33	2026-05-05 13:24:05.675	\N	1	54	5
32	2026-05-05 13:24:04.675	\N	1	53	5
\.


--
-- Data for Name: bkp_fs_pipeline_step_execution_20260527; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bkp_fs_pipeline_step_execution_20260527 (id, start_at, end_at, error_message, pipeline_execution_id, pipeline_step_id, current_exec_status_id) FROM stdin;
167	2026-05-06 22:39:03.527009	2026-05-06 22:39:18.189814	\N	50	29	19
169	2026-05-06 22:39:18.233081	2026-05-06 22:39:19.913708	\N	50	30	20
170	2026-05-06 22:39:19.96216	2026-05-06 22:39:22.611885	\N	50	31	31
214	2026-05-20 13:56:03.489111	2026-05-20 13:56:16.210827	\N	57	21	35
215	2026-05-20 13:56:16.304473	2026-05-20 13:56:29.520134	\N	57	22	36
216	2026-05-20 13:56:29.598471	2026-05-20 13:56:29.862697	\N	57	23	37
171	2026-05-06 22:43:03.291422	2026-05-06 22:43:03.35293	\N	51	21	35
207	2026-05-20 13:54:03.26287	2026-05-20 13:54:17.079992	\N	56	29	19
208	2026-05-20 13:54:17.124506	2026-05-20 13:54:18.694016	\N	56	30	20
210	2026-05-20 13:54:18.731847	2026-05-20 13:55:04.131335	\N	56	31	31
211	2026-05-20 13:55:03.300081	2026-05-20 13:55:17.902897	\N	56	29	19
212	2026-05-20 13:55:17.955625	2026-05-20 13:55:19.38355	\N	56	30	20
213	2026-05-20 13:55:19.410947	2026-05-20 13:56:05.710696	\N	56	31	31
172	2026-05-06 22:43:03.40974	2026-05-06 22:43:05.353107	\N	51	22	36
173	2026-05-06 22:43:05.431519	2026-05-06 22:43:07.8584	\N	51	23	37
\.


--
-- Data for Name: correction_batch; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.correction_batch (id, pipeline_execution_id, cod_event, direccion_norm, latitud, longitud, cod_barrio, submitted_at, applied_at, submitted_by) FROM stdin;
\.


--
-- Data for Name: exec_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.exec_status (id, name, pipeline_id) FROM stdin;
1	CDG_FILE_NOT_UPLOADED	1
2	CDG_FILE_UPLOADED	1
3	CDG_GEOCODING_FILE	1
4	CDG_ROWS_PENDING	1
5	CDG_ALL_ROWS_PROCESSED	1
6	CDG_ROWS_LOADED_AND_CORRECTED	1
7	CDG_ROWS_PENDING4CORRECTION	1
9	CDG_PROCESSING_FILE	1
10	CDG_FAILED	1
11	CDG_FILE_PROCESSED	1
12	CDG_FILE_GEOCODED	1
14	CLD_MSWEP_DOWNLOADED	2
15	CLD_CDS_DOWNLOADED	2
16	CDS_PREPROCESSING_READY	3
17	CDS_FEATURES_READY	3
18	CDS_PREDICTIONS_READY	3
19	SIN_DATA_EXTRACTED	8
20	SIN_TARGET_VARIABLE_READY	8
21	CLD_NOTSTARTED	2
22	CLD_PROCESSING	2
23	CLD_SUCCESSFULLY_FINISHED	2
24	CLD_FAILED	2
25	CDS_NOTSTARTED	3
26	CDS_PROCESSING	3
27	CDS_SUCCESSFULLY_FINISHED	3
28	CDS_FAILED	3
29	SIN_NOTSTARTED	8
30	SIN_PROCESSING	8
31	SIN_SUCCESSFULLY_FINISHED	8
32	SIN_FAILED	8
33	PRE_NOTSTARTED	4
34	PRE_PROCESSING	4
35	PRE_FEATURES_READY	4
36	PRE_PREDICTIONS_READY	4
37	PRE_SUCCESSFULLY_FINISHED	4
38	PRE_FAILED	4
8	CDG_SUCCESSFULLY_FINISHED	1
13	CDG_GEOCODING_VALIDATED	1
39	CLD_FILE_UPLOADED	2
40	CDS_FILE_UPLOADED	3
41	PRE_FILE_UPLOADED	4
42	SIN_FILE_UPLOADED	8
43	CLD_PROCESSING_FILE	2
44	CDS_PROCESSING_FILE	3
45	WTO_FAILED	9
47	WTO_FILE_UPLOADED	9
48	WTO_NOTSTARTED	9
50	WTO_LOADING_DATA	9
54	WTO_DATA_LOADED	9
94	PRB_FILE_UPLOADED	10
95	PRB_PROCESSING_FILE	10
96	PRB_FILE_PROCESSED	10
97	PRB_FAILED	10
98	PRB_SUCCESSFULLY_FINISHED	10
99	CSA_FILE_UPLOADED	11
100	CSA_PROCESSING_FILE	11
101	CSA_FILE_PROCESSED	11
102	CSA_FAILED	11
103	CSA_SUCCESSFULLY_FINISHED	11
104	HSO_FAILED	6
105	HSO_LOADING_DATA	6
106	HSO_FILE_UPLOADED	6
107	HSO_NOTSTARTED	6
108	HSO_DATA_LOADED	6
109	AMC_FILE_UPLOADED	12
110	AMC_LOADING_DATA	12
111	AMC_FAILED	12
112	AMC_NOTSTARTED	12
113	AMC_DATA_LOADED	12
114	AME_NOTSTARTED	13
115	AME_DATA_LOADED	13
116	AME_LOADING_DATA	13
117	AME_FAILED	13
118	AME_FILE_UPLOADED	13
119	AMM_FAILED	14
120	AMM_NOTSTARTED	14
121	AMM_LOADING_DATA	14
122	AMM_DATA_LOADED	14
123	AMM_FILE_UPLOADED	14
124	AMS_LOADING_DATA	15
125	AMS_DATA_LOADED	15
126	AMS_FAILED	15
127	AMS_FILE_UPLOADED	15
128	AMS_NOTSTARTED	15
129	AMV_FAILED	16
130	AMV_DATA_LOADED	16
131	AMV_LOADING_DATA	16
132	AMV_NOTSTARTED	16
133	AMV_FILE_UPLOADED	16
\.


--
-- Data for Name: file; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.file (id, name, path, epi_week, uploaded_at, file_type_id, hash) FROM stdin;
1	clima_download_2026-04-01_to_2026-04-07_20260414T020002	/home/iaslab/data_lake/data	2026-14	2026-04-14 02:00:02.419155	19	\N
2	clima_downscaling_2026-03-27_to_2026-04-07_20260414T020427	/home/iaslab/data_lake/data	2026-14	2026-04-14 02:04:27.341847	20	\N
11	variables_sinteticas_2026-14_20260422T235337.trigger	/home/iaslab/iaslab-file-server-dengue/uploads/variables_sinteticas_2026-14_20260422T235337.trigger	2026-14	2026-04-22 23:53:37.835378	24	\N
70	clima_downscaling_2026-18_20260506T212804.trigger	/home/iaslab/iaslab-file-server-dengue/uploads/clima_downscaling_2026-18_20260506T212804.trigger	2026-18	2026-05-06 21:28:04.389546	20	\N
73	clima_download_2026-19_20260511T152043.trigger	/home/iaslab/iaslab-file-server-dengue/uploads/clima_download_2026-19_20260511T152043.trigger	2026-19	2026-05-11 15:20:43.770975	19	\N
304	Casos dengue_2026-16.xlsx	NOT_UPLOADED	2026-16	2026-05-29 10:13:25.204	1	\N
305	Casos dengue_2026-17.xlsx	NOT_UPLOADED	2026-17	2026-05-29 10:13:26.204	1	\N
74	clima_downscaling_2026-19_20260512T154657.trigger	/home/iaslab/iaslab-file-server-dengue/uploads/clima_downscaling_2026-19_20260512T154657.trigger	2026-19	2026-05-12 15:46:57.612907	20	\N
306	Casos dengue_2026-18.xlsx	NOT_UPLOADED	2026-18	2026-05-29 10:13:27.204	1	\N
307	Casos dengue_2026-19.xlsx	NOT_UPLOADED	2026-19	2026-05-29 10:13:08.204	1	\N
75	clima_download_2026-20_20260520T135010.trigger	/home/iaslab/iaslab-file-server-dengue/uploads/clima_download_2026-20_20260520T135010.trigger	2026-20	2026-05-20 13:50:10.218642	19	\N
308	Casos dengue_2026-20.xlsx	NOT_UPLOADED	2026-20	2026-05-29 10:13:29.204	1	\N
78	clima_downscaling_2026-20_20260520T163005.trigger	/home/iaslab/iaslab-file-server-dengue/uploads/clima_downscaling_2026-20_20260520T163005.trigger	2026-20	2026-05-20 16:30:05.446036	20	\N
35	clima_download_2026-16_20260423T122015.trigger	/home/iaslab/iaslab-file-server-dengue/uploads/clima_download_2026-16_20260423T122015.trigger	2026-16	2026-04-23 12:20:15.392476	19	\N
36	clima_downscaling_2026-16_20260423T122843.trigger	/home/iaslab/iaslab-file-server-dengue/uploads/clima_downscaling_2026-16_20260423T122843.trigger	2026-16	2026-04-23 12:28:43.864437	20	\N
41	variables_sinteticas_2026-16_20260425T172313.trigger	/home/iaslab/iaslab-file-server-dengue/uploads/variables_sinteticas_2026-16_20260425T172313.trigger	2026-16	2026-04-25 17:23:13.935037	24	\N
42	prediccion_dengue_2026-16_20260425T172344.trigger	/home/iaslab/iaslab-file-server-dengue/uploads/prediccion_dengue_2026-16_20260425T172344.trigger	2026-16	2026-04-25 17:23:44.083289	21	\N
39	casos_dengue_mock_2026-16_20260425T170836.csv	/home/iaslab/iaslab-file-server-dengue/uploads/casos_dengue_mock_2026-16_20260425T170836.csv	2026-12	2026-04-25 17:08:36.491933	1	\N
45	clima_download_2026-17_20260430T070008.trigger	/home/iaslab/iaslab-file-server-dengue/uploads/clima_download_2026-17_20260430T070008.trigger	2026-17	2026-04-30 07:00:08.664743	19	\N
46	clima_downscaling_2026-17_20260430T071505.trigger	/home/iaslab/iaslab-file-server-dengue/uploads/clima_downscaling_2026-17_20260430T071505.trigger	2026-17	2026-04-30 07:15:05.378846	20	\N
10	Casos dengue_2026-1.xlsx	F:\\WORKSPACE\\IAsLab\\dengue\\etl-file-server\\uploads\\Casos dengue_2026-1.xlsx	2026-11	2026-04-20 18:21:58.122802	1	af70ad3b02750be7c1ec079ef6ea6e79623c7b3d61667ffd55171785b749f028
309	Casos dengue_2026-21.xlsx	NOT_UPLOADED	2026-21	2026-05-29 10:13:30.204	1	\N
64	variables_sinteticas_2026-17_20260506T124701.trigger	/home/iaslab/iaslab-file-server-dengue/uploads/variables_sinteticas_2026-17_20260506T124701.trigger	2026-17	2026-05-06 12:47:01.452696	24	\N
66	prediccion_dengue_2026-17_20260506T133646.trigger	/home/iaslab/iaslab-file-server-dengue/uploads/prediccion_dengue_2026-17_20260506T133646.trigger	2026-17	2026-05-06 13:36:46.274331	21	\N
69	clima_download_2026-18_20260506T204409.trigger	/home/iaslab/iaslab-file-server-dengue/uploads/clima_download_2026-18_20260506T204409.trigger	2026-18	2026-05-06 20:44:09.849615	19	\N
48	Casos dengue_2026-13.xlsx	/home/iaslab/iaslab-file-server-dengue/uploads/Casos dengue_2026-13.xlsx	2026-13	2026-05-06 21:54:42.370942	1	4fd3003db4af3e5e4440b85bc8aadb00bf7adc6583793bb251c08687d05b62f5
49	Casos dengue_2026-14.xlsx	/home/iaslab/iaslab-file-server-dengue/uploads/Casos dengue_2026-14.xlsx	2026-14	2026-05-06 22:01:16.705379	1	4e694aa0ac530e05a399f7d12907d707ca8af74472af31027b7ccb4e063c4307
79	variables_sinteticas_2026-20_20260521T163234.trigger	/home/gtamura/iaslab-file-server-dengue/uploads/variables_sinteticas_2026-20_20260521T163234.trigger	2026-20	2026-05-21 16:32:34.082699	24	\N
265	clima_download_2026-15_20260423T060000.trigger	/home/gtamura/iaslab-file-server-dengue/uploads/clima_download_2026-15_20260423T060000.trigger	2026-15	2026-04-23 06:00:00	19	\N
266	clima_downscaling_2026-15_20260423T060800.trigger	/home/gtamura/iaslab-file-server-dengue/uploads/clima_downscaling_2026-15_20260423T060800.trigger	2026-15	2026-04-23 06:08:00	20	\N
267	variables_sinteticas_2026-15_20260423T061500.trigger	/home/gtamura/iaslab-file-server-dengue/uploads/variables_sinteticas_2026-15_20260423T061500.trigger	2026-15	2026-04-23 06:15:00	24	\N
268	prediccion_dengue_2026-15_20260423T062000.trigger	/home/gtamura/iaslab-file-server-dengue/uploads/prediccion_dengue_2026-15_20260423T062000.trigger	2026-15	2026-04-23 06:20:00	21	\N
270	clima_download_2026-21_20260529T020011.trigger	/home/gtamura/iaslab-file-server-dengue/uploads/clima_download_2026-21_20260529T020011.trigger	2026-21	2026-05-29 02:00:11.281056	19	\N
52	Casos dengue_2026-15.xlsx	/home/gtamura/iaslab-file-server-dengue/uploads/Casos dengue_2026-15.xlsx	2026-15	2026-05-26 15:19:25.204656	1	fbc1c75f48710cc85ed591fe2e420a03f07bb2883a423af797f2930705542b5a
271	clima_downscaling_2026-21_20260529T021510.trigger	/home/gtamura/iaslab-file-server-dengue/uploads/clima_downscaling_2026-21_20260529T021510.trigger	2026-21	2026-05-29 02:15:10.326004	20	\N
461	clima_download_2026-22_20260531T000012.trigger	/home/gtamura/iaslab-file-server-dengue/uploads/clima_download_2026-22_20260531T000012.trigger	2026-22	2026-05-31 00:00:12.258221	19	\N
462	clima_downscaling_2026-22_20260531T001506.trigger	/home/gtamura/iaslab-file-server-dengue/uploads/clima_downscaling_2026-22_20260531T001506.trigger	2026-22	2026-05-31 00:15:06.915314	20	\N
\.


--
-- Data for Name: file_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.file_type (id, name, update_frequency_days, source, template) FROM stdin;
3	Cortes de agua	7	SIVIGILA	\N
19	Datos climáticos crudos	7	SIVIGILA	\N
20	Downscaling climático	7	SIVIGILA	\N
21	Prediccion dengue	7	SIVIGILA	\N
23	Correcciones casos dengue	0	ETL_INTERNAL	\N
24	Variables sinteticas dengue	7	ETL_INTERNAL	\N
1	Casos dengue	7	SIVIGILA	\\x504b03041400060008000000210062ee9d685e01000090040000130008025b436f6e74656e745f54797065735d2e786d6c20a2040228a000020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ac94cb4ec3301045f748fc43e42d4adcb2400835ed82c7122a513ec0c493c6aa635b9e6969ff9e89fb1042a1156a37b112cfdc7b32f1cd68b26e6db68288c6bb520c8b81c8c0555e1b372fc5c7ec25bf171992725a59efa0141b4031195f5f8d669b009871b7c3523444e1414aac1a6815163e80e39ddac75611dfc6b90caa5aa839c8dbc1e04e56de1138caa9d310e3d113d46a69297b5ef3e32d49048b227bdc16765ea550215853296252b972fa974bbe7328b833d5606302de308690bd0eddcedf06bbbe371e4d341ab2a98af4aa5ac6906b2bbf7c5c7c7abf288e8bf450faba3615685f2d5b9e40812182d2d800506b8bb416ad326ecf7dc43f15a34ccbf0c220ddfb25e1131cc4df1b64ba9e8f90644e18226d2ce0a5c79e444f39372a827ea7c8c9b838c04fed631c7c6ea6d107e40445f8ff14f611e9baf3c04210c9c021247d87ede0c8e93b7becd0e55b83eef196e97f32fe060000ffff0300504b030414000600080000002100b5553023f40000004c0200000b0008025f72656c732f2e72656c7320a2040228a000020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ac924d4fc3300c86ef48fc87c8f7d5dd9010424b774148bb21547e8049dc0fb58da3241bddbf271c10541a8303477fbd7efccadbdd3c8deac821f6e234ac8b12143b23b677ad8697fa7175072a2672964671ace1c41176d5f5d5f699474a792876bd8f2aabb8a8a14bc9df2346d3f144b110cf2e571a0913a51c86163d99815ac64d59de62f8ae01d54253edad86b0b737a0ea93cf9b7fd796a6e90d3f88394cecd29915c8736267d9ae7cc86c21f5f91a5553683969b0629e723a22795f646cc0f3449bbf13fd7c2d4e9cc852223412f832cf47c725a0f57f5ab434f1cb9d79c43709c3abc8f0c9828b1fa8de010000ffff0300504b030414000600080000002100ba3af2a254030000bc0700000f000000786c2f776f726b626f6f6b2e786d6cac555d6fa338147d5f69ff03e29d62f399a0925108a0a97666b7ea74a72f95462e98e02d60d698265535ff7daf4d48dbc93e743b1b111bfbda8773ef3dd73effb06f1be3818a81f12e36f119320dda15bc64dd3636ffbccead85690c92742569784763f3910ee687d5afbf9cefb8b8bfe3fcde00806e88cd5aca3eb2eda1a8694b8633ded30e2c15172d9130145b7be80525e550532adbc676100aec96b0ce9c1022f1160c5e55aca0292fc69676720211b42112e80f35eb8719ad2dde02d712713ff656c1db1e20ee58c3e4a306358db6882eb61d17e4ae01b7f7d837f6029e00fe1841e3cc5f02d3c9a75a56083ef04a9e01b43d913ef11f231be35721d89fc6e06d489e2de80353393cb212c13b590547ace0190ca39f46c3202dad950882f74e34ffc8cd3157e7156be8d749ba06e9fbdf49ab32d59846430699954cd232364318f21d7d3521c63e1959035667b97496a6bd3acaf9521825adc8d8c86b10f20c0f9511044bc7572b4118eb4652d1114937bc93a0c3835f3fab398dbda93928dcb8a27f8f4c50282cd017f80a2d292272375c12591ba368627313dddefc71f5db97cbf526bb2d69b71de9ad0ac9702b69db434dc0db0b9192d38af80f322585f2dd06e72782d3fb8f81009e229aa578298501ef17e92748c717f200c901099487dabd80e863f75b5788087f7b0af374bdcef2c47270b2b63ce46dacb59f6eac8517666ee8a285eba0efe08c08a2829351d687bc2be8d8f420c927a6cf643f5b308a46563ed37842879fa5fa1f9ad9f65d39ac4eb8af8cee866785a8a1b1bf615dc977b16961079c7a7c3ddc69e30d2b65ad24863c5832cd7da46c5b0363ec876a1f548262169b4f81e378cbdc4556e241e385b96b2561985a285c23c77793c0f7179a91fd82923e4b819aee8d4eebff23ff8b6038b3d531ab636c1a22529f101725d6399c7715a42940eeaad30bc32572f40aba979f06b93a871e94c6801df6d03a444bcf4299eb5bde62e940665cc7da78a993f961966689afd2a3ae82e8ff3810b5e0a3f98e512c6b22e4b520c53ddc4c57b44ac8007a9a1c029e2fc926fe22412e50f4729c5b1e5e425093c0b3fc3477fd10a79bcccf9fc92af7ab771e470b5befa6448e50aaaa4af538526d7e983d4e56d3c4214daf4a2fba4a7566fe75bbaddd53ad4e8a3d0765f50f000000ffff0300504b030414000600080000002100813e9497f3000000ba0200001a000801786c2f5f72656c732f776f726b626f6f6b2e786d6c2e72656c7320a2040128a0000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ac524d4bc43010bd0bfe8730779b761511d9742f22ec55eb0f08c9b429db2621337ef4df1b2aba5d58d64b2f036f8679efcdc776f7350ee20313f5c12ba88a12047a136cef3b056fcdf3cd030862edad1e8247051312eceaebabed0b0e9a7313b93e92c82c9e1438e6f828251987a3a62244f4b9d286346ace3075326a73d01dca4d59decbb4e480fa8453ecad82b4b7b7209a2966e5ffb943dbf6069f82791fd1f31909493c0d7900d1e8d4212bf8c145f608f2bcfc664d79ce6bc1a3fa0ce51cab4b1eaa353d7c86742087c8471f7f299273e5a299bb55efe17442fbca29bfdbf22ccbf4ef66e4c9c7d5df000000ffff0300504b0304140006000800000021001c97abd4910500007e1f000018000000786c2f776f726b7368656574732f7368656574312e786d6c9c99db6edb461086ef0bf41d08dedb148fb204490163d98dc5844d736c7b47512b89300f2a499f50f4ddbbbb8ae5995d32e1044800eb9fd1bfb3c3fdb82b72f6eab1c88d7b56375955ce4dfb7c641aac4cab4d56eee6e6e74fd76717a6d1b449b949f2aa6473f38935e6abc5afbfcc1eaafab6d933d61adca16ce6e6be6d0f53cb6ad23d2b92e6bc3ab09247b6555d242dff58eface650b36423bf54e496331a05569164a5797498d6433caaed364bd9b24aef0a56b647939ae549cbeb6ff6d9a179762bd221764552dfde1dced2aa38708b759667ed9334358d229ddeeccaaa4ed6399ff7a3ed25a9f158f37f0effef3e0f23756da4224bebaaa9b6ed3977b68e35ebd39f58132b494f4efafc07d9d89e55b3fb4c5cc0172be7e74ab2fd9397f362e6fea459703213edaaa777d9666efe3bb2ddf16872659f4dec0bffccf383e559283e3a57e164128ec2f16bd7fecf5ccc3619bfc2625646cdb67333b4a7e1d5d835adc54caea02f197b68c0df469bac3fb29ca52de3a3d8a6d15687b76cdb5eb23c9f9bbf7341acd87555dd8a6fdef09c111fa491df108324699bddb36376b8e4b36ffe398ecbffe6635aa741e1dfcf055ccb55febe36d649c32eabfc6bb669f7bc0a4ed3866d93bbbcfd503dbc61d96edf72d5e7dd10cb69ba795ab226e5eb9817732e8791a32c933659cceaeac1e04b8217de1c1201983d75f987ce6f2e66a9c80dc5b4e766c32776bf18cdac7b5e6bfa2df61ac66c1cbb843107c79630e6e2d8158c7938760d633e8efd0663018ebd81b1318eddc0d8058ead606c8263119abbd298b728a874e61d0a2aad895150e98d5871a76b612bcd798f824a77fe4041a53d1f5050e9cf4714541af40905950e7d864147e9d01714543af41505950efd89824a87fe4241a5437fa3a0d2a1102d744769518896baa3f428c48b5d69528896bba37429440bde7d6993c5613d112bee1d43895d89640139bfc54884232020577e0b1dec1a89e46faec8c4a394269251694040aefc7e367cc22219b90201b9061457918c5c81805cc71457918c5c81805cc52169f02517c9c81508c87542b9e42219bac64040ae62531abe926476d752b239a0c3e72cb3d1a4a182eb23f1636b0041051b9310b2014392cc182ad898825564f76124ce05848e6a20c9ef775e2a124ab6c61254f0c4014da3a998d8f74e272b5be3092ad81910f563e7c856998aa1829d0155439cfb3072004603e62ed3f18d5e18745d2e079035a04299dee903401a52a1be15f5ed450e206988b38a52240dd0dd0a2a783705700de9461f5d0ea06b48cd1a5ed200d7dcb7753900b82135abc4c5d2a0f39ad2887334e2a082fb4c23ced188830a762611b772d49d2c820a7276690cca74c4a0a6c450c163d1a8143fd5f07e0c15ec4ce234727b4f88342a5d8d4a4d89a1826ba651e9f651e992a88c647a17172e8d3899dee943e22b72fb0e842e8d2699de590f6db772fb762b8f444a24d3bbeaf16814c8f44e1fda9af7fad6bc475bf3321ddd013425860a5af31e6dcdcb74b45f40053bd328f0faf61d8f46814cefbc3a340abc3e0a3c1a0532bdb31eda0ee2693b085450e77d1a1732bdab429fc4c54aa6a375a829315470cdb4739daf9deba0829d6934f9da0e0215ec4c6267e56bcf1ea0829d69ecf8eab92e860a76a6d1e4f73d72f06934c97474df800aae90c697af9dd9a0829d69c4f91a715041ce018d3899de455c40234ea623e2a0822ba4ed4d81ca570c15ec4ce22b0ab4471050c1ce34be028d2fa860671a5f41efe33c124dab407fa2d7c75740e34ba677ae28124dab407b8ea7293154705769e7baa0ef5c37a6fd0292e98802a8a00ac734be643a7606bf80b0338daf71dfd98fbf0c3c3d2f1bf08b5ea6e30ab5c7e4c7b77cc7f76f8764c7de25f52e2b1b23e72f12c53b3abed2eae34b3cf9377fc52855bee6d755db56c5f3a73d7fcfcdf80bb9d1391f625b55edf307f126f1f4e67cf13f000000ffff0300504b0304140006000800000021006cf2db01670700000421000013000000786c2f7468656d652f7468656d65312e786d6cec594b8f1b3712be2fb0ff81e8bbac57b71e03cb819e9ed833b6e1911de4c89128353deca6405233160203817dca658105bc8b5c02ec6d0f41900009102397fc18033676bd3f628bec969a1c51f6d8192fb2c18c80819afaaaf8b1aa58ac2e5effe471c2d0291192f2b41354af550244d2099fd274de091e8c47a55680a4c2e914339e924eb02232f8e4c69fff741defa9982404817c2af7702788955aec95cb7202c3585ee30b92c26f332e12ace051cccb5381cf406fc2cab54aa5514e304d0394e204d4de9dcde884a05aa55a472534060d68aa1f6bb5e0c67aaa2183f95225f5c08489233d11f1ca6fe4a627558d962bd967029d62d60980c1949f8dc963152086a5821f3a41c5fc05e51bd7cb782f17626a87ac2537327fb95c2e303da99939c5fc783369184661a3bbd16f004c6de386cd6163d8d8e833003c99c0aa332eaece66ad1fe6580b947df5e81e3407f5aa83b7f4d7b7387723fd71f00694e90fb7f0a3511face8e00d28c3475bf8a8d7ee0d5cfd0694e11b5bf866a53b089b8e7e038a194d4fb6d095a851efaf57bb81cc38dbf7c2db51386ad672e5050aa26113697a8a194fd545e22ec18fb81801580b31ac688ad46a41667802b1dec78c1e0b8a0ee83c86205ce0944b18aed42aa34a1dfeeb4f68be19efe23d822d69cd1158c9ad21cd0dc989a00bd5096e81d6c082bc7af1e2e5d39f5e3efdf9e5b3672f9f7e9fcf6d543972fb389ddb726ffef9d7ff7cf325faf78fff78f3fc6fd9d4e7f1d2c6bffeeeabd7bffcfa36f5b0e2c214affefec3eb9f7e78f5f55ffef5ed738ff6aec0c7367c4c1322d11d7286eef30416e8e14f8ec5fb498c634c1d091c836e8feaa18a1de09d15663e5c8fb8267c2820e3f88037978f1cae47b1582aea99f9769c38c043ce598f0baf016eebb92c0b8f97e9dc3fb958dab8fb189ffae6eee3d471f070b980b44b7d2afb317168de633855784e52a290fe8d9f10e259dde7943a763da413c1259f29f439453d4cbd2619d36327900aa17d9a805f563e82e06ac736870f518f33dfaa07e4d445c2b6c0cc437e4c9863c69b78a970e25339c609b30d7e8055ec2379b412131b37940a3c3d278ca3e19448e993b92b60bd96d36f4386f1bbfd90ad121729143df1e93cc09cdbc8013fe9c738597839d334b6b19fca1308518cee71e5831f727787e867f0034e77bafb21258ebbdf9d081e4072b5291501a27f590a8f2f6f12eeeec7159b61e2cb325d9138d9b52ba8373a7acbb913da0784307c86a784a0079f7a18f4f8c2b17941fa560c59659ff802eb167663553fa74412a8a2a0c6d94e9107543a217b44e67c079fc3d5b9c4b3c26982c52ecd77c0eb4ee8c229e74da577d9e4c406dea1502442bc788d7257820e2bb887bbb4de8bb17376e967e98fd79570fc77913d06fbf2d1fbee4b9021ef2d0389fdc2b61963e64c5004cc184381e14bb720e2b8bf10d1e7aa115b7ae566eea62ddc00459253ef24347d67f173aeec89fe37658fbf80b98482c7aff8b7943abb52cafeb9026717eeffb0ac19e0657a8fc049b29db3aeaa9aabaa26f8c35735bbf6f2552d7355cb5cd532beb7af8f52cb14e50b543645c7c7f47f920bb57f6694b123b562e4409a0e9084b79be908064d9bcaf42d37adc1450c5ff3c693839b0b6c6490e0ea33aae2a3182fa04d54350dd1b9cc55cf255a7009dd23336c9aafe49c6ed3835a26877c9a7540ab55ddedcccc29b12ac62bd1661c3a562a43379a45576fa3def449e7a613bb26a065df878435994ba2ee21d15c0f8247de46c2acec5258b43d2c5a5afdda556b2f6e4c01d4365e81d76f042fed9d200ab3ce3234e6a0549f6a3f654de6b577b5732ed5d3bb8cc9ec0880727b1d0185a7db9aebcee5e9d565a176014f3b24ac707349586118c34b711e9d762bfe327ddd2e5cead0d3a658ef868246b3f5317cad13cab9dcc0523b53b0149d7582463d827b98095e748219748fe16bb280d891fa0d0cb3395cd44c94c836fc87649685906a80659c19dc249d2c1b24541181184d3a815efe261a586a7288e156ad4142f8dd926b435af9bd9103a7bb4e26b3199928dbedd688b674f608193ecb15de5f8df88783b5245f82bb8fe2e9193a664b711f438845cdaa36e0944ab844a866d69c52b821db24b222fece1d4c79dab5afa84c0c65e3982d629c9f287632cfe026896ee898a78d0daca77ccd60d06d131ecff501fb9b4fdd771fd5da7256d22cce4c27abe853d39f4c3fde216fb12a0e51875596bacdfbb52c725d7b9deb2050bda7c43b4edd0b1c0816b56232879a66bc9d8675cece475d6a975810589668ecb0dbe68cf05ae2434f7e903b1fb5fa8058d79826f0cd25bb7df3cd8f1f41f218c05de29229695c097d5e81a1e8cb6e26b3b4015be4b1ca6b44f886968276822f2a5137ecd7a27ea9d28a86a5b01e564aada85b2f75a3a85e1d46d5caa0577b02078b8a936a945df08fe03a83adf26b7e33be75d59fac6f6cae4d7852e6e62abf6c889babfe6aed2d57fdfaaa1e8df54d7e802824a02f1ab551bbdeee354aed7a77540a07bd56a9dd6ff44a8346bf39180dfa51ab3d7a12a053030ebbf57ed818b64a8d6abf5f0a1b15bd9456bbd40c6bb56ed8ecb68661f7495ed28015b25492db054c6d38def82f000000ffff0300504b0304140006000800000021001c199e3ddb020000e00600000d000000786c2f7374796c65732e786d6ca455dd6f9b30107f9fb4ffc1f23b35d090251150354d912a6dd5a476d21efae28049acfa031927239bf6bfef0c8410755ab72e0ff1f9ecfbddc7ef7cc4578d1468cf4ccdb54a7070e163c454ae0bae3609fef29879338c6a4b554185562cc10756e3abf4fdbbb8b607c11eb68c590410aa4ef0d6da6a41489d6f99a4f585ae988293521b492d6ccd86d49561b4a89d911424f4fd2991942bdc212c64fe3720929ae75de5e55a56d4f23517dc1e5a2c8c64beb8db286de85a40a84d30a1396a82a90951638e4e5aed0b3f92e746d7bab417804b7459f29cbd0c774ee684e62724407e1b5210113f3ccbbd316f449a10c3f6dcd187d358ed64266d8d72bd5316e81c54a83bb92b40399d60d4b172a30b4729fc9e3c299fbca2c0248d498f92c6a5566330a8255474f1acf43795b9a3ce83bb95c6f577b4a70234a1c3c8b5d00659e8047010388da2927537ae0da7c2a94a2ab93874cad68a7450ed52c3391762c825845c9c228d8176cb8cca60837af9f150811f051dda26d0dd7be5f6c6d04310462303d23a4ce3b53605bc8871153b551a0b565a88dcf0cdd6ad5657f0bfd6d642d7a471c1e9462b2a5c118f16bd00e9e44c8807f76abe9667d84d396207de9f2b8223ca8990632f7678ddc6e18fd13aec11ac2bd6bfc3a2a61cf0cfacfb96792dacc11ed1aa1287fb9d5c3393b5efbf6f82366a8873548cb3520c4921d72e09be77c6021e5c1f185aefb8b05cfda60c805934a7c2fa8e57eb06415bf2c10b14b56025dd09fb381c26f8247f6205dfc970b8f599efb56d21127c923f3afe83a9f3c11afbb186fe8715ed0c4ff08fdbe587f9ea360bbd99bf9c79934b1679f368b9f2a2c9cd72b5cae67ee8dffc1c8da3ff1846edf404aa83c9a21630b24c9f6c9fe2c34997e0d1a60bbfed7c087b1cfb3c9cfad751e07bd9a51f7893299d79b3e965e4655110aea693e56d9445a3d8a3370e2d9f044137fe5cf0d1c272c9045747ae8e0c8db540126cff90043932414e9fa6f417000000ffff0300504b0304140006000800000021002f5307da84010000ee03000014000000786c2f736861726564537472696e67732e786d6c7453c18ed5300cbc23f10f55ee6cdf8284106abb0724be00ce953771fbbc6a9d123bcbc2d7e3f609044939d663cf4ced49f7f0b22ecd3326a1c8bdbbbfbbb806d9c7403cf7eeeb97cf6f3eb8461438c012197bf703c53d0caf5f7522dad82c4befaeaadbc7b6157fc515e42e6ec8864c31ada0f699e656b68410e48aa8ebd2bebd5cdeb72b10bbc6c7ccdabb77f7aec94cdf327efa53183aa1a1d3c1cc8cf88cac5dab43d7eec51b20a6c65056812996350c10c60d3c190b96a0e9eef08a817cc526f852b1296d71149c733a06257a82a564dd5dc3d10421a68a17451368453da1bfc2e8234f64cbf3769392f7d6414c068e42acd1565e361d0e3d48c5ff7b07e335ca460a0bfd347be71a7fb59c193193e344953f78ca52eff8115232bf96333b45291728a1df25c604df4b9049c7bccda1daef0242935dec1834236727e090bd567a1cd73d5095525c1f139e8ad1ffd373440bc253e52f27b11fb68494c89cb2e5679f3bcbcc6d53256206ce81059434574cf656e77febadbdd7e117000000ffff0300504b030414000600080000002100f755da25530100007b02000011000801646f6350726f70732f636f72652e786d6c20a2040128a000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000084925d4bc3301885ef05ff43c97d9b7eb83142db81cabc712038f1e32e24efbab0262d496ab77f6fda6eb532c5cbe49cf7c9392f499707597a9fa08da85486a220441e285671a18a0cbd6c56fe0279c652c5695929c8d0110c5ae6d75729ab09ab343ce9aa066d0518cf919421acced0ceda9a606cd80e2435817328276e2b2da975475de09ab23d2d00c76138c7122ce5d452dc01fd7a24a21392b3115937baec019c61284182b206474184bfbd16b434bf0ef4cac429853dd6aed329ee94cdd9208eee8311a3b16ddba04dfa182e7f84dfd68fcf7d555fa86e570c509e724698066a2b9dbf3765b3a7de8328a8b2e0ad1b2da04cf1c4d16db3a4c6aedde2b702f8edf1afa14ba37ba92f363c07dc7351c950ecacbc2677f79b15cae3309efb61e2c78b4d1c93302437c94797e3c77c177db890a734ff12677e1c6da2398923325b4c8867409ee28bef927f010000ffff0300504b0304140006000800000021002701eca5910100001703000010000801646f6350726f70732f6170702e786d6c20a2040128a00001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c92c16edb300c86ef03f60e86ee8d9c6e2886405651a41b72d8b000497be7643ad1264b82c418c9de66cfb2171b6da389b3edd41bc99ffaf589a2ba3fb6aee830651b7c25e6b35214e84da8addf55e269fbe9e683283281afc1058f95386116f7faed1bb54e2162228bb9600b9f2bb1278a0b29b3d9630b79c6b267a509a905e234ed64681a6bf03198438b9ee46d59de493c12fa1aeb9b783614a3e3a2a3d79ad6c1f47cf9797b8a0cacd5438cce1a207ea5fe624d0a3934547c3c1a744a4e45c5741b348764e9a44b25a7a9da1870b86463dd80cba8e4a5a05608fdd0d66053d6aaa3458786422ab2fdc963bb15c537c8d8e354a28364c11363f56d6332c42e664a7a15be432e6a2cccef5fce1c5c5092fb466d08a747a6b17dafe7430307d78dbdc1c8c3c235e9d692c3fcb55943a2ff80cfa7e003c3887d411daf9ce20d0fe78bfeb25e8636823fb1708e3e5bff233fc56d7804c297a15e17d5660f096bfe87f3d0cf05b5e27926d79b2cf7e07758bff4fc2bf42bf03ceeb99edfcdca7725ffeea4a6e465a3f51f000000ffff0300504b01022d001400060008000000210062ee9d685e010000900400001300000000000000000000000000000000005b436f6e74656e745f54797065735d2e786d6c504b01022d0014000600080000002100b5553023f40000004c0200000b00000000000000000000000000970300005f72656c732f2e72656c73504b01022d0014000600080000002100ba3af2a254030000bc0700000f00000000000000000000000000bc060000786c2f776f726b626f6f6b2e786d6c504b01022d0014000600080000002100813e9497f3000000ba0200001a000000000000000000000000003d0a0000786c2f5f72656c732f776f726b626f6f6b2e786d6c2e72656c73504b01022d00140006000800000021001c97abd4910500007e1f00001800000000000000000000000000700c0000786c2f776f726b7368656574732f7368656574312e786d6c504b01022d00140006000800000021006cf2db016707000004210000130000000000000000000000000037120000786c2f7468656d652f7468656d65312e786d6c504b01022d00140006000800000021001c199e3ddb020000e00600000d00000000000000000000000000cf190000786c2f7374796c65732e786d6c504b01022d00140006000800000021002f5307da84010000ee0300001400000000000000000000000000d51c0000786c2f736861726564537472696e67732e786d6c504b01022d0014000600080000002100f755da25530100007b02000011000000000000000000000000008b1e0000646f6350726f70732f636f72652e786d6c504b01022d00140006000800000021002701eca59101000017030000100000000000000000000000000015210000646f6350726f70732f6170702e786d6c504b0506000000000a000a0080020000dc2300000000
28	Censo arbóreo	365	Alcaldía de Santiago de Cali	\N
27	Puntos de recolección de basura	365	Alcaldía de Santiago de Cali	\N
22	Ocupación hospitalaria	7	SIVIGILA	\N
29	Concentraciones	7	SecretarÃ­a de Salud	\N
30	Equipo pesado	7	SecretarÃ­a de Salud	\N
31	Motomochila	7	SecretarÃ­a de Salud	\N
32	Sumideros	7	SecretarÃ­a de Salud	\N
33	Viviendas	7	SecretarÃ­a de Salud	\N
\.


--
-- Data for Name: file_type_columns; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.file_type_columns (id, name, required, file_type_id) FROM stdin;
1	cod_event	t	1
2	semana	t	1
3	anio	t	1
4	edad_paciente	t	1
5	unidad_medica	t	1
6	sexo	t	1
7	tipo_seguridad_social	t	1
8	cod_aseguradora	t	1
9	estrato	t	1
10	fecha_confirmacion	t	1
11	fecha_inicio_sintomas	t	1
12	tipo_caso	t	1
13	paciente_hospitalizado	t	1
14	fecha_hospitalizacion	t	1
15	con_fin	t	1
16	ajuste	t	1
17	barrio_vereda	t	1
18	direccion_raw	t	1
19	nit_upgd	t	1
20	clasificacion_final	t	1
21	conducta	t	1
22	nom_eve	t	1
23	nombre_upgd	t	1
24	id_paciente	t	1
25	edad_adj	t	1
26	curso_vida	t	1
27	grupo_edad	t	1
57	Cod_Habilitacion	t	22
58	Ips	t	22
59	Caracter	t	22
60	Nivel_de_atencion	t	22
61	Capacidad_instalada_total	t	22
62	Ocupacion_Real	t	22
63	Referencias_activas	t	22
64	Sobreocupacion	t	22
65	Disponibilidad	t	22
66	Fecha	t	22
67	ID	f	3
68	BARRIO	t	3
69	CODIGOMUNI	f	3
70	DIAMETRO	f	3
71	MATERIAL	f	3
72	DIRECCIONC	f	3
73	TIEMPOSUSP	f	3
74	FECHAREPAR	t	3
75	id_barrio	t	1
76	latitud	t	1
77	longitud	t	1
78	aproximacion	t	1
79	consecutivo	t	27
80	id_prestador	t	27
81	direccion_prestador	t	27
82	latitud	t	27
83	longitud	t	27
84	norte	t	27
85	este	t	27
86	barrio	t	27
87	comuna	t	27
88	frecuencia	t	27
89	tipo_residuos	t	27
90	estado_actual	t	27
91	descripcion	t	27
92	volumen	t	27
93	unidad	t	27
94	prestador	t	27
95	cod_barrio	t	28
96	barrio	t	28
97	comuna	t	28
98	latitud	t	28
99	longitud	t	28
100	1_Fecha_de_visita	t	29
101	6_Nombre_del_encuest	t	29
102	lat_9_Georeferenciacin_o	t	29
103	long_9_Georeferenciacin_o	t	29
104	11_Tipo_de_concentra	t	29
105	12_Institucin_o_Esta	t	29
106	Clave	t	29
107	16_Habitantes	t	29
108	Total de sumideros	t	29
109	Sumideros inspeccionados	t	29
110	Sumideros con larvas	t	29
111	Sumideros con pupas	t	29
112	Tinas inspeccionadas	t	29
113	Tinas con larvas	t	29
114	Tinas con pupas	t	29
115	Llantas inspeccionadas	t	29
116	Llantas con larvas	t	29
117	Llantas con pupas	t	29
118	Tarros y latas inspeccionados	t	29
119	Tarros y latas con larvas	t	29
120	Tarros y latas con pupas	t	29
121	Fuentes y tanques inspeccionados	t	29
122	Total de fuentes y tanques con larvas	t	29
123	Fuentes y tanques con pupas	t	29
124	Floreros o matas en agua inspeccionados	t	29
125	Floreros o matas en agua con larvas	t	29
126	Floreros o matas en agua con pupas	t	29
127	Criaderos naturales inspeccionados	t	29
128	Criaderos naturales con larvas	t	29
129	Criaderos naturales con pupas	t	29
130	Otros inspeccionados	t	29
131	Otros con larvas	t	29
132	Otros con pupas	t	29
133	Total inspeccionados	t	29
134	Total con larvas	t	29
135	Total con pupas	t	29
136	Total eliminados	t	29
137	Total tratados	t	29
138	ec5_uuid	f	29
139	created_at	f	29
140	uploaded_at	f	29
141	title	f	29
142	2_Hora_de_la_visita	f	29
143	3_Comuna	f	29
144	Barrio	f	29
145	7_Larvicida	f	29
146	8_Direccin__Calle_C_	f	29
147	accuracy_9_Georeferenciacin_o	f	29
148	UTM_Northing_9_Georeferenciacin_o	f	29
149	UTM_Easting_9_Georeferenciacin_o	f	29
150	UTM_Zone_9_Georeferenciacin_o	f	29
151	10_Tipo_de_entorno	f	29
152	13_Atienden_la_visit	f	29
153	14_Nombre_de_la_pers	f	29
154	15_Contacto_de_la_pe	f	29
155	Total de tinas	f	29
156	Total de llantas	f	29
157	Total de tarros y latas	f	29
158	Total de fuentes y tanques	f	29
159	Total de platos en materas	f	29
160	Total de floreros matas en agua	f	29
161	Total criaderos naturales	f	29
162	Total de otros	f	29
163	Total de larvicida	f	29
164	60_Medidas_de_contro	f	29
165	61_Observaciones	f	29
166	62_Cargar_la_foto_de	f	29
167	Total de depositos	f	29
168	Nombre operario	f	29
169	Fecha	f	29
170	NÂ° Habitantes	f	29
171	Latitud	f	29
172	Longitud	f	29
173	Platos en materas inspeccionados	f	29
174	Platos en materas con larvas	f	29
175	Platos en materas con pupas	f	29
176	21_Placa_del_vehculo	t	30
177	17_Rociados_Nmero_de Predios	t	30
178	4_Marca_de_la_maquin	t	30
179	13_Jornada	t	30
180	Barrio	f	30
181	12_Sector__Direccin	f	30
182	19_Insumos_Insectici	t	30
183	7_Insecticida	t	30
184	5_Nmero_de_serie	f	30
185	18_Insumos_Combustib	t	30
186	8_Concentracin_	f	30
187	20_Conductor	t	30
188	3_Fecha	t	30
189	lat_2_Georeferenciacin	t	30
190	23_Observaciones	t	30
191	long_2_Georeferenciacin	t	30
192	6_Descarga_en_ML_por	t	30
193	15_Hora_de_finalizac	t	30
194	22_Operario	t	30
195	9_Comuna	f	30
196	14_Hora_de_inicio	t	30
197	accuracy_2_Georeferenciacin	f	30
198	16_Rociados_Nmero_de Manzanas	t	30
199	17_Observaciones	f	31
200	Barrios_	f	31
201	lat_15_Coordenadas	t	31
202	19_Consumo_de_insect	f	31
203	10_Comuna	f	31
204	3_Caso	f	31
205	18_Entrada_de_insect	f	31
206	13_Direccin	f	31
207	7_Cantidad_inicial_d	f	31
208	20_Consumo_de_combus	f	31
209	16_Clave	t	31
210	9_Insecticida	t	31
211	long_15_Coordenadas	t	31
212	Ins	f	31
213	1_Fecha	t	31
214	14_Complemento_de_la	f	31
215	8_Maquina	f	31
217	Nombre del Larvicida	t	32
218	Sin Larvas	t	32
219	Fecha Inicial	t	32
220	Con larvas de Aedes	t	32
221	Comuna	f	32
222	Funcionario	t	32
223	Con Aceite	t	32
224	Con larvas de Culex	t	32
225	Secas	t	32
226	Direccion	f	32
227	Sumideros Inspeccionados (Con Aedes + Mixtos + Culex + Pupas + Sin larvas)	t	32
228	Sin Inspeccionar (Con agua pero no se puede tomar muestra)	t	32
229	Con Pupas	t	32
230	Con larvas de Aedes y Culex	t	32
231	Total	t	32
232	Fecha Final	t	32
233	Barrios	t	32
234	Tapadas	t	32
235	Cantidad larvivida (gr)	f	32
216	Tratados (Se aplicó larvicida = Inspeccionados + Sin inspeccionar)	t	32
236	Cantidad Larvicida (gr)	f	33
237	19_Tanques_con_larva	t	33
238	lat_11_Georeferenciacin_	t	33
239	NÂ° Tarros o latas con pupas	f	33
240	TipoCaso	f	33
241	ec5_uuid	f	33
242	48_Total_eliminados	t	33
243	36_Platos_en_materas	t	33
244	NÂ° Total DepÃ³sitos destruidos	f	33
245	31_Botellas_con_larv	t	33
246	23_Tinas_yo_toneles_	t	33
247	UTM_Zone_11_Georeferenciacin_	f	33
248	NÂ° Botellas Inspeccionadas	f	33
249	9_Larvicida	f	33
250	24_Llantas_inspeccio	t	33
251	42_Otros_inspecciona	t	33
252	NÂ° Tarros o latas inspeccionados	f	33
253	NÂ° Matas en agua con larvas aedes	f	33
254	28_Tarros_yo_latas_c	t	33
255	Barrio	f	33
256	13_Atienden_la_visita_de_la_SDS	f	33
257	51_Clave	t	33
258	NÂ° Tinas con pupas	f	33
259	NÂ° Total DepÃ³sitos depÃ³sitos con pupas	f	33
260	33_Floreros_yo_matas	t	33
261	47_Total_con_pupas_d	t	33
262	NÂ° Sumideros inspeccionados	f	33
263	27_Tarros_yo_latas_i	t	33
264	NÂ° Tinas Inspeccionadas	f	33
265	6_Nombre_de_la_perso	t	33
266	NÂ° Matas en agua inspeccionadas	f	33
267	15_Contacto_de_la_pe	f	33
268	21_Tinas_yo_toneles_	t	33
269	22_Tinas_yo_toneles_	t	33
270	44_Otros_con_pupas_d	t	33
271	17_Personas_capacita	f	33
272	UTM_Northing_11_Georeferenciacin_	f	33
273	created_at	f	33
274	UTM_Easting_11_Georeferenciacin_	f	33
275	18_Tanques_inspeccio	t	33
276	NÂ° Habitantes	f	33
277	NÂ° Total DepÃ³sitos tratados	f	33
278	8_Nombre_de_la_perso	f	33
279	NÂ° Sumideros con larvas aedes	f	33
280	37_Platos_en_materas	t	33
281	29_Tarros_yo_latas_c	t	33
282	35_Floreros_yo_matas	t	33
283	50_Total_de_larvicid	t	33
284	NÂ° Total DepÃ³sitos con larvas aedes	f	33
285	39_Criaderos_natural	f	33
286	25_Llantas_con_larva	t	33
287	20_Tanques_con_pupas	t	33
288	12_Tipo_de_vivienda	t	33
289	Latitud	f	33
290	uploaded_at	f	33
291	Nombre operario	f	33
292	NÂ° Sumideros con pupas	f	33
293	NÂ° Llantas con Pupas	f	33
294	NÂ° Otros depÃ³sitos con pupas	f	33
295	30_Botellas_inspeccio	t	33
296	34_Floreros_yo_matas	t	33
297	NÂ° Tanques Inspeccionados	f	33
298	45_Total_inspecciona	t	33
299	3_Comuna	f	33
300	49_Total_tratados	t	33
301	long_11_Georeferenciacin_	t	33
302	43_Otros_con_larvas_	t	33
303	Longitud	f	33
304	NÂ° Tanques con Pupas	f	33
305	NÂ° Botellas con pupas	f	33
306	38_Platos_en_materas	t	33
307	14_Nombre_de_la_pers	f	33
308	NÂ° Otros depÃ³sitos Inspeccionados	f	33
309	1_Fecha_de_visita	t	33
310	26_Llantas_con_pupas	t	33
311	Fecha	f	33
312	Clave	f	33
313	2_Hora_de_la_visita	f	33
314	40_Criaderos_natural	f	33
315	NÂ° Llantas con larvas aedes	f	33
316	Zona	f	33
317	10_Direccin__Calle_C	f	33
318	32_Botellas_con_pupa	t	33
319	NÂ° Tanques con larvas de aedes	f	33
320	NÂ° Tarros o latas con larvas aedes	f	33
321	NÂ° Total DepÃ³sitos Inspeccionados	f	33
322	52_Observaciones	f	33
323	16_Habitantes	t	33
324	NÂ° Tinas con larvas aedes	f	33
325	NÂ° Matas en agua con pupas	f	33
326	NÂ° Llantas Inspeccionadas	f	33
327	41_Criaderos_natural	f	33
328	46_Total_con_larvas_	t	33
329	NÂ° Otros depÃ³sitos con larvas aedes	f	33
330	NÂ° Botellas con larvas aedes	f	33
331	accuracy_11_Georeferenciacin_	f	33
332	7_Tipo_de_visita	t	33
\.


--
-- Data for Name: pipeline; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pipeline (id, name, file_type_id, main_function, path, is_automatic, depends_on_pipeline_id, abbreviation, name_to_display) FROM stdin;
1	casos_dengue	1	dengue_cases_pipeline	ETL-Scripts/epidemiological/manual/dengue_cases_pipeline.py	f	\N	CDG	Casos de Dengue
3	clima_downscaling	20	climate_downscaling_pipeline	ETL-Scripts/climatic/automatic/downscaling/pipeline.py	t	2	CDS	Downscaling de Datos Climáticos
7	finalize_correction	23	pipeline	ETL-Scripts/infrastructure/manual/pipeline.py	f	\N	FNC	Finalización de corrección
8	variables_sinteticas	24	synthetic_variables_pipeline	ETL-Scripts/prediction/automatic/pipeline.py	t	3	SIN	Variables Sintéticas
4	prediccion_dengue	21	dengue_prediction_pipeline	ETL-Scripts/prediction/automatic/pipeline.py	t	8	PRE	Predicción de Dengue
2	clima_download	19	climate_download_pipeline	ETL-Scripts/climatic/automatic/downloading/pipeline.py	t	\N	CLD	Descarga de Datos Climáticos
10	puntos_recoleccion_basura	27	garbage_collection_points_pipeline	ETL-Scripts/infrastructure/manual/garbage_collection_points_pipeline.py	f	\N	PRB	Puntos de recolección de basura
11	censo_arboreo	28	tree_census_pipeline	ETL-Scripts/infrastructure/manual/tree_census_pipeline.py	f	\N	CSA	Censo arbóreo
6	hospital_occupation	22	hospital_occupation_pipeline	ETL-Scripts/infrastructure/manual/hospital_occupation_pipeline.py	f	\N	HSO	Ocupación Hospitalaria
9	water_outages	3	water_outages_pipeline	ETL-Scripts/infrastructure/manual/water_outages_pipeline.py	f	\N	WTO	Cortes de Agua
12	concentrations	29	concentrations_pipeline	ETL-Scripts/mitigation-actions/manual/concentrations_pipeline.py	f	\N	AMC	A.M. Concentraciones
13	heavy_equipment	30	heavy_equipment_pipeline	ETL-Scripts/mitigation-actions/manual/heavy_equipment_pipeline.py	f	\N	AME	A.M. Equipesado
14	motorbackpack	31	motorbackpack_pipeline	ETL-Scripts/mitigation-actions/manual/motorbackpack_pipeline.py	f	\N	AMM	A.M. Motomochila
15	drains	32	drains_pipeline	ETL-Scripts/mitigation-actions/manual/drains_pipeline.py	f	\N	AMS	A.M. Sumideros
16	housing	33	housing_pipeline	ETL-Scripts/mitigation-actions/manual/housing_pipeline.py	f	\N	AMV	A.M. Viviendas
\.


--
-- Data for Name: pipeline_exec_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pipeline_exec_status (id, name) FROM stdin;
1	RUNNING
2	COMPLETED
3	FAILED
4	WAITING_FOR_CORRECTION
5	NOT_STARTED
\.


--
-- Data for Name: pipeline_execution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pipeline_execution (id, start_at, end_at, pipeline_id, file_id, current_exec_status_id) FROM stdin;
1	2026-04-14 02:00:02.436253	2026-04-14 02:04:26.992868	2	1	2
2	2026-04-14 02:04:27.375114	2026-04-14 02:04:47.463357	3	2	2
10	2026-04-22 18:53:04.91287	2026-04-22 18:53:04.91287	2	1	2
12	2026-04-22 18:55:02.355297	2026-04-22 18:55:02.355297	3	2	2
13	2026-04-22 18:55:03.355297	2026-04-22 18:55:03.355297	8	2	2
14	2026-04-22 18:55:04.355297	2026-04-22 18:55:04.355297	4	2	2
46	2026-05-06 13:36:46.30891	2026-05-06 13:36:51.241523	4	66	2
16	2026-04-23 12:20:15.421746	2026-04-23 12:24:19.677097	2	35	2
17	2026-04-23 12:28:43.878796	2026-04-23 12:29:09.408768	3	36	2
22	2026-04-25 17:23:14.111921	2026-04-25 17:23:28.08517	8	41	2
23	2026-04-25 17:23:44.116931	2026-04-25 17:23:48.632172	4	42	2
53	2026-05-12 15:46:57.745345	2026-05-12 15:47:29.740993	3	74	2
48	2026-05-06 20:44:09.871563	2026-05-06 20:49:28.509021	2	69	2
49	2026-05-06 21:28:04.448867	2026-05-06 21:28:22.562593	3	70	2
26	2026-04-30 07:00:08.707393	2026-04-30 07:05:08.770777	2	45	2
27	2026-04-30 07:15:05.407214	2026-04-30 07:15:37.816584	3	46	2
52	2026-05-11 15:20:43.803977	2026-05-11 15:28:32.744987	2	73	2
44	2026-05-06 12:47:01.512493	2026-05-06 12:47:20.767536	8	64	2
20	2026-04-25 17:08:36.529878	\N	1	39	2
29	2026-05-05 13:24:01.675	\N	1	48	2
8	2026-04-20 18:21:57.072297	2026-04-10 19:15:02.332	1	49	2
54	2026-05-20 13:50:10.245695	2026-05-22 12:00:00	2	75	2
58	2026-05-20 16:30:05.484214	2026-05-22 12:30:00	3	78	2
61	2026-04-23 06:00:00	2026-04-23 06:04:00	2	265	2
62	2026-04-23 06:08:00	2026-04-23 06:09:10	3	266	2
63	2026-04-23 06:15:00	2026-04-23 06:15:30	8	267	2
64	2026-04-23 06:20:00	2026-04-23 06:20:05	4	268	2
65	2026-05-29 02:00:11.304516	2026-05-29 02:04:46.143874	2	270	2
66	2026-05-29 02:15:10.367285	2026-05-29 02:16:14.913392	3	271	2
67	2026-05-29 10:13:25.204	\N	1	304	5
68	2026-05-29 10:13:26.204	\N	1	305	5
69	2026-05-29 10:13:27.204	\N	1	306	5
70	2026-05-29 10:13:08.204	\N	1	307	5
71	2026-05-29 10:13:29.204	\N	1	308	5
72	2026-05-29 10:13:30.204	\N	1	309	5
73	2026-05-31 00:00:12.274326	2026-05-31 00:05:41.382472	2	461	2
74	2026-05-31 00:15:06.958325	2026-05-31 00:16:12.841614	3	462	2
30	2026-05-05 13:24:02.675	2026-05-05 13:24:02.675	1	49	2
31	2026-05-05 13:24:03.675	2026-05-26 15:30:04.423859	1	52	2
\.


--
-- Data for Name: pipeline_step; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pipeline_step (id, step_order, pipeline_id, step_id) FROM stdin;
6	1	1	6
1	2	1	1
4	5	1	4
11	1	2	8
12	2	2	9
13	3	2	10
14	1	3	11
15	2	3	12
16	3	3	13
17	4	3	14
21	1	4	24
22	2	4	13
23	3	4	25
28	1	7	23
29	1	8	16
30	2	8	17
31	3	8	12
37	1	10	6
38	2	10	1
39	3	10	26
40	4	10	4
41	1	11	6
42	2	11	1
43	3	11	26
44	4	11	4
25	2	6	4
45	1	6	6
33	2	9	4
46	1	9	6
47	2	12	4
48	1	12	6
49	1	13	6
50	2	13	4
51	2	14	4
52	1	14	6
53	1	15	6
54	2	15	4
55	1	16	6
56	2	16	4
\.


--
-- Data for Name: pipeline_step_execution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pipeline_step_execution (id, start_at, end_at, error_message, pipeline_execution_id, pipeline_step_id, current_exec_status_id) FROM stdin;
1	2026-04-14 02:00:02.445514	2026-04-14 02:00:15.009003	\N	1	11	23
2	2026-04-14 02:00:15.043324	2026-04-14 02:04:03.561451	\N	1	12	23
3	2026-04-14 02:04:03.620641	2026-04-14 02:04:26.956023	\N	1	13	23
4	2026-04-14 02:04:27.392536	2026-04-14 02:04:32.180086	\N	2	14	27
5	2026-04-14 02:04:32.241021	2026-04-14 02:04:40.795619	\N	2	15	27
6	2026-04-14 02:04:40.83164	2026-04-14 02:04:45.525864	\N	2	16	27
7	2026-04-14 02:04:45.559797	2026-04-14 02:04:47.428668	\N	2	17	27
40	2026-04-20 18:21:57.072297	2026-04-20 18:21:58.122802	\N	8	6	2
41	2026-04-20 18:23:28.316632	2026-04-20 18:23:29.965123	\N	8	1	11
44	2026-04-20 18:25:28.696969	2026-04-20 18:25:33.838943	\N	8	4	4
46	2026-04-23 12:20:20.08287	2026-04-23 12:20:22.599833	\N	16	11	14
47	2026-04-23 12:20:22.663191	2026-04-23 12:24:05.823419	\N	16	12	15
48	2026-04-23 12:24:05.88794	2026-04-23 12:24:19.62658	\N	16	13	23
49	2026-04-23 12:28:45.934695	2026-04-23 12:28:52.382416	\N	17	14	16
50	2026-04-23 12:28:52.436152	2026-04-23 12:29:01.629991	\N	17	15	17
51	2026-04-23 12:29:01.676209	2026-04-23 12:29:07.421624	\N	17	16	18
52	2026-04-23 12:29:07.454601	2026-04-23 12:29:09.375315	\N	17	17	27
53	2026-04-25 17:08:36.546183	2026-04-25 17:08:37.63295	\N	20	6	2
54	2026-04-25 17:08:37.783956	2026-04-25 17:08:38.83021	\N	20	1	11
57	2026-04-25 17:08:41.193716	2026-04-25 17:08:42.237702	\N	20	4	6
61	2026-04-25 17:23:14.201209	2026-04-25 17:23:23.02817	\N	22	29	19
62	2026-04-25 17:23:23.155143	2026-04-25 17:23:24.826061	\N	22	30	20
63	2026-04-25 17:23:24.911657	2026-04-25 17:23:27.984889	\N	22	31	31
64	2026-04-25 17:23:44.230932	2026-04-25 17:23:44.286451	\N	23	21	35
65	2026-04-25 17:23:44.360912	2026-04-25 17:23:46.073874	\N	23	22	36
66	2026-04-25 17:23:46.168753	2026-04-25 17:23:48.53553	\N	23	23	37
150	2026-05-06 20:44:09.950571	2026-05-06 20:44:24.212821	\N	48	11	14
69	2026-04-30 07:00:08.741357	2026-04-30 07:00:22.718937	\N	26	11	14
70	2026-04-30 07:00:22.839976	2026-04-30 07:04:42.03466	\N	26	12	15
71	2026-04-30 07:04:42.120341	2026-04-30 07:05:08.688279	\N	26	13	23
151	2026-05-06 20:44:24.266075	2026-05-06 20:49:01.964673	\N	48	12	15
176	2026-05-11 15:20:43.832936	2026-05-11 15:20:55.85231	\N	52	11	14
179	2026-05-11 15:20:55.908247	2026-05-11 15:28:13.909004	\N	52	12	15
72	2026-04-30 07:15:05.978094	2026-04-30 07:15:18.092741	\N	27	14	16
73	2026-04-30 07:15:18.144077	2026-04-30 07:15:28.463642	\N	27	15	17
74	2026-04-30 07:15:28.514525	2026-04-30 07:15:35.582936	\N	27	16	18
75	2026-04-30 07:15:35.630638	2026-04-30 07:15:37.75129	\N	27	17	27
182	2026-05-12 15:46:58.038907	2026-05-12 15:47:12.413035	\N	53	14	16
183	2026-05-12 15:47:12.485062	2026-05-12 15:47:21.580148	\N	53	15	17
185	2026-05-12 15:47:21.635841	2026-05-12 15:47:26.875064	\N	53	16	18
186	2026-05-12 15:47:26.935518	2026-05-12 15:47:29.665475	\N	53	17	27
199	2026-05-20 13:50:10.280125	2026-05-20 13:50:25.223017	\N	54	11	14
217	2026-05-20 16:30:05.705714	2026-05-20 16:30:24.53626	\N	58	14	16
218	2026-05-20 16:30:24.594212	2026-05-20 16:30:33.831404	\N	58	15	17
219	2026-05-20 16:30:33.872216	2026-05-20 16:30:39.693422	\N	58	16	18
220	2026-05-20 16:30:39.74108	2026-05-20 16:30:42.489816	\N	58	17	27
152	2026-05-06 20:49:02.039596	2026-05-06 20:49:28.438292	\N	48	13	23
180	2026-05-11 15:28:13.981891	2026-05-11 15:28:32.681095	\N	52	13	23
202	2026-05-20 13:50:25.281453	2026-05-20 13:54:17.185515	\N	54	12	15
209	2026-05-20 13:54:17.21313	2026-05-20 13:54:42.694265	\N	54	13	23
153	2026-05-06 21:28:04.619499	2026-05-06 21:28:10.688823	\N	49	14	16
154	2026-05-06 21:28:10.736664	2026-05-06 21:28:17.335255	\N	49	15	17
155	2026-05-06 21:28:17.390436	2026-05-06 21:28:20.25907	\N	49	16	18
156	2026-05-06 21:28:20.30593	2026-05-06 21:28:22.504928	\N	49	17	27
125	2026-05-06 12:47:01.554764	2026-05-06 12:47:16.158718	\N	44	29	19
128	2026-05-06 12:47:16.215148	2026-05-06 12:47:17.716536	\N	44	30	20
129	2026-05-06 12:47:17.769448	2026-05-06 12:47:20.699723	\N	44	31	31
132	2026-05-06 13:36:46.361262	2026-05-06 13:36:46.418404	\N	46	21	35
133	2026-05-06 13:36:46.471907	2026-05-06 13:36:48.532518	\N	46	22	36
134	2026-05-06 13:36:48.602773	2026-05-06 13:36:51.166806	\N	46	23	37
221	2026-05-26 15:19:23.656153	2026-05-26 15:19:25.204656	\N	31	6	2
222	2026-05-26 15:30:03.400379	2026-05-26 15:30:03.985085	\N	31	1	11
223	2026-05-26 15:30:04.122449	2026-05-26 15:30:04.338817	\N	31	4	8
243	2026-05-29 02:00:11.33245	2026-05-29 02:00:11.588081	\N	65	11	14
244	2026-05-29 02:00:11.623042	2026-05-29 02:04:36.507021	\N	65	12	15
245	2026-05-29 02:04:36.802209	2026-05-29 02:04:46.085346	\N	65	13	23
230	2026-04-23 06:00:05	2026-04-23 06:00:08	\N	61	11	14
231	2026-04-23 06:00:08	2026-04-23 06:03:50	\N	61	12	15
232	2026-04-23 06:03:50	2026-04-23 06:04:00	\N	61	13	23
233	2026-04-23 06:08:02	2026-04-23 06:08:09	\N	62	14	16
234	2026-04-23 06:08:09	2026-04-23 06:08:19	\N	62	15	17
235	2026-04-23 06:08:19	2026-04-23 06:08:25	\N	62	16	18
236	2026-04-23 06:08:25	2026-04-23 06:09:10	\N	62	17	27
237	2026-04-23 06:15:00	2026-04-23 06:15:09	\N	63	29	19
238	2026-04-23 06:15:09	2026-04-23 06:15:11	\N	63	30	20
239	2026-04-23 06:15:11	2026-04-23 06:15:28	\N	63	31	31
240	2026-04-23 06:20:00	2026-04-23 06:20:01	\N	64	21	35
241	2026-04-23 06:20:01	2026-04-23 06:20:03	\N	64	22	36
242	2026-04-23 06:20:03	2026-04-23 06:20:05	\N	64	23	37
246	2026-05-29 02:15:11.184797	2026-05-29 02:15:36.42442	\N	66	14	16
247	2026-05-29 02:15:36.486319	2026-05-29 02:15:52.136943	\N	66	15	17
248	2026-05-29 02:15:52.227097	2026-05-29 02:16:11.590666	\N	66	16	18
249	2026-05-29 02:16:11.709732	2026-05-29 02:16:14.835615	\N	66	17	27
250	2026-05-31 00:00:12.300683	2026-05-31 00:00:15.655765	\N	73	11	14
251	2026-05-31 00:00:15.721657	2026-05-31 00:05:29.856073	\N	73	12	15
252	2026-05-31 00:05:29.993558	2026-05-31 00:05:41.316937	\N	73	13	23
253	2026-05-31 00:15:07.422178	2026-05-31 00:15:33.950897	\N	74	14	16
254	2026-05-31 00:15:34.015982	2026-05-31 00:15:51.567178	\N	74	15	17
255	2026-05-31 00:15:51.623221	2026-05-31 00:16:08.552934	\N	74	16	18
256	2026-05-31 00:16:09.084178	2026-05-31 00:16:12.74682	\N	74	17	27
\.


--
-- Data for Name: step; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.step (id, name, name_to_display) FROM stdin;
1	DATA_CLEANING	Limpiando Datos
2	GEOCODING	Geocodificando
3	VALIDATING_GEOCODIFICATION	Validando geocodificación
5	RESULTS_SAVING	Guardando Resultados
7	DATA_CORRECTION	Correción de Datos
8	MSWEP_DOWNLOAD	Descarga de MSWEP
9	CDS_DOWNLOAD	Descarga de CDS
10	GEE_DOWNLOAD	Descarga de GEE
11	PREPROCESSING	Preprocesando
12	FEATURE_ENGINEERING	Ingeniería de Caracterísiticas
13	PREDICTION	Prediciendo
14	AGGREGATION	Agregando
15	COMPUTE_TASA_EB	Computando Tasa EB
16	DATA_EXTRACTION	Extrayendo Datos
17	TARGET_VARIABLE	Calculando Variable Objetivo
18	LOAD_PREDICTIONS	Cargando Predicciones
23	APPLY_CORRECTIONS	Aplicando Correcciones
24	LOAD_FEATURES	Cargando Características
25	LOAD_TO_DW	Cargando al Data Warehouse
26	DATA_PREPARING	Preparando Datos
6	FILE_UPLOADING	Subiendo Archivo
4	DATA_LOADING	Cargando Datos
\.


--
-- Name: correction_batch_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.correction_batch_id_seq', 1, false);


--
-- Name: exec_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.exec_status_id_seq', 133, true);


--
-- Name: file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.file_id_seq', 462, true);


--
-- Name: file_type_columns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.file_type_columns_id_seq', 332, true);


--
-- Name: file_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.file_type_id_seq', 33, true);


--
-- Name: pipeline_exec_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pipeline_exec_status_id_seq', 5, true);


--
-- Name: pipeline_execution_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pipeline_execution_id_seq', 74, true);


--
-- Name: pipeline_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pipeline_id_seq', 16, true);


--
-- Name: pipeline_step_execution_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pipeline_step_execution_id_seq', 256, true);


--
-- Name: pipeline_step_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pipeline_step_id_seq', 56, true);


--
-- Name: step_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.step_id_seq', 26, true);


--
-- Name: correction_batch correction_batch_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.correction_batch
    ADD CONSTRAINT correction_batch_pkey PRIMARY KEY (id);


--
-- Name: exec_status exec_status_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exec_status
    ADD CONSTRAINT exec_status_name_key UNIQUE (name);


--
-- Name: exec_status exec_status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exec_status
    ADD CONSTRAINT exec_status_pkey PRIMARY KEY (id);


--
-- Name: file file_hash_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.file
    ADD CONSTRAINT file_hash_key UNIQUE (hash);


--
-- Name: file file_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.file
    ADD CONSTRAINT file_name_key UNIQUE (name);


--
-- Name: file file_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.file
    ADD CONSTRAINT file_pkey PRIMARY KEY (id);


--
-- Name: file_type_columns file_type_columns_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.file_type_columns
    ADD CONSTRAINT file_type_columns_pkey PRIMARY KEY (id);


--
-- Name: file_type file_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.file_type
    ADD CONSTRAINT file_type_pkey PRIMARY KEY (id);


--
-- Name: pipeline_exec_status pipeline_exec_status_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline_exec_status
    ADD CONSTRAINT pipeline_exec_status_name_key UNIQUE (name);


--
-- Name: pipeline_exec_status pipeline_exec_status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline_exec_status
    ADD CONSTRAINT pipeline_exec_status_pkey PRIMARY KEY (id);


--
-- Name: pipeline_execution pipeline_execution_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline_execution
    ADD CONSTRAINT pipeline_execution_pkey PRIMARY KEY (id);


--
-- Name: pipeline pipeline_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline
    ADD CONSTRAINT pipeline_pkey PRIMARY KEY (id);


--
-- Name: pipeline_step_execution pipeline_step_execution_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline_step_execution
    ADD CONSTRAINT pipeline_step_execution_pkey PRIMARY KEY (id);


--
-- Name: pipeline_step pipeline_step_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline_step
    ADD CONSTRAINT pipeline_step_pkey PRIMARY KEY (id);


--
-- Name: step step_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.step
    ADD CONSTRAINT step_name_key UNIQUE (name);


--
-- Name: step step_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.step
    ADD CONSTRAINT step_pkey PRIMARY KEY (id);


--
-- Name: file_type_columns unique_column_per_type; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.file_type_columns
    ADD CONSTRAINT unique_column_per_type UNIQUE (name, file_type_id);


--
-- Name: file unique_file_per_epi_week; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.file
    ADD CONSTRAINT unique_file_per_epi_week UNIQUE (file_type_id, epi_week);


--
-- Name: pipeline_step unique_step_order_per_pipeline; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline_step
    ADD CONSTRAINT unique_step_order_per_pipeline UNIQUE (pipeline_id, step_order);


--
-- Name: pipeline_step unique_step_per_pipeline; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline_step
    ADD CONSTRAINT unique_step_per_pipeline UNIQUE (pipeline_id, step_id);


--
-- Name: idx_correction_batch_applied_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_correction_batch_applied_at ON public.correction_batch USING btree (applied_at);


--
-- Name: idx_correction_batch_pipeline_execution_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_correction_batch_pipeline_execution_id ON public.correction_batch USING btree (pipeline_execution_id);


--
-- Name: correction_batch correction_batch_pipeline_execution_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.correction_batch
    ADD CONSTRAINT correction_batch_pipeline_execution_id_fkey FOREIGN KEY (pipeline_execution_id) REFERENCES public.pipeline_execution(id);


--
-- Name: file file_file_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.file
    ADD CONSTRAINT file_file_type_id_fkey FOREIGN KEY (file_type_id) REFERENCES public.file_type(id);


--
-- Name: file_type_columns file_type_columns_file_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.file_type_columns
    ADD CONSTRAINT file_type_columns_file_type_id_fkey FOREIGN KEY (file_type_id) REFERENCES public.file_type(id);


--
-- Name: pipeline pipeline_depends_on_pipeline_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline
    ADD CONSTRAINT pipeline_depends_on_pipeline_id_fkey FOREIGN KEY (depends_on_pipeline_id) REFERENCES public.pipeline(id);


--
-- Name: pipeline_execution pipeline_execution_current_exec_status_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline_execution
    ADD CONSTRAINT pipeline_execution_current_exec_status_id_fkey FOREIGN KEY (current_exec_status_id) REFERENCES public.pipeline_exec_status(id);


--
-- Name: pipeline_execution pipeline_execution_file_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline_execution
    ADD CONSTRAINT pipeline_execution_file_id_fkey FOREIGN KEY (file_id) REFERENCES public.file(id);


--
-- Name: pipeline_execution pipeline_execution_pipeline_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline_execution
    ADD CONSTRAINT pipeline_execution_pipeline_id_fkey FOREIGN KEY (pipeline_id) REFERENCES public.pipeline(id);


--
-- Name: pipeline pipeline_file_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline
    ADD CONSTRAINT pipeline_file_type_id_fkey FOREIGN KEY (file_type_id) REFERENCES public.file_type(id);


--
-- Name: exec_status pipeline_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exec_status
    ADD CONSTRAINT pipeline_id_fkey FOREIGN KEY (pipeline_id) REFERENCES public.pipeline(id);


--
-- Name: pipeline_step_execution pipeline_step_execution_current_exec_status_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline_step_execution
    ADD CONSTRAINT pipeline_step_execution_current_exec_status_id_fkey FOREIGN KEY (current_exec_status_id) REFERENCES public.exec_status(id);


--
-- Name: pipeline_step_execution pipeline_step_execution_pipeline_execution_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline_step_execution
    ADD CONSTRAINT pipeline_step_execution_pipeline_execution_id_fkey FOREIGN KEY (pipeline_execution_id) REFERENCES public.pipeline_execution(id);


--
-- Name: pipeline_step_execution pipeline_step_execution_pipeline_step_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline_step_execution
    ADD CONSTRAINT pipeline_step_execution_pipeline_step_id_fkey FOREIGN KEY (pipeline_step_id) REFERENCES public.pipeline_step(id);


--
-- Name: pipeline_step pipeline_step_pipeline_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline_step
    ADD CONSTRAINT pipeline_step_pipeline_id_fkey FOREIGN KEY (pipeline_id) REFERENCES public.pipeline(id);


--
-- Name: pipeline_step pipeline_step_step_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline_step
    ADD CONSTRAINT pipeline_step_step_id_fkey FOREIGN KEY (step_id) REFERENCES public.step(id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\unrestrict SqfkaSsPSghkJq6yw43DleKgOL6bfgIBpWV7cbVPdjwPYSiNTHEg7ybSUdsF8c4

