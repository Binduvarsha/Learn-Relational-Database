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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30),
    galaxy_id integer NOT NULL,
    planetnum integer NOT NULL,
    des character varying(30) NOT NULL,
    size character varying(30)
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
    name character varying(30),
    moon_id integer NOT NULL,
    des character varying(30) NOT NULL,
    planetnum integer NOT NULL,
    size character varying(30),
    planet_id integer NOT NULL
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30),
    planet_id integer NOT NULL,
    planetnum integer NOT NULL,
    des character varying(30) NOT NULL,
    size character varying(30),
    star_id integer NOT NULL
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: six; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.six (
    name character varying(30),
    six_id integer NOT NULL,
    unique_id integer NOT NULL,
    not_null integer NOT NULL
);


ALTER TABLE public.six OWNER TO freecodecamp;

--
-- Name: six_six_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.six_six_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.six_six_id_seq OWNER TO freecodecamp;

--
-- Name: six_six_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.six_six_id_seq OWNED BY public.six.six_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30),
    star_id integer NOT NULL,
    brightness numeric(4,1),
    star_des text,
    big boolean,
    bright boolean,
    planetno integer,
    avgcount integer,
    galaxy_id integer NOT NULL,
    planetnum integer NOT NULL,
    des character varying(30) NOT NULL,
    size character varying(30)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: six six_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.six ALTER COLUMN six_id SET DEFAULT nextval('public.six_six_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('galaxy', 1, 1, 'des', 'size');
INSERT INTO public.galaxy VALUES ('galaxy', 2, 2, 'des', 'size');
INSERT INTO public.galaxy VALUES ('galaxy', 3, 3, 'des', 'size');
INSERT INTO public.galaxy VALUES ('galaxy', 4, 4, 'des', 'size');
INSERT INTO public.galaxy VALUES ('galaxy', 5, 5, 'des', 'size');
INSERT INTO public.galaxy VALUES ('galaxy', 6, 6, 'des', 'size');
INSERT INTO public.galaxy VALUES ('galaxy', 7, 7, 'des', 'size');
INSERT INTO public.galaxy VALUES ('galaxy', 8, 8, 'des', 'size');
INSERT INTO public.galaxy VALUES ('galaxy', 9, 9, 'des', 'size');
INSERT INTO public.galaxy VALUES ('galaxy', 10, 10, 'des', 'size');
INSERT INTO public.galaxy VALUES ('galaxy', 11, 11, 'des', 'size');
INSERT INTO public.galaxy VALUES ('galaxy', 12, 12, 'des', 'size');
INSERT INTO public.galaxy VALUES ('galaxy', 13, 13, 'des', 'size');
INSERT INTO public.galaxy VALUES ('galaxy', 14, 14, 'des', 'size');
INSERT INTO public.galaxy VALUES ('galaxy', 15, 15, 'des', 'size');
INSERT INTO public.galaxy VALUES ('galaxy', 65, 16, 'des', 'size');
INSERT INTO public.galaxy VALUES ('galaxy', 17, 17, 'des', 'size');
INSERT INTO public.galaxy VALUES ('galaxy', 18, 18, 'des', 'size');
INSERT INTO public.galaxy VALUES ('galaxy', 19, 19, 'des', 'size');
INSERT INTO public.galaxy VALUES ('galaxy', 20, 20, 'des', 'size');
INSERT INTO public.galaxy VALUES ('galaxy', 16, 67, 'des', 'size');
INSERT INTO public.galaxy VALUES ('galaxy', 22, 22, 'des', 'size');
INSERT INTO public.galaxy VALUES ('galaxy', 24, 24, 'des', 'size');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon1', 1, 'des1', 1, '1', 1);
INSERT INTO public.moon VALUES ('moon1', 2, 'des2', 2, '2', 2);
INSERT INTO public.moon VALUES ('moon3', 3, 'des3', 3, '3', 3);
INSERT INTO public.moon VALUES ('moon1', 5, 'des2', 5, '5', 4);
INSERT INTO public.moon VALUES ('moon3', 4, 'des3', 4, '4', 5);
INSERT INTO public.moon VALUES ('moon1', 7, 'des2', 7, '7', 6);
INSERT INTO public.moon VALUES ('moon3', 6, 'des3', 6, '6', 7);
INSERT INTO public.moon VALUES ('moon1', 9, 'des2', 9, '9', 8);
INSERT INTO public.moon VALUES ('moon3', 8, 'des3', 8, '8', 9);
INSERT INTO public.moon VALUES ('moon1', 10, 'des2', 10, '10', 10);
INSERT INTO public.moon VALUES ('moon1', 11, 'des2', 11, '11', 11);
INSERT INTO public.moon VALUES ('moon1', 12, 'des2', 12, '12', 12);
INSERT INTO public.moon VALUES ('moon1', 15, 'des2', 15, '15', 13);
INSERT INTO public.moon VALUES ('moon1', 14, 'des2', 14, '14', 14);
INSERT INTO public.moon VALUES ('moon1', 13, 'des2', 13, '13', 15);
INSERT INTO public.moon VALUES ('moon1', 18, 'des2', 18, '18', 16);
INSERT INTO public.moon VALUES ('moon1', 17, 'des2', 17, '17', 17);
INSERT INTO public.moon VALUES ('moon1', 16, 'des2', 16, '16', 18);
INSERT INTO public.moon VALUES ('moon1', 20, 'des2', 20, '20', 19);
INSERT INTO public.moon VALUES ('moon1', 19, 'des2', 19, '19', 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('planet1', 1, 1, 'des1', '1', 1);
INSERT INTO public.planet VALUES ('planet1', 2, 2, 'des1', '2', 2);
INSERT INTO public.planet VALUES ('planet1', 3, 3, 'des1', '3', 3);
INSERT INTO public.planet VALUES ('planet1', 4, 4, 'des1', '4', 4);
INSERT INTO public.planet VALUES ('planet1', 5, 5, 'des1', '5', 5);
INSERT INTO public.planet VALUES ('planet1', 6, 6, 'des1', '6', 6);
INSERT INTO public.planet VALUES ('planet1', 7, 7, 'des1', '7', 7);
INSERT INTO public.planet VALUES ('planet1', 8, 8, 'des1', '8', 8);
INSERT INTO public.planet VALUES ('planet1', 9, 9, 'des1', '9', 9);
INSERT INTO public.planet VALUES ('planet1', 10, 10, 'des1', '10', 10);
INSERT INTO public.planet VALUES ('planet1', 11, 11, 'des1', '11', 11);
INSERT INTO public.planet VALUES ('planet1', 12, 12, 'des1', '12', 12);
INSERT INTO public.planet VALUES ('planet1', 14, 14, 'des1', '14', 15);
INSERT INTO public.planet VALUES ('planet1', 15, 15, 'des1', '15', 16);
INSERT INTO public.planet VALUES ('planet1', 16, 16, 'des1', '16', 17);
INSERT INTO public.planet VALUES ('planet1', 17, 17, 'des1', '17', 18);
INSERT INTO public.planet VALUES ('planet1', 18, 18, 'des1', '18', 19);
INSERT INTO public.planet VALUES ('planet1', 19, 19, 'des1', '19', 20);
INSERT INTO public.planet VALUES ('planet1', 13, 13, 'des', '13', 13);
INSERT INTO public.planet VALUES ('planet1', 20, 20, 'des', '13', 20);


--
-- Data for Name: six; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.six VALUES ('six', 1, 1, 1);
INSERT INTO public.six VALUES ('six', 2, 2, 2);
INSERT INTO public.six VALUES ('six', 3, 3, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('star1', 1, 1.1, 'des', true, true, 1, 1, 1, 1, 'des', 'des');
INSERT INTO public.star VALUES ('star1', 2, 1.1, 'des', true, true, 1, 1, 2, 2, 'des', 'des');
INSERT INTO public.star VALUES ('star1', 3, 1.1, 'des', true, true, 1, 1, 3, 3, 'des', 'des');
INSERT INTO public.star VALUES ('star1', 4, 1.1, 'des', true, true, 1, 1, 4, 4, 'des', 'des');
INSERT INTO public.star VALUES ('star1', 5, 1.1, 'des', true, true, 1, 1, 5, 5, 'des', 'des');
INSERT INTO public.star VALUES ('star1', 6, 1.1, 'des', true, true, 1, 1, 6, 6, 'des', 'des');
INSERT INTO public.star VALUES ('star1', 8, 1.1, 'des', true, true, 1, 1, 8, 8, 'des', 'des');
INSERT INTO public.star VALUES ('star1', 9, 1.1, 'des', true, true, 1, 1, 9, 9, 'des', 'des');
INSERT INTO public.star VALUES ('star1', 10, 1.1, 'des', true, true, 1, 1, 10, 10, 'des', 'des');
INSERT INTO public.star VALUES ('star1', 11, 1.1, 'des', true, true, 1, 1, 11, 11, 'des', 'des');
INSERT INTO public.star VALUES ('star1', 12, 1.1, 'des', true, true, 1, 1, 12, 12, 'des', 'des');
INSERT INTO public.star VALUES ('star1', 7, 1.1, 'des', true, true, 1, 1, 7, 7, 'des', 'des');
INSERT INTO public.star VALUES ('star1', 13, 1.1, 'des', true, true, 1, 1, 13, 13, 'des', 'des');
INSERT INTO public.star VALUES ('star1', 14, 1.1, 'des', true, true, 1, 1, 14, 14, 'des', 'des');
INSERT INTO public.star VALUES ('star1', 15, 1.1, 'des', true, true, 1, 1, 15, 15, 'des', 'des');
INSERT INTO public.star VALUES ('star1', 17, 1.1, 'des', true, true, 1, 1, 17, 17, 'des', 'des');
INSERT INTO public.star VALUES ('star1', 18, 1.1, 'des', true, true, 1, 1, 18, 18, 'des', 'des');
INSERT INTO public.star VALUES ('star1', 19, 1.1, 'des', true, true, 1, 1, 19, 19, 'des', 'des');
INSERT INTO public.star VALUES ('star1', 20, 1.1, 'des', true, true, 1, 1, 20, 20, 'des', 'des');
INSERT INTO public.star VALUES ('star1', 16, 1.1, 'des', true, true, 1, 1, 16, 16, 'des', 'des');
INSERT INTO public.star VALUES ('star1', 22, 1.1, 'des', true, true, 1, 1, 22, 22, 'des', 'des');
INSERT INTO public.star VALUES ('star1', 24, 1.1, 'des', true, true, 1, 1, 24, 24, 'des', 'des');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 25, true);


--
-- Name: six_six_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.six_six_id_seq', 1, false);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_planetnum_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_planetnum_key UNIQUE (planetnum);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_planetnum_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planetnum_key UNIQUE (planetnum);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planetnum_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planetnum_key UNIQUE (planetnum);


--
-- Name: six six_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.six
    ADD CONSTRAINT six_pkey PRIMARY KEY (six_id);


--
-- Name: six six_unique_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.six
    ADD CONSTRAINT six_unique_id_key UNIQUE (unique_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_planetnum_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planetnum_key UNIQUE (planetnum);


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

