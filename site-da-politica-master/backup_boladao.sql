--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2018-11-26 19:47:27 BRST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12395)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2223 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 186 (class 1259 OID 33466)
-- Name: banir; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE banir (
    "cd_ usuario_adm" integer,
    cd_usuario_comum integer,
    cd_usuario_politico integer,
    cd_banir integer NOT NULL
);


--
-- TOC entry 190 (class 1259 OID 33487)
-- Name: comentar; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE comentar (
    cd_comentar integer NOT NULL,
    cd_usuario_adm integer,
    cd_usuario_politico integer,
    cd_usuario_comum integer
);


--
-- TOC entry 191 (class 1259 OID 33492)
-- Name: compartilhar; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE compartilhar (
    cd_compartilhar integer NOT NULL,
    cd_usuario_comum integer,
    cd_usuario_adm integer,
    cd_usuario_politica integer,
    tm_horario time with time zone,
    dt_data date
);


--
-- TOC entry 188 (class 1259 OID 33476)
-- Name: curtir; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE curtir (
    cd_curtir integer NOT NULL,
    cd_usuario_comum integer,
    cd_usuario_adm integer,
    cd_usuario_politico integer
);


--
-- TOC entry 185 (class 1259 OID 33437)
-- Name: denuncia; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE denuncia (
    cd_denuncia integer NOT NULL,
    cd_publicacao integer,
    cd_usuario_comum integer,
    cd_usuario_adm integer,
    ds_descricao character varying(1000),
    cd_usuario_politico integer
);


--
-- TOC entry 182 (class 1259 OID 33380)
-- Name: publicacao; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE publicacao (
    dt_data date,
    tm_horario time without time zone,
    cd_publicacao integer NOT NULL,
    fk_cd_usuario_politico integer,
    fk_cd_usuario_comum integer,
    fk_cd_usuario_adm integer
);


--
-- TOC entry 189 (class 1259 OID 33479)
-- Name: responder; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE responder (
    cd_resposta integer NOT NULL,
    cd_usuario_comum integer,
    cd_usuario_politico integer,
    cd_usuario_adm integer,
    ds_resposta integer
);


--
-- TOC entry 187 (class 1259 OID 33471)
-- Name: seguir; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE seguir (
    cd_usuario_comum integer,
    cd_usuario_adm integer,
    cd_usuario_politico integer,
    cd_seguir integer NOT NULL
);


--
-- TOC entry 184 (class 1259 OID 33411)
-- Name: usuario_adm; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE usuario_adm (
    ds_email text,
    ds_usuario_adm character varying(20),
    nr_numero numeric(11,0) NOT NULL,
    nr_cpf numeric(11,0),
    nm_senha character varying(50),
    ds_posicao_politica text,
    nm_usuario_adm name,
    nm_nick_name_adm name NOT NULL,
    cd_usuario_adm integer NOT NULL,
    dt_nascimento timestamp(6) with time zone
);


--
-- TOC entry 183 (class 1259 OID 33389)
-- Name: usuario_comum; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE usuario_comum (
    ds_email text,
    ds_usuario_comum character varying(20),
    nr_numero numeric(11,0) NOT NULL,
    nr_cpf numeric(11,0),
    nm_senha character varying(50),
    ds_posicao text,
    nm_usuario_comum name,
    nm_nick_name_comum name NOT NULL,
    cd_usuario_comum integer NOT NULL,
    dt_nascimento timestamp(6) with time zone
);


--
-- TOC entry 181 (class 1259 OID 33374)
-- Name: usuario_politico; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE usuario_politico (
    nm_usuario_politico text,
    nr_cpf numeric(11,11),
    ds_email text,
    ds_usuario_politico character varying(20),
    nm_senha character varying(50),
    nm_nick_politico name NOT NULL,
    cd_usuario_politico integer NOT NULL,
    ds_posicao_politica text
);


--
-- TOC entry 2210 (class 0 OID 33466)
-- Dependencies: 186
-- Data for Name: banir; Type: TABLE DATA; Schema: public; Owner: -
--

COPY banir ("cd_ usuario_adm", cd_usuario_comum, cd_usuario_politico, cd_banir) FROM stdin;
\.


