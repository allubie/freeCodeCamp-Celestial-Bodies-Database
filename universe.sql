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


CREATE TABLE public.extra (
    extra_id integer NOT NULL,
    name character varying NOT NULL,
    extra_type text NOT NULL,
    galaxy_id integer
);

ALTER TABLE public.extra OWNER TO freecodecamp;

CREATE SEQUENCE public.extra_extra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE public.extra_extra_id_seq OWNER TO freecodecamp;

ALTER SEQUENCE public.extra_extra_id_seq OWNED BY public.extra.extra_id;

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    galaxy_type text NOT NULL,
    approx_number_of_stars numeric,
    galaxy_group character varying
);

ALTER TABLE public.galaxy OWNER TO freecodecamp;

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    orbit_earth boolean NOT NULL,
    year_discovered numeric(4,0),
    planet_id integer
);

ALTER TABLE public.moon OWNER TO freecodecamp;

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    moons integer,
    has_rings boolean NOT NULL,
    star_id integer
);

ALTER TABLE public.planet OWNER TO freecodecamp;

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;


ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    star_type text NOT NULL,
    planets integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;


ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;

ALTER TABLE ONLY public.extra ALTER COLUMN extra_id SET DEFAULT nextval('public.extra_extra_id_seq'::regclass);


ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);

--
-- Data for: extra; Type: TABLE DATA
--
INSERT INTO public.extra VALUES (1, 'Value 1', 'active', 3);
INSERT INTO public.extra VALUES (2, 'Vslue 2', 'quiet', 6);
INSERT INTO public.extra VALUES (3, 'Value 3', 'inactive', 5);

--
-- Data for: galaxy; Type: TABLE DATA
--
INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'barred-spiral', 500000000000, 'Local Group');
INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf', 'dwarf-irregular', NULL, 'Local Group');
INSERT INTO public.galaxy VALUES (3, 'Virgo Stellar Stream', 'dwarf-spheroid', NULL, 'Local Group');
INSERT INTO public.galaxy VALUES (4, 'Sagittarius Dwarf Elliptical Galaxy', 'dwarf-spheroid', NULL, 'Local Group');
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic Cloud', 'Magellanic-spiral', 20000000000, 'Local Group');
INSERT INTO public.galaxy VALUES (6, 'Small Magellanic Cloud', 'dwarf-irregular', 3000000000, 'Local Group');


--
-- Data for: moon; Type: TABLE DATA;
--
INSERT INTO public.moon VALUES (1, 'Moon', true, 1610, 3);
INSERT INTO public.moon VALUES (2, 'Pandora', false, 1980, 4);
INSERT INTO public.moon VALUES (3, 'Miranda', false, 1984, 4);
INSERT INTO public.moon VALUES (4, 'Io', false, 1610, 5);
INSERT INTO public.moon VALUES (5, 'Vanth', false, 2005, 5);
INSERT INTO public.moon VALUES (6, 'Titania', false, 1787, 5);
INSERT INTO public.moon VALUES (7, 'Elara', false, 1905, 5);
INSERT INTO public.moon VALUES (8, 'Portia', false, 1986, 5);
INSERT INTO public.moon VALUES (9, 'Sao', false, 2002, 5);
INSERT INTO public.moon VALUES (10, 'Mab', false, 2003, 5);
INSERT INTO public.moon VALUES (11, 'Leda', false, 1974, 5);
INSERT INTO public.moon VALUES (12, 'Phobos', false, 1877, 5);
INSERT INTO public.moon VALUES (13, 'Puck', false, 1985, 5);
INSERT INTO public.moon VALUES (14, 'Thebe', false, 1989, 5);
INSERT INTO public.moon VALUES (15, 'Janus', false, 1966, 5);
INSERT INTO public.moon VALUES (16, 'Yamir', false, 2000, 5);
INSERT INTO public.moon VALUES (17, 'Namaka', false, 2005, 5);
INSERT INTO public.moon VALUES (18, 'Styx', false, 2012, 5);
INSERT INTO public.moon VALUES (19, 'Weywot', false, 2006, 5);
INSERT INTO public.moon VALUES (20, 'Cordelia', false, 1999, 5);


--
-- Data for: planet; Type: TABLE DATA;
--
INSERT INTO public.planet VALUES (1, 'Mercury', 0, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 0, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 1, false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 2, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 79, true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 82, true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 27, true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 14, true, 1);
INSERT INTO public.planet VALUES (9, 'Proxima b', NULL, false, 2);
INSERT INTO public.planet VALUES (10, 'Proxima c', NULL, false, 2);
INSERT INTO public.planet VALUES (11, 'Proxima d', NULL, false, 2);
INSERT INTO public.planet VALUES (12, 'Barnards Star b', NULL, false, 3);

--
-- Data for: star; Type: TABLE DATA;
--
INSERT INTO public.star VALUES (1, 'Sol', 'Yellow Dwarf', 8, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Red Dwarf', 3, 1);
INSERT INTO public.star VALUES (3, 'Barnards Star', 'Red Dwarf', 1, 1);
INSERT INTO public.star VALUES (4, 'Luhman 16', 'Brown Dwarf', 0, 1);
INSERT INTO public.star VALUES (5, 'W0855', 'Brown Dwarf', NULL, 1);
INSERT INTO public.star VALUES (6, 'Wolf 359', 'Red Dwarf', 2, 1);

SELECT pg_catalog.setval('public.extra_extra_id_seq', 3, true);

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_name_key UNIQUE (name);

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_pkey PRIMARY KEY (extra_id);

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);
ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);