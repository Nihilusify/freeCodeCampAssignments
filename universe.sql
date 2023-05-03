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
-- Name: comments; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comments (
    comments_id integer NOT NULL,
    name character varying(60) NOT NULL,
    author character varying(30)
);


ALTER TABLE public.comments OWNER TO freecodecamp;

--
-- Name: comments_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comments_comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_comments_id_seq OWNER TO freecodecamp;

--
-- Name: comments_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comments_comments_id_seq OWNED BY public.comments.comments_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    num_of_stars integer,
    color character varying(20)
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
    planet_id integer NOT NULL,
    age_in_millions_of_years numeric(6,1),
    has_life boolean
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
    star_id integer NOT NULL,
    age_in_millions_of_years numeric(6,1),
    has_life boolean
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    age_in_millions_of_years numeric(6,1),
    num_of_planets integer
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
-- Name: comments comments_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comments ALTER COLUMN comments_id SET DEFAULT nextval('public.comments_comments_id_seq'::regclass);


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
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comments VALUES (1, 'Thank you to:', 'Terence');
INSERT INTO public.comments VALUES (2, 'freeCodeCamp', 'Terence');
INSERT INTO public.comments VALUES (3, 'and chatGPT for dummy data', 'Terence');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromedas Legacy', 'A massive spiral galaxy known for its distinctive dust lanes and prominent central bulge.', 400, 'Blue');
INSERT INTO public.galaxy VALUES (2, 'Crimson Nebula', 'An irregular galaxy located in the midst of a large bright nebula.', 30, 'Red');
INSERT INTO public.galaxy VALUES (3, 'Pheonix Rising', 'A barred spiral galaxy featuring a bright central bar and numerous star-forming regions.', 120, 'Yellow');
INSERT INTO public.galaxy VALUES (4, 'Dark Matter Dominion', 'An elliptical galaxy that is particularly rich in dark matter, with little gas or dust.', 200, 'Purple');
INSERT INTO public.galaxy VALUES (5, 'Cosmic Collision', 'An interacting pair of spiral galaxies in the midst of a dramatic collision.', 150, 'Pink');
INSERT INTO public.galaxy VALUES (6, 'Blue Horizon', 'A beautiful spiral galaxy with a prominent blue color and many star-forming regions.', 80, 'Blue');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Triton', 6, 4500.0, false);
INSERT INTO public.moon VALUES (2, 'Charon', 9, 4600.0, false);
INSERT INTO public.moon VALUES (3, 'Enceladus', 2, 4500.0, true);
INSERT INTO public.moon VALUES (4, 'Deimos', 8, 4500.0, false);
INSERT INTO public.moon VALUES (5, 'Phobos', 8, 4500.0, false);
INSERT INTO public.moon VALUES (6, 'Titans Shadow', 5, 4500.0, false);
INSERT INTO public.moon VALUES (7, 'Rhea', 2, 4600.0, false);
INSERT INTO public.moon VALUES (8, 'Mimas', 2, 4500.0, false);
INSERT INTO public.moon VALUES (9, 'Miranda', 3, 4500.0, false);
INSERT INTO public.moon VALUES (10, 'Umbriel', 3, 4500.0, false);
INSERT INTO public.moon VALUES (11, 'Titans Companion', 5, 4500.0, false);
INSERT INTO public.moon VALUES (12, 'Larissa', 6, 4500.0, false);
INSERT INTO public.moon VALUES (13, 'Janus', 2, 4500.0, false);
INSERT INTO public.moon VALUES (14, 'Callisto', 2, 4600.0, false);
INSERT INTO public.moon VALUES (15, 'Oberon', 3, 4500.0, false);
INSERT INTO public.moon VALUES (16, 'Europas Companion', 10, 4500.0, false);
INSERT INTO public.moon VALUES (17, 'Tethys', 2, 4600.0, false);
INSERT INTO public.moon VALUES (18, 'Hyperions Shadow', 11, 4500.0, false);
INSERT INTO public.moon VALUES (19, 'Iapetus Companion', 9, 4500.0, false);
INSERT INTO public.moon VALUES (20, 'Europas Twin', 10, 4500.0, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Eurydice', 2, 2000.0, false);
INSERT INTO public.planet VALUES (2, 'Gaia', 4, 4600.0, true);
INSERT INTO public.planet VALUES (3, 'Nereid', 6, 1300.0, false);
INSERT INTO public.planet VALUES (4, 'Kepler', 3, 8200.0, false);
INSERT INTO public.planet VALUES (5, 'Helene', 1, 6800.0, true);
INSERT INTO public.planet VALUES (6, 'Titan', 5, 4500.0, false);
INSERT INTO public.planet VALUES (7, 'Calypso', 2, 500.0, false);
INSERT INTO public.planet VALUES (8, 'Pandora', 4, 3800.0, true);
INSERT INTO public.planet VALUES (9, 'Iapetus', 1, 4600.0, false);
INSERT INTO public.planet VALUES (10, 'Europa', 6, 4500.0, true);
INSERT INTO public.planet VALUES (11, 'Atlas', 3, 2100.0, false);
INSERT INTO public.planet VALUES (12, 'Hyperion', 5, 3500.0, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Solaris', 1, 4.6, 8);
INSERT INTO public.star VALUES (2, 'Vega', 2, 0.4, 2);
INSERT INTO public.star VALUES (3, 'Sirius', 1, 0.2, 4);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 4, 8.5, 0);
INSERT INTO public.star VALUES (5, 'Alpha Centauri', 4, 6.5, 3);
INSERT INTO public.star VALUES (6, 'Polaris', 6, 0.1, 1);


--
-- Name: comments_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comments_comments_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: comments comments_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_name_key UNIQUE (name);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (comments_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

