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
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth numeric NOT NULL,
    shape text NOT NULL,
    age_in_years integer NOT NULL,
    has_blackhole boolean NOT NULL,
    numberofstars integer NOT NULL
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
    distance_from_planet numeric NOT NULL,
    is_water boolean,
    has_atmosphere boolean NOT NULL,
    color text NOT NULL,
    radius_in_km integer NOT NULL
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
    distance_from_earth numeric NOT NULL,
    is_water boolean,
    has_moon boolean NOT NULL,
    num_moons integer NOT NULL,
    temp_in_c integer NOT NULL
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
    distance_from_earth numeric NOT NULL,
    is_red boolean,
    has_planet boolean NOT NULL,
    num_planet integer NOT NULL,
    temp_in_k double precision NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: student; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.student (
    student_id integer NOT NULL,
    name character varying(30) NOT NULL,
    class integer NOT NULL,
    has_gf boolean NOT NULL
);


ALTER TABLE public.student OWNER TO freecodecamp;

--
-- Name: student_student_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.student_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_student_id_seq OWNER TO freecodecamp;

--
-- Name: student_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.student_student_id_seq OWNED BY public.student.student_id;


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
-- Name: student student_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.student ALTER COLUMN student_id SET DEFAULT nextval('public.student_student_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 25000, 'Barred Spiral', 1360000, true, 100000);
INSERT INTO public.galaxy VALUES (2, 'Anderomeda', 250000, 'Spiral', 13600000, false, 1000000);
INSERT INTO public.galaxy VALUES (3, 'Triangulam', 350000, 'Spiral', 13600000, false, 10000000);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 1630000, 'Spiral', 13600000, false, 10000000);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 1630000, 'Spiral', 13600000, false, 10000000);
INSERT INTO public.galaxy VALUES (6, 'Canis major dwarf', 1600000, 'Irregular', 70006000, false, 10000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1, 384400, false, false, 'grey', 1737);
INSERT INTO public.moon VALUES (2, 'phobos', 2, 9377, false, false, 'grey', 11);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, 32345, false, false, 'grey', 6);
INSERT INTO public.moon VALUES (4, 'To', 3, 421800, false, true, 'yellow', 1821);
INSERT INTO public.moon VALUES (5, 'Europa', 3, 32938, true, true, 'grey', 32039);
INSERT INTO public.moon VALUES (6, 'Ganymede', 3, 32938, true, true, 'grey', 32039);
INSERT INTO public.moon VALUES (7, 'Callissto', 3, 323, true, false, 'white', 32038);
INSERT INTO public.moon VALUES (40, 'Mimas', 1, 384400, false, false, 'grey', 1737);
INSERT INTO public.moon VALUES (41, 'Enceladus', 2, 9377, false, false, 'grey', 11);
INSERT INTO public.moon VALUES (42, 'Tethys', 2, 23460, false, false, 'grey', 6);
INSERT INTO public.moon VALUES (43, 'Dione', 3, 421800, false, false, 'yellow', 1821);
INSERT INTO public.moon VALUES (44, 'Rhea', 3, 671100, true, true, 'white', 1565);
INSERT INTO public.moon VALUES (46, 'Titan', 1, 384400, false, false, 'grey', 1737);
INSERT INTO public.moon VALUES (47, 'Iapetus', 2, 9377, false, false, 'grey', 11);
INSERT INTO public.moon VALUES (48, 'Miranda', 2, 23460, false, false, 'grey', 6);
INSERT INTO public.moon VALUES (49, 'Ariel', 3, 421800, false, false, 'yellow', 1821);
INSERT INTO public.moon VALUES (50, 'Umbriel', 3, 671100, true, true, 'white', 1565);
INSERT INTO public.moon VALUES (51, 'Titania', 1, 3800, true, false, 'grey', 1737);
INSERT INTO public.moon VALUES (52, 'Oberon', 2, 9377, false, true, 'black', 11);
INSERT INTO public.moon VALUES (53, 'Triton', 5, 23460, false, false, 'black', 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', 1, 77, false, false, 0, 167);
INSERT INTO public.planet VALUES (2, 'mars', 1, 32, false, true, 0, 76);
INSERT INTO public.planet VALUES (3, 'Venus', 1, 34, true, true, 3, 89);
INSERT INTO public.planet VALUES (4, 'Earth', 1, 77, false, true, 0, 197);
INSERT INTO public.planet VALUES (5, 'Jupiter', 2, 32, false, true, 0, 96);
INSERT INTO public.planet VALUES (6, 'Saturn', 2, 34, true, true, 3, 80);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 77, false, false, 0, 197);
INSERT INTO public.planet VALUES (8, 'Neptunee', 2, 32, true, true, 0, 96);
INSERT INTO public.planet VALUES (9, 'Kepler', 2, 34, true, false, 3, 90);
INSERT INTO public.planet VALUES (10, 'Ross', 6, 77, false, false, 0, 197);
INSERT INTO public.planet VALUES (11, 'Proxima', 5, 32, false, true, 0, 95);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-08', 4, 34, false, false, 3, 70);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 149.6, false, true, 8, 5778, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 4.3, false, true, 3, 5790, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 642.5, true, false, 0, 3600, 1);
INSERT INTO public.star VALUES (4, 'Vega', 25.04, false, true, 5, 9601, 1);
INSERT INTO public.star VALUES (5, 'Polaris', 433.8, false, false, 0, 5778, 1);
INSERT INTO public.star VALUES (6, 'Sirius', 8.6, false, false, 0, 5778, 1);


--
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.student VALUES (1, 'Ishank', 4, true);
INSERT INTO public.student VALUES (2, 'Preet', 5, true);
INSERT INTO public.student VALUES (3, 'Ayush', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 53, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: student_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.student_student_id_seq', 3, true);


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
-- Name: student student_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_name_key UNIQUE (name);


--
-- Name: student student_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (student_id);


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