--
-- TOC entry 2214 (class 0 OID 33487)
-- Dependencies: 190
-- Data for Name: comentar; Type: TABLE DATA; Schema: public; Owner: -
--

COPY comentar (cd_comentar, cd_usuario_adm, cd_usuario_politico, cd_usuario_comum) FROM stdin;
\.


--
-- TOC entry 2215 (class 0 OID 33492)
-- Dependencies: 191
-- Data for Name: compartilhar; Type: TABLE DATA; Schema: public; Owner: -
--

COPY compartilhar (cd_compartilhar, cd_usuario_comum, cd_usuario_adm, cd_usuario_politica, tm_horario, dt_data) FROM stdin;
\.


--
-- TOC entry 2212 (class 0 OID 33476)
-- Dependencies: 188
-- Data for Name: curtir; Type: TABLE DATA; Schema: public; Owner: -
--

COPY curtir (cd_curtir, cd_usuario_comum, cd_usuario_adm, cd_usuario_politico) FROM stdin;
\.


--
-- TOC entry 2209 (class 0 OID 33437)
-- Dependencies: 185
-- Data for Name: denuncia; Type: TABLE DATA; Schema: public; Owner: -
--

COPY denuncia (cd_denuncia, cd_publicacao, cd_usuario_comum, cd_usuario_adm, ds_descricao, cd_usuario_politico) FROM stdin;
\.


--
-- TOC entry 2206 (class 0 OID 33380)
-- Dependencies: 182
-- Data for Name: publicacao; Type: TABLE DATA; Schema: public; Owner: -
--

COPY publicacao (dt_data, tm_horario, cd_publicacao, fk_cd_usuario_politico, fk_cd_usuario_comum, fk_cd_usuario_adm) FROM stdin;
\.


--
-- TOC entry 2213 (class 0 OID 33479)
-- Dependencies: 189
-- Data for Name: responder; Type: TABLE DATA; Schema: public; Owner: -
--

COPY responder (cd_resposta, cd_usuario_comum, cd_usuario_politico, cd_usuario_adm, ds_resposta) FROM stdin;
\.


--
-- TOC entry 2211 (class 0 OID 33471)
-- Dependencies: 187
-- Data for Name: seguir; Type: TABLE DATA; Schema: public; Owner: -
--

COPY seguir (cd_usuario_comum, cd_usuario_adm, cd_usuario_politico, cd_seguir) FROM stdin;
\.


--
-- TOC entry 2208 (class 0 OID 33411)
-- Dependencies: 184
-- Data for Name: usuario_adm; Type: TABLE DATA; Schema: public; Owner: -
--

COPY usuario_adm (ds_email, ds_usuario_adm, nr_numero, nr_cpf, nm_senha, ds_posicao_politica, nm_usuario_adm, nm_nick_name_adm, cd_usuario_adm, dt_nascimento) FROM stdin;
\.


--
-- TOC entry 2207 (class 0 OID 33389)
-- Dependencies: 183
-- Data for Name: usuario_comum; Type: TABLE DATA; Schema: public; Owner: -
--

COPY usuario_comum (ds_email, ds_usuario_comum, nr_numero, nr_cpf, nm_senha, ds_posicao, nm_usuario_comum, nm_nick_name_comum, cd_usuario_comum, dt_nascimento) FROM stdin;
\.


--
-- TOC entry 2205 (class 0 OID 33374)
-- Dependencies: 181
-- Data for Name: usuario_politico; Type: TABLE DATA; Schema: public; Owner: -
--

COPY usuario_politico (nm_usuario_politico, nr_cpf, ds_email, ds_usuario_politico, nm_senha, nm_nick_politico, cd_usuario_politico, ds_posicao_politica) FROM stdin;
\.


--
-- TOC entry 2077 (class 2606 OID 33470)
-- Name: pk_cd_banir; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY banir
    ADD CONSTRAINT pk_cd_banir PRIMARY KEY (cd_banir);


--
-- TOC entry 2085 (class 2606 OID 33491)
-- Name: pk_cd_comentar; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY comentar
    ADD CONSTRAINT pk_cd_comentar PRIMARY KEY (cd_comentar);


