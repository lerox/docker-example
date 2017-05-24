--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: db_example; Type: DATABASE; Schema: -; Owner: docker
--

CREATE DATABASE db_example WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE db_example OWNER TO docker;

\connect db_example

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner:
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner:
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: example; Type: TABLE; Schema: public; Owner: docker
--

CREATE TABLE example (
    id bigint NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE example OWNER TO docker;

--
-- Name: example_id_seq; Type: SEQUENCE; Schema: public; Owner: docker
--

CREATE SEQUENCE example_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE example_id_seq OWNER TO docker;

--
-- Name: example_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: docker
--

ALTER SEQUENCE example_id_seq OWNED BY example.id;


--
-- Name: example id; Type: DEFAULT; Schema: public; Owner: docker
--

ALTER TABLE ONLY example ALTER COLUMN id SET DEFAULT nextval('example_id_seq'::regclass);


--
-- Data for Name: example; Type: TABLE DATA; Schema: public; Owner: docker
--

COPY example (id, name) FROM stdin;
\.


--
-- Name: example_id_seq; Type: SEQUENCE SET; Schema: public; Owner: docker
--

SELECT pg_catalog.setval('example_id_seq', 1, false);


--
-- Name: example example_pkey; Type: CONSTRAINT; Schema: public; Owner: docker
--

ALTER TABLE ONLY example
    ADD CONSTRAINT example_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--
