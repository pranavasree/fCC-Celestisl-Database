codeally@a55a283aa6e7:~/project$ psql --username=freecodecamp dbname=postgres
Border style is 2.
Pager usage is off.
psql (12.9 (Ubuntu 12.9-2.pgdg20.04+1))
Type "help" for help.

postgres=> DROP DATABASE universe;
DROP DATABASE
postgres=> CREATE DATABASE universe;
CREATE DATABASE
postgres=> \c universe
You are now connected to database "universe" as user "freecodecamp".
universe=> ALTER DATABASE universe OWNER TO freecodecamp;
ALTER DATABASE
universe=> CRAETE TABLE public.galaxy( galaxy_id integer NOTNULL,
universe(> name character varying NOT NULL,
universe(> with_earth boolean,
universe(> has_life boolean,
universe(> size integer,
universe(> apparent_magnitude numeric,
universe(> radius integer,
universe(> description text NOT NULL);
ERROR:  syntax error at or near "CRAETE"
LINE 1: CRAETE TABLE public.galaxy( galaxy_id integer NOTNULL,
        ^
universe=> CREATE TABLE public.galaxy( galaxy_id integer NOTNULL,
name character varying NOT NULL,
with_earth boolean,
has_life boolean,
size integer,
apparent_magnitude numeric,
radius integer,
description text NOT NULL);
ERROR:  syntax error at or near "NOTNULL"
LINE 1: CREATE TABLE public.galaxy( galaxy_id integer NOTNULL,
                                                      ^
universe=> CREATE TABLE public.galaxy( galaxy_id integer NOT NULL,
name character varying NOT NULL,
with_earth boolean,
has_life boolean,
size integer,
apparent_magnitude numeric,
radius integer,
description text NOT NULL);
CREATE TABLE
universe=> ALTER TABLE public.galaxy OWNER TO freecodecamp;
ALTER TABLE
universe=> CREATE SEQUENCE public.galaxy_galaxy_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
CREATE SEQUENCE
universe=> ALTER TABLE public.galaxy_galaxy_id_ seq OWNER TO freecodecamp;
ERROR:  syntax error at or near "seq"
LINE 1: ALTER TABLE public.galaxy_galaxy_id_ seq OWNER TO freecodeca...
                                             ^
universe=> ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;
ALTER TABLE
universe=> ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;
ALTER SEQUENCE
universe=> CREATE TABLE public.moon(moon_id integer NOT NULL,
universe(> name character varying NOT NULL,
universe(> has_atmosphere boolean,
universe(> has_life boolean,
universe(> orbital_speed integer,
universe(> apparent_magnitude numeric,
universe(> radius integer,
universe(> description text NOT NULL,
universe(> planet_id integer);
CREATE TABLE
universe=> ALTER TABLE public.moon OWNER TO freecodecamp;
ALTER TABLE
universe=> CREATE SEQUENCE public.moon_moon_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
CREATE SEQUENCE
universe=> ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;
ALTER TABLE
universe=> ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;
ALTER SEQUENCE
universe=> CREATE TABLE public.pair(
universe(> pair_id integer NOT NULL,
universe(> name character varying NOT NULL,
universe(> galaxy_id integer,
universe(> star_id integer,
universe(> planet_id integer,
universe(> moon_id integer);
CREATE TABLE
universe=> ALTER TABLE public.pair OWNER TO freecodecamp;
ALTER TABLE
universe=> CREATE SEQUENCE public.pair_pair_id_seq AS integer STRAT WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ERROR:  syntax error at or near "STRAT"
LINE 1: ...REATE SEQUENCE public.pair_pair_id_seq AS integer STRAT WITH...
                                                             ^
universe=> CREATE SEQUENCE public.pair_pair_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
CREATE SEQUENCE
universe=> ALTER TABLE public.pair_pair_id_seq OWNER TO freecodecamp;
ALTER TABLE
universe=> ALTER SEQUENCE public.pair_pair_id_seq OWEND BY public.pair.pair_id;
ERROR:  syntax error at or near "OWEND"
LINE 1: ALTER SEQUENCE public.pair_pair_id_seq OWEND BY public.pair....
                                               ^
universe=> ALTER SEQUENCE public.pair_pair_id_seq OWNED BY public.pair.pair_id;
ALTER SEQUENCE
universe=> CREATE TABLE public.planet(planet_id integer NOT NULL, name character varying NOT NULL, has_satellites boolean, has_life boolean, orbital_speed integer, apparent_magnitude numeric, radius integer, description text NOT NULL, star_id integer);
CREATE TABLE
universe=> ALTER TABLE public.planet OWNER TO freecodecamp;
ALTER TABLE
universe=> CREATE SEQUENCE public.planet_planet_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
CREATE SEQUENCE
universe=> ALTER TABLE public.planet_planet_id_seq OWNER TO freecocecamp;
ERROR:  role "freecocecamp" does not exist
universe=> ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;
ALTER TABLE
universe=> ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_seq;
ERROR:  column "planet_seq" of relation "planet" does not exist
universe=> ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;
ALTER SEQUENCE
universe=> CREATE TABLE public.star(star_id integer NOT NULL, name character varying NOT NULL, with_earth boolean,
universe(> has_life boolean, age integer, apparent_magnitude numeric, radius integer, description text NOT NULL, galaxy_id integer);
CREATE TABLE
universe=> ALTER TABLE public.star OWNER TO freecodecamp;
ALTER TABLE
universe=> CRAETE SEQUENCE public.star_star_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ERROR:  syntax error at or near "CRAETE"
LINE 1: CRAETE SEQUENCE public.star_star_id_seq AS integer START WIT...
        ^
universe=> CREATE SEQUENCE public.star_star_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
CREATE SEQUENCE
universe=> ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;
ALTER TABLE
universe=> ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;
ALTER SEQUENCE
universe=> ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);
ALTER TABLE
universe=> ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);
ALTER TABLE
universe=> ALTER TABLE ONLY public.pair ALTER COLUMN pair_id SET DEFAULT nextval('public.pair_pair_id_seq'::regclass);
ALTER TABLE
universe=> ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);
ALTER TABLE
universe=> ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);
ALTER TABLE
universe=> INSERT INTO public.galaxy VALUES (1, 'Milky_way', true, true, 185000, 11.2, 25000000,'The Milky Way is the galaxy that includes our Solar System');
INSERT 0 1
universe=> INSERT INTO public.galaxy VALUES (2, 'Antennae_Galaxies',false,false,500000,11.2,45000000,'The Antennae Galaxies are undergoing a galactic collisions.');
INSERT 0 1
universe=> INSERT INTO public.galaxy VALUES (3,'Andromeda_Galaxy',false,false,220000,3.44,24500000,'The Andromeda Galaxy is a barred spiral galaxy');
INSERT 0 1
universe=> INSERT INTO public.galaxy VALUES (4,'Triangualr galaxy',false,false,60000,5.72,3200000,'the triangular galaxy is a spiral galaxy');
INSERT 0 1
universe=> INSERT INTO public.galaxy VALUES(5,'Centaurus galaxy',false,false,60000,6.84,10000000,'centarus galaxy');INSERT 0 1
universe=> INSERT INTO public.galaxy VALUES(6,'hoags_galaxy',false,false,121000,16.2,12100000,'hoags object');
INSERT 0 1
universe=> INSERT INTO public.moon VALUES(1,'moon',true,false,1,2.5,1737,'the only');
INSERT 0 1
universe=> INSERT INTO public.moon VALUES(1,'io',true,false,17,5,1821,'the innermost');
INSERT 0 1
universe=> INSERT INTO public.moon VALUES(3,'europa',true,false,13,5,1560,'the smallest');
INSERT 0 1
universe=> INSERT INTO public.moon VALUES(4,'ganymede',true,false,10,4.61,2634,'the largest');
INSERT 0 1
universe=> INSERT INTO public.moon VALUES(5,'callisto',true,false,8,5,2410,'the second');
INSERT 0 1
universe=> INSERT INTO public.moon VALUES(6,'mimas',false,false,1,12.9,198,'amoon');
INSERT 0 1
universe=> INSERT INTO public.moon VALUES(7,'enceladus', true,false,14,11.7,252,'the sixth');
INSERT 0 1
universe=> INSERT INTO public.moon VALUES(8,'tethys',false,false,1,10.2,1060,'a mid-size');
ERROR:  syntax error at or near "8"
LINE 1: INSERT INTO public.moonVALUES(8,'tethys',false,false,11,10.2...
                                      ^
universe=> INSERT INTO public.moon VALUES(8,'tethys',false,false,11,10.2,1060,'a mid-size');
INSERT 0 1
universe=> INSERT INTO public.moon VALUES(9, 'dione',false, false,10,10,561,'amoon of');
INSERT 0 1
universe=> INSERT INTO public.moon VALUES(10,'titan', true,true,5,8,2574,'sturn');
INSERT 0 1
universe=> INSERT INTO public.moon VALUES(11,'rhea',true, false, 8,10,763,' sl moon');
INSERT 0 1
universe=> INSERT INTO public.moon VALUES(12,'lapteaus',false,false,3,10,1469,'sttiliet');
INSERT 0 1
universe=> INSERT INTO public.moon VALUES(13,'hyperion',false,false,5,14.1,270,'satuyshn');
INSERT 0 1
universe=> INSERT INTO public.moon VALUES(14,'miranda',false,false,3,10.2,235,'uranus');
INSERT 0 1
universe=> INSERT INTO public.moon VALUES(15,'ariel',false,false,5,1404,578,'27 moons');
INSERT 0 1
universe=> INSERT INTO public.moon VALUES(16,'umbreil',true,false,4,14.5,584,'fghjkl');
INSERT 0 1
universe=> INSERT INTO public.moon VALUES(17,'titania',true,false,3,13.9,788,'the moonsghj');
INSERT 0 1
universe=> INSERT INTO public.moon VALUES(18,'oberon',false,false,3,14.1,761,'the outermost');
INSERT 0 1
universe=> INSERT INTO public.moon VALUES(19,'triton', true,false,4,13.47,1353,'natural');
INSERT 0 1
universe=> INSERT INTO public.moon VALUES(20,'charon',false,false,1,16.8,606,'pluto');
INSERT 0 1
universe=> INSERT INTO public.pair VALUES(1,'pair_earth',1,1,3,1);INSERT 0 1
universe=> INSERT INTO public.pair VALUES(1,'pair_jupiter',1,1,5,2);
INSERT 0 1
universe=> INSERT INTO public.pair VALUES(1,'pair_neptune',1,1,8,19);
INSERT 0 1
universe=> INSERT INTO public.planet VALUES(1,'mercury',false,false,47,7.25,2439,'smallest',1);
INSERT 0 1
universe=> INSERT INTO public.planet VALUES(1,'mercury',false,false,35,2.89,6051,'second',1);
INSERT 0 1
universe=> INSERT INTO public.planet VALUES(3,'earth',true,true,29,2.89,6051,'third',1);
INSERT 0 1
universe=> INSERT INTO public.planet VALUES(4,'mars',true,false,29,4.89,6851,'fouth',1);
INSERT 0 1
universe=> INSERT INTO public.planet VALUES(5,'jupiter',true,false,39,4.59,6857,'fifth',1);
INSERT 0 1
universe=> INSERT INTO public.planet VALUES(6,'saturn',true,false,39,4.59,6867,'sixth',1);
INSERT 0 1
universe=> INSERT INTO public.planet VALUES(7,'uranus',true,false,59,4.69,6967,'seven',1);
INSERT 0 1
universe=> INSERT INTO public.planet VALUES(8,'neptune',true,false,39,5.69,6969,'eight',1);
INSERT 0 1
universe=> INSERT INTO public.planet VALUES(9,'pluto',true,false,99,5.59,6959,'nine',1);
INSERT 0 1
universe=> INSERT INTO public.planet VALUES(10,'make',true,false,99,5.69,6999,'ten',1);
INSERT 0 1
universe=> INSERT INTO public.planet VALUES(11,'haumea',true,false,99,6.69,6996,'eleven',1);
INSERT 0 1
universe=> INSERT INTO public.planet VALUES(12,'quoar',true,false,98,6.79,9996,'tweleve',1);
INSERT 0 1
universe=> INSERT INTO public.star VALUES(1,'sun',true,false,4600,4.83,1,'thesun',1);
INSERT 0 1
universe=> INSERT INTO public.star VALUES(2,'stephen',false,false,4600,4.84,150,'rdn',2);
INSERT 0 1
universe=> INSERT INTO public.star VALUES(3,'uy',false,false,4660,4.94,1550,'rkn',3);
INSERT 0 1
universe=> INSERT INTO public.star VALUES(4,'vy',false,false,4650,4.93,1540,'rpn',4);
INSERT 0 1
universe=> INSERT INTO public.star VALUES(5,'ky',false,false,3650,5.93,1560,'rpp',5);
INSERT 0 1
universe=> INSERT INTO public.star VALUES(6,'pz',false,false,3950,5.92,1460,'kpp',6);
INSERT 0 1
universe=> SELECT pg_catalog.setval('public.galaxy_id_seq',6,true);ERROR:  relation "public.galaxy_id_seq" does not exist
LINE 1: SELECT pg_catalog.setval('public.galaxy_id_seq',6,true);
                                 ^
universe=> SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq',6,true);
+--------+
| setval |
+--------+
|      6 |
+--------+
(1 row)

universe=> SELECT pg_catalog.setval('public.moon_moon_id_seq',20,true);
+--------+
| setval |
+--------+
|     20 |
+--------+
(1 row)

universe=> SELECT pg_catalog.setval('public.pair_pair_id_seq',3,true);
+--------+
| setval |
+--------+
|      3 |
+--------+
(1 row)

universe=> SELECT pg_catalog.setval('public.pair_pair_id_seq',3,true);
+--------+
| setval |
+--------+
|      3 |
+--------+
(1 row)

universe=> SELECT pg_catalog.setval('public.planet_planet_id_seq',12,true);
+--------+
| setval |
+--------+
|     12 |
+--------+
(1 row)

universe=> SELECT pg_catalog.setval('public.star_star_id_seq',6,true);
+--------+
| setval |
+--------+
|      6 |
+--------+
(1 row)

universe=> ALTER TABLE ONLY public.galaxy ADD CONTRAINT galaxy_name_key UNIQUE (name);
ERROR:  syntax error at or near "("
LINE 1: ...Y public.galaxy ADD CONTRAINT galaxy_name_key UNIQUE (name);
                                                                ^
universe=> ALTER TABLE ONLY public.galaxy ADD CONTRAINT galaxy_name_key UNIQUE(name);
ERROR:  syntax error at or near "("
LINE 1: ...LY public.galaxy ADD CONTRAINT galaxy_name_key UNIQUE(name);
                                                                ^
universe=> ALTER TABLE ONLY public.galaxy ADD CONSTRAINT galaxy_name_key UNIQUE(name);
ALTER TABLE
universe=> ALTER TABLE ONLY public.galaxy ADD CONSTRAINT galaxy_pkey PRIMARY KEY(galaxy_id);
ALTER TABLE
universe=> ALTER TABLE ONLY public.moon ADD CONSTRAINT moon_name_key UNIQUE(name);
ALTER TABLE
universe=> ALTER TABLE ONLY public.moon ADD CONSTRAINT moon_pkey PRIMARY KEY(moon_id);
ERROR:  could not create unique index "moon_pkey"
DETAIL:  Key (moon_id)=(1) is duplicated.
universe=> DELETE FROM moon WHERE name='io';
DELETE 1
universe=> INSERT INTO public.moon VALUES(2,'io',true,false,17,5,1921,'innermost',5);
INSERT 0 1
universe=> ALTER TABLE ONLY public.moon ADD CONSTRAINT moon_pkey PRIMARY KEY(moon_id);
ALTER TABLE
universe=> ALTER TABLE ONLY public.pair ADD CONSTRAINT pair_name_key UNIQUE(name);
ALTER TABLE
universe=> ALTER TABLE ONLY public.pair ADD CONSTRAINT pair_pkey PRIMARY KEY(pair_id);
ERROR:  could not create unique index "pair_pkey"
DETAIL:  Key (pair_id)=(1) is duplicated.
universe=> DELETE FROM pair WHERE name='pair_jupiter';DELETE 1
universe=> DELETE FROM pair WHERE name='pair_neptune';
DELETE 1
universe=> INSERT INTO public.pair VALUES(2,'pair_jupiter',1,1,5,2);
INSERT 0 1
universe=> INSERT INTO public.pair VALUES(3,'pair_neptune',1,1,8,19);
INSERT 0 1
universe=> ALTER TABLE ONLY public.pair ADD CONSTRAINT pair_pkey PRIMARY KEY(pair_id);
ALTER TABLE
universe=> ALTER TABLE ONLY planet.pair ADD CONSTRAINT planet_name_key UNIQUE(name);
ERROR:  schema "planet" does not exist
universe=> ALTER TABLE ONLY public.planet ADD CONSTRAINT planet_name_key UNIQUE(name);
ERROR:  could not create unique index "planet_name_key"
DETAIL:  Key (name)=(mercury) is duplicated.
universe=> DELETE FROM planet WHERE description='second';DELETE 1
universe=> INSERT INTO public.planet VALUES(2,'venus',false,false,35,2.9,6015.'second',1);
ERROR:  syntax error at or near "'second'"
LINE 1: ...c.planet VALUES(2,'venus',false,false,35,2.9,6015.'second',1...
                                                             ^
universe=> INSERT INTO public.planet VALUES(2,'venus',false,false,35,2.9,6015,'second',1);
INSERT 0 1
universe=> ALTER TABLE ONLY public.planet ADD CONSTRAINT planet_name_key UNIQUE(name);
ALTER TABLE
universe=> ALTER TABLE ONLY public.planet ADD CONSTRAINT planet_pkey PRIMARY KEY(planet_id);
ALTER TABLE
universe=> ALTER TABLE ONLY public.star ADD CONSTRAINT star_name_key UNIQUE(name);
ALTER TABLE
universe=> ALTER TABLE ONLY public.star ADD CONSTRAINT star_pkey PRIMARY KEY(star_id);
ALTER TABLE
universe=> ALTER TABLE ONLY public.moon ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet
universe-> ALTER TABLE ONLY public.moon ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);
ERROR:  syntax error at or near "ALTER"
LINE 2: ALTER TABLE ONLY public.moon ADD CONSTRAINT moon_planet_id_f...
        ^
universe=> ALTER TABLE ONLY public.moon ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);
ALTER TABLE
universe=> ALTER TABLE ONLY public.moon ADD CONSTRAINT pair_galaxy__id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);
ERROR:  column "galaxy_id" referenced in foreign key constraint does not exist
universe=> ALTER TABLE ONLY public.pair ADD CONSTRAINT pair_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);
ALTER TABLE
universe=> ALTER TABLE ONLY public.pair ADD CONSTRAINT pair_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);
ALTER TABLE
universe=> ALTER TABLE ONLY public.pair ADD CONSTRAINT pair_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);
ALTER TABLE
universe=> ALTER TABLE ONLY public.pair ADD CONSTRAINT pair_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);
ALTER TABLE
universe=> ALTER TABLE ONLY public.planet ADD CONSTRAINT pair_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);
ALTER TABLE
universe=> ALTER TABLE ONLY public.star ADD CONSTRAINT pair_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);
ALTER TABLE
universe=> pg_dump -cC --inserts -U freecodecamp universe > universe.sql
universe-> 
