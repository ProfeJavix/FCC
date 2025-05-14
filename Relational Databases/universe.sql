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
-- Name: category; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.category (
    category_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.category OWNER TO freecodecamp;

--
-- Name: category_category_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.category_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_category_id_seq OWNER TO freecodecamp;

--
-- Name: category_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.category_category_id_seq OWNED BY public.category.category_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    scientific_name character varying(30),
    ly_from_milky_way numeric(15,3),
    description text,
    discoverer character varying(30),
    age_in_millions integer,
    discovered_bodies integer
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
    scientific_name character varying(30),
    has_atmosphere boolean,
    is_regular boolean,
    description text,
    discoverer character varying(30),
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
    scientific_name character varying(30),
    civilizations integer,
    oceans integer,
    is_habitable boolean,
    description text,
    discoverer character varying(30),
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    scientific_name character varying(30),
    description text,
    discoverer character varying(30),
    age_in_millions integer,
    galaxy_id integer,
    category_id integer
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
-- Name: category category_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.category ALTER COLUMN category_id SET DEFAULT nextval('public.category_category_id_seq'::regclass);


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
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.category VALUES (1, 'Enana Roja', 'Estrella pequeña y fría que se ha agotado su combustible nuclear');
INSERT INTO public.category VALUES (2, 'Enana Blanca', 'Estrella caliente y densa que ha agotado su combustible nuclear');
INSERT INTO public.category VALUES (3, 'Gigante Azul', 'Estrella masiva que ha agotado su combustible nuclear y ha expandido sus capas externas');
INSERT INTO public.category VALUES (4, 'Secuencia Principal', 'Estrella en la fase principal de su vida, fusionando hidrógeno en helio en su núcleo');
INSERT INTO public.category VALUES (5, 'Supergigante', 'Estrella extremadamente luminosa y grande, muchas veces mayor que el Sol');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Vía Láctea', NULL, NULL, NULL, NULL, 13600, 200);
INSERT INTO public.galaxy VALUES (2, 'Andrómeda', NULL, NULL, NULL, NULL, 10000, 150);
INSERT INTO public.galaxy VALUES (3, 'Triángulo', NULL, NULL, NULL, NULL, 8000, 120);
INSERT INTO public.galaxy VALUES (4, 'Sistema Solar de Outer Wilds', NULL, NULL, NULL, NULL, 5000, 25);
INSERT INTO public.galaxy VALUES (5, 'Galaxia de Sombrero', NULL, NULL, NULL, NULL, 12000, 180);
INSERT INTO public.galaxy VALUES (6, 'Galaxia del Cigarro', NULL, NULL, NULL, NULL, 9000, 140);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'La Luna', NULL, true, true, 'Luna natural de la Tierra', 'Civilizaciones antiguas', 3);
INSERT INTO public.moon VALUES (2, 'Io', NULL, false, true, 'Luna volcánica de Júpiter', 'Galileo Galilei', 11);
INSERT INTO public.moon VALUES (3, 'Europa', NULL, true, true, 'Luna con océano subsuperficial', 'Galileo Galilei', 11);
INSERT INTO public.moon VALUES (4, 'Ganimedes', NULL, true, true, 'Luna más grande del Sistema Solar', 'Galileo Galilei', 11);
INSERT INTO public.moon VALUES (5, 'Calisto', NULL, false, true, 'Luna exterior de Júpiter', 'Galileo Galilei', 11);
INSERT INTO public.moon VALUES (6, 'Titán', NULL, true, true, 'Luna mayor de Saturno con atmósfera', 'Christiaan Huygens', 12);
INSERT INTO public.moon VALUES (7, 'Encélado', NULL, false, true, 'Luna con géysers de agua', 'William Herschel', 12);
INSERT INTO public.moon VALUES (8, 'Dione', NULL, false, true, 'Luna helada de Saturno', 'Giovanni Cassini', 12);
INSERT INTO public.moon VALUES (9, 'Rea', NULL, false, true, 'Segunda luna más grande de Saturno', 'Giovanni Cassini', 12);
INSERT INTO public.moon VALUES (10, 'Tétis', NULL, false, true, 'Luna con cráter Odiseo', 'Giovanni Cassini', 12);
INSERT INTO public.moon VALUES (11, 'Attlerock', NULL, false, true, 'Luna de Timber Hearth', 'Hearthianos', 5);
INSERT INTO public.moon VALUES (12, 'Hollows Lantern', NULL, false, false, 'Luna volcánica de Brittle Hollow', 'Exploradores Nomai', 6);
INSERT INTO public.moon VALUES (13, 'Luna Cuántica', NULL, false, false, 'Luna con propiage_in_millionses cuánticas', 'Desconocido', 15);
INSERT INTO public.moon VALUES (14, 'Miranda', NULL, false, true, 'Luna de Urano con geología única', 'Gerard Kuiper', 13);
INSERT INTO public.moon VALUES (15, 'Ariel', NULL, false, true, 'Luna de Urano con superficie joven', 'William Lassell', 13);
INSERT INTO public.moon VALUES (16, 'Umbriel', NULL, false, true, 'Luna oscura de Urano', 'William Lassell', 13);
INSERT INTO public.moon VALUES (17, 'Titania', NULL, false, true, 'Luna más grande de Urano', 'William Herschel', 13);
INSERT INTO public.moon VALUES (18, 'Oberón', NULL, false, true, 'Luna exterior de Urano', 'William Herschel', 13);
INSERT INTO public.moon VALUES (19, 'Tríton', NULL, true, false, 'Luna retrograda de Neptuno', 'William Lassell', 14);
INSERT INTO public.moon VALUES (20, 'Proteo', NULL, false, true, 'Luna irregular de Neptuno', 'Stephen Synnott', 14);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', NULL, 0, 0, false, 'Planeta más cercano al Sol', 'Civilizaciones antiguas', 1);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, 0, 0, false, 'Planeta más caliente del Sistema Solar', 'Civilizaciones antiguas', 1);
INSERT INTO public.planet VALUES (3, 'Tierra', NULL, 1, 5, true, 'Único planeta conocido con vida', 'Civilizaciones antiguas', 1);
INSERT INTO public.planet VALUES (4, 'Marte', NULL, 0, 0, false, 'Planeta rojo con potencial is_habitable', 'Civilizaciones antiguas', 1);
INSERT INTO public.planet VALUES (5, 'Timber Hearth', NULL, 1, 2, true, 'Planeta forestal hogar de los Hearthianos', 'Hearthianos', 1);
INSERT INTO public.planet VALUES (6, 'Brittle Hollow', NULL, 0, 0, false, 'Planeta hueco con agujero negro central', 'Exploradores Nomai', 1);
INSERT INTO public.planet VALUES (7, 'Ash Twin', NULL, 0, 0, false, 'Planeta gemelo arenoso', 'Exploradores Nomai', 1);
INSERT INTO public.planet VALUES (8, 'Ember Twin', NULL, 0, 0, false, 'Planeta gemelo volcánico', 'Exploradores Nomai', 1);
INSERT INTO public.planet VALUES (9, 'Giants Deep', NULL, 0, 10, false, 'Planeta oceánico gigante', 'Exploradores Nomai', 1);
INSERT INTO public.planet VALUES (10, 'Dark Bramble', NULL, 0, 0, false, 'Planeta infectado por enrage_in_millionseras oscuras', 'Exploradores Nomai', 1);
INSERT INTO public.planet VALUES (11, 'Júpiter', NULL, 0, 13, false, 'Planeta gaseoso más grande del Sistema Solar', 'Civilizaciones antiguas', 1);
INSERT INTO public.planet VALUES (12, 'Saturno', NULL, 0, 7, false, 'Planeta gaseoso conocido por sus anillos', 'Civilizaciones antiguas', 1);
INSERT INTO public.planet VALUES (13, 'Urano', NULL, 0, 5, false, 'Planeta gaseoso con rotación inclinada', 'Civilizaciones antiguas', 1);
INSERT INTO public.planet VALUES (14, 'Neptuno', NULL, 0, 4, false, 'Planeta gaseoso más lejano del Sol', 'Civilizaciones antiguas', 1);
INSERT INTO public.planet VALUES (15, 'Eye of the Universe', NULL, NULL, NULL, NULL, 'Se encuentra orbitando el Sol desde algun lugar', 'Yourself', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', NULL, 'Estrella principal del Sistema Solar', 'Civilizaciones antiguas', 4600, 4, 4);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', NULL, 'Sistema estelar más cercano al Sol', 'Civilizaciones antiguas', 6000, 1, 4);
INSERT INTO public.star VALUES (3, 'Sirio', NULL, 'Estrella más brillante del cielo nocturno', 'Civilizaciones antiguas', 300, 1, 4);
INSERT INTO public.star VALUES (4, 'Betelgeuse', NULL, 'Supergigante roja en Orión', 'Civilizaciones antiguas', 10, 1, 5);
INSERT INTO public.star VALUES (5, 'Rigel', NULL, 'Supergigante azul en Orión', 'Civilizaciones antiguas', 8, 1, 5);
INSERT INTO public.star VALUES (6, 'Deneb', NULL, 'Supergigante azul en el Cisne', 'Civilizaciones antiguas', 10, 1, 5);


--
-- Name: category_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.category_category_id_seq', 5, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: category category_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_name_key UNIQUE (name);


--
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (category_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_scientific_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_scientific_name_key UNIQUE (scientific_name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_scientific_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_scientific_name_key UNIQUE (scientific_name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_scientific_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_scientific_name_key UNIQUE (scientific_name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_scientific_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_scientific_name_key UNIQUE (scientific_name);


--
-- Name: star fk_galaxy_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star fk_star_category; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_category FOREIGN KEY (category_id) REFERENCES public.category(category_id);


--
-- Name: planet fk_star_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