--
-- TOC entry 2087 (class 2606 OID 33496)
-- Name: pk_cd_compartilhar; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY compartilhar
    ADD CONSTRAINT pk_cd_compartilhar PRIMARY KEY (cd_compartilhar);


--
-- TOC entry 2081 (class 2606 OID 33483)
-- Name: pk_cd_curtir; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY curtir
    ADD CONSTRAINT pk_cd_curtir PRIMARY KEY (cd_curtir);


--
-- TOC entry 2075 (class 2606 OID 33444)
-- Name: pk_cd_denuncia; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY denuncia
    ADD CONSTRAINT pk_cd_denuncia PRIMARY KEY (cd_denuncia);


--
-- TOC entry 2068 (class 2606 OID 33408)
-- Name: pk_cd_publicacao; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY publicacao
    ADD CONSTRAINT pk_cd_publicacao PRIMARY KEY (cd_publicacao);


--
-- TOC entry 2083 (class 2606 OID 33486)
-- Name: pk_cd_resposta; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY responder
    ADD CONSTRAINT pk_cd_resposta PRIMARY KEY (cd_resposta);


--
-- TOC entry 2079 (class 2606 OID 33475)
-- Name: pk_cd_seguir; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY seguir
    ADD CONSTRAINT pk_cd_seguir PRIMARY KEY (cd_seguir);


--
-- TOC entry 2072 (class 2606 OID 33418)
-- Name: pk_cd_usuario_adm; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY usuario_adm
    ADD CONSTRAINT pk_cd_usuario_adm PRIMARY KEY (cd_usuario_adm);


--
-- TOC entry 2070 (class 2606 OID 33406)
-- Name: pk_cd_usuario_comum; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY usuario_comum
    ADD CONSTRAINT pk_cd_usuario_comum PRIMARY KEY (cd_usuario_comum);


--
-- TOC entry 2063 (class 2606 OID 33410)
-- Name: pk_cd_usuario_politico; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY usuario_politico
    ADD CONSTRAINT pk_cd_usuario_politico PRIMARY KEY (cd_usuario_politico);


--
-- TOC entry 2073 (class 1259 OID 33450)
-- Name: fki_cd_post; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fki_cd_post ON denuncia USING btree (cd_publicacao);


--
-- TOC entry 2064 (class 1259 OID 33430)
-- Name: fki_cd_usuario_adm; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fki_cd_usuario_adm ON publicacao USING btree (fk_cd_usuario_adm);


--
-- TOC entry 2065 (class 1259 OID 33436)
-- Name: fki_cd_usuario_comum; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fki_cd_usuario_comum ON publicacao USING btree (fk_cd_usuario_comum);


--
-- TOC entry 2066 (class 1259 OID 33424)
-- Name: fki_cd_usuario_politico; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX fki_cd_usuario_politico ON publicacao USING btree (fk_cd_usuario_politico);


--
-- TOC entry 2089 (class 2606 OID 33425)
-- Name: fk_cd_usuario_adm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY publicacao
    ADD CONSTRAINT fk_cd_usuario_adm FOREIGN KEY (fk_cd_usuario_adm) REFERENCES usuario_adm(cd_usuario_adm);


--
-- TOC entry 2090 (class 2606 OID 33431)
-- Name: fk_cd_usuario_comum; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY publicacao
    ADD CONSTRAINT fk_cd_usuario_comum FOREIGN KEY (fk_cd_usuario_comum) REFERENCES usuario_comum(cd_usuario_comum);


--
-- TOC entry 2088 (class 2606 OID 33419)
-- Name: fk_cd_usuario_politico; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY publicacao
    ADD CONSTRAINT fk_cd_usuario_politico FOREIGN KEY (fk_cd_usuario_politico) REFERENCES usuario_politico(cd_usuario_politico);


--
-- TOC entry 2222 (class 0 OID 0)
-- Dependencies: 7
-- Name: public; Type: ACL; Schema: -; Owner: -
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2018-11-26 19:47:27 BRST

--
-- PostgreSQL database dump complete
--

