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
-- Name: celestial_bodies; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.celestial_bodies (
    name character varying(30) NOT NULL,
    celestial_bodies_id character varying(30) NOT NULL,
    has_life boolean,
    is_pie boolean,
    age integer,
    body_id character varying(20),
    size numeric(5,2)
);


ALTER TABLE public.celestial_bodies OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id character varying(50) NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_pie boolean,
    age integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id character varying(50) NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_pie boolean,
    age integer,
    planet_id character varying(50)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id character varying(50) NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_pie boolean,
    age integer,
    star_id character varying(50)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id character varying(50) NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_pie boolean,
    age integer,
    galaxy_id character varying(50)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: celestial_bodies; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.celestial_bodies VALUES ('sun', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.celestial_bodies VALUES ('earth', '2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.celestial_bodies VALUES ('moon', '3', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('1', 'Solar', 'Solar System', true, false, 1);
INSERT INTO public.galaxy VALUES ('2', 'mikly', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('3', 'm-102', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('4', 'NGC 6240', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('5', 'Bode', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('6', 'Black eye', NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('1', 'moon', '', true, true, 5000, '1');
INSERT INTO public.moon VALUES ('2', '2', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.moon VALUES ('3', '3', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.moon VALUES ('4', '4', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.moon VALUES ('5', '5', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.moon VALUES ('6', '6', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.moon VALUES ('7', '7', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.moon VALUES ('8', '8', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.moon VALUES ('9', '9', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.moon VALUES ('10', '10', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.moon VALUES ('11', 'a', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.moon VALUES ('12', 'b', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.moon VALUES ('13', 'c', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.moon VALUES ('14', 'd', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.moon VALUES ('15', 'e', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.moon VALUES ('16', 'f', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.moon VALUES ('17', 'g', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.moon VALUES ('18', 'h', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.moon VALUES ('19', 'i', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.moon VALUES ('20', 'j', NULL, NULL, NULL, NULL, '1');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('1', 'earth', '', true, true, 5000, '1');
INSERT INTO public.planet VALUES ('2', '1st', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.planet VALUES ('3', '2nd', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.planet VALUES ('4', '3rd', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.planet VALUES ('5', '4th', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.planet VALUES ('6', '6th', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.planet VALUES ('7', '7th', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.planet VALUES ('8', '8th', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.planet VALUES ('9', '9th', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.planet VALUES ('10', '10th', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.planet VALUES ('11', '11th', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.planet VALUES ('12', '12th', NULL, NULL, NULL, NULL, '1');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('1', 'Jupiter', '', true, false, 5, '1');
INSERT INTO public.star VALUES ('2', 'Mars', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.star VALUES ('3', 'Venus', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.star VALUES ('4', 'Pluto', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.star VALUES ('5', 'Saturn', NULL, NULL, NULL, NULL, '1');
INSERT INTO public.star VALUES ('6', 'Neptune', NULL, NULL, NULL, NULL, '1');


--
-- Name: celestial_bodies celestial_bodies_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_bodies
    ADD CONSTRAINT celestial_bodies_name_key UNIQUE (name);


--
-- Name: celestial_bodies celestial_bodies_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_bodies
    ADD CONSTRAINT celestial_bodies_pkey PRIMARY KEY (celestial_bodies_id);


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

