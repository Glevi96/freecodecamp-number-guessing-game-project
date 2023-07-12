--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_of_guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_name character varying(25) NOT NULL,
    best_game_id integer,
    number_of_games integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (512, 347);
INSERT INTO public.games VALUES (513, 364);
INSERT INTO public.games VALUES (514, 204);
INSERT INTO public.games VALUES (515, 642);
INSERT INTO public.games VALUES (516, 454);
INSERT INTO public.games VALUES (517, 617);
INSERT INTO public.games VALUES (518, 94);
INSERT INTO public.games VALUES (519, 464);
INSERT INTO public.games VALUES (520, 611);
INSERT INTO public.games VALUES (521, 239);
INSERT INTO public.games VALUES (522, 615);
INSERT INTO public.games VALUES (523, 682);
INSERT INTO public.games VALUES (524, 895);
INSERT INTO public.games VALUES (525, 655);
INSERT INTO public.games VALUES (526, 34);
INSERT INTO public.games VALUES (527, 555);
INSERT INTO public.games VALUES (528, 354);
INSERT INTO public.games VALUES (529, 568);
INSERT INTO public.games VALUES (530, 841);
INSERT INTO public.games VALUES (531, 486);
INSERT INTO public.games VALUES (532, 187);
INSERT INTO public.games VALUES (533, 315);
INSERT INTO public.games VALUES (534, 482);
INSERT INTO public.games VALUES (535, 752);
INSERT INTO public.games VALUES (536, 63);
INSERT INTO public.games VALUES (537, 571);
INSERT INTO public.games VALUES (538, 922);
INSERT INTO public.games VALUES (539, 689);
INSERT INTO public.games VALUES (540, 284);
INSERT INTO public.games VALUES (541, 518);
INSERT INTO public.games VALUES (542, 714);
INSERT INTO public.games VALUES (543, 809);
INSERT INTO public.games VALUES (544, 217);
INSERT INTO public.games VALUES (545, 255);
INSERT INTO public.games VALUES (546, 805);
INSERT INTO public.games VALUES (547, 142);
INSERT INTO public.games VALUES (548, 605);
INSERT INTO public.games VALUES (549, 887);
INSERT INTO public.games VALUES (550, 841);
INSERT INTO public.games VALUES (551, 839);
INSERT INTO public.games VALUES (552, 201);
INSERT INTO public.games VALUES (553, 905);
INSERT INTO public.games VALUES (554, 113);
INSERT INTO public.games VALUES (555, 827);
INSERT INTO public.games VALUES (556, 281);
INSERT INTO public.games VALUES (557, 211);
INSERT INTO public.games VALUES (558, 572);
INSERT INTO public.games VALUES (559, 33);
INSERT INTO public.games VALUES (560, 312);
INSERT INTO public.games VALUES (561, 584);
INSERT INTO public.games VALUES (562, 184);
INSERT INTO public.games VALUES (563, 851);
INSERT INTO public.games VALUES (564, 337);
INSERT INTO public.games VALUES (565, 957);
INSERT INTO public.games VALUES (566, 747);
INSERT INTO public.games VALUES (567, 498);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (209, 'user_1689167611164', 514, 2);
INSERT INTO public.users VALUES (208, 'user_1689167611165', 518, 5);
INSERT INTO public.users VALUES (211, 'user_1689167626935', 521, 2);
INSERT INTO public.users VALUES (210, 'user_1689167626936', 519, 5);
INSERT INTO public.users VALUES (213, 'user_1689167636207', 528, 2);
INSERT INTO public.users VALUES (212, 'user_1689167636208', 526, 5);
INSERT INTO public.users VALUES (215, 'user_1689167657220', 536, 2);
INSERT INTO public.users VALUES (214, 'user_1689167657221', 533, 5);
INSERT INTO public.users VALUES (217, 'user_1689167679316', 542, 2);
INSERT INTO public.users VALUES (216, 'user_1689167679317', 544, 5);
INSERT INTO public.users VALUES (219, 'user_1689167691990', 550, 2);
INSERT INTO public.users VALUES (218, 'user_1689167691991', 547, 5);
INSERT INTO public.users VALUES (221, 'user_1689167703413', 557, 2);
INSERT INTO public.users VALUES (220, 'user_1689167703414', 559, 5);
INSERT INTO public.users VALUES (223, 'user_1689167723149', 564, 2);
INSERT INTO public.users VALUES (222, 'user_1689167723150', 562, 5);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 567, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 223, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_best_game_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_best_game_id_key UNIQUE (best_game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

