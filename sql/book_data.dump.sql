--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4 (Homebrew)
-- Dumped by pg_dump version 15.4

-- Started on 2023-11-06 09:47:36 JST

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
-- TOC entry 214 (class 1259 OID 16390)
-- Name: book_user; Type: TABLE; Schema: public; Owner: book_user
--

CREATE TABLE public.book_user (
    user_id character varying(255) NOT NULL,
    passwd character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    user_shi character varying(255),
    user_mei character varying(255),
    del boolean
);


ALTER TABLE public.book_user OWNER TO book_user;

--
-- TOC entry 216 (class 1259 OID 16398)
-- Name: books; Type: TABLE; Schema: public; Owner: book_user
--

CREATE TABLE public.books (
    id integer NOT NULL,
    name character varying(255),
    volume character varying(255),
    author character varying(255),
    publisher character varying(255),
    memo text,
    create_date timestamp with time zone NOT NULL,
    del boolean
);


ALTER TABLE public.books OWNER TO book_user;

--
-- TOC entry 215 (class 1259 OID 16397)
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: book_user
--

CREATE SEQUENCE public.books_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_id_seq OWNER TO book_user;

--
-- TOC entry 3620 (class 0 OID 0)
-- Dependencies: 215
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: book_user
--

ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;


--
-- TOC entry 3465 (class 2604 OID 16401)
-- Name: books id; Type: DEFAULT; Schema: public; Owner: book_user
--

ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);


--
-- TOC entry 3612 (class 0 OID 16390)
-- Dependencies: 214
-- Data for Name: book_user; Type: TABLE DATA; Schema: public; Owner: book_user
--

COPY public.book_user (user_id, passwd, email, user_shi, user_mei, del) FROM stdin;
aaaaaaaaa	87134yanai	bukbjrafu@gmail.com	yanai	daisuke	f
7878	87134yanai	bukbjrafa@gmail.com	yanau	daisuke	f
yanai	87134yanai	bukbjrafu@gmail.com	yanai	iii	f
\.


--
-- TOC entry 3614 (class 0 OID 16398)
-- Dependencies: 216
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: book_user
--

COPY public.books (id, name, volume, author, publisher, memo, create_date, del) FROM stdin;
1	ほん	3	柳井大輔	パイン本社	あああ	2023-10-25 13:40:25.100886+09	t
2	あ	あ	あ	あ	あ	2023-10-25 13:40:46.350632+09	t
3	yanai	3	柳井 大輔	パイン本社	aaa	2023-10-25 13:46:05.379884+09	t
4	yanai	3	柳井 大輔	パイン本社	aaa	2023-10-25 14:10:00.21107+09	t
6	ほん	2	あ	kurie	gomi	2023-10-25 14:12:06.759946+09	f
7	あ	3	jett	ie	222	2023-10-25 14:14:34.569645+09	f
8	yanai	a	3	kurie	a	2023-10-25 14:23:48.276139+09	f
5	python	1	jett	gakkou	おいしい	2023-10-25 14:10:56.64257+09	t
\.


--
-- TOC entry 3621 (class 0 OID 0)
-- Dependencies: 215
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: book_user
--

SELECT pg_catalog.setval('public.books_id_seq', 8, true);


--
-- TOC entry 3467 (class 2606 OID 16396)
-- Name: book_user book_user_pkey; Type: CONSTRAINT; Schema: public; Owner: book_user
--

ALTER TABLE ONLY public.book_user
    ADD CONSTRAINT book_user_pkey PRIMARY KEY (user_id);


--
-- TOC entry 3469 (class 2606 OID 16405)
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: book_user
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


-- Completed on 2023-11-06 09:47:36 JST

--
-- PostgreSQL database dump complete
--

