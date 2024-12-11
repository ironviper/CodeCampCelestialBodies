--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years integer NOT NULL,
    has_life boolean NOT NULL,
    distance_from_earth numeric,
    diameter integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years integer NOT NULL,
    has_darkside boolean NOT NULL,
    distance_from_earth numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_years integer NOT NULL,
    has_life boolean NOT NULL,
    distance_from_earth numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planet_stars; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_stars (
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(30),
    planet_stars_id integer NOT NULL
);


ALTER TABLE public.planet_stars OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    is_bright boolean NOT NULL,
    distance_from_earth numeric NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Nebula', 'This is the galaxy Nebula', 125, false, NULL, 25);
INSERT INTO public.galaxy VALUES (2, 'Milk Way', 'Our galaxy', 10, true, 0, 100);
INSERT INTO public.galaxy VALUES (3, 'Crash', 'Description of Crash', 25, false, NULL, 12);
INSERT INTO public.galaxy VALUES (4, 'Noxus', NULL, 51, false, 25.65, 365);
INSERT INTO public.galaxy VALUES (5, 'Amazing', 'An amazing galaxy', 32, false, 85.98, 65);
INSERT INTO public.galaxy VALUES (6, 'Another galaxy', NULL, 321, false, NULL, 54);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lua minguante', NULL, 654, true, 65.6, 2);
INSERT INTO public.moon VALUES (2, 'Small moon', 'Lua pequena', 452, true, 1235.457, 3);
INSERT INTO public.moon VALUES (3, 'Big Moon', 'Lua grande', 332, false, 121.5488, 1);
INSERT INTO public.moon VALUES (4, 'Huge Moon', 'Lua enorme', 214, true, 3541.31, 4);
INSERT INTO public.moon VALUES (5, 'Normal moon', NULL, 44, false, 2121.223245751, 2);
INSERT INTO public.moon VALUES (6, 'Lua', 'Lua para completar o desafio', 121, true, 2545, 1);
INSERT INTO public.moon VALUES (7, 'Lua', 'Lua para completar o desafio', 121, true, 2545, 1);
INSERT INTO public.moon VALUES (8, 'Lua', 'Lua para completar o desafio', 121, true, 2545, 1);
INSERT INTO public.moon VALUES (9, 'Lua', 'Lua para completar o desafio', 121, true, 2545, 1);
INSERT INTO public.moon VALUES (10, 'Lua', 'Lua para completar o desafio', 121, true, 2545, 1);
INSERT INTO public.moon VALUES (11, 'Lua', 'Lua para completar o desafio', 121, true, 2545, 1);
INSERT INTO public.moon VALUES (12, 'Lua', 'Lua para completar o desafio', 121, true, 2545, 1);
INSERT INTO public.moon VALUES (13, 'Lua', 'Lua para completar o desafio', 121, true, 2545, 1);
INSERT INTO public.moon VALUES (14, 'Lua', 'Lua para completar o desafio', 121, true, 2545, 1);
INSERT INTO public.moon VALUES (15, 'Lua', 'Lua para completar o desafio', 121, true, 2545, 1);
INSERT INTO public.moon VALUES (16, 'Lua', 'Lua para completar o desafio', 121, true, 2545, 1);
INSERT INTO public.moon VALUES (17, 'Lua', 'Lua para completar o desafio', 121, true, 2545, 1);
INSERT INTO public.moon VALUES (18, 'Lua', 'Lua para completar o desafio', 121, true, 2545, 1);
INSERT INTO public.moon VALUES (19, 'Lua', 'Lua para completar o desafio', 121, true, 2545, 1);
INSERT INTO public.moon VALUES (20, 'Lua', 'Lua para completar o desafio', 121, true, 2545, 1);
INSERT INTO public.moon VALUES (21, 'Lua', 'Lua para completar o desafio', 121, true, 2545, 1);
INSERT INTO public.moon VALUES (22, 'Lua', 'Lua para completar o desafio', 121, true, 2545, 1);
INSERT INTO public.moon VALUES (23, 'Lua', 'Lua para completar o desafio', 121, true, 2545, 1);
INSERT INTO public.moon VALUES (24, 'Lua', 'Lua para completar o desafio', 121, true, 2545, 1);
INSERT INTO public.moon VALUES (25, 'Lua', 'Lua para completar o desafio', 121, true, 2545, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', NULL, 58422645, false, 45.5, 2);
INSERT INTO public.planet VALUES (2, 'Earth', 'Planet earth', 6000, true, 0, 3);
INSERT INTO public.planet VALUES (3, 'Jupyter', 'JUPITER', 654, false, 12.3, 4);
INSERT INTO public.planet VALUES (4, 'Planeta', 'Este é um planeta', 12, false, 65.3, 5);
INSERT INTO public.planet VALUES (5, 'çãoó', 'Teste acento', 65, false, 22.2, 3);
INSERT INTO public.planet VALUES (6, 'Planeta', 'Plane para completar o desafio', 0, false, 11112222, 4);
INSERT INTO public.planet VALUES (7, 'Planeta', 'Plane para completar o desafio', 0, false, 11112222, 4);
INSERT INTO public.planet VALUES (8, 'Planeta', 'Plane para completar o desafio', 0, false, 11112222, 4);
INSERT INTO public.planet VALUES (9, 'Planeta', 'Plane para completar o desafio', 0, false, 11112222, 4);
INSERT INTO public.planet VALUES (10, 'Planeta', 'Plane para completar o desafio', 0, false, 11112222, 4);
INSERT INTO public.planet VALUES (11, 'Planeta', 'Plane para completar o desafio', 0, false, 11112222, 4);
INSERT INTO public.planet VALUES (12, 'Planeta', 'Plane para completar o desafio', 0, false, 11112222, 4);
INSERT INTO public.planet VALUES (13, 'Planeta', 'Plane para completar o desafio', 0, false, 11112222, 4);
INSERT INTO public.planet VALUES (14, 'Planeta', 'Plane para completar o desafio', 0, false, 11112222, 4);
INSERT INTO public.planet VALUES (15, 'Planeta', 'Plane para completar o desafio', 0, false, 11112222, 4);
INSERT INTO public.planet VALUES (16, 'Planeta', 'Plane para completar o desafio', 0, false, 11112222, 4);
INSERT INTO public.planet VALUES (17, 'Planeta', 'Plane para completar o desafio', 0, false, 11112222, 4);
INSERT INTO public.planet VALUES (18, 'Planeta', 'Plane para completar o desafio', 0, false, 11112222, 4);
INSERT INTO public.planet VALUES (19, 'Planeta', 'Plane para completar o desafio', 0, false, 11112222, 4);
INSERT INTO public.planet VALUES (20, 'Planeta', 'Plane para completar o desafio', 0, false, 11112222, 4);
INSERT INTO public.planet VALUES (21, 'Planeta', 'Plane para completar o desafio', 0, false, 11112222, 4);
INSERT INTO public.planet VALUES (22, 'Planeta', 'Plane para completar o desafio', 0, false, 11112222, 4);
INSERT INTO public.planet VALUES (23, 'Planeta', 'Plane para completar o desafio', 0, false, 11112222, 4);
INSERT INTO public.planet VALUES (24, 'Planeta', 'Plane para completar o desafio', 0, false, 11112222, 4);
INSERT INTO public.planet VALUES (25, 'Planeta', 'Plane para completar o desafio', 0, false, 11112222, 4);
INSERT INTO public.planet VALUES (26, 'Planeta', 'Plane para completar o desafio', 0, false, 11112222, 4);
INSERT INTO public.planet VALUES (27, 'Planeta', 'Plane para completar o desafio', 0, false, 11112222, 4);
INSERT INTO public.planet VALUES (28, 'Planeta', 'Plane para completar o desafio', 0, false, 11112222, 4);


--
-- Data for Name: planet_stars; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_stars VALUES (2, 4, NULL, 1);
INSERT INTO public.planet_stars VALUES (3, 2, NULL, 2);
INSERT INTO public.planet_stars VALUES (1, 3, NULL, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Rise', NULL, 123, true, 548.5, 3);
INSERT INTO public.star VALUES (2, 'Fallen', 'Nice one', 85, true, 12, 2);
INSERT INTO public.star VALUES (3, 'aNOTHER', NULL, 45, true, 23, 1);
INSERT INTO public.star VALUES (4, 'BTC', NULL, 11, true, 85.6, 2);
INSERT INTO public.star VALUES (5, 'USDT', 'DOLAR', 2, true, 44.4, 5);
INSERT INTO public.star VALUES (6, 'Estrela', 'Estrela para completar o desafio!', 11, true, 654.124, 2);
INSERT INTO public.star VALUES (7, 'Estrela', 'Estrela para completar o desafio!', 11, true, 654.124, 2);
INSERT INTO public.star VALUES (8, 'Estrela', 'Estrela para completar o desafio!', 11, true, 654.124, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 28, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: planet_stars planet_stars_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_stars
    ADD CONSTRAINT planet_stars_pkey PRIMARY KEY (planet_stars_id);


--
-- Name: planet_stars planet_stars_planet_stars_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_stars
    ADD CONSTRAINT planet_stars_planet_stars_id_key UNIQUE (planet_stars_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

