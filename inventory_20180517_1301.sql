--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1)

-- Started on 2018-05-17 13:01:36 +04

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 13039)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3354 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 219 (class 1259 OID 16433)
-- Name: AspNetRoleClaims; Type: TABLE; Schema: public; Owner: inventory
--

CREATE TABLE public."AspNetRoleClaims" (
    "Id" integer NOT NULL,
    "ClaimType" text,
    "ClaimValue" text,
    "RoleId" text NOT NULL
);


ALTER TABLE public."AspNetRoleClaims" OWNER TO inventory;

--
-- TOC entry 196 (class 1259 OID 16386)
-- Name: AspNetRoleClaims_Id_seq; Type: SEQUENCE; Schema: public; Owner: inventory
--

CREATE SEQUENCE public."AspNetRoleClaims_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AspNetRoleClaims_Id_seq" OWNER TO inventory;

--
-- TOC entry 3355 (class 0 OID 0)
-- Dependencies: 196
-- Name: AspNetRoleClaims_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: inventory
--

ALTER SEQUENCE public."AspNetRoleClaims_Id_seq" OWNED BY public."AspNetRoleClaims"."Id";


--
-- TOC entry 220 (class 1259 OID 16440)
-- Name: AspNetRoles; Type: TABLE; Schema: public; Owner: inventory
--

CREATE TABLE public."AspNetRoles" (
    "Id" text NOT NULL,
    "ConcurrencyStamp" text,
    "Name" character varying(256),
    "NormalizedName" character varying(256)
);


ALTER TABLE public."AspNetRoles" OWNER TO inventory;

--
-- TOC entry 221 (class 1259 OID 16446)
-- Name: AspNetUserClaims; Type: TABLE; Schema: public; Owner: inventory
--

CREATE TABLE public."AspNetUserClaims" (
    "Id" integer NOT NULL,
    "ClaimType" text,
    "ClaimValue" text,
    "UserId" text NOT NULL
);


ALTER TABLE public."AspNetUserClaims" OWNER TO inventory;

--
-- TOC entry 197 (class 1259 OID 16388)
-- Name: AspNetUserClaims_Id_seq; Type: SEQUENCE; Schema: public; Owner: inventory
--

CREATE SEQUENCE public."AspNetUserClaims_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AspNetUserClaims_Id_seq" OWNER TO inventory;

--
-- TOC entry 3356 (class 0 OID 0)
-- Dependencies: 197
-- Name: AspNetUserClaims_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: inventory
--

ALTER SEQUENCE public."AspNetUserClaims_Id_seq" OWNED BY public."AspNetUserClaims"."Id";


--
-- TOC entry 222 (class 1259 OID 16453)
-- Name: AspNetUserLogins; Type: TABLE; Schema: public; Owner: inventory
--

CREATE TABLE public."AspNetUserLogins" (
    "LoginProvider" text NOT NULL,
    "ProviderKey" text NOT NULL,
    "ProviderDisplayName" text,
    "UserId" text NOT NULL
);


ALTER TABLE public."AspNetUserLogins" OWNER TO inventory;

--
-- TOC entry 223 (class 1259 OID 16459)
-- Name: AspNetUserRoles; Type: TABLE; Schema: public; Owner: inventory
--

CREATE TABLE public."AspNetUserRoles" (
    "UserId" text NOT NULL,
    "RoleId" text NOT NULL
);


ALTER TABLE public."AspNetUserRoles" OWNER TO inventory;

--
-- TOC entry 225 (class 1259 OID 16471)
-- Name: AspNetUserTokens; Type: TABLE; Schema: public; Owner: inventory
--

CREATE TABLE public."AspNetUserTokens" (
    "UserId" text NOT NULL,
    "LoginProvider" text NOT NULL,
    "Name" text NOT NULL,
    "Value" text
);


ALTER TABLE public."AspNetUserTokens" OWNER TO inventory;

--
-- TOC entry 224 (class 1259 OID 16465)
-- Name: AspNetUsers; Type: TABLE; Schema: public; Owner: inventory
--

CREATE TABLE public."AspNetUsers" (
    "Id" text NOT NULL,
    "AccessFailedCount" integer NOT NULL,
    "ConcurrencyStamp" text,
    "Email" character varying(256),
    "EmailConfirmed" boolean NOT NULL,
    "LockoutEnabled" boolean NOT NULL,
    "LockoutEnd" timestamp(6) with time zone,
    "NormalizedEmail" character varying(256),
    "NormalizedUserName" character varying(256),
    "PasswordHash" text,
    "PhoneNumber" text,
    "PhoneNumberConfirmed" boolean NOT NULL,
    "SecurityStamp" text,
    "TwoFactorEnabled" boolean NOT NULL,
    "UserName" character varying(256)
);


ALTER TABLE public."AspNetUsers" OWNER TO inventory;

--
-- TOC entry 226 (class 1259 OID 16477)
-- Name: Connection_Type; Type: TABLE; Schema: public; Owner: inventory
--

CREATE TABLE public."Connection_Type" (
    "Connection_Type_ID" integer NOT NULL,
    "Connection_Type_Name" text
);


ALTER TABLE public."Connection_Type" OWNER TO inventory;

--
-- TOC entry 198 (class 1259 OID 16390)
-- Name: Connection_Type_Connection_Type_ID_seq; Type: SEQUENCE; Schema: public; Owner: inventory
--

CREATE SEQUENCE public."Connection_Type_Connection_Type_ID_seq"
    START WITH 7
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Connection_Type_Connection_Type_ID_seq" OWNER TO inventory;

--
-- TOC entry 3357 (class 0 OID 0)
-- Dependencies: 198
-- Name: Connection_Type_Connection_Type_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: inventory
--

ALTER SEQUENCE public."Connection_Type_Connection_Type_ID_seq" OWNED BY public."Connection_Type"."Connection_Type_ID";


--
-- TOC entry 227 (class 1259 OID 16484)
-- Name: Frequency; Type: TABLE; Schema: public; Owner: inventory
--

CREATE TABLE public."Frequency" (
    "Frequency_ID" integer NOT NULL,
    "Frequency_Name" text
);


ALTER TABLE public."Frequency" OWNER TO inventory;

--
-- TOC entry 199 (class 1259 OID 16392)
-- Name: Frequency_Frequency_ID_seq; Type: SEQUENCE; Schema: public; Owner: inventory
--

CREATE SEQUENCE public."Frequency_Frequency_ID_seq"
    START WITH 1002
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Frequency_Frequency_ID_seq" OWNER TO inventory;

--
-- TOC entry 3358 (class 0 OID 0)
-- Dependencies: 199
-- Name: Frequency_Frequency_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: inventory
--

ALTER SEQUENCE public."Frequency_Frequency_ID_seq" OWNED BY public."Frequency"."Frequency_ID";


--
-- TOC entry 228 (class 1259 OID 16491)
-- Name: Item; Type: TABLE; Schema: public; Owner: inventory
--

CREATE TABLE public."Item" (
    "Item_ID" integer NOT NULL,
    "Model_ID" integer,
    "Serial_Number" text,
    "Inventory_Number" text,
    "Owner_ID" integer,
    "MAC_Address" text,
    "Item_Status_ID" integer,
    "Creator" character varying(255),
    "LastModifier" character varying(255)
);


ALTER TABLE public."Item" OWNER TO inventory;

--
-- TOC entry 200 (class 1259 OID 16394)
-- Name: Item_Item_ID_seq; Type: SEQUENCE; Schema: public; Owner: inventory
--

CREATE SEQUENCE public."Item_Item_ID_seq"
    START WITH 4121
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Item_Item_ID_seq" OWNER TO inventory;

--
-- TOC entry 3359 (class 0 OID 0)
-- Dependencies: 200
-- Name: Item_Item_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: inventory
--

ALTER SEQUENCE public."Item_Item_ID_seq" OWNED BY public."Item"."Item_ID";


--
-- TOC entry 229 (class 1259 OID 16498)
-- Name: Item_Mode; Type: TABLE; Schema: public; Owner: inventory
--

CREATE TABLE public."Item_Mode" (
    "Item_Mode_ID" integer NOT NULL,
    "Item_Mode_Name" text
);


ALTER TABLE public."Item_Mode" OWNER TO inventory;

--
-- TOC entry 201 (class 1259 OID 16396)
-- Name: Item_Mode_Item_Mode_ID_seq; Type: SEQUENCE; Schema: public; Owner: inventory
--

CREATE SEQUENCE public."Item_Mode_Item_Mode_ID_seq"
    START WITH 5
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Item_Mode_Item_Mode_ID_seq" OWNER TO inventory;

--
-- TOC entry 3360 (class 0 OID 0)
-- Dependencies: 201
-- Name: Item_Mode_Item_Mode_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: inventory
--

ALTER SEQUENCE public."Item_Mode_Item_Mode_ID_seq" OWNED BY public."Item_Mode"."Item_Mode_ID";


--
-- TOC entry 230 (class 1259 OID 16505)
-- Name: Item_Status; Type: TABLE; Schema: public; Owner: inventory
--

CREATE TABLE public."Item_Status" (
    "Item_Status_ID" integer NOT NULL,
    "Item_Status_Name" text
);


ALTER TABLE public."Item_Status" OWNER TO inventory;

--
-- TOC entry 202 (class 1259 OID 16398)
-- Name: Item_Status_Item_Status_ID_seq; Type: SEQUENCE; Schema: public; Owner: inventory
--

CREATE SEQUENCE public."Item_Status_Item_Status_ID_seq"
    START WITH 7
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Item_Status_Item_Status_ID_seq" OWNER TO inventory;

--
-- TOC entry 3361 (class 0 OID 0)
-- Dependencies: 202
-- Name: Item_Status_Item_Status_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: inventory
--

ALTER SEQUENCE public."Item_Status_Item_Status_ID_seq" OWNED BY public."Item_Status"."Item_Status_ID";


--
-- TOC entry 231 (class 1259 OID 16512)
-- Name: Item_Type; Type: TABLE; Schema: public; Owner: inventory
--

CREATE TABLE public."Item_Type" (
    "Item_Type_ID" integer NOT NULL,
    "Item_Type_Name" text
);


ALTER TABLE public."Item_Type" OWNER TO inventory;

--
-- TOC entry 203 (class 1259 OID 16400)
-- Name: Item_Type_Item_Type_ID_seq; Type: SEQUENCE; Schema: public; Owner: inventory
--

CREATE SEQUENCE public."Item_Type_Item_Type_ID_seq"
    START WITH 12
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Item_Type_Item_Type_ID_seq" OWNER TO inventory;

--
-- TOC entry 3362 (class 0 OID 0)
-- Dependencies: 203
-- Name: Item_Type_Item_Type_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: inventory
--

ALTER SEQUENCE public."Item_Type_Item_Type_ID_seq" OWNED BY public."Item_Type"."Item_Type_ID";


--
-- TOC entry 232 (class 1259 OID 16519)
-- Name: Location; Type: TABLE; Schema: public; Owner: inventory
--

CREATE TABLE public."Location" (
    "Location_ID" integer NOT NULL,
    "Device_Name" text,
    "PhysicalConnected_Item_ID" integer,
    "From_Site_ID" integer,
    "To_Site_ID" integer,
    "Item_Status_ID" integer,
    "Start_Date" date,
    "End_Date" date,
    "Item_IP_Address" text,
    "Item_Mode_ID" integer,
    "Item_SSID" text,
    "Technician_ID" integer,
    "Assigner_ID" integer,
    "Transfer_Status_ID" integer,
    "Description" text,
    "Item_ID" integer,
    "Creator" character varying(255),
    "LastModifier" character varying(255)
);


ALTER TABLE public."Location" OWNER TO inventory;

--
-- TOC entry 204 (class 1259 OID 16402)
-- Name: Location_Location_ID_seq; Type: SEQUENCE; Schema: public; Owner: inventory
--

CREATE SEQUENCE public."Location_Location_ID_seq"
    START WITH 5387
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Location_Location_ID_seq" OWNER TO inventory;

--
-- TOC entry 3363 (class 0 OID 0)
-- Dependencies: 204
-- Name: Location_Location_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: inventory
--

ALTER SEQUENCE public."Location_Location_ID_seq" OWNED BY public."Location"."Location_ID";


--
-- TOC entry 233 (class 1259 OID 16526)
-- Name: Manufacturer; Type: TABLE; Schema: public; Owner: inventory
--

CREATE TABLE public."Manufacturer" (
    "Manufacturer_ID" integer NOT NULL,
    "Manufacturer_Name" text NOT NULL
);


ALTER TABLE public."Manufacturer" OWNER TO inventory;

--
-- TOC entry 205 (class 1259 OID 16404)
-- Name: Manufacturer_Manufacturer_ID_seq; Type: SEQUENCE; Schema: public; Owner: inventory
--

CREATE SEQUENCE public."Manufacturer_Manufacturer_ID_seq"
    START WITH 49
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Manufacturer_Manufacturer_ID_seq" OWNER TO inventory;

--
-- TOC entry 3364 (class 0 OID 0)
-- Dependencies: 205
-- Name: Manufacturer_Manufacturer_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: inventory
--

ALTER SEQUENCE public."Manufacturer_Manufacturer_ID_seq" OWNED BY public."Manufacturer"."Manufacturer_ID";


--
-- TOC entry 234 (class 1259 OID 16533)
-- Name: Measure; Type: TABLE; Schema: public; Owner: inventory
--

CREATE TABLE public."Measure" (
    "Measure_ID" integer NOT NULL,
    "Measure_Name" text NOT NULL
);


ALTER TABLE public."Measure" OWNER TO inventory;

--
-- TOC entry 206 (class 1259 OID 16406)
-- Name: Measure_ID; Type: SEQUENCE; Schema: public; Owner: inventory
--

CREATE SEQUENCE public."Measure_ID"
    START WITH 8
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Measure_ID" OWNER TO inventory;

--
-- TOC entry 3365 (class 0 OID 0)
-- Dependencies: 206
-- Name: Measure_ID; Type: SEQUENCE OWNED BY; Schema: public; Owner: inventory
--

ALTER SEQUENCE public."Measure_ID" OWNED BY public."Measure"."Measure_ID";


--
-- TOC entry 235 (class 1259 OID 16540)
-- Name: Model; Type: TABLE; Schema: public; Owner: inventory
--

CREATE TABLE public."Model" (
    "Model_ID" integer NOT NULL,
    "Model_Name" text NOT NULL,
    "Manufacturer_ID" integer,
    "Power" text,
    "Frequency_ID" integer,
    "Item_Type_ID" integer
);


ALTER TABLE public."Model" OWNER TO inventory;

--
-- TOC entry 207 (class 1259 OID 16408)
-- Name: Model_Model_ID_seq; Type: SEQUENCE; Schema: public; Owner: inventory
--

CREATE SEQUENCE public."Model_Model_ID_seq"
    START WITH 140
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Model_Model_ID_seq" OWNER TO inventory;

--
-- TOC entry 3366 (class 0 OID 0)
-- Dependencies: 207
-- Name: Model_Model_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: inventory
--

ALTER SEQUENCE public."Model_Model_ID_seq" OWNED BY public."Model"."Model_ID";


--
-- TOC entry 236 (class 1259 OID 16547)
-- Name: Owner; Type: TABLE; Schema: public; Owner: inventory
--

CREATE TABLE public."Owner" (
    "Owner_ID" integer NOT NULL,
    "Owner_Name" text
);


ALTER TABLE public."Owner" OWNER TO inventory;

--
-- TOC entry 208 (class 1259 OID 16410)
-- Name: Owner_Owner_ID_seq; Type: SEQUENCE; Schema: public; Owner: inventory
--

CREATE SEQUENCE public."Owner_Owner_ID_seq"
    START WITH 9
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Owner_Owner_ID_seq" OWNER TO inventory;

--
-- TOC entry 3367 (class 0 OID 0)
-- Dependencies: 208
-- Name: Owner_Owner_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: inventory
--

ALTER SEQUENCE public."Owner_Owner_ID_seq" OWNED BY public."Owner"."Owner_ID";


--
-- TOC entry 237 (class 1259 OID 16554)
-- Name: Region; Type: TABLE; Schema: public; Owner: inventory
--

CREATE TABLE public."Region" (
    "Region_ID" integer NOT NULL,
    "Region_Name" text
);


ALTER TABLE public."Region" OWNER TO inventory;

--
-- TOC entry 209 (class 1259 OID 16412)
-- Name: Region_Region_ID_seq; Type: SEQUENCE; Schema: public; Owner: inventory
--

CREATE SEQUENCE public."Region_Region_ID_seq"
    START WITH 13
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Region_Region_ID_seq" OWNER TO inventory;

--
-- TOC entry 3368 (class 0 OID 0)
-- Dependencies: 209
-- Name: Region_Region_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: inventory
--

ALTER SEQUENCE public."Region_Region_ID_seq" OWNED BY public."Region"."Region_ID";


--
-- TOC entry 238 (class 1259 OID 16561)
-- Name: Site; Type: TABLE; Schema: public; Owner: inventory
--

CREATE TABLE public."Site" (
    "Site_ID" integer NOT NULL,
    "Site_Name" text,
    "Site_Type_ID" integer,
    "Region_ID" integer,
    "Address" text,
    "Latitude" double precision,
    "Longitude" double precision,
    "Responsive_Person_ID" integer,
    "Connection_Type_ID" integer,
    "Head_Name" text,
    "Head_Phone_1" text,
    "Head_Phone_2" text,
    "Head_Phone_3" text,
    "Operator_Name" text,
    "Operator_Phone_1" text,
    "Operator_Phone_2" text,
    "Operator_Phone_3" text,
    "Description" text,
    "Connected_Comp_Count" integer,
    "School_Comp_Count" integer,
    "Creator" character varying(255),
    "LastModifier" character varying(255)
);


ALTER TABLE public."Site" OWNER TO inventory;

--
-- TOC entry 210 (class 1259 OID 16414)
-- Name: Site_Site_ID_seq; Type: SEQUENCE; Schema: public; Owner: inventory
--

CREATE SEQUENCE public."Site_Site_ID_seq"
    START WITH 1726
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Site_Site_ID_seq" OWNER TO inventory;

--
-- TOC entry 3369 (class 0 OID 0)
-- Dependencies: 210
-- Name: Site_Site_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: inventory
--

ALTER SEQUENCE public."Site_Site_ID_seq" OWNED BY public."Site"."Site_ID";


--
-- TOC entry 239 (class 1259 OID 16568)
-- Name: Site_Type; Type: TABLE; Schema: public; Owner: inventory
--

CREATE TABLE public."Site_Type" (
    "Site_Type_ID" integer NOT NULL,
    "Site_Type_Name" text
);


ALTER TABLE public."Site_Type" OWNER TO inventory;

--
-- TOC entry 211 (class 1259 OID 16416)
-- Name: Site_Type_Site_Type_ID_seq; Type: SEQUENCE; Schema: public; Owner: inventory
--

CREATE SEQUENCE public."Site_Type_Site_Type_ID_seq"
    START WITH 14
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Site_Type_Site_Type_ID_seq" OWNER TO inventory;

--
-- TOC entry 3370 (class 0 OID 0)
-- Dependencies: 211
-- Name: Site_Type_Site_Type_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: inventory
--

ALTER SEQUENCE public."Site_Type_Site_Type_ID_seq" OWNED BY public."Site_Type"."Site_Type_ID";


--
-- TOC entry 240 (class 1259 OID 16575)
-- Name: Speedy; Type: TABLE; Schema: public; Owner: inventory
--

CREATE TABLE public."Speedy" (
    "Speedy_ID" integer NOT NULL,
    "Speedy_Name" text,
    "Measure_ID" integer
);


ALTER TABLE public."Speedy" OWNER TO inventory;

--
-- TOC entry 212 (class 1259 OID 16418)
-- Name: Speedy_ID; Type: SEQUENCE; Schema: public; Owner: inventory
--

CREATE SEQUENCE public."Speedy_ID"
    START WITH 32
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Speedy_ID" OWNER TO inventory;

--
-- TOC entry 3371 (class 0 OID 0)
-- Dependencies: 212
-- Name: Speedy_ID; Type: SEQUENCE OWNED BY; Schema: public; Owner: inventory
--

ALTER SEQUENCE public."Speedy_ID" OWNED BY public."Speedy"."Speedy_ID";


--
-- TOC entry 241 (class 1259 OID 16582)
-- Name: Speedy_Stock; Type: TABLE; Schema: public; Owner: inventory
--

CREATE TABLE public."Speedy_Stock" (
    "Speedy_Stock_ID" integer NOT NULL,
    "Site_ID" integer NOT NULL,
    "Speedy_ID" integer DEFAULT nextval('public."Speedy_ID"'::regclass) NOT NULL,
    "Count" double precision NOT NULL
);


ALTER TABLE public."Speedy_Stock" OWNER TO inventory;

--
-- TOC entry 213 (class 1259 OID 16420)
-- Name: Speedy_Stock_ID; Type: SEQUENCE; Schema: public; Owner: inventory
--

CREATE SEQUENCE public."Speedy_Stock_ID"
    START WITH 104
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Speedy_Stock_ID" OWNER TO inventory;

--
-- TOC entry 3372 (class 0 OID 0)
-- Dependencies: 213
-- Name: Speedy_Stock_ID; Type: SEQUENCE OWNED BY; Schema: public; Owner: inventory
--

ALTER SEQUENCE public."Speedy_Stock_ID" OWNED BY public."Speedy_Stock"."Speedy_Stock_ID";


--
-- TOC entry 242 (class 1259 OID 16587)
-- Name: Speedy_Transfer; Type: TABLE; Schema: public; Owner: inventory
--

CREATE TABLE public."Speedy_Transfer" (
    "Speedy_Transfer_ID" integer NOT NULL,
    "Speedy_ID" integer,
    "Count" double precision,
    "From_Site_ID" integer,
    "To_Site_ID" integer,
    "Date" date,
    "Description" text,
    "Technician_ID" integer,
    "Assigner_ID" integer,
    "Creator" character varying(255),
    "LastModifier" character varying(255)
);


ALTER TABLE public."Speedy_Transfer" OWNER TO inventory;

--
-- TOC entry 214 (class 1259 OID 16422)
-- Name: Speedy_Transfer_ID; Type: SEQUENCE; Schema: public; Owner: inventory
--

CREATE SEQUENCE public."Speedy_Transfer_ID"
    START WITH 132
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Speedy_Transfer_ID" OWNER TO inventory;

--
-- TOC entry 3373 (class 0 OID 0)
-- Dependencies: 214
-- Name: Speedy_Transfer_ID; Type: SEQUENCE OWNED BY; Schema: public; Owner: inventory
--

ALTER SEQUENCE public."Speedy_Transfer_ID" OWNED BY public."Speedy_Transfer"."Speedy_Transfer_ID";


--
-- TOC entry 243 (class 1259 OID 16594)
-- Name: Transfer_Status; Type: TABLE; Schema: public; Owner: inventory
--

CREATE TABLE public."Transfer_Status" (
    "Transfer_Status_ID" integer NOT NULL,
    "Transfer_Status_Name" text
);


ALTER TABLE public."Transfer_Status" OWNER TO inventory;

--
-- TOC entry 215 (class 1259 OID 16424)
-- Name: Transfer_Status_Transfer_Status_ID_seq; Type: SEQUENCE; Schema: public; Owner: inventory
--

CREATE SEQUENCE public."Transfer_Status_Transfer_Status_ID_seq"
    START WITH 6
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Transfer_Status_Transfer_Status_ID_seq" OWNER TO inventory;

--
-- TOC entry 3374 (class 0 OID 0)
-- Dependencies: 215
-- Name: Transfer_Status_Transfer_Status_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: inventory
--

ALTER SEQUENCE public."Transfer_Status_Transfer_Status_ID_seq" OWNED BY public."Transfer_Status"."Transfer_Status_ID";


--
-- TOC entry 244 (class 1259 OID 16601)
-- Name: Worker; Type: TABLE; Schema: public; Owner: inventory
--

CREATE TABLE public."Worker" (
    "Worker_ID" integer NOT NULL,
    "Worker_Name" text,
    "Worker_Position_ID" integer,
    "Phone_Work" text,
    "Phone_Pers" text,
    "Email_Work" text,
    "Email_Pers" text,
    "Region_ID" integer
);


ALTER TABLE public."Worker" OWNER TO inventory;

--
-- TOC entry 245 (class 1259 OID 16608)
-- Name: Worker_Position; Type: TABLE; Schema: public; Owner: inventory
--

CREATE TABLE public."Worker_Position" (
    "Worker_Position_ID" integer NOT NULL,
    "Worker_Position_Name" text
);


ALTER TABLE public."Worker_Position" OWNER TO inventory;

--
-- TOC entry 216 (class 1259 OID 16426)
-- Name: Worker_Position_Worker_Position_ID_seq; Type: SEQUENCE; Schema: public; Owner: inventory
--

CREATE SEQUENCE public."Worker_Position_Worker_Position_ID_seq"
    START WITH 10
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Worker_Position_Worker_Position_ID_seq" OWNER TO inventory;

--
-- TOC entry 3375 (class 0 OID 0)
-- Dependencies: 216
-- Name: Worker_Position_Worker_Position_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: inventory
--

ALTER SEQUENCE public."Worker_Position_Worker_Position_ID_seq" OWNED BY public."Worker_Position"."Worker_Position_ID";


--
-- TOC entry 217 (class 1259 OID 16428)
-- Name: Worker_Worker_ID_seq; Type: SEQUENCE; Schema: public; Owner: inventory
--

CREATE SEQUENCE public."Worker_Worker_ID_seq"
    START WITH 27
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Worker_Worker_ID_seq" OWNER TO inventory;

--
-- TOC entry 3376 (class 0 OID 0)
-- Dependencies: 217
-- Name: Worker_Worker_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: inventory
--

ALTER SEQUENCE public."Worker_Worker_ID_seq" OWNED BY public."Worker"."Worker_ID";


--
-- TOC entry 218 (class 1259 OID 16430)
-- Name: __EFMigrationsHistory; Type: TABLE; Schema: public; Owner: inventory
--

CREATE TABLE public."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);


ALTER TABLE public."__EFMigrationsHistory" OWNER TO inventory;

--
-- TOC entry 246 (class 1259 OID 16615)
-- Name: vwAsigner; Type: VIEW; Schema: public; Owner: inventory
--

CREATE VIEW public."vwAsigner" AS
 SELECT "Worker"."Worker_ID",
    "Worker"."Worker_Name",
    "Worker"."Worker_Position_ID",
    "Worker"."Phone_Work",
    "Worker"."Phone_Pers",
    "Worker"."Email_Work",
    "Worker"."Email_Pers",
    "Worker_Position"."Worker_Position_Name"
   FROM (public."Worker"
     LEFT JOIN public."Worker_Position" ON (("Worker"."Worker_Position_ID" = "Worker_Position"."Worker_Position_ID")));


ALTER TABLE public."vwAsigner" OWNER TO inventory;

--
-- TOC entry 247 (class 1259 OID 16619)
-- Name: vwFromSite; Type: VIEW; Schema: public; Owner: inventory
--

CREATE VIEW public."vwFromSite" AS
 SELECT "Site"."Site_ID",
    "Site"."Site_Name",
    "Site"."Site_Type_ID",
    "Site"."Region_ID",
    "Site_Type"."Site_Type_Name",
    "Region"."Region_Name",
    concat_ws(' - '::text, "Site"."Site_Name", "Site_Type"."Site_Type_Name", "Region"."Region_Name") AS "Site_Info",
    concat_ws(' '::text, "Site"."Site_Name", "Site_Type"."Site_Type_Name") AS "Site_Full_Name"
   FROM ((public."Site"
     LEFT JOIN public."Site_Type" ON (("Site"."Site_Type_ID" = "Site_Type"."Site_Type_ID")))
     LEFT JOIN public."Region" ON (("Site"."Region_ID" = "Region"."Region_ID")));


ALTER TABLE public."vwFromSite" OWNER TO inventory;

--
-- TOC entry 248 (class 1259 OID 16624)
-- Name: vwItem; Type: VIEW; Schema: public; Owner: inventory
--

CREATE VIEW public."vwItem" AS
 SELECT "Item"."Item_ID",
    "Item"."Model_ID",
    "Item"."Serial_Number",
    "Item"."Inventory_Number",
    "Item"."Owner_ID",
    "Item"."MAC_Address",
    "Model"."Model_Name",
    "Model"."Manufacturer_ID",
    "Model"."Power",
    "Model"."Frequency_ID",
    "Model"."Item_Type_ID",
    "Owner"."Owner_Name",
    "Manufacturer"."Manufacturer_Name",
    "Item_Type"."Item_Type_Name",
    "Frequency"."Frequency_Name",
    concat_ws(' - '::text, "Item"."Serial_Number", "Model"."Model_Name", "Owner"."Owner_Name") AS "Item_Info",
    "Item"."Item_Status_ID",
    "Item_Status"."Item_Status_Name",
    "Item"."Creator",
    "Item"."LastModifier"
   FROM ((((((public."Item"
     LEFT JOIN public."Model" ON (("Item"."Model_ID" = "Model"."Model_ID")))
     LEFT JOIN public."Owner" ON (("Item"."Owner_ID" = "Owner"."Owner_ID")))
     LEFT JOIN public."Manufacturer" ON (("Model"."Manufacturer_ID" = "Manufacturer"."Manufacturer_ID")))
     LEFT JOIN public."Item_Type" ON (("Model"."Item_Type_ID" = "Item_Type"."Item_Type_ID")))
     LEFT JOIN public."Frequency" ON (("Model"."Frequency_ID" = "Frequency"."Frequency_ID")))
     LEFT JOIN public."Item_Status" ON (("Item"."Item_Status_ID" = "Item_Status"."Item_Status_ID")));


ALTER TABLE public."vwItem" OWNER TO inventory;

--
-- TOC entry 250 (class 1259 OID 16634)
-- Name: vwPCItem; Type: VIEW; Schema: public; Owner: inventory
--

CREATE VIEW public."vwPCItem" AS
 SELECT "Item"."Item_ID",
    "Item"."Model_ID",
    "Item"."Serial_Number",
    "Item"."Inventory_Number",
    "Item"."Owner_ID",
    "Item"."MAC_Address",
    "Model"."Model_Name",
    "Model"."Manufacturer_ID",
    "Model"."Power",
    "Model"."Frequency_ID",
    "Model"."Item_Type_ID",
    "Owner"."Owner_Name",
    "Manufacturer"."Manufacturer_Name",
    "Item_Type"."Item_Type_Name",
    "Frequency"."Frequency_Name",
    concat_ws(' - '::text, "Item"."Serial_Number", "Model"."Model_Name", "Owner"."Owner_Name") AS "Item_Info"
   FROM (((((public."Item"
     LEFT JOIN public."Model" ON (("Item"."Model_ID" = "Model"."Model_ID")))
     LEFT JOIN public."Owner" ON (("Item"."Owner_ID" = "Owner"."Owner_ID")))
     LEFT JOIN public."Manufacturer" ON (("Model"."Manufacturer_ID" = "Manufacturer"."Manufacturer_ID")))
     LEFT JOIN public."Item_Type" ON (("Model"."Item_Type_ID" = "Item_Type"."Item_Type_ID")))
     LEFT JOIN public."Frequency" ON (("Model"."Frequency_ID" = "Frequency"."Frequency_ID")));


ALTER TABLE public."vwPCItem" OWNER TO inventory;

--
-- TOC entry 254 (class 1259 OID 16652)
-- Name: vwTechnisian; Type: VIEW; Schema: public; Owner: inventory
--

CREATE VIEW public."vwTechnisian" AS
 SELECT "Worker"."Worker_ID",
    "Worker"."Worker_Name",
    "Worker"."Worker_Position_ID",
    "Worker"."Phone_Work",
    "Worker"."Phone_Pers",
    "Worker"."Email_Work",
    "Worker"."Email_Pers",
    "Worker_Position"."Worker_Position_Name"
   FROM (public."Worker"
     LEFT JOIN public."Worker_Position" ON (("Worker"."Worker_Position_ID" = "Worker_Position"."Worker_Position_ID")));


ALTER TABLE public."vwTechnisian" OWNER TO inventory;

--
-- TOC entry 255 (class 1259 OID 16656)
-- Name: vwToSite; Type: VIEW; Schema: public; Owner: inventory
--

CREATE VIEW public."vwToSite" AS
 SELECT "Site"."Site_ID",
    "Site"."Site_Name",
    "Site"."Site_Type_ID",
    "Site"."Region_ID",
    "Site_Type"."Site_Type_Name",
    "Region"."Region_Name",
    concat_ws(' - '::text, "Site"."Site_Name", "Site_Type"."Site_Type_Name", "Region"."Region_Name") AS "Site_Info",
    concat_ws(' '::text, "Site"."Site_Name", "Site_Type"."Site_Type_Name") AS "Site_full_Name"
   FROM ((public."Site"
     LEFT JOIN public."Site_Type" ON (("Site"."Site_Type_ID" = "Site_Type"."Site_Type_ID")))
     LEFT JOIN public."Region" ON (("Site"."Region_ID" = "Region"."Region_ID")));


ALTER TABLE public."vwToSite" OWNER TO inventory;

--
-- TOC entry 258 (class 1259 OID 17440)
-- Name: vwLocation; Type: VIEW; Schema: public; Owner: inventory
--

CREATE VIEW public."vwLocation" AS
 SELECT "Location"."Location_ID",
    "Location"."Device_Name",
    "Location"."PhysicalConnected_Item_ID",
    "vwPCItem"."Serial_Number" AS "PC_Serial_Number",
    "vwPCItem"."Model_Name" AS "PC_Model_Name",
    "vwPCItem"."Owner_Name" AS "PC_Owner_Name",
    "vwPCItem"."Item_Info" AS "PC_Item_Info",
    "Location"."From_Site_ID",
    "vwFromSite"."Site_Name" AS "From_Site",
    "vwFromSite"."Region_Name" AS "From_Site_Region",
    "vwFromSite"."Site_Info" AS "From_Site_Info",
    "Location"."To_Site_ID",
    "vwToSite"."Site_Name" AS "To_Site",
    "vwToSite"."Region_Name" AS "To_Site_Region",
    "vwToSite"."Site_Info" AS "To_Site_Info",
    "Location"."Item_Status_ID",
    "Item_Status"."Item_Status_Name",
    "Location"."Start_Date",
    "Location"."End_Date",
    "Location"."Item_IP_Address",
    "Item_Mode"."Item_Mode_Name",
    "Location"."Item_Mode_ID",
    "Location"."Item_SSID",
    "vwTechnisian"."Worker_Name" AS "Technician_Name",
    "Location"."Technician_ID",
    "Location"."Assigner_ID",
    "vwAsigner"."Worker_Name" AS "Assigner_Name",
    "Transfer_Status"."Transfer_Status_Name",
    "Location"."Transfer_Status_ID",
    "Location"."Description",
    "Location"."Item_ID",
    "Item"."Serial_Number" AS "Item_Serial_Number",
    "Item"."Inventory_Number" AS "Item_Inventory_Number",
    "Item"."MAC_Address" AS "Item_MAC_Address",
    "Model"."Model_Name" AS "Item_Model_Name",
    "Owner"."Owner_Name" AS "Item_Owner_Name",
    "Model"."Power" AS "Item_Power",
    "Manufacturer"."Manufacturer_Name" AS "Item_Manufacturer_Name",
    "Item_Type"."Item_Type_Name" AS "Item_Item_Type_Name",
    "Frequency"."Frequency_Name" AS "Item_Frequency_Name",
    "vwFromSite"."Site_Type_Name" AS "From_Site_Type_Name",
    "vwToSite"."Site_Type_Name" AS "To_Site_Type_Name",
    "vwFromSite"."Site_Full_Name" AS "From_Site_Full_Name",
    "vwToSite"."Site_full_Name" AS "To_Site_Full_Name",
    "Item"."Owner_ID" AS "Item_Owner_ID",
    "Item"."Model_ID" AS "Item_Model_ID",
    "Location"."Creator",
    "Location"."LastModifier"
   FROM ((((((((((((((public."Location"
     LEFT JOIN public."vwPCItem" ON (("Location"."PhysicalConnected_Item_ID" = "vwPCItem"."Item_ID")))
     LEFT JOIN public."vwFromSite" ON (("Location"."From_Site_ID" = "vwFromSite"."Site_ID")))
     LEFT JOIN public."vwToSite" ON (("Location"."To_Site_ID" = "vwToSite"."Site_ID")))
     LEFT JOIN public."Item_Status" ON (("Location"."Item_Status_ID" = "Item_Status"."Item_Status_ID")))
     LEFT JOIN public."Item_Mode" ON (("Location"."Item_Mode_ID" = "Item_Mode"."Item_Mode_ID")))
     LEFT JOIN public."vwTechnisian" ON (("Location"."Technician_ID" = "vwTechnisian"."Worker_ID")))
     LEFT JOIN public."vwAsigner" ON (("Location"."Assigner_ID" = "vwAsigner"."Worker_ID")))
     LEFT JOIN public."Transfer_Status" ON (("Location"."Transfer_Status_ID" = "Transfer_Status"."Transfer_Status_ID")))
     LEFT JOIN public."Item" ON (("Location"."Item_ID" = "Item"."Item_ID")))
     LEFT JOIN public."Model" ON (("Item"."Model_ID" = "Model"."Model_ID")))
     LEFT JOIN public."Owner" ON (("Item"."Owner_ID" = "Owner"."Owner_ID")))
     LEFT JOIN public."Manufacturer" ON (("Model"."Manufacturer_ID" = "Manufacturer"."Manufacturer_ID")))
     LEFT JOIN public."Item_Type" ON (("Model"."Item_Type_ID" = "Item_Type"."Item_Type_ID")))
     LEFT JOIN public."Frequency" ON (("Model"."Frequency_ID" = "Frequency"."Frequency_ID")));


ALTER TABLE public."vwLocation" OWNER TO inventory;

--
-- TOC entry 249 (class 1259 OID 16629)
-- Name: vwModel; Type: VIEW; Schema: public; Owner: inventory
--

CREATE VIEW public."vwModel" AS
 SELECT "Model"."Model_ID",
    "Model"."Model_Name",
    "Model"."Manufacturer_ID",
    "Model"."Power",
    "Model"."Frequency_ID",
    "Model"."Item_Type_ID",
    "Manufacturer"."Manufacturer_Name",
    "Frequency"."Frequency_Name",
    "Item_Type"."Item_Type_Name",
    concat_ws(' - '::text, "Manufacturer"."Manufacturer_Name", "Model"."Model_Name", "Item_Type"."Item_Type_Name") AS "Model_Info"
   FROM (((public."Model"
     LEFT JOIN public."Manufacturer" ON (("Model"."Manufacturer_ID" = "Manufacturer"."Manufacturer_ID")))
     LEFT JOIN public."Frequency" ON (("Model"."Frequency_ID" = "Frequency"."Frequency_ID")))
     LEFT JOIN public."Item_Type" ON (("Model"."Item_Type_ID" = "Item_Type"."Item_Type_ID")));


ALTER TABLE public."vwModel" OWNER TO inventory;

--
-- TOC entry 251 (class 1259 OID 16639)
-- Name: vwSite; Type: VIEW; Schema: public; Owner: inventory
--

CREATE VIEW public."vwSite" AS
 SELECT "Site"."Site_ID",
    "Site"."Site_Name",
    "Site"."Site_Type_ID",
    "Site"."Region_ID",
    "Site"."Address",
    "Site"."Latitude",
    "Site"."Longitude",
    "Site"."Responsive_Person_ID",
    "Site"."Connection_Type_ID",
    "Site"."Head_Name",
    "Site"."Head_Phone_1",
    "Site"."Head_Phone_2",
    "Site"."Head_Phone_3",
    "Site"."Operator_Name",
    "Site"."Operator_Phone_1",
    "Site"."Operator_Phone_2",
    "Site"."Operator_Phone_3",
    "Site"."Description",
    "Site"."Connected_Comp_Count",
    "Site"."School_Comp_Count",
    "Site_Type"."Site_Type_Name",
    "Region"."Region_Name",
    "Worker"."Worker_Name",
    "Connection_Type"."Connection_Type_Name",
    concat_ws(' - '::text, "Site"."Site_Name", "Site_Type"."Site_Type_Name", "Region"."Region_Name") AS "Site_Info",
    concat_ws(', '::text, "Site"."Head_Name", "Site"."Head_Phone_1", "Site"."Head_Phone_2", "Site"."Head_Phone_3") AS "Head_Info",
    concat_ws(', '::text, "Site"."Operator_Name", "Site"."Operator_Phone_1", "Site"."Operator_Phone_2", "Site"."Operator_Phone_3") AS "Operator_Info",
    "Site"."Creator",
    "Site"."LastModifier"
   FROM ((((public."Site"
     LEFT JOIN public."Site_Type" ON (("Site"."Site_Type_ID" = "Site_Type"."Site_Type_ID")))
     LEFT JOIN public."Region" ON (("Site"."Region_ID" = "Region"."Region_ID")))
     LEFT JOIN public."Worker" ON (("Site"."Responsive_Person_ID" = "Worker"."Worker_ID")))
     LEFT JOIN public."Connection_Type" ON (("Site"."Connection_Type_ID" = "Connection_Type"."Connection_Type_ID")));


ALTER TABLE public."vwSite" OWNER TO inventory;

--
-- TOC entry 252 (class 1259 OID 16644)
-- Name: vwSpeedy; Type: VIEW; Schema: public; Owner: inventory
--

CREATE VIEW public."vwSpeedy" AS
 SELECT "Speedy"."Speedy_ID",
    "Speedy"."Speedy_Name",
    "Speedy"."Measure_ID",
    "Measure"."Measure_Name"
   FROM (public."Speedy"
     LEFT JOIN public."Measure" ON (("Speedy"."Measure_ID" = "Measure"."Measure_ID")));


ALTER TABLE public."vwSpeedy" OWNER TO inventory;

--
-- TOC entry 253 (class 1259 OID 16648)
-- Name: vwSpeedy_Stock; Type: VIEW; Schema: public; Owner: inventory
--

CREATE VIEW public."vwSpeedy_Stock" AS
 SELECT "Speedy_Stock"."Speedy_Stock_ID",
    "Speedy_Stock"."Site_ID",
    "Speedy_Stock"."Speedy_ID",
    "Speedy_Stock"."Count",
    "vwFromSite"."Site_Full_Name",
    "vwSpeedy"."Speedy_Name",
    "vwSpeedy"."Measure_Name"
   FROM ((public."Speedy_Stock"
     LEFT JOIN public."vwFromSite" ON (("Speedy_Stock"."Site_ID" = "vwFromSite"."Site_ID")))
     LEFT JOIN public."vwSpeedy" ON (("Speedy_Stock"."Speedy_ID" = "vwSpeedy"."Speedy_ID")));


ALTER TABLE public."vwSpeedy_Stock" OWNER TO inventory;

--
-- TOC entry 259 (class 1259 OID 17445)
-- Name: vwSpeedy_Transfer; Type: VIEW; Schema: public; Owner: inventory
--

CREATE VIEW public."vwSpeedy_Transfer" AS
 SELECT "Speedy_Transfer"."Speedy_Transfer_ID",
    "Speedy_Transfer"."Speedy_ID",
    "Speedy_Transfer"."Count",
    "Speedy_Transfer"."From_Site_ID",
    "Speedy_Transfer"."To_Site_ID",
    "Speedy_Transfer"."Date",
    "Speedy_Transfer"."Description",
    "vwSpeedy"."Speedy_Name",
    "vwSpeedy"."Measure_Name",
    "vwFromSite"."Site_Full_Name" AS "FromSite_Full_Name",
    "vwToSite"."Site_full_Name" AS "ToSite_Full_Name",
    "Speedy_Transfer"."Technician_ID",
    "Speedy_Transfer"."Assigner_ID",
    "vwAsigner"."Worker_Name" AS "Assigner_Name",
    "vwTechnisian"."Worker_Name" AS "Technician_Name",
    "Speedy_Transfer"."Creator",
    "Speedy_Transfer"."LastModifier"
   FROM (((((public."Speedy_Transfer"
     LEFT JOIN public."vwSpeedy" ON (("Speedy_Transfer"."Speedy_ID" = "vwSpeedy"."Speedy_ID")))
     LEFT JOIN public."vwFromSite" ON (("Speedy_Transfer"."From_Site_ID" = "vwFromSite"."Site_ID")))
     LEFT JOIN public."vwToSite" ON (("Speedy_Transfer"."To_Site_ID" = "vwToSite"."Site_ID")))
     LEFT JOIN public."vwTechnisian" ON (("Speedy_Transfer"."Technician_ID" = "vwTechnisian"."Worker_ID")))
     LEFT JOIN public."vwAsigner" ON (("Speedy_Transfer"."Assigner_ID" = "vwAsigner"."Worker_ID")));


ALTER TABLE public."vwSpeedy_Transfer" OWNER TO inventory;

--
-- TOC entry 256 (class 1259 OID 16661)
-- Name: vwTransfer; Type: VIEW; Schema: public; Owner: inventory
--

CREATE VIEW public."vwTransfer" AS
 SELECT "Location"."Location_ID",
    "Location"."Device_Name",
    "Location"."PhysicalConnected_Item_ID",
    "vwPCItem"."Serial_Number" AS "PC_Serial_Number",
    "vwPCItem"."Model_Name" AS "PC_Model_Name",
    "vwPCItem"."Owner_Name" AS "PC_Owner_Name",
    "vwPCItem"."Item_Info" AS "PC_Item_Info",
    "Location"."From_Site_ID",
    "vwFromSite"."Site_Name" AS "From_Site",
    "vwFromSite"."Region_Name" AS "From_Site_Region",
    "vwFromSite"."Site_Info" AS "From_Site_Info",
    "Location"."To_Site_ID",
    "vwToSite"."Site_Name" AS "To_Site",
    "vwToSite"."Region_Name" AS "To_Site_Region",
    "vwToSite"."Site_Info" AS "To_Site_Info",
    "Location"."Item_Status_ID",
    "Item_Status"."Item_Status_Name",
    "Location"."Start_Date",
    "Location"."End_Date",
    "Location"."Item_IP_Address",
    "Item_Mode"."Item_Mode_Name",
    "Location"."Item_Mode_ID",
    "Location"."Item_SSID",
    "vwTechnisian"."Worker_Name" AS "Technician_Name",
    "Location"."Technician_ID",
    "Location"."Assigner_ID",
    "vwAsigner"."Worker_Name" AS "Assigner_Name",
    "Transfer_Status"."Transfer_Status_Name",
    "Location"."Transfer_Status_ID",
    "Location"."Description",
    "Location"."Item_ID",
    "Item"."Serial_Number" AS "Item_Serial_Number",
    "Item"."Inventory_Number" AS "Item_Inventory_Number",
    "Item"."MAC_Address" AS "Item_MAC_Address",
    "Model"."Model_Name" AS "Item_Model_Name",
    "Owner"."Owner_Name" AS "Item_Owner_Name",
    "Model"."Power" AS "Item_Power",
    "Manufacturer"."Manufacturer_Name" AS "Item_Manufacturer_Name",
    "Item_Type"."Item_Type_Name" AS "Item_Item_Type_Name",
    "Frequency"."Frequency_Name" AS "Item_Frequency_Name"
   FROM ((((((((((((((public."Location"
     LEFT JOIN public."vwPCItem" ON (("Location"."PhysicalConnected_Item_ID" = "vwPCItem"."Item_ID")))
     LEFT JOIN public."vwFromSite" ON (("Location"."From_Site_ID" = "vwFromSite"."Site_ID")))
     LEFT JOIN public."vwToSite" ON (("Location"."To_Site_ID" = "vwToSite"."Site_ID")))
     LEFT JOIN public."Item_Status" ON (("Location"."Item_Status_ID" = "Item_Status"."Item_Status_ID")))
     LEFT JOIN public."Item_Mode" ON (("Location"."Item_Mode_ID" = "Item_Mode"."Item_Mode_ID")))
     LEFT JOIN public."vwTechnisian" ON (("Location"."Technician_ID" = "vwTechnisian"."Worker_ID")))
     LEFT JOIN public."vwAsigner" ON (("Location"."Assigner_ID" = "vwAsigner"."Worker_ID")))
     LEFT JOIN public."Transfer_Status" ON (("Location"."Transfer_Status_ID" = "Transfer_Status"."Transfer_Status_ID")))
     LEFT JOIN public."Item" ON (("Location"."Item_ID" = "Item"."Item_ID")))
     LEFT JOIN public."Model" ON (("Item"."Model_ID" = "Model"."Model_ID")))
     LEFT JOIN public."Owner" ON (("Item"."Owner_ID" = "Owner"."Owner_ID")))
     LEFT JOIN public."Manufacturer" ON (("Model"."Manufacturer_ID" = "Manufacturer"."Manufacturer_ID")))
     LEFT JOIN public."Item_Type" ON (("Model"."Item_Type_ID" = "Item_Type"."Item_Type_ID")))
     LEFT JOIN public."Frequency" ON (("Model"."Frequency_ID" = "Frequency"."Frequency_ID")));


ALTER TABLE public."vwTransfer" OWNER TO inventory;

--
-- TOC entry 257 (class 1259 OID 16666)
-- Name: vwWorker; Type: VIEW; Schema: public; Owner: inventory
--

CREATE VIEW public."vwWorker" AS
 SELECT "Worker"."Worker_ID",
    "Worker"."Worker_Name",
    "Worker"."Worker_Position_ID",
    "Worker"."Phone_Work",
    "Worker"."Phone_Pers",
    "Worker"."Email_Work",
    "Worker"."Email_Pers",
    "Worker_Position"."Worker_Position_Name",
    "Worker"."Region_ID",
    "Region"."Region_Name"
   FROM ((public."Worker"
     LEFT JOIN public."Worker_Position" ON (("Worker"."Worker_Position_ID" = "Worker_Position"."Worker_Position_ID")))
     LEFT JOIN public."Region" ON (("Worker"."Region_ID" = "Region"."Region_ID")));


ALTER TABLE public."vwWorker" OWNER TO inventory;

--
-- TOC entry 3016 (class 2604 OID 17450)
-- Name: AspNetRoleClaims Id; Type: DEFAULT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."AspNetRoleClaims" ALTER COLUMN "Id" SET DEFAULT nextval('public."AspNetRoleClaims_Id_seq"'::regclass);


--
-- TOC entry 3017 (class 2604 OID 17451)
-- Name: AspNetUserClaims Id; Type: DEFAULT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."AspNetUserClaims" ALTER COLUMN "Id" SET DEFAULT nextval('public."AspNetUserClaims_Id_seq"'::regclass);


--
-- TOC entry 3018 (class 2604 OID 17452)
-- Name: Connection_Type Connection_Type_ID; Type: DEFAULT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Connection_Type" ALTER COLUMN "Connection_Type_ID" SET DEFAULT nextval('public."Connection_Type_Connection_Type_ID_seq"'::regclass);


--
-- TOC entry 3019 (class 2604 OID 17453)
-- Name: Frequency Frequency_ID; Type: DEFAULT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Frequency" ALTER COLUMN "Frequency_ID" SET DEFAULT nextval('public."Frequency_Frequency_ID_seq"'::regclass);


--
-- TOC entry 3020 (class 2604 OID 17454)
-- Name: Item Item_ID; Type: DEFAULT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Item" ALTER COLUMN "Item_ID" SET DEFAULT nextval('public."Item_Item_ID_seq"'::regclass);


--
-- TOC entry 3021 (class 2604 OID 17455)
-- Name: Item_Mode Item_Mode_ID; Type: DEFAULT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Item_Mode" ALTER COLUMN "Item_Mode_ID" SET DEFAULT nextval('public."Item_Mode_Item_Mode_ID_seq"'::regclass);


--
-- TOC entry 3022 (class 2604 OID 17456)
-- Name: Item_Status Item_Status_ID; Type: DEFAULT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Item_Status" ALTER COLUMN "Item_Status_ID" SET DEFAULT nextval('public."Item_Status_Item_Status_ID_seq"'::regclass);


--
-- TOC entry 3023 (class 2604 OID 17457)
-- Name: Item_Type Item_Type_ID; Type: DEFAULT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Item_Type" ALTER COLUMN "Item_Type_ID" SET DEFAULT nextval('public."Item_Type_Item_Type_ID_seq"'::regclass);


--
-- TOC entry 3024 (class 2604 OID 17458)
-- Name: Location Location_ID; Type: DEFAULT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Location" ALTER COLUMN "Location_ID" SET DEFAULT nextval('public."Location_Location_ID_seq"'::regclass);


--
-- TOC entry 3025 (class 2604 OID 17459)
-- Name: Manufacturer Manufacturer_ID; Type: DEFAULT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Manufacturer" ALTER COLUMN "Manufacturer_ID" SET DEFAULT nextval('public."Manufacturer_Manufacturer_ID_seq"'::regclass);


--
-- TOC entry 3026 (class 2604 OID 17460)
-- Name: Measure Measure_ID; Type: DEFAULT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Measure" ALTER COLUMN "Measure_ID" SET DEFAULT nextval('public."Measure_ID"'::regclass);


--
-- TOC entry 3027 (class 2604 OID 17461)
-- Name: Model Model_ID; Type: DEFAULT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Model" ALTER COLUMN "Model_ID" SET DEFAULT nextval('public."Model_Model_ID_seq"'::regclass);


--
-- TOC entry 3028 (class 2604 OID 17462)
-- Name: Owner Owner_ID; Type: DEFAULT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Owner" ALTER COLUMN "Owner_ID" SET DEFAULT nextval('public."Owner_Owner_ID_seq"'::regclass);


--
-- TOC entry 3029 (class 2604 OID 17463)
-- Name: Region Region_ID; Type: DEFAULT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Region" ALTER COLUMN "Region_ID" SET DEFAULT nextval('public."Region_Region_ID_seq"'::regclass);


--
-- TOC entry 3030 (class 2604 OID 17464)
-- Name: Site Site_ID; Type: DEFAULT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Site" ALTER COLUMN "Site_ID" SET DEFAULT nextval('public."Site_Site_ID_seq"'::regclass);


--
-- TOC entry 3031 (class 2604 OID 17465)
-- Name: Site_Type Site_Type_ID; Type: DEFAULT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Site_Type" ALTER COLUMN "Site_Type_ID" SET DEFAULT nextval('public."Site_Type_Site_Type_ID_seq"'::regclass);


--
-- TOC entry 3032 (class 2604 OID 17466)
-- Name: Speedy Speedy_ID; Type: DEFAULT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Speedy" ALTER COLUMN "Speedy_ID" SET DEFAULT nextval('public."Speedy_ID"'::regclass);


--
-- TOC entry 3034 (class 2604 OID 17467)
-- Name: Speedy_Stock Speedy_Stock_ID; Type: DEFAULT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Speedy_Stock" ALTER COLUMN "Speedy_Stock_ID" SET DEFAULT nextval('public."Speedy_Stock_ID"'::regclass);


--
-- TOC entry 3035 (class 2604 OID 17468)
-- Name: Speedy_Transfer Speedy_Transfer_ID; Type: DEFAULT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Speedy_Transfer" ALTER COLUMN "Speedy_Transfer_ID" SET DEFAULT nextval('public."Speedy_Transfer_ID"'::regclass);


--
-- TOC entry 3036 (class 2604 OID 17469)
-- Name: Transfer_Status Transfer_Status_ID; Type: DEFAULT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Transfer_Status" ALTER COLUMN "Transfer_Status_ID" SET DEFAULT nextval('public."Transfer_Status_Transfer_Status_ID_seq"'::regclass);


--
-- TOC entry 3037 (class 2604 OID 17470)
-- Name: Worker Worker_ID; Type: DEFAULT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Worker" ALTER COLUMN "Worker_ID" SET DEFAULT nextval('public."Worker_Worker_ID_seq"'::regclass);


--
-- TOC entry 3038 (class 2604 OID 17471)
-- Name: Worker_Position Worker_Position_ID; Type: DEFAULT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Worker_Position" ALTER COLUMN "Worker_Position_ID" SET DEFAULT nextval('public."Worker_Position_Worker_Position_ID_seq"'::regclass);


--
-- TOC entry 3320 (class 0 OID 16433)
-- Dependencies: 219
-- Data for Name: AspNetRoleClaims; Type: TABLE DATA; Schema: public; Owner: inventory
--

COPY public."AspNetRoleClaims" ("Id", "ClaimType", "ClaimValue", "RoleId") FROM stdin;
\.


--
-- TOC entry 3321 (class 0 OID 16440)
-- Dependencies: 220
-- Data for Name: AspNetRoles; Type: TABLE DATA; Schema: public; Owner: inventory
--

COPY public."AspNetRoles" ("Id", "ConcurrencyStamp", "Name", "NormalizedName") FROM stdin;
1	\N	Admin	ADMIN
\.


--
-- TOC entry 3322 (class 0 OID 16446)
-- Dependencies: 221
-- Data for Name: AspNetUserClaims; Type: TABLE DATA; Schema: public; Owner: inventory
--

COPY public."AspNetUserClaims" ("Id", "ClaimType", "ClaimValue", "UserId") FROM stdin;
\.


--
-- TOC entry 3323 (class 0 OID 16453)
-- Dependencies: 222
-- Data for Name: AspNetUserLogins; Type: TABLE DATA; Schema: public; Owner: inventory
--

COPY public."AspNetUserLogins" ("LoginProvider", "ProviderKey", "ProviderDisplayName", "UserId") FROM stdin;
\.


--
-- TOC entry 3324 (class 0 OID 16459)
-- Dependencies: 223
-- Data for Name: AspNetUserRoles; Type: TABLE DATA; Schema: public; Owner: inventory
--

COPY public."AspNetUserRoles" ("UserId", "RoleId") FROM stdin;
1a311b56-efca-4b87-ad2e-c230298a0194	1
53a16ec3-9d43-457e-ac9b-8544ddec6c94	1
\.


--
-- TOC entry 3326 (class 0 OID 16471)
-- Dependencies: 225
-- Data for Name: AspNetUserTokens; Type: TABLE DATA; Schema: public; Owner: inventory
--

COPY public."AspNetUserTokens" ("UserId", "LoginProvider", "Name", "Value") FROM stdin;
\.


--
-- TOC entry 3325 (class 0 OID 16465)
-- Dependencies: 224
-- Data for Name: AspNetUsers; Type: TABLE DATA; Schema: public; Owner: inventory
--

COPY public."AspNetUsers" ("Id", "AccessFailedCount", "ConcurrencyStamp", "Email", "EmailConfirmed", "LockoutEnabled", "LockoutEnd", "NormalizedEmail", "NormalizedUserName", "PasswordHash", "PhoneNumber", "PhoneNumberConfirmed", "SecurityStamp", "TwoFactorEnabled", "UserName") FROM stdin;
1a311b56-efca-4b87-ad2e-c230298a0194	0	ace966b2-3058-40e2-9324-28ab032bf23d	vahram@hf.am	f	t	\N	VAHRAM@HF.AM	VAHRAM@HF.AM	AQAAAAEAACcQAAAAECIsswshCMcJc2byFJZll24nHEvxJA4+s+KR9ruK+bIiKf2igVwMk+7U6CxX2cBFQQ==	\N	f	504be1dc-6cad-42d1-992f-0fe32884528f	f	vahram@hf.am
1bee6e23-bab2-4f8f-9e00-d297c4b1d985	0	00f68b05-af7f-4cf0-9b9d-20a5ed297433	hasmik@hf.am	f	t	\N	HASMIK@HF.AM	HASMIK@HF.AM	AQAAAAEAACcQAAAAEEmnUWfhJWtX/sLnQ7A0CpJStQqOe33H50yU3I501VKDh5xQFTP2juYpa05thHasZw==	\N	f	d1f232a8-a601-40a7-a1d3-9f501d4e44e6	f	hasmik@hf.am
3c4b830a-2f12-47a0-a618-c5d82f4f58c1	0	0bb95ad6-2b66-47d2-9c22-d86f398333e2	sarmen@hf.am	f	t	\N	SARMEN@HF.AM	SARMEN@HF.AM	AQAAAAEAACcQAAAAEOs7E+A0nCrN/O1lnEEaMgBgqHdvgBJ5F3Ojj0uhLNNYSwpFiUCwlybbsuJWubWzzA==	\N	f	29e7b57f-8b14-4320-816f-a83a7104893a	f	sarmen@hf.am
53a16ec3-9d43-457e-ac9b-8544ddec6c94	0	3f59049d-83a3-499a-99ce-2dd0467ff106	maria@hf.am	f	t	\N	MARIA@HF.AM	MARIA@HF.AM	AQAAAAEAACcQAAAAEDcbXeJxxyF/Z2CxAS1NKmbyMT6aoFLA744WIXk+BHAushhBfZ0zkP07DpZfdfhqKw==	\N	f	e7ad5d59-afdb-4be7-a0ca-1f3044f5a125	f	maria@hf.am
87fff8c8-a34b-4e1c-9b8c-fcb85f1795f2	0	fd52d17b-07b5-45bb-9498-166d9c5bf8f8	evelina@hf.am	f	t	\N	EVELINA@HF.AM	EVELINA@HF.AM	AQAAAAEAACcQAAAAEMPIGsyMmIMatt9eLefPh6oHY5ZosHOrYfN7vRdK6NfUjezE4MUgnU40AgEbiCVzug==	\N	f	28d6be29-d5ba-4e7d-93f0-1b4dbbb503a4	f	evelina@hf.am
8f754c3b-9356-44cd-9d3c-17076a0ed9a2	0	fe169f68-4569-4345-8ba7-1904bce01017	Armen.hayrapetyan@hf.am	f	t	\N	ARMEN.HAYRAPETYAN@HF.AM	ARMEN.HAYRAPETYAN@HF.AM	AQAAAAEAACcQAAAAEOJ43XcS4hEfeoJByhqDvoKIr2DK+LOREOXypJ6hmyAvG5Qv7PShWSnkwYMjebTB3A==	\N	f	757dde3a-8ed4-4184-8639-24b666e1f629	f	Armen.hayrapetyan@hf.am
9e5ed0b2-3589-4f59-9f0e-5dc386efaf0b	0	52e279ef-1a84-4ee1-b4a8-25891fcbcfe7	sonahdavtyan@gmail.com	f	t	\N	SONAHDAVTYAN@GMAIL.COM	SONAHDAVTYAN@GMAIL.COM	AQAAAAEAACcQAAAAEJFIgAjVAgzf4l12oQAsY2KoiUNU7NeKRyH6Di+WYrdvicEPpV/XC4Cg2n1Zqs4d2g==	\N	f	709bef4a-eaa6-40c9-863c-971e7e2e42f4	f	sonahdavtyan@gmail.com
b8a696b0-246e-4dd7-9b13-601cfcbb89bd	0	a17d0786-fc73-483f-babc-21c75b1fe1d9	jass.manasyan@gmail.com	f	t	\N	JASS.MANASYAN@GMAIL.COM	JASS.MANASYAN@GMAIL.COM	AQAAAAEAACcQAAAAENLDoAXPdTl/OaEgl5dB5gOiIPYk2gDiaTTRFmKFIi0ui/djnIoBDEggH39ASdbNhg==	\N	f	1135941e-9469-4d4b-8e3d-34e0c1a09f0d	f	jass.manasyan@gmail.com
c94435d5-a20f-40a1-8167-ec8e28521dd3	0	b7237b09-6c80-4096-b01b-3d6c378a148e	sirekan@hf.am	f	t	\N	SIREKAN@HF.AM	SIREKAN@HF.AM	AQAAAAEAACcQAAAAEPsbU7mmNm4fk5uU+DqWUMOqvNRtNJ+yy9F9hHmcPWpKT7Ddt6LFBS76QGgg5Rx4cg==	\N	f	f72a8e86-6d5f-400b-82bc-58947aba58f1	f	sirekan@hf.am
\.


--
-- TOC entry 3327 (class 0 OID 16477)
-- Dependencies: 226
-- Data for Name: Connection_Type; Type: TABLE DATA; Schema: public; Owner: inventory
--

COPY public."Connection_Type" ("Connection_Type_ID", "Connection_Type_Name") FROM stdin;
1	Optic
2	Wireless
3	P2P
4	Hi-Line
5	3G Viva
\.


--
-- TOC entry 3328 (class 0 OID 16484)
-- Dependencies: 227
-- Data for Name: Frequency; Type: TABLE DATA; Schema: public; Owner: inventory
--

COPY public."Frequency" ("Frequency_ID", "Frequency_Name") FROM stdin;
1	2.4 Ghz
2	5 Ghz
\.


--
-- TOC entry 3329 (class 0 OID 16491)
-- Dependencies: 228
-- Data for Name: Item; Type: TABLE DATA; Schema: public; Owner: inventory
--

COPY public."Item" ("Item_ID", "Model_ID", "Serial_Number", "Inventory_Number", "Owner_ID", "MAC_Address", "Item_Status_ID", "Creator", "LastModifier") FROM stdin;
1	11	24a43ca63110	24a43ca63110	3	24a43ca63110	\N	\N	\N
2	29	71a306213311/652	71a306213311/652	4	6c3b6bd58896	\N	\N	\N
3	45	ant24072	ant24072	3		\N	\N	\N
4	20	802aa8ae8d14	802aa8ae8d14	2	802aa8ae8d14	\N	\N	\N
5	29	71a306b7445b	71a306b7445b	4	6c3b6bd7f3e1	\N	\N	jass.manasyan@gmail.com
6	1	f09fc246e34d	F09FC246E34D	1	F09FC246E34D	\N	\N	\N
7	29	71a30638ee7b	71A30638EE7B	4	6C3B6BDA0FCD	\N	\N	\N
8	19	802aa808fbe5	802AA808FBE5	1	802AA808FBE5	\N	\N	\N
9	29	71а306126779	71А306126779	4	6C3B6BD7EADA	\N	\N	\N
10	1	f09fc246e46a	F09FC246E46A	1	F09FC246E46A	\N	\N	\N
11	29	71a306642f7c	71A306642F7C	4	6C3B6BDA0E84	\N	\N	\N
12	1	f09fc246e355	F09FC246E355	1	F09FC246E355	\N	\N	\N
13	29	71a306607ae8	71A306607AE8	4	6C3B6BD7EC2B	\N	\N	\N
14	1	802aa87af8ee	802AA87AF8EE	1	802AA87AF8EE	\N	\N	\N
15	1	802aa87aee80	802AA87AEE80	1	802AA87AEE80	\N	\N	\N
16	1	802aa87ae629	802AA87AE629	1	802AA87AE629	\N	\N	\N
17	1	f09fc246e6a5	F09FC246E6A5	1	F09FC246E6A5	\N	\N	\N
18	1	802aa87ae3be	802AA87AE3BE	1	802AA87AE3BE	\N	\N	\N
19	1	802aa806dc77	802AA806DC77	1	802AA806DC77	1	\N	jass.manasyan@gmail.com
20	1	802aa806dd0e	802AA806DD0E	1	802AA806DD0E	\N	\N	\N
21	1	802aa806d7a7	802AA806D7A7	1	802AA806D7A7	1	\N	jass.manasyan@gmail.com
22	1	802aa806da44	802AA806DA44	1	802AA806DA44	1	\N	jass.manasyan@gmail.com
23	1	f09fc246e298	F09FC246E298	1	F09FC246E298	\N	\N	\N
24	1	f09fc246e825	F09FC246E825	1	F09FC246E825	\N	\N	\N
25	1	f09fc246edb0	F09FC246EDB0	1	F09FC246EDB0	\N	\N	\N
26	1	f09fc246e613	F09FC246E613	1	F09FC246E613	2	\N	hasmik@hf.am
27	1	f09fc246e77d	F09FC246E77D	1	F09FC246E77D	1	\N	\N
28	1	f09fc246e757	F09FC246E757	1	F09FC246E757	\N	\N	\N
29	1	f09fc246e866	F09FC246E866	1	F09FC246E866	1	\N	\N
30	1	802aa8f8799b	802AA8F8799B	1	802AA8F8799B	2	\N	jass.manasyan@gmail.com
31	1	f09fc246e39f	F09FC246E39F	1	F09FC246E39F	\N	\N	\N
32	1	f09fc246e4b3	F09FC246E4B3	1	F09FC246E4B3	1	\N	\N
33	1	f09fc246e44a	F09FC246E44A	1	F09FC246E44A	1	\N	\N
34	1	f09fc246e652	F09FC246E652	1	F09FC246E652	1	\N	sonahdavtyan@gmail.com
35	1	f09fc246e5b4	F09FC246E5B4	1	F09FC246E5B4	1	\N	jass.manasyan@gmail.com
36	1	802aa8ba1cd1	802AA8BA1CD1	1	802AA8BA1CD1	\N	\N	\N
37	1	802aa8ba1cd4	802AA8BA1CD4	1	802AA8BA1CD4	1	\N	jass.manasyan@gmail.com
38	1	802aa8ba1c4a	802AA8BA1C4A	1	802AA8BA1C4A	1	\N	jass.manasyan@gmail.com
39	1	802aa8ba1c6d	802AA8BA1C6D	1	802AA8BA1C6D	1	\N	jass.manasyan@gmail.com
40	1	802aa8ba1c26	802AA8BA1C26	1	802AA8BA1C26	\N	\N	\N
41	1	f09fc246e16f	F09FC246E16F	1	F09FC246E16F	\N	\N	\N
42	1	f09fc246e39c	F09FC246E39C	1	F09FC246E39C	\N	\N	\N
43	1	f09fc246e364	F09FC246E364	1	F09FC246E364	\N	\N	\N
44	1	f09fc246e0e7	F09FC246E0E7	1	F09FC246E0E7	\N	\N	\N
45	1	f09fc246e340	F09FC246E340	1	F09FC246E340	\N	\N	\N
46	1	802aa8f877c5	802AA8F877C5	1	802AA8F877C5	\N	\N	\N
47	1	802aa8f878f5	802AA8F878F5	1	802AA8F878F5	1	\N	hasmik@hf.am
48	1	802aa8f8802b	802AA8F8802B	1	802AA8F8802B	1	\N	hasmik@hf.am
49	1	802aa8bc1e2b	802AA8BC1E2B	1	802AA8BC1E2B	\N	\N	\N
50	1	802aa8bc1fa4	802AA8BC1FA4	1	802AA8BC1FA4	1	\N	hasmik@hf.am
51	1	802aa8bc1e23	802AA8BC1E23	1	802AA8BC1E23	\N	\N	\N
52	1	802aa8f87496	802AA8F87496	1	802AA8F87496	\N	\N	\N
53	1	802aa8f880a9	802AA8F880A9	1	802AA8F880A9	\N	\N	\N
54	1	802aa8f8801f	802AA8F8801F	1	802AA8F8801F	\N	\N	\N
55	1	802aa8f87843	802AA8F87843	1	802AA8F87843	\N	\N	\N
56	1	f09fc246e645	F09FC246E645	1	F09FC246E645	1	\N	hasmik@hf.am
57	1	f09fc246e5af	F09FC246E5AF	1	F09FC246E5AF	1	\N	hasmik@hf.am
58	1	f09fc246e478	F09FC246E478	1	F09FC246E478	1	\N	hasmik@hf.am
59	1	f09fc246e506	F09FC246E506	1	F09FC246E506	1	\N	hasmik@hf.am
60	1	f09fc246e4c5	F09FC246E4C5	1	F09FC246E4C5	1	\N	hasmik@hf.am
61	1	f09fc246e2e9	F09FC246E2E9	1	F09FC246E2E9	1	\N	hasmik@hf.am
62	1	f09fc246e1da	F09FC246E1DA	1	F09FC246E1DA	\N	\N	\N
63	1	f09fc246e7d2	F09FC246E7D2	1	F09FC246E7D2	\N	\N	\N
64	1	f09fc246e4d6	F09FC246E4D6	1	F09FC246E4D6	\N	\N	\N
65	1	f09fc246e338	F09FC246E338	1	F09FC246E338	1	\N	\N
66	1	f09fc246e6d7	F09FC246E6D7	1	F09FC246E6D7	1	\N	hasmik@hf.am
67	1	802aa8f87ab8	802AA8F87AB8	1	802AA8F87AB8	1	\N	hasmik@hf.am
68	1	f09fc246e474	F09FC246E474	1	F09FC246E474	1	\N	hasmik@hf.am
69	1	802aa8f875f7	802AA8F875F7	1	802AA8F875F7	1	\N	jass.manasyan@gmail.com
70	1	f09fc246e869	F09FC246E869	1	F09FC246E869	2	\N	jass.manasyan@gmail.com
71	1	f09fc246e6b8	F09FC246E6B8	1	F09FC246E6B8	1	\N	hasmik@hf.am
72	1	f09fc246e860	F09FC246E860	1	F09FC246E860	1	\N	jass.manasyan@gmail.com
73	1	f09fc246e5cd	F09FC246E5CD	1	F09FC246E5CD	1	\N	jass.manasyan@gmail.com
74	1	f09fc246e509	F09FC246E509	1	F09FC246E509	\N	\N	\N
75	1	f09fc246e22a	F09FC246E22A	1	F09FC246E22A	\N	\N	\N
76	1	f09fc246e729	F09FC246E729	1	F09FC246E729	\N	\N	\N
77	1	f09fc246e609	F09FC246E609	1	F09FC246E609	\N	\N	\N
78	1	f09fc246e576	F09FC246E576	1	F09FC246E576	\N	\N	\N
79	1	f09fc246e5ee	F09FC246E5EE	1	F09FC246E5EE	\N	\N	\N
80	1	f09fc246e5d6	F09FC246E5D6	1	F09FC246E5D6	\N	\N	\N
81	1	f09fc246e47f	F09FC246E47F	1	F09FC246E47F	\N	\N	\N
82	1	f09fc246e45f	F09FC246E45F	1	F09FC246E45F	\N	\N	\N
83	1	f09fc246e469	F09FC246E469	1	F09FC246E469	\N	\N	\N
84	1	f09fc246e330	F09FC246E330	1	F09FC246E330	\N	\N	\N
85	1	f09fc246e30e	F09FC246E30E	1	F09FC246E30E	\N	\N	\N
86	1	f09fc246e431	F09FC246E431	1	F09FC246E431	\N	\N	\N
87	1	f09fc246e408	F09FC246E408	1	F09FC246E408	\N	\N	\N
88	1	f09fc246e43b	F09FC246E43B	1	F09FC246E43B	\N	\N	\N
89	1	802aa8bc1b58	802AA8BC1B58	1	802AA8BC1B58	\N	\N	\N
90	1	0418d68a3169	0418D68A3169	3	0418D68A3169	\N	\N	\N
91	1	f09fc246e467	F09FC246E467	1	F09FC246E467	\N	\N	\N
92	1	802aa8f88019	802AA8F88019	1	802AA8F88019	\N	\N	\N
93	1	f09fc246e369	F09FC246E369	1	F09FC246E369	\N	\N	\N
94	1	802aa8bc1e89	802AA8BC1E89	1	802AA8BC1E89	\N	\N	\N
95	1	f09fc246e742	F09FC246E742	1	F09FC246E742	\N	\N	\N
96	1	f09fc246e647	F09FC246E647	1	F09FC246E647	\N	\N	\N
97	1	f09fc246e4e3	F09FC246E4E3	1	F09FC246E4E3	1	\N	\N
98	1	f09fc246e802	F09FC246E802	1	F09FC246E802	\N	\N	\N
99	1	f09fc246ec4a	F09FC246EC4A	1	F09FC246EC4A	\N	\N	\N
100	1	f09fc246e7ab	F09FC246E7AB	1	F09FC246E7AB	\N	\N	\N
101	1	802aa8f8777f	802AA8F8777F	1	802AA8F8777F	\N	\N	\N
102	1	f09fc246e993	F09FC246E993	1	F09FC246E993	\N	\N	\N
103	1	f09fc246e4ae	F09FC246E4AE	1	F09FC246E4AE	\N	\N	\N
104	1	f09fc246e3b2	F09FC246E3B2	1	F09FC246E3B2	1	\N	evelina@hf.am
105	1	f09fc246ec88	F09FC246EC88	1	F09FC246EC88	1	\N	jass.manasyan@gmail.com
106	1	f09fc246e3cd	F09FC246E3CD	1	F09FC246E3CD	1	\N	jass.manasyan@gmail.com
107	1	802aa87af7be	802AA87AF7BE	1	802AA87AF7BE	1	\N	hasmik@hf.am
108	1	f09fc246e3b5	F09FC246E3B5	1	F09FC246E3B5	\N	\N	\N
109	1	f09fc246e368	F09FC246E368	1	F09FC246E368	\N	\N	\N
110	1	f09fc246e5a0	F09FC246E5A0	1	F09FC246E5A0	\N	\N	\N
111	1	f09fc246e3e4	F09FC246E3E4	1	F09FC246E3E4	\N	\N	\N
112	1	f09fc246e365	F09FC246E365	1	F09FC246E365	\N	\N	\N
113	1	f09fc246e2c1	F09FC246E2C1	1	F09FC246E2C1	\N	\N	\N
114	1	f09fc246e6cd	F09FC246E6CD	1	F09FC246E6CD	\N	\N	\N
115	1	f09fc246e8be	F09FC246E8BE	1	F09FC246E8BE	\N	\N	\N
116	1	f09fc246e665	F09FC246E665	1	F09FC246E665	\N	\N	\N
117	1	f09fc246e634	F09FC246E634	1	F09FC246E634	\N	\N	\N
118	1	f09fc246e7d8	F09FC246E7D8	1	F09FC246E7D8	\N	\N	\N
119	1	44d9e7ae2abb	44D9E7AE2ABB	1	44D9E7AE2ABB	1	\N	hasmik@hf.am
120	1	44d9e7ae2acd	44D9E7AE2ACD	1	44D9E7AE2ACD	1	\N	hasmik@hf.am
121	1	44d9e7ae2a11	44D9E7AE2A11	1	44D9E7AE2A11	1	\N	hasmik@hf.am
123	1	44d9e7ae2a13	44D9E7AE2A13	1	44D9E7AE2A13	1	\N	hasmik@hf.am
124	1	f09fc246e39d	F09FC246E39D	1	F09FC246E39D	\N	\N	\N
125	1	f09fc246e89f	F09FC246E89F	1	F09FC246E89F	\N	\N	\N
126	1	f09fc246e565	F09FC246E565	1	F09FC246E565	\N	\N	\N
127	1	f09fc246e5c8	F09FC246E5C8	1	F09FC246E5C8	\N	\N	\N
128	1	f09fc246e682	F09FC246E682	1	F09FC246E682	\N	\N	\N
129	1	f09fc246e406	F09FC246E406	1	F09FC246E406	\N	\N	\N
130	1	f09fc246e48a	F09FC246E48A	1	F09FC246E48A	\N	\N	\N
131	1	802aa8ba1e1a	802AA8BA1E1A	1	802AA8BA1E1A	\N	\N	\N
132	1	f09fc246e1f7	F09FC246E1F7	1	F09FC246E1F7	\N	\N	\N
133	1	f09fc246e536	F09FC246E536	1	F09FC246E536	\N	\N	\N
134	22	802aa8f19a84	802AA8F19A84	1	802AA8F19A84	\N	\N	\N
135	22	802aa8f1a5a4	802AA8F1A5A4	1	802AA8F1A5A4	\N	\N	\N
136	22	802aa8f1aa9e	802AA8F1AA9E	1	802AA8F1AA9E	\N	\N	\N
137	22	802aa8f1a588	802AA8F1A588	1	802AA8F1A588	\N	\N	\N
138	22	802aa8f1975b 	802AA8F1975B	1	802AA8F1975B	\N	\N	\N
139	22	802aa8f1a623	802AA8F1A623	1	802AA8F1A623	\N	\N	\N
140	22	802aa8f1a3f4	802AA8F1A3F4	1	802AA8F1A3F4	\N	\N	\N
141	22	802aa8f1a570	802AA8F1A570	1	802AA8F1A570	\N	\N	\N
142	22	802aa8f1a4d2	802AA8F1A4D2	1	802AA8F1A4D2	\N	\N	\N
143	22	802aa8f195d0	802AA8F195D0	1	802AA8F195D0	\N	\N	\N
144	22	802aa8f19a8d	802AA8F19A8D	1	802AA8F19A8D	\N	\N	\N
145	22	802aa8f1a3ee	802AA8F1A3EE	1	802AA8F1A3EE	\N	\N	\N
146	22	802aa8f1a4cf	802AA8F1A4CF	1	802AA8F1A4CF	\N	\N	\N
147	22	802aa8f19ab8	802AA8F19AB8	1	802AA8F19AB8	\N	\N	\N
148	22	802aa8f1a4d9	802AA8F1A4D9	1	802AA8F1A4D9	\N	\N	\N
149	22	802aa8f1a494	802AA8F1A494	1	802AA8F1A494	\N	\N	\N
150	22	802aa8f1a5f8	802AA8F1A5F8	1	802AA8F1A5F8	2	\N	\N
151	22	802aa8f1a698	802AA8F1A698	1	802AA8F1A698	\N	\N	\N
152	22	802aa8f1a6b8	802AA8F1A6B8	1	802AA8F1A6B8	\N	\N	\N
153	22	802aa8f1a3e5	802AA8F1A3E5	1	802AA8F1A3E5	\N	\N	\N
155	22	802aa8f1a6aa	802AA8F1A6AA	1	802AA8F1A6AA	\N	\N	\N
157	22	802aa8f1a65a	802AA8F1A65A	1	802AA8F1A65A	\N	\N	\N
158	22	802aa8f1a5f7	802AA8F1A5F7	1	802AA8F1A5F7	1	\N	\N
159	22	802aa8f1a56f	802AA8F1A56F	1	802AA8F1A56F	1	\N	jass.manasyan@gmail.com
160	22	802aa8f1a5f6	802AA8F1A5F6	1	802AA8F1A5F6	1	\N	jass.manasyan@gmail.com
161	22	802aa8f1a590	802AA8F1A590	1	802AA8F1A590	1	\N	jass.manasyan@gmail.com
162	22	802aa8f1a453	802AA8F1A453	1	802AA8F1A453	1	\N	hasmik@hf.am
163	22	802aa8f1a6a9	802AA8F1A6A9	1	802AA8F1A6A9	1	\N	jass.manasyan@gmail.com
164	22	802aa8f1a636	802AA8F1A636	1	802AA8F1A636	1	\N	jass.manasyan@gmail.com
156	22	802aa8f1a5a5	802AA8F1A5A5	1	802AA8F1A5A5	2	\N	hasmik@hf.am
166	22	802aa8f19626	802AA8F19626	1	802AA8F19626	1	\N	jass.manasyan@gmail.com
167	22	802aa8f1a573	802AA8F1A573	1	802AA8F1A573	1	\N	jass.manasyan@gmail.com
168	22	802aa8f1a492	802AA8F1A492	1	802AA8F1A492	1	\N	hasmik@hf.am
169	22	802aa8f1a491	802AA8F1A491	1	802AA8F1A491	\N	\N	\N
170	22	802aa8f1a47e	802AA8F1A47E	1	802AA8F1A47E	\N	\N	\N
171	22	802aa8f1a3d8	802AA8F1A3D8	1	802AA8F1A3D8	\N	\N	\N
172	22	802aa8f1a4c6	802AA8F1A4C6	1	802AA8F1A4C6	\N	\N	\N
173	22	802aa8f1a3d2	802AA8F1A3D2	1	802AA8F1A3D2	1	\N	hasmik@hf.am
174	22	802aa8f195d7	802AA8F195D7	1	802AA8F195D7	\N	\N	\N
175	22	802aa8f195ed	802AA8F195ED	1	802AA8F195ED	\N	\N	\N
177	22	802aa8f1a3f9	802AA8F1A3F9	1	802AA8F1A3F9	\N	\N	\N
178	22	802aa8f1a412	802AA8F1A412	1	802AA8F1A412	\N	\N	\N
179	22	802aa8f1a417	802AA8F1A417	1	802AA8F1A417	\N	\N	\N
180	22	802aa8f1a418	802AA8F1A418	1	802AA8F1A418	\N	\N	\N
181	22	802aa8f1a423	802AA8F1A423	1	802AA8F1A423	\N	\N	\N
182	22	802aa8f1a3f8	802AA8F1A3F8	1	802AA8F1A3F8	\N	\N	\N
183	22	802aa8f195f1	802AA8F195F1	1	802AA8F195F1	\N	\N	\N
184	22	802aa8f1a481	802AA8F1A481	1	802AA8F1A481	\N	\N	\N
185	22	802aa8f1a400	802AA8F1A400	1	802AA8F1A400	\N	\N	\N
186	22	802aa8f1a47a	802AA8F1A47A	1	802AA8F1A47A	\N	\N	\N
187	22	802aa8f195ce	802AA8F195CE	1	802AA8F195CE	\N	\N	\N
188	22	802aa8f19db4	802AA8F19DB4	1	802AA8F19DB4	1	\N	hasmik@hf.am
189	23	802aa81f51d1	802AA81F51D1	1	802AA81F51D1	\N	\N	\N
190	23	802aa81f523a	802AA81F523A	1	802AA81F523A	\N	\N	\N
191	4	802aa8240bb1	802AA8240BB1	1	802AA8240BB1	\N	\N	\N
192	4	802aa8240a9b	802AA8240A9B	1	802AA8240A9B	\N	\N	\N
193	3	f09fc2502453	F09FC2502453	1	F09FC2502453	\N	\N	\N
194	3	f09fc250433b	F09FC250433B	1	F09FC250433B	\N	\N	\N
195	3	f09fc2504444	F09FC2504444	1	F09FC2504444	\N	\N	\N
196	3	f09fc25022b6	F09FC25022B6	1	F09FC25022B6	\N	\N	\N
197	5	802aa8a485ae	802AA8A485AE	1	802AA8A485AE	2	\N	jass.manasyan@gmail.com
199	19	802aa806c969	802AA806C969	1	802AA806C969	\N	\N	\N
203	10	0418d6f6e232	0418D6F6E232	1	0418D6F6E232	\N	\N	\N
205	8	802aa8b83a23	802AA8B83A23	1	802AA8B83A23	1	\N	hasmik@hf.am
206	6	6872512035bd	6872512035BD	3	6872512035BD	\N	\N	\N
207	6	687251284198	687251284198	3	687251284198	\N	\N	\N
208	6	68725128412e	68725128412E	3	68725128412E	\N	\N	\N
209	6	687251284014	687251284014	3	687251284014	\N	\N	\N
210	6	68725166c519	68725166C519	1	68725166C519	\N	\N	\N
211	6	68725128403b	68725128403B	3	68725128403B	\N	\N	\N
212	6	687251441278	687251441278	3	687251441278	\N	\N	\N
213	6	687251284184	687251284184	3	687251284184	\N	\N	\N
214	6	68725120357d	68725120357D	3	68725120357D	\N	\N	\N
215	6	687251203514	687251203514	3	687251203514	\N	\N	\N
216	6	687251284134	687251284134	3	687251284134	\N	\N	\N
217	6	68725166c535	68725166C535	1	68725166C535	\N	\N	\N
218	6	6872514412cd	6872514412CD	3	6872514412CD	\N	\N	\N
219	6	68725128406f	68725128406F	3	68725128406F	\N	\N	\N
220	6	24a43c962b65	24A43C962B65	3	24A43C962B65	4	\N	vahram@hf.am
221	6	687251203629	687251203629	3	687251203629	\N	\N	\N
222	6	6872512840a9	6872512840A9	3	6872512840A9	\N	\N	\N
223	6	68725140ca4b	68725140CA4B	3	68725140CA4B	\N	\N	\N
224	6	68725128400b	68725128400B	3	68725128400B	4	\N	vahram@hf.am
229	6	68725166c521	68725166C521	1	68725166C521	\N	\N	\N
234	6	6872512840e6	6872512840E6	3	6872512840E6	\N	\N	\N
245	17	802aa86aee14	802AA86AEE14	1	802AA86AEE14	1	\N	hasmik@hf.am
250	17	802aa86aee4b	802AA86AEE4B	1	802AA86AEE4B	1	\N	hasmik@hf.am
251	17	802aa86af17d	802AA86AF17D	1	802AA86AF17D	\N	\N	\N
252	17	802aa86af0d4	802AA86AF0D4	1	802AA86AF0D4	\N	\N	\N
253	28	ftx1538b0pn	FTX1538B0PN	3	708105927336	4	\N	vahram@hf.am
254	28	ftx1539b01f	FTX1539B01F	3	708105926е94	4	\N	vahram@hf.am
255	28	ftx1537b09d	FTX1537B09D	3	708105927122	4	\N	vahram@hf.am
256	28	ftx1538b0qy	FTX1538B0QY	3	708105926D22	4	\N	vahram@hf.am
257	28	ftx1538b0pj	FTX1538B0PJ	3	708105927306	4	\N	vahram@hf.am
258	28	ftx1538b0cq	FTX1538B0CQ	3	70810592754C	4	\N	vahram@hf.am
259	28	ftx1539b023	FTX1539B023	3	708105926F74	4	\N	vahram@hf.am
260	28	ftx1538b0sz	FTX1538B0SZ	3	70810592734E	4	\N	vahram@hf.am
261	28	ftx1538b0ep	FTX1538B0EP	3	7081059273D0	4	\N	vahram@hf.am
262	28	ftx1538b0vj	FTX1538B0VJ	3	708105927316	4	\N	vahram@hf.am
263	28	ftx1538b0sc	FTX1538B0SC	3	7081052FC88C	4	\N	vahram@hf.am
264	28	ftx1538b0q5	FTX1538B0Q5	3	708105926D78	4	\N	vahram@hf.am
265	28	ftx1237b2yu	FTX1237B2YU	1	001D70977D46	\N	\N	\N
266	28	ftx1126b2yj	FTX1126B2YJ	1	001C587ACD8E	\N	\N	\N
267	28	ftx1237b2y9	FTX1237B2Y9	1	001D70978C60	\N	\N	\N
268	28	ftx1520b0wg	FTX1520B0WG	1	405539FC4570	\N	\N	\N
269	28	ftx1340b11x	FTX1340B11X	1	00260B4D186C	\N	\N	\N
270	28	ftx1144b1gp	FTX1144B1GP	1	001DA1CDE14C	\N	\N	\N
202	8	802aa8b83ae6	802AA8B83AE6	1	802AA8B83AE6	1	\N	hasmik@hf.am
204	10	0418d6f475a4	0418D6F475A4	1	0418D6F475A4	1	\N	hasmik@hf.am
176	22	802aa8f1a44a	802AA8F1A44A	1	802AA8F1A44A	1	\N	hasmik@hf.am
198	19	802aa806cfc7	802AA806CFC7	1	802AA806CFC7	1	\N	hasmik@hf.am
271	28	ftx1126b2kl	FTX1126B2KL	1	001C587AD05C	\N	\N	\N
272	28	ftx1126b2km	FTX1126B2KM	1	001C587AD154	\N	\N	\N
273	28	ftx1126b2rd	FTX1126B2RD	1	001C5857ED16	\N	\N	\N
274	28	ftx1237b2yd	FTX1237B2YD	1	001D709784A6	\N	\N	\N
275	24	ftx1549u05b	FTX1549U05B	3	649EF3010646	4	\N	vahram@hf.am
276	24	ftx1539u07s	FTX1539U07S	3	7081053A7836	4	\N	vahram@hf.am
277	24	ftx1539u083	FTX1539U083	3	7081053A78E8	4	\N	vahram@hf.am
278	24	ftx1549u05g	FTX1549U05G	3	649EF301043C	4	\N	vahram@hf.am
279	24	ftx1549u06g	FTX1549U06G	3	649EF3010600	4	\N	vahram@hf.am
280	24	ftx1539u08g	FTX1539U08G	3	7081053A79BC	4	\N	vahram@hf.am
281	24	ftx1549u04f	FTX1549U04F	3	649EF3010330	4	\N	vahram@hf.am
282	24	ftx1549u062	FTX1549U062	3	649EF3010688	4	\N	vahram@hf.am
283	24	ftx1549u05a	FTX1549U05A	3	649EF30106C0	4	\N	vahram@hf.am
284	24	ftx1539u08f	FTX1539U08F	3	7081053A78FA	4	\N	vahram@hf.am
285	24	ftx1539u09k	FTX1539U09K	3	7081053A7574	4	\N	vahram@hf.am
286	24	ftx1539u06v	FTX1539U06V	3	7081053A765C	4	\N	vahram@hf.am
287	24	ftx1539u0ah	FTX1539U0AH	3	7081053A757A	4	\N	vahram@hf.am
288	5	802aa8a4c225	802AA8A4C225	1	802AA8A4C225	\N	\N	\N
289	5	802aa8a4c1c8	802AA8A4C1C8	1	802AA8A4C1C8	\N	\N	\N
290	5	802aa8a4c2a5	802AA8A4C2A5	1	802AA8A4C2A5	\N	\N	\N
291	5	802aa8a4c300	802AA8A4C300	1	802AA8A4C300	\N	\N	\N
292	5	802aa8a4c2ed	802AA8A4C2ED	1	802AA8A4C2ED	\N	\N	\N
293	5	802aa8a4c36e	802AA8A4C36E	1	802AA8A4C36E	1	\N	jass.manasyan@gmail.com
294	5	802aa8a4c282	802AA8A4C282	1	802AA8A4C282	1	\N	jass.manasyan@gmail.com
295	5	802aa8a4c905	802AA8A4C905	1	802AA8A4C905	1	\N	jass.manasyan@gmail.com
296	5	802aa8a4c9be	802AA8A4C9BE	1	802AA8A4C9BE	1	\N	jass.manasyan@gmail.com
297	5	802aa8a4c2d4	802AA8A4C2D4	1	802AA8A4C2D4	\N	\N	\N
298	5	802aa8a4c318	802AA8A4C318	1	802AA8A4C318	\N	\N	\N
299	20	802aa8ae8d12	802AA8AE8D12	1	802AA8AE8D12	\N	\N	\N
300	20	802aa8ae8ec7	802AA8AE8EC7	1	802AA8AE8EC7	\N	\N	\N
301	20	802aa8ae8d13	802AA8AE8D13	1	802AA8AE8D13	\N	\N	\N
302	20	802aa8ae8fb1	802AA8AE8FB1	1	802AA8AE8FB1	\N	\N	\N
303	20	802aa8ae8f4f	802AA8AE8F4F	1	802AA8AE8F4F	\N	\N	\N
304	21	f09fc24aac3d	F09FC24AAC3D	1	F09FC24AAC3D	\N	\N	\N
305	21	f09fc24aade9	F09FC24AADE9	1	F09FC24AADE9	\N	\N	\N
306	21	f09fc24aae84	F09FC24AAE84	1	F09FC24AAE84	\N	\N	\N
311	51	am2e11835	AM2E11835	1		\N	\N	\N
312	51	am2e11837	AM2E11837	1		\N	\N	\N
313	51	am2e11836	AM2E11836	1		\N	\N	\N
314	51	am2e11838	AM2E11838	1		\N	\N	\N
315	50	am2d40814	AM2D40814	1		\N	\N	\N
316	50	am2d40815	AM2D40815	1		\N	\N	\N
317	50	am2d40816	AM2D40816	1		\N	\N	\N
318	50	am2d40817	AM2D40817	1		\N	\N	\N
320	51	am2b90613	AM2B90613	1		\N	\N	\N
321	51	am2b90636	AM2B90636	1		\N	\N	\N
322	51	am2b90639	AM2B90639	1		\N	\N	\N
328	58	rd5g13903	RD5G13903	1		\N	\N	\N
329	58	rd5g13900	RD5G13900	1		\N	\N	\N
330	58	rd5g14842	RD5G14842	1		\N	\N	\N
331	58	rd5g13905	RD5G13905	1		\N	\N	\N
332	15	6872515c26ba	6872515C26BA	1	6872515C26BA	\N	\N	\N
333	16	6872515e278c	6872515E278C	1	6872515E278C	\N	\N	\N
334	15	24a43c74b61d	24A43C74B61D	3	24A43C74B61D	\N	\N	\N
335	15	24a43c74b58a	24A43C74B58A	3	24A43C74B58A	1	\N	hasmik@hf.am
336	15	24a43c74b5d9	24A43C74B5D9	3	24A43C74B5D9	4	\N	\N
337	15	687251307e78	687251307E78	3	687251307E78	\N	\N	\N
338	15	687251307faa	687251307FAA	3	687251307FAA	\N	\N	\N
339	29	71a3066d8b72	71A3066D8B72	4	6C3B6BD7501D	1	\N	jass.manasyan@gmail.com
340	29	71a306ff1858	71A306FF1858	4	6C3B6BD5887F	\N	\N	\N
341	29	71a306f30233	71A306F30233	4	6C3B6BDC6E78	\N	\N	\N
342	29	71b906710509	71B906710509	4	6C3B6BAFB210	\N	\N	\N
343	29	71a30627b46d	71A30627B46D	4	6C3B6BD7F29D	\N	\N	\N
344	29	71a30602e04b	71A30602E04B	4	6C3B6BD76007	\N	\N	\N
345	29	71a30625429d	71A30625429D	4	6C3B6BDA111E	\N	\N	\N
346	29	71b906e4a1f8	71B906E4A1F8	4	6C3B6B86ED0D	1	\N	jass.manasyan@gmail.com
347	29	71b906fa2d00	71B906FA2D00	4	6C3B6BAE5182	\N	\N	\N
348	29	71b90686eb92	71B90686EB92	4	6C3B6B86ED07	\N	\N	\N
349	29	71b9066f339e	71B9066F339E	4	6C3B6BAE832E	\N	\N	\N
350	29	71b906ce6dfd	71B906CE6DFD	4	6C3B6BAE5146	1	\N	jass.manasyan@gmail.com
351	29	71b9065ce245	71B9065CE245	4	6C3B6BAE525A	1	\N	\N
352	29	71b906eb7ab4	71B906EB7AB4	4	6C3B6BAE83A0	\N	\N	\N
353	29	71b906025ccc	71B906025CCC	4	6C3B6BAE5176	\N	\N	\N
354	29	71b9065e81b5	71B9065E81B5	4	6C3B6BAE8250	\N	\N	\N
355	29	71a306e4ade1	71A306E4ADE1	4	6C3B6BD7F153	\N	\N	\N
356	29	71b9060af929	71B9060AF929	4	6C3B6BAE5152	\N	\N	\N
357	29	71a306cf95b4	71A306CF95B4	4	6C3B6BD58831	\N	\N	\N
358	29	71b906239aea	71B906239AEA	4	6C3B6BAE5170	\N	\N	\N
359	29	71a30675ea26	71A30675EA26	4	6C3B6BD59383	\N	\N	\N
360	29	71a30636666a	71A30636666A	4	6C3B6BD5938F	\N	\N	\N
361	29	71a3062e5b3e	71A3062E5B3E	4	6C3B6BDC698C	\N	\N	\N
362	29	71a306ac5dcc	71A306AC5DCC	4	6C3B6BD59371	1	\N	\N
363	29	71b9063298be	71B9063298BE	4	6C3B6BAFB1DA	1	\N	\N
364	29	71a306b6711b	71A306B6711B	4	6C3B6BD756C5	\N	\N	\N
365	29	71a3064ccead	71A3064CCEAD	4	6C3B6BDA15EC	\N	\N	\N
366	29	71a30610a384	71A30610A384	4	6C3B6BDA0D1C	\N	\N	\N
367	29	71a306aa61c3	71A306AA61C3	4	6C3B6BDA0CD4	1	\N	\N
368	29	71a306d3ad55	71A306D3AD55	4	6C3B6BD7F2C7	\N	\N	\N
369	29	71a306e0ccde	71A306E0CCDE	4	6C3B6BD7E865	\N	\N	\N
370	29	71b9065607a6	71b9065607a6	4	6C3B6Bae85f8	\N	\N	\N
371	29	71a3067b73cc	71A3067B73CC	4	6C3B6BDA0C02	1	\N	jass.manasyan@gmail.com
372	29	71a306b6788d	71A306B6788D	4	6C3B6BDC595A	\N	\N	\N
373	29	71a3068c3b46	71A3068C3B46	4	6C3B6BDA0CCE	\N	\N	\N
374	29	71a306cd25e0	71A306CD25E0	4	6C3B6BD7E7D5	1	\N	jass.manasyan@gmail.com
375	29	71a306059e2c	71A306059E2C	4	6C3B6BD7E877	\N	\N	\N
376	29	71a3065e1da9	71A3065E1DA9	4	6C3B6BD58765	\N	\N	\N
377	29	71a306b660e0	71A306B660E0	4	6C3B6BD75503	1	\N	jass.manasyan@gmail.com
378	29	71a30676badc	71A30676BADC	4	6C3B6BDA106A	1	\N	\N
379	29	71a306df5d24	71A306DF5D24	4	6C3B6BDA104C	1	\N	\N
380	29	71a306e8b71a	71A306E8B71A	4	6C3B6BD58603	1	\N	jass.manasyan@gmail.com
381	29	71a3064253b8	71A3064253B8	4	6C3B6BDC5D4A	1	\N	\N
382	29	71a3068e48e9	71A3068E48E9	4	6C3B6BD75569	1	\N	\N
383	29	71a306ba19ef	71A306BA19EF	4	6C3B6BD7566B	1	\N	evelina@hf.am
384	29	71a306da9b59	71A306DA9B59	4	6C3B6BD7EA6F	\N	\N	\N
385	29	71a30654d639	71A30654D639	4	6C3B6BD586E7	\N	\N	\N
386	29	71a30664093d	71A30664093D	4	6C3B6BDC5D50	1	\N	jass.manasyan@gmail.com
387	29	71a30675101f	71A30675101F	4	6C3B6BD586E1	1	\N	jass.manasyan@gmail.com
388	29	71a3062d4ee1	71A3062D4EE1	4	6C3B6BDC5CDE	1	\N	jass.manasyan@gmail.com
389	29	71a306d76ac3	71A306D76AC3	4	6C3B6BD75659	1	\N	jass.manasyan@gmail.com
390	29	71a30679b731	71A30679B731	4	6C3B6BD7EBCB	1	\N	jass.manasyan@gmail.com
391	29	71a30639f7fd	71A30639F7FD	4	6C3B6BDC5D2C	1	\N	jass.manasyan@gmail.com
392	29	71a30629d118	71A30629D118	4	6C3B6BD587AD	1	\N	jass.manasyan@gmail.com
393	29	71a3065bbd97	71A3065BBD97	4	6C3B6BDC5D26	1	\N	jass.manasyan@gmail.com
394	29	71a306172b6b	71A306172B6B	4	6C3B6BDC5A9E	1	\N	jass.manasyan@gmail.com
395	29	71a3065cbc06	71A3065CBC06	4	6C3B6BD7EB47	1	\N	\N
396	29	71a3062b70b7	71A3062B70B7	4	6C3B6BD7EB8F	1	\N	jass.manasyan@gmail.com
397	29	71a306d9caeb	71A306D9CAEB	4	6C3B6BD7EAF9	1	\N	\N
398	29	71a3069f0323	71A3069F0323	4	6C3B6BD75521	1	\N	jass.manasyan@gmail.com
399	29	71a3061a1cbd	71A3061A1CBD	4	6C3B6BD584B3	1	\N	\N
400	29	71a3067a7bb1	71A3067A7BB1	4	6C3B6BDC5D20	1	\N	jass.manasyan@gmail.com
401	29	71a3061de0fb	71A3061DE0FB	4	6C3B6BDC5B1C	1	\N	jass.manasyan@gmail.com
402	29	71a3063a0fd6	71A3063A0FD6	4	6C3B6BDA105E	1	\N	jass.manasyan@gmail.com
403	29	71a306c83673	71A306C83673	4	6C3B6BD754DF	1	\N	jass.manasyan@gmail.com
404	29	71a30613fe17	71A30613FE17	4	6C3B6BD7564D	1	\N	jass.manasyan@gmail.com
405	29	71a30671b47d	71A30671B47D	4	6C3B6BD75647	1	\N	\N
406	29	71a306cbd093	71A306CBD093	4	6C3B6BD7EA27	1	\N	jass.manasyan@gmail.com
407	29	71a3068a115c	71A3068A115C	4	6C3B6BD7EC01	1	\N	jass.manasyan@gmail.com
408	29	71a306a26eae	71A306A26EAE	4	6C3B6BD7EA9F	1	\N	jass.manasyan@gmail.com
409	29	71a306e74186	71A306E74186	4	6C3B6BD7EBBF	1	\N	jass.manasyan@gmail.com
410	29	71a3061c61f8	71A3061C61F8	4	6C3B6BD7EBDD	1	\N	jass.manasyan@gmail.com
411	29	71a3069a897d	71A3069A897D	4	6C3B6BD58771	1	\N	jass.manasyan@gmail.com
412	29	71a306777e6a	71A306777E6A	4	6C3B6BD58747	1	\N	jass.manasyan@gmail.com
413	29	71a306c4260f	71A306C4260F	4	6C3B6BD5879B	1	\N	sonahdavtyan@gmail.com
414	29	71a30600b2db	71A30600B2DB	4	6C3B6BD5878F	1	\N	jass.manasyan@gmail.com
415	29	71a306a6b244	71A306A6B244	4	6C3B6BD79Ed3	1	\N	jass.manasyan@gmail.com
416	29	71a306666748	71A306666748	4	6C3B6BDC5CF6	1	\N	jass.manasyan@gmail.com
417	29	71a306c84efb	71A306C84EFB	4	6C3B6BD58735	1	\N	jass.manasyan@gmail.com
418	29	71a3066822da	71A3066822DA	4	6C3B6BD585C1	1	\N	jass.manasyan@gmail.com
419	29	71a306369c53	71A306369C53	4	6C3B6BD586ED	1	\N	jass.manasyan@gmail.com
420	29	71a30650d4f2	71A30650D4F2	4	6C3B6BD7EBE9	1	\N	jass.manasyan@gmail.com
421	29	71a306ddbc89	71A306DDBC89	4	6C3B6BDA0FDA	1	\N	jass.manasyan@gmail.com
422	29	71a3062c4abd	71A3062C4ABD	4	6C3B6BD7563B	1	\N	hasmik@hf.am
423	29	71a306e8de69	71A306E8DE69	4	6C3B6BD7562f	1	\N	jass.manasyan@gmail.com
424	29	71a30636cebb	71A30636CEBB	4	6C3B6BDC5D14	1	\N	jass.manasyan@gmail.com
425	29	71a30679839a	71A30679839A	4	6C3B6BDA1052	1	\N	jass.manasyan@gmail.com
426	29	71b906173598	71B906173598	4	6C3B6B86EE8D	\N	\N	\N
427	29	71a306e0545b	71A306E0545B	4	6C3B6BDA0A40	\N	\N	\N
428	29	71b906d5b5c2	71B906D5B5C2	4	6C3B6BAFB3AB	\N	\N	\N
429	29	71a306171d99 	71A306171D99	4	6C3B6BD589F3	\N	\N	jass.manasyan@gmail.com
430	30	416501a2e8e2	416501A2E8E2	4	000C427FB055	\N	\N	\N
431	30	416501a2e8da	416501A2E8DA	4	000C427FB06D	\N	\N	\N
432	30	416501a2e8df	416501A2E8DF	4	000C427FB068	\N	\N	\N
433	30	416501a2e89e	416501A2E89E	4	000C427FB029	\N	\N	\N
434	30	416501a2e8f8	416501A2E8F8	4	000C427FB04F	\N	\N	\N
435	30	416501a2f772	416501A2F772	4	000C427FAFC5	\N	\N	\N
436	30	416501a2e8f5	416501A2E8F5	4	000C427fB042	\N	\N	\N
437	30	416501a2e9e0	416501A2E9E0	4	000C427FB157	\N	\N	\N
438	30	416501a2e8dc	416501A2E8DC	4	000C427FB06B	\N	\N	\N
443	11	68725166890c	68725166890C	1	68725166890C	\N	\N	\N
444	11	68725166898d	68725166898D	1	68725166898D	1	\N	jass.manasyan@gmail.com
445	11	6872516689b0	6872516689B0	1	6872516689B0	1	\N	jass.manasyan@gmail.com
446	11	68725164a8df	68725164A8DF	3	68725164A8DF	\N	\N	\N
447	11	6872514a49a5	6872514A49A5	3	6872514A49A5	1	\N	hasmik@hf.am
448	11	687251668a2e	687251668A2E	1	687251668A2E	1	\N	jass.manasyan@gmail.com
449	11	687251668984	687251668984	1	687251668984	\N	\N	\N
450	11	68725166893a	68725166893A	1	68725166893A	1	\N	hasmik@hf.am
451	11	687251668856	687251668856	1	687251668856	1	\N	\N
452	11	6872516688f3	6872516688F3	1	6872516688F3	1	\N	\N
453	11	6872514a49c5	6872514A49C5	3	6872514A49C5	\N	\N	\N
454	11	6872514a49a0	6872514A49A0	3	6872514A49A0	\N	\N	\N
455	11	687251668921	687251668921	1	687251668921	\N	\N	\N
456	11	6872516689a7	6872516689A7	1	6872516689A7	\N	\N	\N
457	11	687251668854	687251668854	1	687251668854	1	\N	\N
458	11	687251668a18	687251668A18	1	687251668A18	1	\N	\N
459	11	687251668a1c	687251668A1C	1	687251668A1C	1	\N	\N
460	11	24a43ca6319d	24A43CA6319D	3	24A43CA6319D	4	\N	vahram@hf.am
461	11	6872514a4834	6872514A4834	3		\N	\N	\N
463	11	68725120e19a	68725120E19A	3	68725120E19A	4	\N	vahram@hf.am
464	11	24a43c9e12d5	24A43C9E12D5	3	24A43C9E12D5	2	\N	jass.manasyan@gmail.com
465	11	68725120de2b	68725120DE2B	3	68725120DE2B	\N	\N	\N
466	11	68725120ddb3	68725120DDB3	3	68725120DDB3	\N	\N	\N
467	11	68725120e1ad	68725120E1AD	3	68725120E1AD	\N	\N	\N
468	11	24a43c9e1285	24A43C9E1285	3	24A43C9E1285	\N	\N	\N
469	11	68725120dd95	68725120DD95	3	68725120DD95	4	\N	vahram@hf.am
470	11	24a43ca63155	24A43CA63155	3	24A43CA63155	\N	\N	\N
471	11	24a43ca62eaa	24A43CA62EAA	3	24A43CA62EAA	\N	\N	\N
472	11	68725120dd7d	68725120DD7D	3	68725120DD7D	\N	\N	\N
473	11	24a43ca62dc8	24A43CA62DC8	3	24A43CA62DC8	4	\N	vahram@hf.am
474	11	6872514a4959	6872514A4959	3	6872514A4959	\N	\N	\N
475	11	24a43ca62dbe	24A43CA62DBE	3	24A43CA62DBE	4	\N	vahram@hf.am
476	11	68725122668b	68725122668B	3	68725122668B	1	\N	\N
477	11	24a43ca62e8e	24A43CA62E8E	3	24A43CA62E8E	\N	\N	\N
478	11	24a43c9e12b7	24A43C9E12B7	3	24A43C9E12B7	1	\N	jass.manasyan@gmail.com
479	11	68725120dece	68725120DECE	3	68725120DECE	\N	\N	\N
480	11	687251226351	687251226351	3	687251226351	1	\N	\N
481	11	68725122650f	68725122650F	3	68725122650F	4	\N	vahram@hf.am
482	11	6872512265d0	6872512265D0	3	6872512265D0	4	\N	vahram@hf.am
483	11	68725120e182	68725120e182	3	68725120e182	2	\N	vahram@hf.am
484	11	68725120dd9e	68725120DD9E	3	68725120DD9E	\N	\N	\N
485	11	68725120dd7b	68725120DD7B	3	68725120DD7B	\N	\N	\N
486	11	24a43ca6312e	24A43CA6312E	3	24A43CA6312E	\N	\N	\N
487	11	6872514a4a0d	6872514A4A0D	3	6872514A4A0D	\N	\N	\N
488	11	6872514a495d	6872514A495D	3	6872514A495D	\N	\N	\N
489	11	68725120de93	68725120DE93	3	68725120DE93	\N	\N	\N
490	11	24a43cf89bf3	24A43CF89BF3	3	24A43CF89BF3	4	\N	vahram@hf.am
491	11	24a43ca62ea2	24A43CA62EA2	3	24A43CA62EA2	\N	\N	\N
492	11	6872516688e8	6872516688Е8	1	6872516688Е8	\N	\N	\N
493	11	68725122656b	68725122656B	3	68725122656B	\N	\N	\N
494	11	68725120e1b0	68725120E1B0	3	68725120E1B0	\N	\N	\N
495	11	24a43ca62eb0	24A43CA62EB0	3	24A43CA62EB0	\N	\N	\N
496	11	24a43ca63359	24A43CA63359	3	24A43CA63359	\N	\N	\N
497	11	24a43ca62e67	24A43CA62E67	3	24A43CA62E67	2	\N	vahram@hf.am
498	14	002722ca92f7	002722CA92F7	1	002722CA92F7	\N	\N	\N
499	14	68725102323a	68725102323A	5	68725102323A	\N	\N	\N
500	14	0027223212a3	0027223212A3	5	0027223212A3	\N	\N	\N
501	14	002722a84812	002722A84812	1	002722A84812	\N	\N	\N
502	14	0027223212dd	0027223212DD	5	0027223212DD	\N	\N	\N
503	14	dc9fdb5410cf	DC9FDB5410CF	1	DC9FDB5410CF	\N	\N	\N
504	14	002722ca9370	002722CA9370	1	002722CA9370	\N	\N	\N
505	14	002722a6b80e	002722A6B80E	1	002722A6B80E	\N	\N	\N
506	14	00272298be89	00272298BE89	1	00272298BE89	\N	\N	\N
507	14	0027223212ee	0027223212EE	1	0027223212EE	\N	\N	\N
508	14	00272298bf07	00272298BF07	1	00272298BF07	\N	\N	\N
509	14	00272298be8a	00272298BE8A	1	00272298BE8A	\N	\N	\N
510	14	0027223212ad	0027223212AD	5	0027223212AD	\N	\N	\N
511	14	dc9fdb5412e0	DC9FDB5412E0	5	DC9FDB5412E0	\N	\N	\N
512	14	6872510231c1	6872510231C1	5	6872510231C1	\N	\N	\N
513	14	00272298beb1	00272298BEB1	1	00272298BEB1	\N	\N	\N
514	14	dc9fdb3250a4	DC9FDB3250A4	1	DC9FDB3250A4	\N	\N	\N
515	14	0027223212f8	0027223212f8	5	0027223212f8	2	\N	vahram@hf.am
516	14	002722a8456d	002722A8456D	1	002722A8456D	\N	\N	\N
517	14	0027223212a5	0027223212a5	5	0027223212a5	\N	\N	vahram@hf.am
518	13	002722e6ed32	002722E6ED32	3	002722E6ED32	\N	\N	\N
519	13	002722e6ec8e	002722E6EC8E	1	002722E6EC8E	\N	\N	\N
520	13	dc9fdb50057c	DC9FDB50057C	3	DC9FDB50057C	\N	\N	\N
521	13	dc9fdb522224	DC9FDB522224	3	DC9FDB522224	\N	\N	\N
522	13	dc9fdb52214f	DC9FDB52214F	3	DC9FDB52214F	1	\N	jass.manasyan@gmail.com
523	13	dc9fdba67ea6	DC9FDBA67EA6	3	DC9FDBA67EA6	\N	\N	\N
524	13	dc9fdba67d7a	DC9FDBA67D7A	3	DC9FDBA67D7A	\N	\N	\N
525	13	dc9fdb5221af	DC9FDB5221AF	3	DC9FDB5221AF	\N	\N	\N
526	13	dc9fdb5221dc	DC9FDB5221DC	3	DC9FDB5221DC	\N	\N	\N
527	13	dc9fdb500629	DC9FDB500629	3	DC9FDB500629	4	\N	vahram@hf.am
528	13	dc9fdb5005f2	DC9FDB5005F2	3	DC9FDB5005F2	\N	\N	\N
529	13	002722ee8031	002722EE8031	3	002722EE8031	\N	\N	\N
530	13	dc9fdba67d7c	DC9FDBA67D7C	3	DC9FDBA67D7C	4	\N	vahram@hf.am
531	13	002722e6ec90	002722E6EC90	1	002722E6EC90	\N	\N	\N
532	13	dc9fdb522201	DC9FDB522201	3	DC9FDB522201	1	\N	jass.manasyan@gmail.com
533	13	dc9fdb5005d0	DC9FDB5005D0	3	DC9FDB5005D0	\N	\N	\N
534	13	002722e6ec5c	002722E6EC5C	3	002722E6EC5C	4	\N	vahram@hf.am
535	13	002722e6ec7f	002722E6EC7F	3	002722E6EC7F	\N	\N	\N
536	13	dc9fdb50056c	DC9FDB50056C	3	DC9FDB50056C	\N	\N	\N
537	13	002722e6ed23	002722E6ED23	3	002722E6ED23	1	\N	hasmik@hf.am
538	13	002722ee7fdb	002722EE7FDB	3	002722EE7FDB	\N	\N	\N
539	13	dc9fdb5221ae	DC9FDB5221AE	1	DC9FDB5221AE	1	\N	hasmik@hf.am
540	13	dc9fdba67d92	DC9FDBA67D92	3	DC9FDBA67D92	\N	\N	\N
541	13	dc9fdba67e85	DC9FDBA67E85	3	DC9FDBA67E85	\N	\N	\N
542	13	dc9fdba67e0f	DC9FDBA67E0F	3	DC9FDBA67E0F	\N	\N	\N
543	13	002722ee7f9c	002722EE7F9C	1	002722EE7F9C	\N	\N	\N
544	13	dc9fdba67d91	DC9FDBA67D91	3	DC9FDBA67D91	\N	\N	\N
545	13	dc9fdb500602	DC9FDB500602	3	DC9FDB500602	\N	\N	\N
546	13	dc9fdb522202	DC9FDB522202	3	DC9FDB522202	\N	\N	\N
547	13	dc9fdb5005a3	DC9FDB5005A3	3	DC9FDB5005A3	\N	\N	\N
548	13	002722ee7f7d	002722EE7F7D	3	002722EE7F7D	4	\N	vahram@hf.am
549	13	002722ee8042	002722EE8042	3	002722EE8042	\N	\N	\N
550	13	002722e6ed2a	002722E6ED2A	3	002722E6ED2A	\N	\N	\N
551	13	dc9fdb50052c	DC9FDB50052C	3	DC9FDB50052C	4	\N	vahram@hf.am
552	13	002722ee8059	002722EE8059	3	002722EE8059	4	\N	vahram@hf.am
553	13	002722e6ecec	002722E6ECEC	3	002722E6ECEC	\N	\N	\N
554	13	dc9fdba67e83	DC9FDBA67E83	3	DC9FDBA67E83	\N	\N	\N
555	13	002722e6ed3b	002722E6ED3B	1	002722E6ED3B	\N	\N	\N
556	13	dc9fdb5221ea	DC9FDB5221EA	3	DC9FDB5221EA	\N	\N	\N
557	13	dc9fdb5005e7	DC9FDB5005E7	3	DC9FDB5005E7	4	\N	vahram@hf.am
558	13	002722e6ed26	002722E6ED26	3	002722E6ED26	\N	\N	\N
559	13	dc9fdb500632	DC9FDB500632	3	DC9FDB500632	4	\N	vahram@hf.am
560	13	dc9fdb5005ee	DC9FDB5005EE	3	DC9FDB5005EE	\N	\N	\N
561	13	002722ee7fe9	002722EE7FE9	3	002722EE7FE9	\N	\N	\N
562	13	002722ee7fa8	002722EE7FA8	3	002722EE7FA8	4	\N	vahram@hf.am
563	13	dc9fdb5005de	DC9FDB5005DE	3	DC9FDB5005DE	4	\N	vahram@hf.am
564	13	dc9fdb5005f9	BC9FDB5005F9	3	BC9FDB5005F9	1	\N	hasmik@hf.am
565	13	dc9fdb5005ff	DC9FDB5005FF	3	DC9FDB5005FF	\N	\N	\N
566	13	002722e6ec91	002722E6Ec91	3	002722E6Ec91	\N	\N	\N
567	13	dc9fdb5321bc	DC9FDB5321BC	1	DC9FDB5321BC	\N	\N	\N
568	13	dc9fdb5221bc	DC9FDB5221BC	3	DC9FDB5221BC	1	\N	\N
569	53	rd2a05529	RD2A05529	3		\N	\N	\N
570	53	rd2a05503	RD2A05503	3		\N	\N	\N
571	53	rd2a05210	RD2A05210	3		\N	\N	\N
572	53	rd2a05224	RD2A05224	3		\N	\N	\N
573	53	rd2a11126	RD2A11126	3		\N	\N	\N
574	53	rd2a09502	RD2A09502	3		1	\N	jass.manasyan@gmail.com
575	53	rd2a05206	RD2A05206	3		\N	\N	\N
576	53	rd2a08113	RD2A08113	3		\N	\N	\N
577	53	rd2a04799	RD2A04799	3		\N	\N	\N
578	53	rd2a08119	RD2A08119	3		\N	\N	\N
579	53	rd2a09486	RD2A09486	3		\N	\N	\N
580	31	23210456310	23210456310	1	23210456310	\N	\N	\N
581	31	23209452687	23209452687	1	23209452687	\N	\N	\N
582	31	23210456345	23210456345	3	23210456345	4	\N	vahram@hf.am
583	31	23210564618	23210564618	3	23210564618	4	\N	vahram@hf.am
584	31	23210268246	23210268246	3	23210268246	4	\N	vahram@hf.am
585	31	23210268242	23210268242	3	23210268242	4	\N	vahram@hf.am
586	31	23210456359	23210456359	3	23210456359	4	\N	vahram@hf.am
587	31	23210456437	23210456437	3	23210456437	4	\N	vahram@hf.am
588	31	23210456336	23210456336	3	23210456336	4	\N	vahram@hf.am
589	31	23210456376	23210456376	3	23210456376	4	\N	vahram@hf.am
590	31	23210456373	23210456373	3	23210456373	4	\N	vahram@hf.am
591	31	23210456326	23210456326	3	23210456326	4	\N	vahram@hf.am
592	31	23210456444	23210456444	3	23210456444	4	\N	vahram@hf.am
593	31	23210564584	23210564584	3	23210564584	4	\N	vahram@hf.am
594	31	23210456343	23210456343	3	23210456343	4	\N	vahram@hf.am
595	31	23210456324	23210456324	3	23210456324	4	\N	vahram@hf.am
596	31	23210456381	23210456381	3	23210456381	4	\N	vahram@hf.am
597	31	23210268279	23210268279	3	23210268279	4	\N	vahram@hf.am
598	31	23210456397	23210456397	3	23210456397	4	\N	vahram@hf.am
599	31	23210456307	23210456307	3	23210456307	4	\N	vahram@hf.am
600	31	23210456298	23210456298	3	23210456298	4	\N	vahram@hf.am
601	31	23210456435	23210456435	3	23210456435	4	\N	vahram@hf.am
602	31	23210456305	23210456305	3	23210456305	4	\N	vahram@hf.am
603	31	23210456390	23210456390	3	23210456390	4	\N	vahram@hf.am
604	31	23210456360	23210456360	3	23210456360	4	\N	vahram@hf.am
605	31	23210268243	23210268243	3	23210268243	4	\N	vahram@hf.am
606	31	23210456308	23210456308	3	23210456308	4	\N	vahram@hf.am
607	31	23210456400	23210456400	3	23210456400	4	\N	vahram@hf.am
608	31	23210268663	23210268663	3	23210268663	4	\N	vahram@hf.am
609	31	23210456296	23210456296	3	23210456296	4	\N	vahram@hf.am
610	31	23210456335	23210456335	3	23210456335	4	\N	vahram@hf.am
611	31	23210268251	23210268251	3	23210268251	4	\N	vahram@hf.am
612	31	23210456368	23210456368	3	23210456368	4	\N	vahram@hf.am
613	31	23210456434	23210456434	3	23210456434	4	\N	vahram@hf.am
614	31	23210456421	23210456421	3	23210456421	4	\N	vahram@hf.am
615	31	23210456334	23210456334	3	23210456334	4	\N	vahram@hf.am
616	31	23210456358	23210456358	3	23210456358	4	\N	vahram@hf.am
617	31	23210456363	23210456363	3	23210456363	4	\N	vahram@hf.am
618	31	23210456374	23210456374	3	23210456374	4	\N	vahram@hf.am
619	31	23210456331	23210456331	3	23210456331	4	\N	vahram@hf.am
620	31	23210564564	23210564564	3	23210564564	4	\N	vahram@hf.am
621	31	23210564566	23210564566	3	23210564566	4	\N	vahram@hf.am
622	31	23210456323	23210456323	3	23210456323	4	\N	vahram@hf.am
623	31	23210456348	23210456348	3	23210456348	4	\N	vahram@hf.am
624	31	23210456355	23210456355	3	23210456355	4	\N	vahram@hf.am
625	31	23210456300	23210456300	3	23210456300	4	\N	vahram@hf.am
626	31	23210456431	23210456431	3	23210456431	4	\N	vahram@hf.am
627	31	23210456317	23210456317	3	23210456317	4	\N	vahram@hf.am
628	31	23210456366	23210456366	3	23210456366	4	\N	vahram@hf.am
629	31	23210564616	23210564616	3	23210564616	4	\N	vahram@hf.am
630	31	23210268648	23210268648	3	23210268648	4	\N	vahram@hf.am
631	31	23210456383	23210456383	3	23210456383	4	\N	vahram@hf.am
632	31	23210456404	23210456404	3	23210456404	4	\N	vahram@hf.am
633	31	23210456314	23210456314	3	23210456314	4	\N	vahram@hf.am
634	31	23210456312	23210456312	3	23210456312	4	\N	vahram@hf.am
635	50	am2d30892	AM2D30892	1		1	\N	jass.manasyan@gmail.com
636	50	am2d30947	AM2D30947	1		\N	\N	\N
637	50	am2d39551	AM2D39551	1		\N	\N	\N
639	48	ant15002	ant15002	1		\N	\N	\N
640	48	ant15003	ant15003	1		\N	\N	\N
641	48	ant15004	ant15004	1		\N	\N	\N
642	48	ant15005	ant15005	1		\N	\N	\N
643	48	ant15006	ant15006	1		\N	\N	\N
644	48	ant15007	ant15007	1		\N	\N	\N
645	48	ant15008	ant15008	1		\N	\N	\N
646	48	ant15009	ant15009	1		\N	\N	\N
647	48	ant15010	ant15010	1		\N	\N	\N
648	48	ant15011	ant15011	1		\N	\N	\N
649	48	ant15012	ant15012	1		\N	\N	\N
650	48	ant15013	ant15013	1		\N	\N	\N
651	48	ant15014	ant15014	1		\N	\N	\N
652	48	ant15015	ant15015	1		\N	\N	\N
653	48	ant15016	ant15016	1		\N	\N	\N
654	48	ant15017	ant15017	1		\N	\N	\N
655	48	ant15018	ant15018	1		\N	\N	\N
656	48	ant15019	ant15019	1		\N	\N	\N
657	48	ant15020	ant15020	1		\N	\N	\N
658	48	ant15021	ant15021	1		\N	\N	\N
659	48	ant15022	ant15022	3		4	\N	jass.manasyan@gmail.com
660	48	ant15023	ant15023	3		4	\N	jass.manasyan@gmail.com
661	48	ant15024	ant15024	3		4	\N	jass.manasyan@gmail.com
662	48	ant15025	ant15025	3		4	\N	jass.manasyan@gmail.com
663	48	ant15026	ant15026	3		4	\N	jass.manasyan@gmail.com
664	48	ant15027	ant15027	3		4	\N	jass.manasyan@gmail.com
665	48	ant15028	ant15028	3		4	\N	jass.manasyan@gmail.com
666	48	ant15029	ant15029	3		4	\N	jass.manasyan@gmail.com
667	48	ant15030	ant15030	3		4	\N	jass.manasyan@gmail.com
668	48	ant15031	ant15031	3		4	\N	jass.manasyan@gmail.com
669	48	ant15032	ant15032	3		4	\N	vahram@hf.am
670	48	ant15033	ant15033	3		4	\N	jass.manasyan@gmail.com
671	48	ant15034	ant15034	3		4	\N	jass.manasyan@gmail.com
672	48	ant15035	ant15035	3		4	\N	vahram@hf.am
673	48	ant15036	ant15036	3		4	\N	jass.manasyan@gmail.com
674	45	ant24001	ant24001	1		1	\N	\N
675	45	ant24002	ant24002	1		1	\N	\N
676	45	ant24003	ant24003	1		1	\N	\N
677	45	ant24004	ant24004	1		\N	\N	\N
678	45	ant24005	ant24005	1		\N	\N	\N
679	45	ant24006	ant24006	1		\N	\N	\N
680	45	ant24007	ant24007	1		\N	\N	\N
681	45	ant24008	ant24008	1		\N	\N	\N
682	45	ant24009	ant24009	1		\N	\N	\N
683	45	ant24010	ant24010	1		\N	\N	\N
684	45	ant24011	ant24011	1		\N	\N	\N
685	45	ant24012	ant24012	1		\N	\N	\N
687	45	ant24014	ant24014	3		\N	\N	\N
688	45	ant24015	ant24015	3		\N	\N	\N
689	45	ant24016	ant24016	3		\N	\N	\N
690	45	ant24017	ant24017	3		\N	\N	\N
691	45	ant24018	ant24018	3		\N	\N	\N
692	45	ant24019	ant24019	3		\N	\N	\N
693	45	ant24020	ant24020	3		\N	\N	\N
694	45	ant24021	ant24021	3		\N	\N	\N
695	45	ant24022	ant24022	3		\N	\N	\N
696	45	ant24023	ant24023	3		\N	\N	\N
697	45	ant24024	ant24024	3		\N	\N	\N
698	45	ant24025	ant24025	3		\N	\N	\N
699	45	ant24026	ant24026	3		\N	\N	\N
700	45	ant24027	ant24027	3		\N	\N	\N
701	45	ant24028	ant24028	3		\N	\N	\N
702	45	ant24029	ant24029	3		\N	\N	\N
703	45	ant24030	ant24030	3		\N	\N	\N
704	45	ant24031	ant24031	3		\N	\N	\N
705	45	ant24032	ant24032	3		\N	\N	\N
706	45	ant24033	ant24033	3		\N	\N	\N
707	45	ant24034	ant24034	3		\N	\N	\N
708	45	ant24035	ant24035	3		\N	\N	\N
709	45	ant24036	ant24036	3		\N	\N	\N
710	45	ant24037	ant24037	3		\N	\N	\N
711	45	ant24038	ant24038	3		\N	\N	\N
712	45	ant24039	ant24039	3		\N	\N	\N
713	45	ant24040	ant24040	3		\N	\N	\N
714	45	ant24041	ant24041	3		\N	\N	\N
715	45	ant24042	ant24042	3		\N	\N	\N
716	45	ant24043	ant24043	3		\N	\N	\N
717	45	ant24044	ant24044	3		\N	\N	\N
718	45	ant24045	ant24045	3		\N	\N	\N
719	45	ant24046	ant24046	3		\N	\N	\N
720	45	ant24047	ant24047	3		\N	\N	\N
721	45	ant24048	ant24048	3		\N	\N	\N
722	45	ant24049	ant24049	3		\N	\N	\N
723	45	ant24050	ant24050	3		\N	\N	\N
724	45	ant24051	ant24051	3		\N	\N	\N
725	45	ant24052	ant24052	3		\N	\N	\N
726	45	ant24053	ant24053	3		\N	\N	\N
727	45	ant24054	ant24054	3		\N	\N	\N
728	45	ant24055	ant24055	3		\N	\N	\N
729	45	ant24056	ant24056	3		\N	\N	\N
730	45	ant24057	ant24057	3		\N	\N	\N
731	45	ant24058	ant24058	3		\N	\N	\N
732	45	ant24059	ant24059	3		\N	\N	\N
733	45	ant24060	ant24060	3		\N	\N	\N
734	45	ant24061	ant24061	3		\N	\N	\N
735	45	ant24062	ant24062	3		\N	\N	\N
736	45	ant24063	ant24063	3		\N	\N	\N
737	45	ant24064	ant24064	3		\N	\N	\N
738	45	ant24065	ant24065	3		\N	\N	\N
739	45	ant24066	ant24066	3		\N	\N	\N
740	45	ant24067	ant24067	3		\N	\N	\N
741	45	ant24068	ant24068	3		\N	\N	\N
742	45	ant24069	ant24069	3		\N	\N	\N
743	45	ant24070	ant24070	3		\N	\N	\N
744	45	ant24071	ant24071	3		\N	\N	\N
745	54	ant2601	ant2601	1		\N	\N	\N
746	54	ant2602	ant2602	1		\N	\N	\N
747	54	ant2603	ant2603	1		\N	\N	\N
748	54	ant2604	ant2604	1		\N	\N	\N
749	54	ant2605	ant2605	1		\N	\N	\N
750	54	ant2606	ant2606	1		\N	\N	\N
751	54	ant2607	ant2607	1		\N	\N	\N
752	54	ant2608	ant2608	1		\N	\N	\N
753	46	ant1	ant1	3		\N	\N	vahram@hf.am
754	46	ant2	ant2	3		\N	\N	\N
755	47	ant3	ant3	3		1	\N	hasmik@hf.am
756	47	ant4	ant4	3		\N	\N	\N
757	32	2154209000797	2154209000797	3		4	\N	vahram@hf.am
758	32	12bc5105692	12BC5105692	3		\N	\N	\N
759	32	2142293005793	2142293005793	3		\N	\N	\N
760	33	11381207502	11381207502	3		1	\N	jass.manasyan@gmail.com
761	33	12b80803512	12B80803512	3		4	\N	vahram@hf.am
762	37	qs082d1015069	QS082d1015069	1		\N	\N	\N
763	39	218924406	218924406	3		4	\N	jass.manasyan@gmail.com
764	39	218492011	218492011	3		4	\N	jass.manasyan@gmail.com
765	39	218924175	218924175	3		4	\N	jass.manasyan@gmail.com
766	34	13679401916	13679401916	3		\N	\N	\N
767	34	13679401912	13679401912	3		\N	\N	\N
768	41	t11308003216	T11308003216	3	B89BC9F52C82	\N	\N	\N
769	41	t11308003212	T11308003212	3	B89BC9F52DA9	\N	\N	\N
770	40	bklrq2wr0047	BKLRQ2WR0047	1	00304F6F4CFD	\N	\N	\N
771	59	p1qe2ab001321	P1QE2AB001321	5	3408040A588E	\N	\N	\N
772	38	f3b2174000528	F3B2174000528	5		\N	\N	\N
773	36	2142168003567	2142168003567	5	E894F6945508	\N	\N	\N
774	35	12679803741	12679803741	5	647002846CD2	\N	\N	\N
775	42	e2423010343000854	E2423010343000854	3		1	\N	jass.manasyan@gmail.com
776	60	r36f1bb024640	R36F1BB024640	1	B8A38605EE77	\N	\N	\N
777	61	avs2707002988	AVS2707002988	5		\N	\N	\N
778	43	150226e1000n00759	150226E1000N00759	3		1	\N	vahram@hf.am
779	43	150226e1000n00760	150226E1000N00760	3		1	\N	vahram@hf.am
780	43	150226e1000n00611	150226E1000N00611	3		1	\N	vahram@hf.am
781	43	150226e1000n00612	150226E1000N00612	3		1	\N	vahram@hf.am
782	1	f09fc246e417	f09fc246e417	1	f09fc246e417	\N	\N	\N
783	29	71a30677859b	71a30677859b	4	6ceb6bafb4b5	\N	\N	jass.manasyan@gmail.com
784	20	802aa8ae8f53	802AA8AE8F53	2	802AA8AE8F53	\N	\N	\N
785	29	71a306c519c8	71a306c519c8	4	6c3b6bd586ab	\N	\N	\N
786	29	71a30642735f	71a30642735f	4	6c3b6bd7f14d	\N	\N	jass.manasyan@gmail.com
787	129	no_mac_address:33	NO_MAC_ADDRESS:33	1		\N	\N	\N
788	0	a310138800681	A310138800681	5		\N	\N	\N
789	130	lgzv8ejf3dea0	LGZV8EJF3DEA0	5	00186EF3DEA0	\N	\N	\N
800	1	f09fc246e4f2	F09FC246E4F2	1	F09FC246E4F2	\N	\N	\N
801	29	71a30682e408/652	71A30682E408/652	\N	6C3B6BDA1F28	\N	\N	\N
802	1	802aa8f87be6  	802AA8F87BE6	1	802AA8F87BE6	\N	\N	\N
803	29	71a306c29a78	71A306C29A78	4	6C3B6BD76715	\N	\N	\N
804	11	68725120ddb5	68725120DDB5	3	68725120DDB5	\N	\N	\N
805	45	ant24077	ant24077	\N	ant24077	\N	\N	\N
806	29	71a30695c234/652	71A30695C234/652	\N	6C3B6BD7F0B7	\N	\N	\N
807	1	f09fc246e621	F09FC246E621	1	F09FC246E621	\N	\N	\N
808	29	71a306175d9b/652	71A306175D9B/652	\N	6C3B6BD7FA47	\N	\N	\N
809	19	802aa806cb9d	802AA806CB9D	1	802AA806CB9D	\N	\N	\N
810	29	71a30698f81b	71A30698F81B	4	6C3B6BD76775	\N	\N	jass.manasyan@gmail.com
813	11	6872514a4a33	6872514a4a33	3	6872514a4a33	\N	\N	\N
814	45	ant24073	ant24073	\N	ant24073	\N	\N	\N
815	29	71b906ba1f71646	71b906ba1f71646	\N	6c3b6b86ee21	\N	\N	\N
816	1	f09fc246e3ca	f09fc246e3ca	1	f09fc246e3ca	\N	\N	\N
817	29	71a306be9a84652	71a306be9a84652	\N	6c3b6bdc5666	\N	\N	\N
823	1	f09fc246e4fc	f09fc246e4fc	1	f09fc246e4fc	\N	\N	\N
824	29	71a3066536fa	71a3066536fa	\N	6c386bdc5c60	\N	\N	\N
825	11	68725144da0a	68725144DA0A	3	68725144DA0A	\N	\N	\N
826	29	 71b90631bf1a	 71b90631bf1a	\N	6C3B6BAE844B	\N	\N	\N
827	28	ftx1538b0dr	FTX1538B0DR	3	70810592735a	4	\N	vahram@hf.am
828	45	ant24074	ant24074	3	ant24074	1	\N	hasmik@hf.am
829	13	dc9fdb500630	DC9FDB500630	3	DC9FDB500630	\N	\N	\N
830	29	 71a3060aa1ss	 71a3060aa1ss	\N	6c3b6bda179c	\N	\N	\N
831	1	f09fc246e67c	F09FC246E67C	1	F09FC246E67C	\N	\N	\N
832	45	ant24075	ant24075	\N	ant24075	\N	\N	\N
833	45	ant24076	ant24076	\N	ant24076	\N	\N	\N
834	29	71a306dcd0ee	71a306dcd0ee	\N	6c3b6bdc566c	\N	\N	\N
835	1	f09fc246e412	f09fc246e412	1	f09fc246e412	\N	\N	\N
836	29	71b906391aff	71b906391aff	\N	6c3b6bae846c	\N	\N	\N
837	1	f09fc246ed08	f09fc246ed08	1	f09fc246ed08	\N	\N	\N
838	29	71b906943016	71b906943016	4	6c3b6bae84c0	1	\N	\N
839	29	71a306f37453	71a306f37453	\N	6c3b6bdc5ff6	\N	\N	\N
840	1	f09fc246e185	f09fc246e185	1	f09fc246e185	\N	\N	\N
841	1	f09fc246e139	f09fc246e139	1	f09fc246e139	\N	\N	\N
842	29	71a3069eb9bb	71a3069eb9bb	\N	6c3b6bd7ee35	\N	\N	\N
843	1	f09fc246e3ff	f09fc246e3ff	1	f09fc246e3ff	\N	\N	\N
844	29	71b906b5f630	71b906b5f630	4	6c3b6bae84c6	1	\N	\N
845	1	f09fc246e399	F09FC246E399	1	F09FC246E399	\N	\N	\N
847	8	802aa8b82a7c	802AA8B82A7C	2	802AA8B82A7C	\N	\N	\N
848	10	0418d6f6e1f2	0418D6F6E1F2	1	0418D6F6E1F2	\N	\N	\N
849	14	00272298beea	00272298BEEA	3	00272298BEEA	\N	\N	\N
850	8	 802aa8b83adb	802AA8B83ADB	2	802AA8B83ADB	2	\N	hasmik@hf.am
851	3	 f09fc250440f	 F09FC250440F	1	 F09FC250440F	\N	\N	\N
852	19	 dc9fdb941af3	 DC9FDB941AF3	4	 DC9FDB941AF3	1	\N	jass.manasyan@gmail.com
853	56	ant519001	ant52001	1	ant52001	\N	\N	\N
854	58	5g3101	5G3101	1	5G3101	\N	\N	\N
855	54	ant2609	ant2609	1	ant2609	\N	\N	\N
856	57	am5g2001	AM5G2001	2	AM5G2001	\N	\N	\N
857	3	 f09fc2504367	F09FC2504367	1	F09FC2504367	\N	\N	\N
858	6	687251284045	687251284045	3	687251284045	\N	\N	\N
859	50	am1301	AM1301	3	AM1301	\N	\N	\N
860	19	dc9fdb6e33ac	DC9FDB6E33AC	4	DC9FDB6E33AC	1	\N	jass.manasyan@gmail.com
861	11	68725120de2a	68725120DE2A	3	68725120DE2A	1	\N	jass.manasyan@gmail.com
862	45	un-a24-k-157	un-a24-k-157	3		1	\N	jass.manasyan@gmail.com
863	22	802aa8f1a632	802AA8F1A632	1	802AA8F1A632	\N	\N	\N
864	15	24a43c74b574	24A43C74B574	3	24A43C74B574	\N	\N	\N
865	16	6872515e2802	6872515E2802	2	6872515E2802	\N	\N	\N
866	8	802aa8b83a3f	802AA8B83A3F	1	802AA8B83A3F	\N	\N	\N
867	57	am5g2004	AM5G2004	2	AM5G2004	\N	\N	\N
868	3	f09fc2502228	F09FC2502228	1	F09FC2502228	\N	\N	\N
869	3	f09fc2502342	F09FC2502342	1	F09FC2502342	\N	\N	\N
870	8	802aa8b82b8a	802AA8B82B8A	2	802AA8B82B8A	\N	\N	\N
871	56	am5g2005	AM5G2005	1	AM5G2005	\N	\N	\N
872	16	6872515e2b4c	6872515E2B4C	2	6872515E2B4C	\N	\N	\N
873	11	68725120dff1	68725120DFF1	3	68725120DFF1	\N	\N	\N
874	14	0027223212e7	0027223212E7	3	0027223212E7	\N	\N	\N
875	48	ant15038	ant15038	3	ant15038	4	\N	jass.manasyan@gmail.com
876	14	0027223212a1	0027223212A1	3	0027223212A1	\N	\N	\N
877	6	68725166c2ea	68725166C2EA	1	68725166C2EA	\N	\N	\N
878	50	am1302	AM1302	1	AM1302	\N	\N	\N
879	22	802aa8f1a5b0	802AA8F1A5B0	1	802AA8F1A5B0	\N	\N	\N
880	6	687251441281	687251441281	3	687251441281	\N	\N	\N
881	50	am1303	AM1303	1	AM1303	\N	\N	\N
882	19	802aa806c5b2	802AA806C5B2	1	802AA806C5B2	\N	\N	\N
883	22	802aa8f19ded	802AA8F19DED	1	802AA8F19DED	\N	\N	\N
884	1	f09fc246e685	F09FC246E685	1	F09FC246E685	\N	\N	\N
885	1	f09fc246e059	F09FC246E059	1	F09FC246E059	\N	\N	\N
886	22	802aa8f1aa87	802AA8F1AA87	1	802AA8F1AA87	\N	\N	\N
887	6	68725166c520	68725166C520	1	68725166C520	\N	\N	\N
888	50	am1304	AM1304	1	AM1304	\N	\N	\N
889	22	802aa88d5604	802AA88D5604	1	802AA88D5604	\N	\N	\N
890	19	802aa806c9ab	802AA806C9AB	1	802AA806C9AB	\N	\N	\N
891	3	f09fc2504355	F09FC2504355	1	F09FC2504355	\N	\N	\N
892	5	802aa8a4c397	802AA8A4C397	1	802AA8A4C397	\N	\N	\N
893	19	dc9fdb6e3ca5	DC9FDB6E3CA5	4	DC9FDB6E3CA5	\N	\N	\N
894	11	68725122677f	68725122677F	3	68725122677F	\N	\N	\N
895	48	ant15039	ant15039	3	ant15039	\N	\N	\N
896	22	802aa88d548b	802AA88D548B	1	802AA88D548B	\N	\N	\N
897	3	f09fc250328a	F09FC250328A	1	F09FC250328A	\N	\N	\N
898	19	dc9fdb6e3cc9	DC9FDB6E3CC9	4	DC9FDB6E3CC9	\N	\N	\N
899	6	68725166c5e0	68725166C5E0	1	68725166C5E0	\N	\N	\N
900	51	am1501	AM1501	1	AM1501	\N	\N	\N
901	19	dc9fdb941ae3	DC9FDB941AE3	4	DC9FDB941AE3	\N	\N	\N
902	11	6872514a48f0	6872514A48F0	3	6872514A48F0	\N	\N	\N
903	48	ant15040	ant15040	3	ant15040	\N	\N	\N
904	16	6872515e2790	6872515E2790	2	6872515E2790	\N	\N	\N
905	19	dc9fdb6e3d55	DC9FDB6E3D55	4	DC9FDB6E3D55	\N	\N	\N
906	16	6872515e28a7	6872515E28A7	2	6872515E28A7	\N	\N	\N
907	5	802aa8a483ee	802AA8A483EE	1	802AA8A483EE	\N	\N	\N
908	6	68725166c622	68725166C622	1	68725166C622	\N	\N	\N
909	50	am1305	AM1305	3	AM1305	\N	\N	\N
910	1	f09fc246e5ba	F09FC246E5BA	1	F09FC246E5BA	\N	\N	\N
911	45	ant24078	ant24078	3	ant24078	\N	\N	\N
912	15	24a43c74b61b	24A43C74B61B	3	24A43C74B61B	\N	\N	\N
913	11	68725164a9bf	68725164A9BF	2	68725164A9BF	\N	\N	\N
914	3	f09fc2504357	F09FC2504357	1	F09FC2504357	\N	\N	\N
915	48	ant15041	ant15041	3	ant15041	\N	\N	\N
917	13	dc9fdb50062d	DC9FDB50062D	1	DC9FDB50062D	2	\N	hasmik@hf.am
918	48	ant15042	ant15042	3	ant15042	\N	\N	\N
919	3	f09fc2504391	F09FC2504391	1	F09FC2504391	\N	\N	\N
920	11	68725164a9b0	68725164A9B0	2	68725164A9B0	\N	\N	\N
921	48	ant15043	ant15043	3	ant15043	\N	\N	\N
922	22	802aa88d5537	802AA88D5537	1	802AA88D5537	\N	\N	\N
923	5	802aa8a4ca60	802AA8A4CA60	1	802AA8A4CA60	2	\N	jass.manasyan@gmail.com
924	22	802aa8f19acc	802AA8F19ACC	1	802AA8F19ACC	\N	\N	\N
925	5	802aa8a4c11b	802AA8A4C11B	1	802AA8A4C11B	\N	\N	\N
926	3	802aa824f135	802AA824F135	1	802AA824F135	\N	\N	\N
927	3	802aa824ecfc	802AA824ECFC	1	802AA824ECFC	\N	\N	\N
928	6	68725166c32d	 68:72:51:66:C3:2D	1	 68:72:51:66:C3:2D	\N	\N	\N
929	50	am1306	AM1306	3	AM1306	\N	\N	\N
930	3	802aa824ed75	802AA824ED75	1	802AA824ED75	\N	\N	\N
931	11	24a43cf89d95	24A43CF89D95	3	24A43CF89D95	\N	\N	\N
932	48	ant15044	ant15044	3	ant15044	\N	\N	\N
933	3	802aa824e7ed	802AA824E7ED	1	802AA824E7ED	\N	\N	\N
934	11	68725120dd4b	68725120DD4B	3	68725120DD4B	\N	\N	\N
935	48	ant15045	ant15045	3	ant15045	\N	\N	\N
936	23	802aa81d0fea	802AA81D0FEA	1	802AA81D0FEA	\N	\N	\N
937	6	68725166c3ed	68725166C3ED	1	68725166C3ED	\N	\N	\N
938	19	802aa808f4dc	802AA808F4DC	1	802AA808F4DC	\N	\N	\N
939	3	802aa824f171	802AA824F171	1	802AA824F171	1	\N	hasmik@hf.am
940	20	802aa8ae8d11	802AA8AE8D11	2	802AA8AE8D11	\N	\N	\N
941	51	am1502	AM1502	3	AM1502	\N	\N	\N
942	19	dc9fdb4cbaa1	DC9FDB4CBAA1	4	DC9FDB4CBAA1	\N	\N	\N
943	11	6872514a4835	6872514A4835	3	6872514A4835	1	\N	hasmik@hf.am
944	48	ant15046	ant15046	3	ant15046	1	\N	hasmik@hf.am
945	3	f09fc2504396	F09FC2504396	1	F09FC2504396	1	\N	hasmik@hf.am
946	11	68725120ddb6	68725120DDB6	3	68725120DDB6	\N	\N	\N
947	48	ant15047	ant15047	3	ant15047	\N	\N	\N
948	16	6872515e292e	6872515E292E	2	6872515E292E	\N	\N	\N
949	22	802aa84cdc91	802AA84CDC91	1	802AA84CDC91	\N	\N	\N
950	1	802aa8f87c21	802AA8F87C21	1	802AA8F87C21	\N	\N	\N
951	6	68725140c96b	68725140C96B	3	68725140C96B	\N	\N	\N
952	51	am1503	AM1503	3	AM1503	\N	\N	\N
953	11	68725166885b	68725166885B	1	68725166885B	\N	\N	\N
954	1	f09fc246e755	F09FC246E755	1	F09FC246E755	\N	\N	\N
955	22	802aa8f1a3db	802AA8F1A3DB	1	802AA8F1A3DB	\N	\N	\N
956	11	6872514a495e	6872514A495E	3	6872514A495E	\N	\N	\N
957	19	802aa808ecdb	802AA808ECDB	1	802AA808ECDB	\N	\N	\N
958	22	802aa8f1a5b5	802AA8F1A5B5	1	802AA8F1A5B5	\N	\N	\N
959	131	802aa83cd113	802AA83CD113	2	802AA83CD113	\N	\N	\N
960	131	802aa83cd223	802AA83CD223	2	802AA83CD223	\N	\N	\N
961	131	802aa83cd211	802AA83CD211	2	802AA83CD211	\N	\N	\N
962	11	6872514a49f5	6872514A49F5	3	6872514A49F5	\N	\N	\N
963	48	ant15048	ant15048	3	ant15048	\N	\N	\N
964	22	802aa8f1aa48	802AA8F1AA48	1	802AA8F1AA48	\N	\N	\N
965	131	802aa83cd2bd	802AA83CD2BD	2	802AA83CD2BD	\N	\N	\N
966	11	68725164a933	68725164A933	2	68725164A933	\N	\N	\N
968	1	f09fc246e5a8	F09FC246E5A8	1	F09FC246E5A8	\N	\N	\N
970	1	802aa806dbbd	802AA806DBBD	1	802AA806DBBD	\N	\N	\N
971	22	802aa8f1a6b9	802AA8F1A6B9	1	802AA8F1A6B9	\N	\N	\N
972	19	802aa806ae94	802AA806AE94	1	802AA806AE94	\N	\N	\N
973	11	24a43ca632d6	24A43CA632D6	3	24A43CA632D6	1	\N	jass.manasyan@gmail.com
974	14	00272298bea2	00272298BEA2	3	00272298BEA2	1	\N	jass.manasyan@gmail.com
975	6	68725166c332	68725166C332	1	68725166C332	\N	\N	\N
976	50	am1307	AM1307	3	AM1307	\N	\N	\N
977	54	ant2610	ant2610	1	ant2610	\N	\N	\N
978	23	802aa81f54e3	802AA81F54E3	1	802AA81F54E3	\N	\N	\N
979	10	0418d6f6e22a	0418D6F6E22A	1	0418D6F6E22A	\N	\N	\N
980	6	68725166c309	68725166C309	1	68725166C309	\N	\N	\N
981	6	68725166c345	68725166C345	1	68725166C345	\N	\N	\N
982	10	0418d6f6e1fe	0418D6F6E1FE	1	0418D6F6E1FE	\N	\N	\N
983	3	f09fc25022a6	F09FC25022A6	1	F09FC25022A6	\N	\N	\N
984	5	802aa8a485fa	802AA8A485FA	1	802AA8A485FA	\N	\N	\N
985	3	f09fc2502329	F09FC2502329	1	F09FC2502329	\N	\N	\N
986	3	f09fc250234e	F09FC250234E	1	F09FC250234E	\N	\N	\N
987	50	am1308	AM1308	1	AM1308	\N	\N	\N
988	51	am1504	AM1504	1	AM1504	\N	\N	\N
989	56	ant519003	ant519003	1	ant519003	\N	\N	\N
990	5	802aa8a4cb04	802AA8A4CB04	1	802AA8A4CB04	\N	\N	\N
991	11	687251668a31	687251668A31	1	687251668A31	\N	\N	\N
992	48	ant15050	ant15050	3	ant15050	\N	\N	\N
993	3	f09fc2502323	F09FC2502323	1	F09FC2502323	\N	\N	\N
994	11	68725164a9d4	68725164A9D4	2	68725164A9D4	1	\N	vahram@hf.am
995	48	ant15051	ant15051	3	ant15051	1	\N	vahram@hf.am
996	3	f09fc25022ea	F09FC25022EA	1	F09FC25022EA	\N	\N	\N
997	11	687251668a1d	687251668A1D	1	687251668A1D	\N	\N	\N
998	48	ant15052	ant15052	3	ant15052	\N	\N	\N
999	22	802aa8f1a676	802AA8F1A676	1	802AA8F1A676	\N	\N	\N
1000	11	6872514a4950	6872514A4950	3	6872514A4950	\N	\N	\N
1001	48	ant15053	ant15053	3	ant15053	\N	\N	\N
1002	3	802aa824f681	802AA824F681	1	802AA824F681	\N	\N	\N
1003	14	0027223212ae	0027223212AE	3	0027223212AE	\N	\N	\N
1004	54	ant2611	ant2611	1	ant2611	\N	\N	\N
1005	23	802aa81f55e3	802AA81F55E3	1	802AA81F55E3	\N	\N	\N
1006	3	802aa824ed03	802AA824ED03	1	802AA824ED03	\N	\N	\N
1007	6	68725144124b	68725144124B	3	68725144124B	\N	\N	\N
1008	50	am1309	AM1309	1	AM1309	\N	\N	\N
1009	19	802aa808e8e1	802AA808E8E1	1	802AA808E8E1	\N	\N	\N
1010	3	802aa824ed83	802AA824ED83	1	802AA824ED83	\N	\N	\N
1011	3	802aa8645079	802AA8645079	1	802AA8645079	\N	\N	\N
1012	3	802aa86450ab	802AA86450AB	1	802AA86450AB	\N	\N	\N
1013	11	6872514a4976	6872514A4976	3	6872514A4976	\N	\N	\N
1014	48	ant15054	ant15054	3	ant15054	\N	\N	\N
1015	3	802aa864507a	802AA864507A	1	802AA864507A	\N	\N	\N
1016	3	802aa824ed74	802AA824ED74	1	802AA824ED74	1	\N	jass.manasyan@gmail.com
1017	11	6872514a48ee	6872514A48EE	3	6872514A48EE	1	\N	jass.manasyan@gmail.com
1018	48	ant15056	ant15056	3	ant15056	\N	\N	\N
1019	3	802aa824ee13	802AA824EE13	1	802AA824EE13	\N	\N	\N
1020	11	6872514a4a07	6872514A4A07	3	6872514A4A07	\N	\N	\N
1021	48	ant15057	ant15057	3	ant15057	\N	\N	\N
1022	14	dc9fdb3251bc	DC9FDB3251BC	3	DC9FDB3251BC	\N	\N	\N
1023	48	ant15058	ant15058	3	ant15058	\N	\N	\N
1024	54	ant2612	ant2612	1	ant2612	\N	\N	\N
1025	22	802aa8f1a710	802AA8F1A710	1	802AA8F1A710	\N	\N	\N
1026	6	68725140cabf	68725140CABF	3	68725140CABF	\N	\N	\N
1027	50	am1326	AM1326	1	AM1326	\N	\N	\N
1028	22	802aa88d565e	802AA88D565E	1	802AA88D565E	\N	\N	\N
1029	5	802aa8a485c8	802AA8A485C8	1	802AA8A485C8	\N	\N	\N
1030	5	802aa8a4823e	802AA8A4823E	1	802AA8A4823E	\N	\N	\N
1031	6	68725166c499	68725166C499	1	68725166C499	\N	\N	\N
1032	50	am1310	AM1310	1	AM1310	\N	\N	\N
1033	13	dc9fdb5221b0	DC9FDB5221B0	3	DC9FDB5221B0	\N	\N	\N
1034	48	ant15059	ant15059	3	ant15059	\N	\N	\N
1035	22	802aa8f19e6b	802AA8F19E6B	1	802AA8F19E6B	\N	\N	\N
1036	3	f09fc2502328	F09FC2502328	1	F09FC2502328	\N	\N	\N
1037	6	687251441301	687251441301	3	687251441301	\N	\N	\N
1038	50	am1311	AM1311	3	AM1311	\N	\N	\N
1039	11	6872514a49f7	6872514A49F7	3	6872514A49F7	\N	\N	\N
1040	45	ant24080	ant24080	3	ant24080	\N	\N	\N
1041	48	ant15060	ant15060	3	ant15060	\N	\N	\N
1042	28	708105926a22	708105926a22	3	708105926a22	\N	\N	\N
1043	3	f09fc2502261	F09FC2502261	1	F09FC2502261	\N	\N	\N
1044	6	68725166c5db	68725166C5DB	1	68725166C5DB	\N	\N	\N
1045	51	am1505	AM1505	1	AM1505	\N	\N	\N
1046	22	802aa8f1aa54	802AA8F1AA54	1	802AA8F1AA54	\N	\N	\N
1047	6	68725166c58c	68725166C58C	1	68725166C58C	\N	\N	\N
1048	50	am1312	AM1312	3	AM1312	\N	\N	\N
1049	15	6872515c34ba	6872515C34BA	2	6872515C34BA	\N	\N	\N
1050	22	802aa84cd713	802AA84CD713	1	802AA84CD713	\N	\N	\N
1051	6	68725166c311	68725166C311	1	68725166C311	\N	\N	\N
1052	5	802aa8a4c90e	802AA8A4C90E	1	802AA8A4C90E	\N	\N	\N
1053	50	am1313	AM1313	1	AM1313	\N	\N	\N
1054	5	802aa8a4ca15	802AA8A4CA15	1	802AA8A4CA15	\N	\N	\N
1055	6	68725166c72d	68725166C72D	1	68725166C72D	\N	\N	\N
1056	50	am1314	AM1314	1	AM1314	\N	\N	\N
1057	22	802aa88d5538	802AA88D5538	1	802AA88D5538	\N	\N	\N
1058	6	68725148522f	68725148522F	3	68725148522F	\N	\N	\N
1059	50	am1315	AM1315	3	AM1315	\N	\N	\N
1060	3	802aa824f67a	802AA824F67A	1	802AA824F67A	\N	\N	\N
1061	14	00272298bee8	00272298BEE8	3	00272298BEE8	\N	\N	\N
1062	54	ant2613	ant2613	1	ant2613	\N	\N	\N
1063	14	00272232129e	00272232129E	3	00272232129E	\N	\N	\N
1064	11	68725164a9e1	68725164A9E1	2	68725164A9E1	\N	\N	\N
1065	54	ant2614	ant2614	1	ant2614	\N	\N	\N
1066	48	ant15062	ant15062	3	ant15062	\N	\N	\N
1067	3	802aa824ed6b	802AA824ED6B	1	802AA824ED6B	\N	\N	\N
1068	6	68725166c732	68725166C732	1	68725166C732	\N	\N	\N
1069	50	am1316	AM1316	1	AM1316	\N	\N	\N
1070	22	802aa88d561d	802AA88D561D	1	802AA88D561D	\N	\N	\N
1071	5	802aa8a4c351	802AA8A4C351	1	802AA8A4C351	\N	\N	\N
1072	5	802aa8a4c311	802AA8A4C311	1	802AA8A4C311	\N	\N	\N
1073	19	dc9fdb4cb8c3	DC9FDB4CB8C3	4	DC9FDB4CB8C3	\N	\N	\N
1074	3	802aa864508b	802AA864508B	1	802AA864508B	\N	\N	\N
1075	16	6872515e2976	6872515E2976	2	6872515E2976	\N	\N	\N
1076	5	802aa8a4c15b	802AA8A4C15B	1	802AA8A4C15B	\N	\N	\N
1077	16	6872515e2824	6872515E2824	2	6872515E2824	\N	\N	\N
1078	3	f09fc25042ff	F09FC25042FF	1	F09FC25042FF	\N	\N	\N
1079	21	44d9e7a22261	44D9E7A22261	2	44D9E7A22261	\N	\N	\N
1080	5	802aa8a4c2d6	802AA8A4C2D6	1	802AA8A4C2D6	\N	\N	\N
1081	6	68725166c027	68725166C027	1	68725166C027	\N	\N	\N
1082	50	am1317	AM1317	3	AM1317	\N	\N	\N
1083	22	802aa8f19ab9	802AA8F19AB9	1	802AA8F19AB9	\N	\N	\N
1084	6	68725166c506	68725166C506	1	68725166C506	\N	\N	\N
1085	50	am1318	AM1318	1	AM1318	\N	\N	\N
1086	22	802aa88d62bf	802AA88D62BF	1	802AA88D62BF	\N	\N	\N
1087	5	802aa8a4c1f9	802AA8A4C1F9	1	802AA8A4C1F9	\N	\N	\N
1088	1	f09fc246e0cc	F09FC246E0CC	1	F09FC246E0CC	\N	\N	\N
1089	13	002722e6ed02	002722E6ED02	3	002722E6ED02	1	\N	jass.manasyan@gmail.com
1090	41	t11308003222	T11308003222	3	T11308003222	\N	\N	\N
1091	11	687251668873	687251668873	1	687251668873	1	\N	hasmik@hf.am
1092	48	ant15063	ant15063	3	ant15063	1	\N	hasmik@hf.am
1093	15	6872515c36e3	6872515C36E3	1	6872515C36E3	\N	\N	\N
1094	6	687251203699	687251203699	3	687251203699	\N	\N	\N
1095	53	rd2401	RD2401	3	RD2401	\N	\N	\N
1096	16	6872515e2873	6872515E2873	2	6872515E2873	1	\N	hasmik@hf.am
1097	15	6872515c1b9f	6872515C1B9F	1	6872515C1B9F	\N	\N	\N
1098	11	24a43c9e122e	24A43C9E122E	3	24A43C9E122E	\N	\N	\N
1099	44	ant24081	ant24081	3	ant24081	\N	\N	\N
1100	15	6872515c37ac	6872515C37AC	1	6872515C37AC	\N	\N	\N
1101	22	802aa8f19a7f	802AA8F19A7F	1	802AA8F19A7F	\N	\N	\N
1102	28	ftx1538b0x6	ftx1538b0x6	3	70810592714c	4	\N	vahram@hf.am
1103	48	ant15064	ant15064	3	ant15064	\N	\N	\N
1104	22	802aa88d61ba	802AA88D61BA	1	802AA88D61BA	\N	\N	\N
1105	6	68725166c58d	68725166C58D	1	68725166C58D	\N	\N	\N
1106	50	am1319	AM1319	3	AM1319	\N	\N	\N
1107	24	649ef3010492	649ef3010492	3	649ef3010492	\N	\N	\N
1108	48	ant15065	ant15065	3	ant15065	\N	\N	\N
1109	22	802aa88d552c	802AA88D552C	1	802AA88D552C	\N	\N	\N
1110	6	68725166c608	68725166C608	1	68725166C608	\N	\N	\N
1111	50	am1320	AM1320	3	AM1320	\N	\N	\N
1112	11	6872512264ad	6872512264AD	3	6872512264AD	\N	\N	\N
1113	48	ant15066	ant15066	3	ant15066	\N	\N	\N
1114	23	802aa81f5286	802AA81F5286	1	802AA81F5286	\N	\N	\N
1115	6	68725166c2ed	68725166C2ED	1	68725166C2ED	\N	\N	\N
1116	6	68725166c51a	68725166C51A	1	68725166C51A	\N	\N	\N
1117	51	am1506	AM1506	1	AM1506	\N	\N	\N
1118	51	am1507	AM1507	1	AM1507	\N	\N	\N
1119	5	802aa8a48538	802AA8A48538	1	802AA8A48538	\N	\N	\N
1120	3	f09fc2502351	F09FC2502351	1	F09FC2502351	\N	\N	\N
1121	5	802aa8a483ac	802AA8A483AC	1	802AA8A483AC	\N	\N	\N
1122	6	68725166c31d	68725166C31D	1	68725166C31D	\N	\N	\N
1123	50	am1321	AM1321	1	AM1321	\N	\N	\N
1124	3	f09fc25022ad	F09FC25022AD	1	F09FC25022AD	\N	\N	\N
1125	11	68725120dd9b	68725120DD9B	3	68725120DD9B	\N	\N	\N
1126	45	ant24082	ant24082	3	ant24082	\N	\N	\N
1127	11	68725120de79	68725120DE79	3	68725120DE79	\N	\N	\N
1128	45	ant24083	ant24083	3	ant24083	\N	\N	\N
1129	11	24a43ca62e68	24A43CA62E68	3	24A43CA62E68	\N	\N	\N
1130	48	ant15067	ant15067	3	ant15067	\N	\N	\N
1131	22	802aa8f1a5ad	802AA8F1A5AD	1	802AA8F1A5AD	\N	\N	\N
1132	22	802aa8f1a5bc	802AA8F1A5BC	1	802AA8F1A5BC	\N	\N	\N
1133	6	687251441311	687251441311	3	687251441311	\N	\N	\N
1134	6	68725140c90b	68725140C90B	3	68725140C90B	\N	\N	\N
1136	51	am1508	AM1508	1	AM1508	\N	\N	\N
1137	3	802aa8240c53	802AA8240C53	1	802AA8240C53	\N	\N	\N
1138	4	802aa8244e85	802AA8244E85	1	802AA8244E85	\N	\N	\N
1139	3	f09fc25043a0	F09FC25043A0	1	F09FC25043A0	\N	\N	\N
1140	11	24a43ca62c5e	24A43CA62C5E	3	24A43CA62C5E	\N	\N	\N
1141	45	ant24084	ant24084	3	ant24084	\N	\N	\N
1142	1	f09fc246e50b	F09FC246E50B	1	F09FC246E50B	\N	\N	\N
1143	3	802aa824eec3	802AA824EEC3	1	802AA824EEC3	\N	\N	\N
1144	11	6872514a495c	6872514A495C	3	6872514A495C	\N	\N	\N
1145	48	ant15068	ant15068	3	ant15068	\N	\N	\N
1146	3	f09fc2504224	F09FC2504224	1	F09FC2504224	\N	\N	\N
1147	6	68725140c9f0	68725140C9F0	3	68725140C9F0	\N	\N	\N
1148	50	am1322	AM1322	1	AM1322	\N	\N	\N
1149	4	802aa8244ea6	802AA8244EA6	1	802AA8244EA6	\N	\N	\N
1150	11	687251226917	687251226917	3	687251226917	\N	\N	\N
1151	48	ant15069	ant15069	3	ant15069	\N	\N	\N
1152	13	dc9fdb500605	DC9FDB500605	3	DC9FDB500605	\N	\N	\N
1153	45	ant24085	ant24085	3	ant24085	\N	\N	\N
1154	19	44d9e7ca0fe3	44D9E7CA0FE3	4	44D9E7CA0FE3	\N	\N	\N
1155	3	802aa824b658	802AA824B658	1	802AA824B658	\N	\N	\N
1156	1	f09fc246e1e3	F09FC246E1E3	1	F09FC246E1E3	\N	\N	\N
1157	29	71a306b44979	71A306B44979	4	6C3B6BD75BBD	\N	\N	\N
1158	3	f09fc250418f	F09FC250418F	1	F09FC250418F	\N	\N	\N
1159	6	68725166c365	68725166C365	1	68725166C365	\N	\N	\N
1160	50	am1323	AM1323	1	AM1323	\N	\N	\N
1161	22	802aa8f1a5bd	802AA8F1A5BD	1	802AA8F1A5BD	\N	\N	\N
1162	6	68725144122f	68725144122F	3	68725144122F	\N	\N	\N
1163	51	am1509	AM1509	1	AM1509	\N	\N	\N
1164	1	f09fc246e49e	F09FC246E49E	1	F09FC246E49E	\N	\N	\N
1165	3	802aa8645197	802AA8645197	1	802AA8645197	\N	\N	\N
1166	24	ftx1539v09d	ftx1539v09d	3	7081053a75f6	4	\N	vahram@hf.am
1167	48	ant15070	ant15070	3	ant15070	4	\N	jass.manasyan@gmail.com
1168	3	802aa824b65a	802AA824B65A	1	802AA824B65A	\N	\N	\N
1169	11	6872514a49c1	6872514A49C1	3	6872514A49C1	\N	\N	\N
1170	48	ant15071	ant15071	3	ant15071	1	\N	hasmik@hf.am
1171	22	802aa8f1a67b	802AA8F1A67B	1	802AA8F1A67B	1	\N	hasmik@hf.am
1172	3	802aa824ef20	802AA824EF20	1	802AA824EF20	\N	\N	\N
1173	3	f09fc250431c	F09FC250431C	1	F09FC250431C	\N	\N	\N
1174	11	68725164a9e5	68725164A9E5	2	68725164A9E5	\N	\N	\N
1175	48	ant15072	ant15072	3	ant15072	\N	\N	\N
1176	22	802aa8f1a4d3	802AA8F1A4D3	1	802AA8F1A4D3	\N	\N	\N
1177	3	f09fc25022d7	F09FC25022D7	1	F09FC25022D7	\N	\N	\N
1178	3	f09fc25023ed	F09FC25023ED	1	F09FC25023ED	\N	\N	\N
1179	3	f09fc2502429	F09FC2502429	1	F09FC2502429	\N	\N	\N
1180	11	dc9fdb5005a1	DC9FDB5005A1	3	DC9FDB5005A1	\N	\N	\N
1181	48	ant15073	ant15073	3	ant15073	\N	\N	\N
1182	3	f09fc250241e	F09FC250241E	1	F09FC250241E	\N	\N	\N
1183	13	002722e6eceb	002722E6ECEB	3	002722E6ECEB	\N	\N	\N
1184	48	ant15074	ant15074	3	ant15074	\N	\N	\N
1185	22	802aa8f1a58c	802AA8F1A58C	1	802AA8F1A58C	\N	\N	\N
1186	19	dc9fdb42b842	DC9FDB42B842	4	DC9FDB42B842	\N	\N	\N
1187	19	dc9fdb42b916	DC9FDB42B916	4	DC9FDB42B916	\N	\N	\N
1188	3	f09fc25042c0	F09FC25042C0	1	F09FC25042C0	\N	\N	\N
1189	3	f09fc2504166	F09FC2504166	1	F09FC2504166	\N	\N	\N
1190	11	68725164a97e	68725164A97E	2	68725164A97E	\N	\N	\N
1191	48	ant15075	ant15075	3	ant15075	\N	\N	\N
1192	22	802aa8f1a68f	802AA8F1A68F	1	802AA8F1A68F	\N	\N	\N
1193	6	68725166c497	68725166C497	1	68725166C497	\N	\N	\N
1194	51	am1510	AM1510	3	AM1510	\N	\N	\N
1195	13	dc9fdba67a0f	DC9FDBA67A0F	3	DC9FDBA67A0F	\N	\N	\N
1196	3	802aa824eeab	802AA824EEAB	1	802AA824EEAB	\N	\N	\N
1197	45	ant24086	ant24086	3	ant24086	\N	\N	\N
1198	19	dc9fdb6e3d54	DC9FDB6E3D54	4	DC9FDB6E3D54	1	\N	\N
1199	3	f09fc250418e	F09FC250418E	1	F09FC250418E	\N	\N	\N
1200	11	68725164a9b7	68725164A9B7	2	68725164A9B7	\N	\N	\N
1201	48	ant15076	ant15076	3	ant15076	\N	\N	\N
1202	22	802aa88d5622	802AA88D5622	1	802AA88D5622	\N	\N	\N
1203	6	68725166c58b	68725166C58B	1	68725166C58B	\N	\N	\N
1204	51	am1511	AM1511	3	AM1511	\N	\N	\N
1205	5	802aa8a4c170	802AA8A4C170	1	802AA8A4C170	\N	\N	\N
1206	3	f09fc2504315	F09FC2504315	1	F09FC2504315	\N	\N	\N
1207	3	802aa824ee9d	802AA824EE9D	1	802AA824EE9D	\N	\N	\N
1212	3	802aa824ed95	802AA824ED95	1	802AA824ED95	\N	\N	\N
1213	13	002722ee8057	002722EE8057	3	002722EE8057	\N	\N	\N
1214	48	ant15077	ant15077	3	ant15077	\N	\N	\N
1215	3	f09fc2504274	F09FC2504274	1	F09FC2504274	\N	\N	\N
1216	11	68725120e077	68725120E077	3	68725120E077	\N	\N	\N
1217	48	ant15078	ant15078	3	ant15078	\N	\N	\N
1218	5	802aa8a4c175	802AA8A4C175	1	802AA8A4C175	\N	\N	\N
1219	6	68725166c4bf	68725166C4BF	1	68725166C4BF	\N	\N	\N
1220	50	am1324	AM1324	1	AM1324	\N	\N	\N
1221	1	f09fc246ed32	F09FC246ED32	1	F09FC246ED32	\N	\N	\N
1222	13	dc9fdba67e81	DC9FDBA67E81	1	DC9FDBA67E81	\N	\N	\N
1223	45	ant24087	ant24087	3	ant24087	\N	\N	\N
1224	22	802aa8f1a65e	802AA8F1A65E	1	802AA8F1A65E	\N	\N	\N
1225	3	f09fc25023ca	F09FC25023CA	1	F09FC25023CA	\N	\N	\N
1226	15	68725124b0fa	68725124B0FA	3	68725124B0FA	\N	\N	\N
1227	3	f09fc250441a	F09FC250441A	1	F09FC250441A	\N	\N	\N
1228	6	68725166c51e	68725166C51E	1	68725166C51E	\N	\N	\N
1229	51	am1512	AM1512	3	AM1512	\N	\N	\N
1230	11	68725120dd75	68725120DD75	3	68725120DD75	\N	\N	\N
1231	45	ant24088	ant24088	3	ant24088	\N	\N	\N
1232	22	802aa8f1a68e	802AA8F1A68E	1	802AA8F1A68E	2	\N	jass.manasyan@gmail.com
1233	6	68725166c36c	68725166C36C	1	68725166C36C	\N	\N	\N
1234	50	am1325	AM1325	3	AM1325	\N	\N	\N
1235	3	802aa824f680	802AA824F680	1	802AA824F680	\N	\N	\N
1236	3	802aa824ed16	802AA824ED16	1	802AA824ED16	\N	\N	\N
1237	3	f09fc2504227	F09FC2504227	1	F09FC2504227	\N	\N	\N
1238	11	 68725164a9e9	 68725164A9E9	2	 68725164A9E9	\N	\N	\N
1239	3	f09fc25042e8	F09FC25042E8	1	F09FC25042E8	\N	\N	\N
1240	11	68725164a969	68725164A969	2	68725164A969	\N	\N	\N
1241	48	ant15079	ant15079	3	ant15079	\N	\N	\N
1242	3	f09fc25042f0	F09FC25042F0	1	F09FC25042F0	\N	\N	\N
1243	17	802aa86aeedb	802AA86AEEDB	2	802AA86AEEDB	\N	\N	\N
1244	3	f09fc250426a	F09FC250426A	1	F09FC250426A	\N	\N	\N
1259	1	f09fc246e824	F09FC246E824	1	F09FC246E824	\N	\N	\N
1260	11	68725164a9e0	68725164A9E0	2	68725164A9E0	\N	\N	\N
1261	48	ant15080	ant15080	3	ant15080	\N	\N	\N
1263	11	6872516688a9	6872516688A9	1	6872516688A9	\N	\N	\N
1264	11	687251668875	687251668875	1	687251668875	\N	\N	\N
1265	48	ant15081	ant15081	3	ant15081	\N	\N	\N
1267	6	68725166c670	68725166C670	1	68725166C670	\N	\N	\N
1268	51	am1513	AM1513	3	AM1513	\N	\N	\N
1269	1	f09fc246e2c3	F09FC246E2C3	1	F09FC246E2C3	\N	\N	\N
1270	22	802aa8f1aa05	802AA8F1AA05	1	802AA8F1AA05	1	\N	hasmik@hf.am
1271	10	0418d6f4760e	0418D6F4760E	1	0418D6F4760E	\N	\N	\N
1272	15	6872515c1e9c	6872515C1E9C	2	6872515C1E9C	\N	\N	\N
1273	15	24a43c74b571	24A43C74B571	3	24A43C74B571	\N	\N	\N
1274	15	24a43c747345	24A43C747345	3	24A43C747345	\N	\N	\N
1275	28	ftx1538b0se	FTX1538B0SE	3	708105927012	4	\N	vahram@hf.am
1276	45	ant24090	ant24090	3	ant24090	1	\N	hasmik@hf.am
1277	3	802aa824ed1d	802AA824ED1D	1	802AA824ED1D	\N	\N	\N
1278	56	am5g2003	AM5G2003	1	AM5G2003	\N	\N	\N
1279	3	f09fc250440b	F09FC250440B	1	F09FC250440B	\N	\N	\N
1280	5	802aa8a4c389	802AA8A4C389	1	802AA8A4C389	\N	\N	\N
1281	6	68725166c2ef	68725166C2EF	1	68725166C2EF	\N	\N	\N
1282	51	am1514	AM1514	3	AM1514	\N	\N	\N
1283	3	f09fc25022e4	F09FC25022E4	1	F09FC25022E4	\N	\N	\N
1284	11	68725166887b	68725166887B	1	68725166887B	\N	\N	\N
1285	45	ant24089	ant24089	3	ant24089	\N	\N	\N
1286	3	f09fc25023f1	F09FC25023F1	1	F09FC25023F1	\N	\N	\N
1287	11	68725166893f	68725166893F	1	68725166893F	\N	\N	\N
1288	48	ant15082	ant15082	3	ant15082	\N	\N	\N
1289	22	802aa8f1a45d	802AA8F1A45D	1	802AA8F1A45D	\N	\N	\N
1290	3	f09fc250221f	F09FC250221F	1	F09FC250221F	\N	\N	\N
1291	6	68725166c330	68725166C330	1	68725166C330	\N	\N	\N
1292	50	ant15083	ant15083	1	ant15083	\N	\N	\N
1293	5	802aa8a4ca46	802AA8A4CA46	1	802AA8A4CA46	\N	\N	\N
1294	11	6872516688f5	6872516688F5	1	6872516688F5	\N	\N	\N
1295	48	ant15084	ant15084	3	ant15084	\N	\N	\N
1296	22	802aa8f1aa26	802AA8F1AA26	1	802AA8F1AA26	\N	\N	\N
1297	11	6872514a49ef	6872514A49EF	3	6872514A49EF	\N	\N	\N
1298	48	ant15085	ant15085	3	ant15085	\N	\N	\N
1299	22	802aa8f1a662	802AA8F1A662	1	802AA8F1A662	\N	\N	\N
1300	6	68725120339f	68725120339F	3	68725120339F	4	\N	vahram@hf.am
1301	50	am1327	AM1327	3	AM1327	\N	\N	\N
1302	22	802aa8f1a6c0	802AA8F1A6C0	1	802AA8F1A6C0	\N	\N	\N
1303	13	002722ee7f88	002722EE7F88	1	002722EE7F88	\N	\N	\N
1304	1	f09fc246e379	F09FC246E379	1	F09FC246E379	\N	\N	\N
1305	1	f09fc246e1bd	F09FC246E1BD	1	F09FC246E1BD	\N	\N	\N
1306	58	5g3102	5G3102	1	5G3102	\N	\N	\N
1307	22	802aa8f1a5b6	802AA8F1A5B6	1	802AA8F1A5B6	\N	\N	\N
1308	6	68725140ca4c	68725140CA4C	3	68725140CA4C	\N	\N	\N
1309	50	am1328	AM1328	3	AM1328	\N	\N	\N
1310	22	802aa8f1a5a9	802AA8F1A5A9	1	802AA8F1A5A9	\N	\N	\N
1311	3	f09fc25023dd	F09FC25023DD	1	F09FC25023DD	\N	\N	\N
1312	3	f09fc250230e	F09FC250230E	1	F09FC250230E	\N	\N	\N
1313	6	6872514412ce	6872514412CE	3	6872514412CE	1	\N	hasmik@hf.am
1314	50	un-a-13-h-016	UN-A-13-H-016	1	UN-A-13-H-016	1	\N	hasmik@hf.am
1315	3	f09fc2502306	F09FC2502306	1	F09FC2502306	\N	\N	\N
1316	11	68725164a94f	68725164A94F	2	68725164A94F	\N	\N	\N
1317	48	ant15086	ant15086	3	ant15086	\N	\N	\N
1318	3	f09fc2504397	F09FC2504397	1	F09FC2504397	\N	\N	\N
1319	11	68725164a94d	68725164A94D	2	68725164A94D	\N	\N	\N
1320	48	ant15087	ant15087	3	ant15087	\N	\N	\N
1321	3	f09fc250247b	F09FC250247B	1	F09FC250247B	\N	\N	\N
1322	3	f09fc25023e6	F09FC25023E6	1	F09FC25023E6	\N	\N	\N
1323	11	6872512268f5	6872512268F5	3	6872512268F5	\N	\N	\N
1324	48	ant15088	ant15088	3	ant15088	\N	\N	\N
1325	48	ant15089	ant15089	3	ant15089	\N	\N	\N
1326	3	f09fc2502402	F09FC2502402	1	F09FC2502402	\N	\N	\N
1327	11	687251668a21	687251668A21	1	687251668A21	\N	\N	\N
1328	5	802aa8a4caef	802AA8A4CAEF	1	802AA8A4CAEF	\N	\N	\N
1329	11	6872514a4a16	6872514A4A16	3	6872514A4A16	\N	\N	\N
1330	48	ant15090	ant15090	3	ant15090	\N	\N	\N
1331	22	802aa8f19a1b	802AA8F19A1B	1	802AA8F19A1B	\N	\N	\N
1332	3	f09fc250418b	F09FC250418B	1	F09FC250418B	\N	\N	\N
1333	3	f09fc25041b0	F09FC25041B0	1	F09FC25041B0	\N	\N	\N
1334	13	dc9fdb5005fc	DC9FDB5005FC	3	DC9FDB5005FC	\N	\N	\N
1335	48	ant15091	ant15091	3	ant15091	\N	\N	\N
1336	23	802aa81f51cc	802AA81F51CC	1	802AA81F51CC	\N	\N	\N
1337	7	687251207170	687251207170	1	687251207170	\N	\N	\N
1338	51	am1515	AM1515	1	AM1515	\N	\N	\N
1339	7	687251207038	687251207038	1	687251207038	\N	\N	\N
1340	51	am1516	AM1516	1	AM1516	\N	\N	\N
1341	4	802aa864c396	802AA864C396	1	802AA864C396	\N	\N	\N
1342	4	802aa8244dbc	802AA8244DBC	1	802AA8244DBC	\N	\N	\N
1343	1	f09fc246e8a0	F09FC246E8A0	1	F09FC246E8A0	\N	\N	\N
1344	19	802aa806d283	802AA806D283	1	802AA806D283	\N	\N	\N
1345	4	802aa864c320	802AA864C320	1	802AA864C320	\N	\N	\N
1346	13	dc9fdb522189	DC9FDB522189	3	DC9FDB522189	\N	\N	\N
1347	48	ant15092	ant15092	3	ant15092	\N	\N	\N
1348	4	802aa8244d22	802AA8244D22	1	802AA8244D22	\N	\N	\N
1349	13	002722ee7fde	002722EE7FDE	1	002722EE7FDE	\N	\N	\N
1350	48	ant15093	ant15093	3	ant15093	\N	\N	\N
1355	19	44d9e7cafb91	44D9E7CAFB91	2	44D9E7CAFB91	\N	\N	\N
1356	19	44d9e7caf67e	44D9E7CAF67E	2	44D9E7CAF67E	1	\N	jass.manasyan@gmail.com
1357	29	71a30625cc0d	71A30625CC0D	4	71A30625CC0D	\N	\N	\N
1358	1	f09fc246e3ee	F09FC246E3EE	1	F09FC246E3EE	\N	\N	\N
1359	29	71a306499663	71A306499663	4	6C3B6BDC6373	\N	\N	\N
1360	13	002722e6ecb8	002722E6ECB8	3	002722E6ECB8	1	\N	hasmik@hf.am
1361	45	ant24091	ant24091	3	ant24091	1	\N	hasmik@hf.am
1362	48	ant15094	ant15094	3	ant15094	1	\N	hasmik@hf.am
1363	13	002722e6ec2d	002722E6EC2D	3	002722E6EC2D	\N	\N	\N
1364	48	ant15095	ant15095	3	ant15095	\N	\N	\N
1365	19	802aa808e874	802AA808E874	1	802AA808E874	1	\N	jass.manasyan@gmail.com
1366	13	dc9fdba67de3	DC9FDBA67DE3	3	DC9FDBA67DE3	2	\N	jass.manasyan@gmail.com
1367	48	ant15096	ant15096	3	ant15096	\N	\N	\N
1368	22	802aa8f1aac7	802AA8F1AAC7	1	802AA8F1AAC7	\N	\N	\N
1369	3	f09fc25023fc	F09FC25023FC	1	F09FC25023FC	\N	\N	\N
1370	4	802aa82487a9	802AA82487A9	1	802AA82487A9	\N	\N	\N
1371	11	68725164a8ca	68725164A8CA	2	68725164A8CA	\N	\N	\N
1372	48	ant15097	ant15097	3	ant15097	\N	\N	\N
1373	4	802aa8248fb9	802AA8248FB9	1	802AA8248FB9	\N	\N	\N
1374	11	68725164a9c5	68725164A9C5	2	68725164A9C5	\N	\N	\N
1375	48	ant15098	ant15098	3	ant15098	\N	\N	\N
1376	22	802aa8f19aa2	802AA8F19AA2	1	802AA8F19AA2	\N	\N	\N
1377	6	6872514412f0	6872514412F0	3	6872514412F0	\N	\N	\N
1378	50	am1331	AM1331	1	AM1331	\N	\N	\N
1379	3	f09fc2502234	F09FC2502234	1	F09FC2502234	\N	\N	\N
1380	3	f09fc2502352	F09FC2502352	1	F09FC2502352	\N	\N	\N
1381	11	68725164a94c	68725164A94C	2	68725164A94C	\N	\N	\N
1382	48	ant15099	ant15099	3	ant15099	\N	\N	\N
1383	3	f09fc2502326	F09FC2502326	1	F09FC2502326	\N	\N	\N
1384	11	24a43ca631e8	24A43CA631E8	3	24A43CA631E8	\N	\N	\N
1385	48	ant15100	ant15100	3	ant15100	\N	\N	\N
1386	51	am1517	AM1517	1	AM1517	\N	\N	\N
1387	6	6872514412f1	6872514412F1	3	6872514412F1	\N	\N	\N
1388	50	am1330	AM1330	1	AM1330	\N	\N	\N
1392	1	802aa8bc253d	802AA8BC253D	5	802AA8BC253D	\N	\N	\N
1393	29	71a3064cec13	71A3064CEC13	5	6C3B6BD59124	\N	\N	\N
1394	28	ftx1539b00u	FTX1539B00U	3		4	\N	vahram@hf.am
1395	45	ant24092	ant24092	3	ant24092	\N	\N	\N
1396	28	ftx15398026	FTX15398026	3		4	\N	vahram@hf.am
1397	28	ftx153880vd	FTX153880VD	3	7081059272ec	4	\N	vahram@hf.am
1398	24	ftx1246u00y	FTX1246U00Y	3	00235e2cc8de	4	\N	vahram@hf.am
1400	28	ftx1538b0cx	FTX1538B0CX	3		4	\N	vahram@hf.am
1401	45	ant24094	ant24094	3		\N	\N	\N
1402	24	ftx1539u089	FTX1539U089	3	7081053a7a20	4	\N	vahram@hf.am
1403	1	802aa8f878e2	802AA8F878E2	1		\N	\N	\N
1404	48	ant15101	ant15101	3	ant15101	4	\N	jass.manasyan@gmail.com
1405	28	ftx1538b0v5	FTX1538B0V5	3		4	\N	vahram@hf.am
1406	45	ant24095	ant24095	3	ant24095	\N	\N	\N
1407	45	ant24096	ant24096	3		\N	\N	\N
1409	24	ftx1245u0th	ftx1245u0th	3	ftx1245u0th	4	\N	vahram@hf.am
1410	11	24a43ca4e52f	24A43CA4E52F	3	24A43CA4E52F	\N	\N	\N
1411	11	687251226566	687251226566	3		\N	\N	\N
1412	11	24a43ca62ecc	24A43CA62ECC	3		\N	\N	\N
1413	28	ftx1539b02v	ftx1539b02v	3		4	\N	vahram@hf.am
1414	45	ant24097	ant24097	3		\N	\N	\N
1415	45	ant24093	ant24093	3		\N	\N	\N
1416	45	ant24098	ant24098	3		\N	\N	\N
1417	48	ant15102	ant15102	3	ant15102	4	\N	jass.manasyan@gmail.com
1418	15	6872514a2d42	6872514a2d42	3	6872514a2d42	\N	\N	\N
1419	1	f09fc246e563	f09fc246e563	1	f09fc246e563	\N	\N	\N
1420	1	f09fc246e98f	F09FC246E98F	1	F09FC246E98F	\N	\N	\N
1421	29	71b90652e941	71B90652E941	5	6C3B6BAE8303	\N	\N	\N
1422	1	f09fc246e57f	F09FC246E57F	1	F09FC246E57F	\N	\N	\N
1423	1	f09fc246e503	F09FC246E503	1	F09FC246E503	\N	\N	\N
1424	29	71a3061b7425/652	71a3061b7425/652	5	6c3b6bda0a22	\N	\N	\N
1427	29	71a306a62f76	71a306a62f76	5	6c3b6bdc5fb3	\N	\N	\N
1428	45	ant24013	ant24013	3		\N	\N	\N
1429	19	44d9e7caf565	44D9E7CAF565	2	44D9E7CAF565	\N	\N	\N
1430	48	ant15001	ant15001	1		\N	\N	\N
1431	19	44d9e7caf566	44D9E7CAF566	2		\N	\N	\N
1432	19	44d9e7caf975	44D9E7CAF975	2		\N	\N	\N
1433	19	44d9e7caf959	44D9E7CAF959	2		\N	\N	\N
1434	28	ftx1537b07x	FTX1537B07X	3	70810592704C	4	\N	vahram@hf.am
1435	45	ant24100	ant24100	3		\N	\N	\N
1436	11	24a43ca631d0	24A43CA631D0	3	24A43CA631D0	\N	\N	\N
1437	45	ant24101	ant24101	3		\N	\N	\N
1438	28	ftx1537b07h	FTX1537B07H	3	7081059270CE	4	\N	vahram@hf.am
1440	11	24a43ca6269e	24A43CA6269E	3	24A43CA6269E	\N	\N	\N
1441	45	ant24103	ant24103	3		\N	\N	\N
1442	45	ant24102	ant24102	3		\N	\N	\N
1443	32	2157764002020	2157764002020	1	2157764002020	\N	\N	\N
1444	22	802aa88d561b	802AA88D561B	1	802AA88D561B	\N	\N	\N
1445	5	802aa8a485ab	802AA8A485AB	1	802AA8A485AB	\N	\N	\N
1448	23	802aa81f5373	802AA81F5373	1	802AA81F5373	\N	\N	\N
1449	24	ftx1549u04a	FTX1549U04A	3	649ef30105ea	4	\N	vahram@hf.am
1450	6	68725166c6e5	68725166C6E5	1	68725166C6E5	\N	\N	\N
1451	51	un-a-15-k-027	UN-A-15-K-027	3	UN-A-15-K-027	\N	\N	\N
1452	48	un-ao15-k-076	UN-AO15-K-076	3	UN-AO15-K-076	\N	\N	\N
1453	25	fhk02722k4cp	FHK02722K4CP	3	000d2908e5eb	4	\N	vahram@hf.am
1454	12	687251229420	687251229420	3	687251229420	\N	\N	\N
1456	24	ftx1549u04c	FTX1549U04C	3	649ef30103c6	4	\N	vahram@hf.am
1460	24	ftx15494u06a	ftx15494u06a	3	649ef301063e	4	\N	vahram@hf.am
1464	45	un-a24-k-031	UN-A24-K-031	3	UN-A24-K-031	\N	\N	\N
1468	6	68725128401e	68725128401E	3	68725128401E	1	\N	jass.manasyan@gmail.com
1469	13	dc9fdb50066a	DC9FDB50066A	3	DC9FDB50066A	\N	\N	\N
1470	13	dc9fdb50066b	DC9FDB50066B	3	DC9FDB50066B	1	\N	vahram@hf.am
1471	41	t11250000019	t11250000019	3	b89bc9f37fb8	\N	\N	\N
1472	48	un-ao15-k-077	UN-AO15-K-077	3	UN-AO15-K-077	4	\N	jass.manasyan@gmail.com
1473	45	un-a24-k-030	UN-A24-K-030	3	UN-A24-K-030	\N	\N	\N
1474	45	un-a24-k-029	UN-A24-K-029	3	UN-A24-K-029	\N	\N	\N
1475	45	un-a24-k-028	UN-A24-K-028	3	UN-A24-K-028	\N	\N	\N
1476	45	un-a24-k-027	UN-A24-K-027	3	UN-A24-K-027	\N	\N	\N
1478	45	un-a24-k-026	UN-A24-K-026	3	UN-A24-K-026	\N	\N	\N
1479	53	un-rd2g24-k-021	UN-RD2G24-K-021	3	UN-RD2G24-K-021	\N	\N	\N
1480	10	0418d6f4768f	0418d6f4768f	1	0418d6f4768f	\N	\N	\N
1481	58	rd5g3103	RD5G3103	1		\N	\N	\N
1482	10	0418d6f6e187	0418d6f6e187	1	0418d6f6e187	\N	\N	\N
1483	58	rd5g3104	RD5G3104	1		\N	\N	\N
1484	6	68725166c02d	68725166c02d	1	68725166c02d	\N	\N	\N
1485	29	71b9062cbfd2	71b9062cbfd2	4	6c3b6bae8322	1	\N	jass.manasyan@gmail.com
1655	6	6872512035de	6872512035DE	3	6872512035DE	\N	\N	\N
1426	45	ant24099	ant24099	3	ant24099	1	\N	hasmik@hf.am
1486	42	e2423010343000872	E2423010343000872	3		4	\N	jass.manasyan@gmail.com
1487	11	68725120e078	68725120E078	3	68725120E078	\N	\N	\N
1488	45	ant24104	ant24104	3		4	\N	jass.manasyan@gmail.com
1489	29	71a306d26e0d	71A306D26E0D	4	6C3B6BDA1946	\N	\N	\N
1490	41	t11308003211	T11308003211	3	T11308003211	\N	\N	\N
1491	1	0418d68a33e7	0418D68A33E7	3	0418D68A33E7	1	\N	hasmik@hf.am
1492	6	68725128401f	68725128401F	3	68725128401F	1	\N	jass.manasyan@gmail.com
1493	32	28505	28505	3		\N	\N	\N
1494	6	687251284089	687251284089	3	687251284089	\N	\N	\N
1495	53	rd2a11127	rd2a11127	3	rd2a11127	1	\N	jass.manasyan@gmail.com
1496	6	68725140c9e1	68725140C9E1	3	68725140C9E1	\N	\N	\N
1497	51	un-a-15-k-028	UN-A-15-K-028	3		\N	\N	\N
1498	50	un-a-13-k-017	UN-A-13-K-017	3	UN-A-13-K-017	\N	\N	\N
1499	6	6872512840bc	6872512840BC	3	6872512840BC	1	\N	jass.manasyan@gmail.com
1500	13	002722e6ed79	002722E6ED79	3	002722E6ED79	\N	\N	\N
1501	53	rd2a05515	rd2a05515	3		\N	\N	\N
1502	45	un-a24-k-032	UN-A24-K-032	3		\N	\N	\N
1503	24	ftx1549405m	FTX1549405M	3	649ef3010466	4	\N	vahram@hf.am
1504	24	ftx1539u08d	FTX1539U08D	3	7081053a7970	4	\N	vahram@hf.am
1505	48	un-ao15-k-078	UN-AO15-K-078	3		\N	\N	\N
1506	45	un-a24-k-033	UN-A24-K-033	3	UN-A24-K-033	\N	\N	\N
1507	24	ftx1539u076	FTX1539U076	3	7081053a78d4	4	\N	vahram@hf.am
1508	49	un-a15-k-003	UN-A15-K-003	3	UN-A15-K-003	4	\N	jass.manasyan@gmail.com
1509	45	un-a24-k-034	UN-A24-K-034	3		4	\N	jass.manasyan@gmail.com
1510	45	un-a24-k-035	UN-A24-K-035	3		4	\N	jass.manasyan@gmail.com
1511	24	ftx1539u07k	FTX1539U07k	3	7081053a7842	4	\N	vahram@hf.am
1512	136	un-a24-k-036	UN-A24-K-036	3		4	\N	vahram@hf.am
1513	24	ftx1549u050	FTX1549U050	3	649ef3010678	4	\N	vahram@hf.am
1514	48	un-ao15-k-080	UN-AO15-K-080	3		4	\N	jass.manasyan@gmail.com
1515	11	68725164aaa7	68725164AAA7	2	68725164AAA7	\N	\N	\N
1516	45	un-a24-k-039	UN-A24-K-039	3		\N	\N	\N
1517	24	649ef3010462	649ef3010462	3	649ef3010462	4	\N	vahram@hf.am
1518	48	un-ao15-k-081	UN-AO15-K-081	3		\N	\N	\N
1519	24	ftx1539u08b	FTX1539U08B	3	7081053a7a1a	4	\N	vahram@hf.am
1520	45	un-a24-k-040	UN-A24-K-040	3		4	\N	jass.manasyan@gmail.com
1521	24	ftx1539u086	FTX1539U086	3	7081053a7956	4	\N	vahram@hf.am
1522	48	un-ao15-k-082	UN-AO15-K-082	3		\N	\N	\N
1523	28	ftx1538b0nr	ftx1538b0nr	3	708105926f48	4	\N	vahram@hf.am
1524	28	ftx1537b08x	ftx1537b08x	3	70810592707c	4	\N	vahram@hf.am
1525	45	un-a24-k-041	UN-A24-K-041	3		4	\N	jass.manasyan@gmail.com
1526	28	ftx1538b0p4	ftx1538b0p4	3	7081052fc412	4	\N	vahram@hf.am
1527	45	un-a24-k-037	UN-A24-K-037	3		4	\N	jass.manasyan@gmail.com
1528	45	un-a24-k-042	UN-A24-K-042	3		4	\N	jass.manasyan@gmail.com
1529	48	un-ao15-k-079	UN-AO15-K-079	3	UN-AO15-K-079	\N	\N	\N
1530	24	ftx1539u08l	FTX1539U08L	3	7081053a79e8	4	\N	vahram@hf.am
1531	32	un-s-k-053	UN-S-K-053	3	UN-S-K-053	\N	\N	\N
1532	45	un-a24-k-038	UN-A24-K-038	3		4	\N	jass.manasyan@gmail.com
1534	11	24a43ca631bd	24A43CA631BD	3	24A43CA631BD	\N	\N	\N
1535	48	un-ao15-k-083	UN-AO15-K-083	3		4	\N	jass.manasyan@gmail.com
1536	45	un-a24-k-043	UN-A24-K-043	3	UN-A24-K-043	\N	\N	\N
1537	28	ftx1538b0rr	FTX1538B0RR	3	708105926f30	4	\N	vahram@hf.am
1538	49	un-a15-k-005	UN-A15-K-005	3		4	\N	jass.manasyan@gmail.com
1539	22	802aa88d5623	802AA88D5623	1	802AA88D5623	\N	\N	\N
1540	6	68725140c9f1	68725140C9F1	3	68725140C9F1	\N	\N	\N
1541	50	un-a-13-k-018	UN-A-13-K-018	3	UN-A-13-K-018	\N	\N	\N
1542	24	ftx1539u09d	FTX1539U09D	3	7081053a79a4	4	\N	vahram@hf.am
1543	48	un-ao15-k-085	UN-AO15-K-085	3	UN-AO15-K-085	4	\N	jass.manasyan@gmail.com
1544	24	ftx1539u06b	FTX1539U06B	3	7081053a784c	4	\N	vahram@hf.am
1545	48	un-ao15-k-086	UN-AO15-K-086	3	UN-AO15-K-086	4	\N	jass.manasyan@gmail.com
1546	11	24a43ca62dc2	24A43CA62DC2	3	24A43CA62DC2	\N	\N	\N
1547	45	un-a24-k-045	UN-A24-K-045	3		4	\N	jass.manasyan@gmail.com
1548	6	6872514412dd	6872514412DD	3	6872514412DD	\N	\N	\N
1549	135	0321	UN-S-K-054	3		\N	\N	\N
1550	50	un-a-13-k-019	UN-A-13-K-019	3		\N	\N	\N
1551	11	24a43ca62e3b	24A43CA62E3B	3	24A43CA62E3B	1	\N	jass.manasyan@gmail.com
1552	24	ftx1549u02v	FTX1549U02V	3	649ef3010254	4	\N	vahram@hf.am
1553	45	un-a24-k-044	UN-A24-K-044	3	UN-A24-K-044	4	\N	jass.manasyan@gmail.com
1554	48	un-ao15-k-087	UN-AO15-K-087	3		\N	\N	\N
1555	24	ftx1549u05l	FTX1549U05L	3	649ef301066a	4	\N	vahram@hf.am
1556	58	un-rd5g31-h-003	UN-RD5G31-H-003	1	UN-RD5G31-H-003	\N	\N	\N
1557	45	un-a24-k-046	UN-A24-K-046	3		4	\N	jass.manasyan@gmail.com
1558	32	2154209000893	2154209000893	3	2154209000893	\N	\N	\N
1559	28	ftx1537b07e	FTX1537B07E	3	708105927034	4	\N	vahram@hf.am
1560	58	un-rd5g31-h-004	UN-RD5G31-H-004	1		\N	\N	\N
1561	45	un-a24-k-047	UN-A24-K-047	3	UN-A24-K-047	\N	\N	\N
1562	24	ftx1549u045	FTX1549U045	3	649ef3010684	4	\N	vahram@hf.am
1563	48	un-ao15-k-088	UN-AO15-K-088	3	UN-AO15-K-088	\N	\N	\N
1564	24	ftx1549u06h	FTX1549U06H	3	649ef30105cc	4	\N	vahram@hf.am
1565	45	un-a24-k-050	UN-A24-K-050	3	UN-A24-K-050	\N	\N	\N
1566	13	dc9fdb5005f8	DC9FDB5005F8	3	DC9FDB5005F8	\N	\N	\N
1567	24	ftx1539u09j	FTX1539U09J	3	7081053a7734	4	\N	vahram@hf.am
1568	45	un-a24-k-048	UN-A24-K-048	3		4	\N	jass.manasyan@gmail.com
1569	28	ftx1537b08k	FTX1537B08K	3	708105927108	4	\N	vahram@hf.am
1570	48	un-ao15-k-093	UN-AO15-K-093	3	UN-AO15-K-093	\N	\N	\N
1571	48	un-ao15-k-089	UN-AO15-K-089	3	UN-AO15-K-089	\N	\N	\N
1572	32	un-s-k-056	UN-S-K-056	3	UN-S-K-056	\N	\N	\N
1573	30	un-s-u-003	UN-S-U-003	4	UN-S-U-003	\N	\N	\N
1574	11	687251226567	687251226567	3	687251226567	\N	\N	\N
1575	48	un-ao15-k-091	UN-AO15-K-091	3		\N	\N	\N
1576	22	802aa84cd817	802AA84CD817	1	802AA84CD817	\N	\N	\N
1577	24	649ef30106a6	649ef30106a6	3	649ef30106a6	\N	\N	\N
1578	48	un-ao15-k-092	UN-AO15-K-092	3		\N	\N	\N
1579	22	802aa8f1a44e	802AA8F1A44E	1	802AA8F1A44E	\N	\N	\N
1580	24	649ef301056a	649ef301056a	3	649ef301056a	\N	\N	\N
1581	45	un-a24-k-049	UN-A24-K-049	3		\N	\N	\N
1582	11	24a43ca62ef8	24a43ca62ef8	3	24a43ca62ef8	1	\N	jass.manasyan@gmail.com
1583	6	68725166c306	68725166C306	1	68725166C306	\N	\N	\N
1584	45	un-a24-k-052	UN-A24-K-052	3		1	\N	jass.manasyan@gmail.com
1585	51	un-a-15-k-029	UN-A-15-K-029	3		\N	\N	\N
1586	6	68725166c290	68725166C290	1	68725166C290	\N	\N	\N
1587	24	7081053a7924	7081053a7924	3	7081053a7924	1	\N	jass.manasyan@gmail.com
1588	51	am2a39079	AM2A39079	3		\N	\N	\N
1589	10	0418d6f4d709	0418D6F4D709	1	0418D6F4D709	\N	\N	\N
1590	45	un-a24-k-053	UN-A24-K-053	3		1	\N	jass.manasyan@gmail.com
1591	58	un-rd5g31-h-005	UN-RD5G31-H-005	1		\N	\N	\N
1592	28	7081059271c6	7081059271c6	3	7081059271c6	1	\N	jass.manasyan@gmail.com
1593	45	un-a24-k-054	UN-A24-K-054	3		1	\N	jass.manasyan@gmail.com
1594	10	0418d6f6e5b7	0418D6F6E5B7	1	0418D6F6E5B7	\N	\N	\N
1595	45	un-a24-k-055	UN-A24-K-055	3		1	\N	jass.manasyan@gmail.com
1596	58	un-rd5g31-h-006	UN-RD5G31-H-006	1		\N	\N	\N
1597	11	68725164a8a2	68725164A8A2	2	68725164A8A2	\N	\N	\N
1598	22	802aa8f1a442	802AA8F1A442	1		\N	\N	\N
1599	3	f09fc250222a	F09FC250222A	1	F09FC250222A	\N	\N	\N
1600	24	649ef301049c	649ef301049c	3	649ef301049c	4	\N	vahram@hf.am
1601	48	un-ao15-k-094	UN-AO15-K-094	3		\N	\N	\N
1602	48	un-ao15-k-090	UN-AO15-K-090	3		\N	\N	\N
1603	32	un-s-k-057	UN-S-K-057	3		\N	\N	\N
1604	3	f09fc250234f	F09FC250234F	1	F09FC250234F	\N	\N	\N
1605	24	ftx1549u048	FTX1549U048	3	649ef3010270	4	\N	vahram@hf.am
1606	28	ftx1538b0tw	003a9a0c1960	3	003a9a0c1960	4	\N	vahram@hf.am
1607	45	un-a24-k-056	UN-A24-K-056	3		4	\N	jass.manasyan@gmail.com
1608	45	un-a24-k-057	UN-A24-K-057	3		4	\N	jass.manasyan@gmail.com
1609	48	un-ao15-k-095	UN-AO15-K-095	3	UN-AO15-K-095	4	\N	jass.manasyan@gmail.com
1610	13	002722e6ed09	002722e6ed09	3	002722e6ed09	\N	\N	\N
1611	45	un-a24-k-058	UN-A24-K-058	3		\N	\N	\N
1612	24	649ef3010444	649ef3010444	3	649ef3010444	\N	\N	\N
1613	24	7081053a79fc	7081053a79fc	3	7081053a79fc	\N	\N	\N
1614	48	un-ao15-k-097	UN-AO15-K-097	3		\N	\N	\N
1615	24	649ef301045e	649ef301045e	3	649ef301045e	\N	\N	\N
1616	48	un-ao15-k-096	UN-AO15-K-096	3	UN-AO15-K-096	\N	\N	\N
1617	45	un-a24-k-059	UN-A24-K-059	3		\N	\N	\N
1618	28	708105926a26	708105926a26	3	708105926a26	\N	\N	\N
1619	24	7081053a7918	7081053a7918	3	7081053a7918	\N	\N	\N
1620	48	un-ao15-k-098	UN-AO15-K-098	3		\N	\N	\N
1621	45	un-a24-k-060	UN-A24-K-060	3		\N	\N	\N
1622	24	649ef301067c	649ef301067c	3	649ef301067c	\N	\N	\N
1623	45	un-a24-k-064	UN-A24-K-064	3		\N	\N	\N
1624	24	649ef30105dc	649ef30105dc	3	649ef30105dc	\N	\N	\N
1625	15	6872515c2e54	6872515C2E54	1	6872515C2E54	\N	\N	\N
1626	24	7081053a7852	7081053a7852	3	7081053a7852	\N	\N	\N
1627	48	un-ao15-k-099	UN-AO15-K-099	3		\N	\N	\N
1628	11	6872514a49b6	6872514A49B6	3	6872514A49B6	\N	\N	\N
1629	45	un-a24-k-063	UN-A24-K-063	3		\N	\N	\N
1630	11	24a43ca6324e	24A43CA6324E	3	24A43CA6324E	\N	\N	\N
1631	45	un-a24-k-051	UN-A24-K-051	3	UN-A24-K-051	\N	\N	\N
1632	32	un-s-k-058	UN-S-K-058	3	UN-S-K-058	\N	\N	\N
1633	11	24a43c9e1255	24A43C9E1255	3	24A43C9E1255	\N	\N	\N
1634	45	un-a24-k-065	UN-A24-K-065	3		\N	\N	\N
1635	24	649ef3010480	649ef3010480	3	649ef3010480	\N	\N	\N
1636	48	un-ao15-k-100	UN-AO15-K-100	3		\N	\N	\N
1637	28	708105926fda	708105926fda	3	708105926fda	\N	\N	\N
1638	28	708105927194	708105927194	3	708105927194	\N	\N	\N
1639	45	un-a24-k-066	UN-A24-K-066	3	UN-A24-K-066	\N	\N	\N
1640	45	un-a24-k-068	UN-A24-K-068	3		\N	\N	\N
1641	24	7081053a79c8	7081053a79c8	3	7081053a79c8	\N	\N	\N
1642	45	un-a24-k-067	UN-A24-K-067	3	UN-A24-K-067	\N	\N	\N
1643	45	un-a24-k-061	UN-A24-K-061	3		\N	\N	\N
1644	24	7081053a7862	7081053a7862	3	7081053a7862	\N	\N	\N
1645	45	un-a24-k-062	UN-A24-K-062	3		\N	\N	\N
1646	48	un-ao15-k-101	UN-AO15-K-101	3	UN-AO15-K-101	\N	\N	\N
1647	41	t113080033196	T113080033196	3	T113080033196	\N	\N	\N
1648	6	687251284047	687251284047	3	687251284047	\N	\N	\N
1649	41	t11308003199	T11308003199	3	T11308003199	\N	\N	\N
1650	53	un-rd2g24-k-002	UN-RD2G24-K-002	3	UN-RD2G24-K-002	\N	\N	\N
1651	6	6872512033de	6872512033DE	3	6872512033DE	\N	\N	\N
1652	53	un-rd2g24-k-003	UN-RD2G24-K-003	3	UN-RD2G24-K-003	\N	\N	\N
1653	10	0418d6a4cd99	0418D6A4CD99	2	0418D6A4CD99	\N	\N	\N
1654	10	0418d6a4cc5c	0418D6A4CC5C	2	0418D6A4CC5C	\N	\N	\N
1656	3	f09fc2502325	F09FC2502325	1	F09FC2502325	\N	\N	\N
1657	51	un-a-15-k-011	UN-A-15-K-011	3	UN-A-15-K-011	\N	\N	\N
1658	6	687251284118	687251284118	3	687251284118	\N	\N	\N
1659	53	un-rd2g24-k-004	UN-RD2G24-K-004	3	UN-RD2G24-K-004	\N	\N	\N
1660	6	687251203642	687251203642	3	687251203642	\N	\N	\N
1661	41	t11308003201	T11308003201	3	T11308003201	\N	\N	\N
1662	51	un-a-15-k-010	UN-A-15-K-010	3		\N	\N	\N
1663	41	t11218000502	T11218000502	3	T11218000502	1	\N	jass.manasyan@gmail.com
1664	3	f09fc2502233	F09FC2502233	1	F09FC2502233	\N	\N	\N
1665	6	687251284048	687251284048	3	687251284048	1	\N	jass.manasyan@gmail.com
1666	51	am2b90565	am2b90565	3	am2b90565	1	\N	jass.manasyan@gmail.com
1667	6	6872512840be	6872512840BE	3	6872512840BE	\N	\N	\N
1668	41	t11308003215	T11308003215	3	T11308003215	\N	\N	\N
1669	6	6872512841cf	6872512841CF	3	6872512841CF	\N	\N	\N
1670	50	un-a-13-h-021	UN-A-13-H-021	1	UN-A-13-H-021	\N	\N	\N
1671	53	un-rd2g24-k-020	UN-RD2G24-K-020	3	UN-RD2G24-K-020	\N	\N	\N
1672	6	68725128408f	68725128408F	3	68725128408F	\N	\N	\N
1673	1	0418d68a31d5	0418D68A31D5	3	0418D68A31D5	\N	\N	\N
1674	51	un-a-15-k-025	UN-A-15-K-025	3	UN-A-15-K-025	\N	\N	\N
1675	41	t11308003213	T11308003213	3	T11308003213	\N	\N	\N
1676	6	6872512e8189	6872512E8189	3	6872512E8189	\N	\N	\N
1677	41	t11308003197	T11308003197	3	T11308003197	\N	\N	\N
1678	53	un-rd2g24-k-018	UN-RD2G24-K-018	3	UN-RD2G24-K-018	\N	\N	\N
1679	6	687251284009	687251284009	3	687251284009	\N	\N	\N
1680	1	0418d68a31c1	0418D68A31C1	3	0418D68A31C1	\N	\N	\N
1681	53	un-rd2g24-k-019	UN-RD2G24-K-019	3	UN-RD2G24-K-019	\N	\N	\N
1682	6	68725128404a	68725128404A	3	68725128404A	\N	\N	\N
1683	6	6872512036a3	6872512036A3	3	6872512036A3	\N	\N	\N
1684	51	un-a-15-k-024	UN-A-15-K-024	3	UN-A-15-K-024	\N	\N	\N
1685	51	un-a-15-k-013	UN-A-15-K-013	3	UN-A-15-K-013	\N	\N	\N
1686	41	t11308003210	T11308003210	3	T11308003210	\N	\N	\N
1687	5	802aa8a4c22d	802AA8A4C22D	1	802AA8A4C22D	\N	\N	\N
1688	41	t11308003198	T11308003198	3	T11308003198	\N	\N	\N
1689	6	6872512840a5	6872512840A5	3	6872512840A5	\N	\N	\N
1690	53	un-rd2g24-k-017	UN-RD2G24-K-017	3	UN-RD2G24-K-017	\N	\N	\N
1691	6	687251284123	687251284123	3	687251284123	\N	\N	\N
1692	6	6872512841d4	6872512841D4	3	6872512841D4	\N	\N	\N
1693	41	t11308003200	T11308003200	3		\N	\N	\N
1694	53	un-rd2g24-k-005	UN-RD2G24-K-005	3	UN-RD2G24-K-005	\N	\N	\N
1695	6	687251284070	687251284070	3	687251284070	\N	\N	\N
1696	50	un-a-13-h-024	UN-A-13-H-024	1	UN-A-13-H-024	\N	\N	\N
1697	53	un-rd2g24-k-007	UN-RD2G24-K-007	3		\N	\N	\N
1698	6	6872512840b3	6872512840B3	3	6872512840B3	\N	\N	\N
1699	6	68725128408d	68725128408D	3	68725128408D	\N	\N	\N
1700	41	t11308003203	T11308003203	3	T11308003203	\N	\N	\N
1701	5	802aa8a4c28a	802AA8A4C28A	1	802AA8A4C28A	\N	\N	\N
1702	51	un-a-15-k-014	UN-A-15-K-014	3	UN-A-15-K-014	\N	\N	\N
1703	51	un-a-15-k-015	UN-A-15-K-015	3		\N	\N	\N
1704	5	802aa8a4c36c	802AA8A4C36C	1	802AA8A4C36C	\N	\N	\N
1705	15	24a43c74747e	24A43C74747E	3	24A43C74747E	\N	\N	\N
1706	30	416501a2e9af	416501A2E9AF	4	416501A2E9AF	1	\N	jass.manasyan@gmail.com
1707	41	t11250000020	T11250000020	3		\N	\N	\N
1708	6	6872512840b4	6872512840B4	3	6872512840B4	\N	\N	\N
1709	6	687251284130	687251284130	3	687251284130	\N	\N	\N
1710	6	6872512840a7	6872512840A7	3	6872512840A7	\N	\N	\N
1711	53	un-rd2g24-k-016	UN-RD2G24-K-016	3	UN-RD2G24-K-016	\N	\N	\N
1712	53	un-rd2g24-k-008	UN-RD2G24-K-008	3		\N	\N	\N
1713	53	un-rd2g24-k-006	UN-RD2G24-K-006	3	UN-RD2G24-K-006	\N	\N	\N
1714	6	687251284116	687251284116	3	687251284116	\N	\N	\N
1715	6	68725128408e	68725128408E	3	68725128408E	\N	\N	\N
1716	53	un-rd2g24-k-009	UN-RD2G24-K-009	3		\N	\N	\N
1717	51	un-a-15-k-023	UN-A-15-K-023	3	UN-A-15-K-023	\N	\N	\N
1718	6	6872512033e3	6872512033E3	3	6872512033E3	\N	\N	\N
1719	51	un-a-15-k-016	UN-A-15-K-016	3		\N	\N	\N
1720	5	802aa8a4ca52	802AA8A4CA52	1	802AA8A4CA52	\N	\N	\N
1721	41	t11308003205	T11308003205	3	T11308003205	\N	\N	\N
1722	6	687251203698	687251203698	3	687251203698	\N	\N	\N
1723	41	t11218000510	T11218000510	3	T11218000510	\N	\N	\N
1724	53	un-rd2g24-k-010	UN-RD2G24-K-010	3	UN-RD2G24-K-010	\N	\N	\N
1725	6	6872512840eb	6872512840EB	3	6872512840EB	\N	\N	\N
1726	53	un-rd2g24-k-011	UN-RD2G24-K-011	3	UN-RD2G24-K-011	\N	\N	\N
1727	134	0418d6a4b61e	0418D6A4B61E	2	0418D6A4B61E	\N	\N	\N
1728	53	un-rd2g24-k-015	UN-RD2G24-K-015	3	UN-RD2G24-K-015	\N	\N	\N
1729	6	68725120347d	68725120347D	3	68725120347D	\N	\N	\N
1730	6	68725128417e	68725128417E	3	68725128417E	\N	\N	\N
1731	51	un-a-15-k-017	UN-A-15-K-017	3	UN-A-15-K-017	\N	\N	\N
1732	51	un-a-15-k-022	UN-A-15-K-022	3	UN-A-15-K-022	\N	\N	\N
1733	11	24a43ca62d9b	24A43CA62D9B	3	24A43CA62D9B	\N	\N	\N
1734	41	t11250000016	T11250000016	3	T11250000016	\N	\N	\N
1735	134	0418d6a4b1d2	0418D6A4B1D2	2	0418D6A4B1D2	\N	\N	\N
1736	44	un-a20-k-002	UN-A20-K-002	3	UN-A20-K-002	\N	\N	\N
1737	6	6872512840b2	6872512840B2	3	6872512840B2	\N	\N	\N
1738	50	un-a-13-h-023	UN-A-13-H-023	1	UN-A-13-H-023	\N	\N	\N
1739	32	un-s-k-051	UN-S-K-051	3	UN-S-K-051	\N	\N	\N
1740	30	416501a2e8c8	416501A2E8C8	4	416501A2E8C8	1	\N	\N
1741	1	0418d68a335f	0418D68A335F	3	0418D68A335F	\N	\N	\N
1742	6	687251284049	687251284049	3	687251284049	\N	\N	\N
1743	1	0418d68a32b2	0418D68A32B2	3	0418D68A32B2	4	\N	vahram@hf.am
1744	50	un-a-13-h-022	UN-A-13-H-022	1	UN-A-13-H-022	\N	\N	\N
1745	6	687251284153	687251284153	3	687251284153	\N	\N	\N
1746	41	t11308003206	T11308003206	3	T11308003206	\N	\N	\N
1747	6	687251284020	687251284020	3	687251284020	\N	\N	\N
1748	51	un-a-15-k-019	UN-A-15-K-019	3	UN-A-15-K-019	\N	\N	\N
1749	53	un-rd2g24-k-014	UN-RD2G24-K-014	3	UN-RD2G24-K-014	\N	\N	\N
1750	1	0418d68a3307	0418D68A3307	3	0418D68A3307	\N	\N	\N
1751	6	687251284039	687251284039	3	687251284039	\N	\N	\N
1752	51	un-a-15-k-021	UN-A-15-K-021	3	UN-A-15-K-021	\N	\N	\N
1753	32	un-s-k-050	UN-S-K-050	3	UN-S-K-050	\N	\N	\N
1754	3	f09fc250221b	F09FC250221B	1	F09FC250221B	\N	\N	\N
1755	6	687251284108	687251284108	3	687251284108	\N	\N	\N
1756	6	687251203628	687251203628	3	687251203628	\N	\N	\N
1757	51	un-a-15-k-020	UN-A-15-K-020	3	UN-A-15-K-020	\N	\N	\N
1758	50	un-a-13-k-016	UN-A-13-K-016	3	UN-A-13-K-016	\N	\N	\N
1759	6	6872512033d9	6872512033D9	3	6872512033D9	\N	\N	\N
1760	3	f09fc25022fc	F09FC25022FC	1	F09FC25022FC	\N	\N	\N
1761	53	un-rd2g24-k-013	UN-RD2G24-K-013	3	UN-RD2G24-K-013	\N	\N	\N
1762	1	0418d68a31f7	0418D68A31F7	3	0418D68A31F7	\N	\N	\N
1763	1	0418d68a3438	0418D68A3438	3	0418D68A3438	\N	\N	\N
1764	1	0418d68a332e	0418D68A332E	3	0418D68A332E	\N	\N	\N
1765	51	un-a-15-k-018	UN-A-15-K-018	3	UN-A-15-K-018	\N	\N	\N
1766	53	un-rd2g24-k-012	UN-RD2G24-K-012	3	UN-RD2G24-K-012	\N	\N	\N
1767	6	6872512e8641	6872512E8641	3	6872512E8641	\N	\N	\N
1768	6	68725128406c	68725128406C	3	68725128406C	\N	\N	\N
1769	41	b89bc9f52bff	b89bc9f52bff	3	b89bc9f52bff	\N	\N	\N
1770	3	802aa824ed07	802AA824ED07	1	802AA824ED07	\N	\N	\N
1771	6	68725166bf96	68725166BF96	1	68725166BF96	\N	\N	\N
1772	50	un-a-13-k-011	UN-A-13-K-011	3	UN-A-13-K-011	\N	\N	\N
1773	24	7081053a7900	7081053a7900	3	7081053a7900	\N	\N	\N
1774	48	un-ao15-k-037	UN-AO15-K-037	3	UN-AO15-K-037	\N	\N	\N
1775	5	802aa8a485fc	802AA8A485FC	1	802AA8A485FC	\N	\N	\N
1776	32	un-s-k-001	UN-S-K-001	3	UN-S-K-001	\N	\N	\N
1777	11	6872514a498c	6872514A498C	3	6872514A498C	\N	\N	\N
1778	48	un-ao15-k-038	UN-AO15-K-038	3	UN-AO15-K-038	\N	\N	\N
1779	32	un-s-k-030	UN-S-K-030	3	UN-S-K-030	\N	\N	\N
1780	34	un-s-hnet-001	UN-S-Hnet-001	2	UN-S-Hnet-001	\N	\N	\N
1781	3	f09fc25023e7	F09FC25023E7	1	F09FC25023E7	\N	\N	\N
1782	11	6872514a4a0e	6872514A4A0E	3	6872514A4A0E	\N	\N	\N
1783	33	11893905616	11893905616	3	11893905616	\N	\N	\N
1784	48	un-ao15-k-039	UN-AO15-K-039	3	UN-AO15-K-039	\N	\N	\N
1785	32	un-s-k-031	UN-S-K-031	3	UN-S-K-031	\N	\N	\N
1786	37	un-s-k-003	UN-S-K-003	3	UN-S-K-003	\N	\N	\N
1787	23	802aa81f5195	802AA81F5195	1	802AA81F5195	\N	\N	\N
1788	33	09280604614	09280604614	3		\N	\N	\N
1789	5	802aa8a4c219	802AA8A4C219	1	802AA8A4C219	\N	\N	\N
1790	3	f09fc2502405	F09FC2502405	1	F09FC2502405	\N	\N	\N
1791	32	un-s-k-005	UN-S-K-005	3	UN-S-K-005	\N	\N	\N
1792	6	68725166c0a1	68725166C0A1	1	68725166C0A1	\N	\N	\N
1793	50	un-a-13-k-012	UN-A-13-K-012	3	UN-A-13-K-012	\N	\N	\N
1794	32	un-s-k-006	UN-S-K-006	3	UN-S-K-006	\N	\N	\N
1795	24	7081053a797c	7081053a797c	3	7081053a797c	\N	\N	\N
1796	32	un-s-k-007	UN-S-K-007	3	UN-S-K-007	\N	\N	\N
1797	48	un-ao15-k-040	UN-AO15-K-040	3	UN-AO15-K-040	\N	\N	\N
1798	32	un-s-k-008	UN-S-K-008	3	UN-S-K-008	\N	\N	\N
1799	5	802aa8a4c112	802AA8A4C112	1	802AA8A4C112	\N	\N	\N
1800	6	68725166c0d9	68725166C0D9	1	68725166C0D9	\N	\N	\N
1801	50	un-a-13-k-013	UN-A-13-K-013	3	UN-A-13-K-013	\N	\N	\N
1802	3	f09fc25023e4	F09FC25023E4	1	F09FC25023E4	\N	\N	\N
1803	11	6872516689ad	6872516689AD	1	6872516689AD	\N	\N	\N
1804	32	un-s-k-009	UN-S-K-009	3	UN-S-K-009	\N	\N	\N
1805	48	un-ao15-k-041	UN-AO15-K-041	3	UN-AO15-K-041	\N	\N	\N
1806	28	70810592711a	70810592711a	3	70810592711a	4	\N	jass.manasyan@gmail.com
1807	45	un-a24-k-009	UN-A24-K-009	3	UN-A24-K-009	1	\N	jass.manasyan@gmail.com
1808	32	11381205327	11381205327	3	11381205327	\N	\N	\N
1809	32	un-s-k-010	UN-S-K-010	3	UN-S-K-010	\N	\N	\N
1810	22	802aa88d641e	802AA88D641E	1	802AA88D641E	\N	\N	\N
1811	33	11381206780	11381206780	3		\N	\N	\N
1812	5	802aa8a4c314	802AA8A4C314	1	802AA8A4C314	\N	\N	\N
1813	5	802aa8a48576	802AA8A48576	1	802AA8A48576	\N	\N	\N
1814	32	un-s-k-012	UN-S-K-012	3	UN-S-K-012	\N	\N	\N
1815	32	un-s-k-013	UN-S-K-013	3	UN-S-K-013	1	\N	jass.manasyan@gmail.com
1816	45	un-a24-k-010	UN-A24-K-010	3	UN-A24-K-010	4	\N	jass.manasyan@gmail.com
1817	32	un-s-k-014	UN-S-K-014	3	UN-S-K-014	\N	\N	\N
1818	11	687251668870	687251668870	1	687251668870	\N	\N	\N
1819	48	un-ao15-k-042	UN-AO15-K-042	3	UN-AO15-K-042	\N	\N	\N
1820	32	un-s-k-015	UN-S-K-015	3	UN-S-K-015	\N	\N	\N
1821	32	un-s-k-017	UN-S-K-017	3	UN-S-K-017	\N	\N	\N
1822	5	802aa8a4c15c	802AA8A4C15C	1	802AA8A4C15C	\N	\N	\N
1823	32	un-s-k-018	UN-S-K-018	3	UN-S-K-018	\N	\N	\N
1824	6	68725166c0bc	68725166C0BC	1	68725166C0BC	\N	\N	\N
1825	32	11381205318	11381205318	3		1	\N	jass.manasyan@gmail.com
1826	51	un-a-15-h-009	UN-A-15-H-009	1	UN-A-15-H-009	\N	\N	\N
1827	32	un-s-k-020	UN-S-K-020	3	UN-S-K-020	\N	\N	\N
1828	33	1138120-12	1138120-12	3	1138120-12	1	\N	jass.manasyan@gmail.com
1829	32	un-s-k-021	UN-S-K-021	3	UN-S-K-021	\N	\N	\N
1830	22	802aa88d5fa0	802AA88D5FA0	1	802AA88D5FA0	\N	\N	\N
1831	6	68725166c098	68725166C098	1	68725166C098	\N	\N	\N
1832	51	un-a-15-h-010	UN-A-15-H-010	1	UN-A-15-H-010	\N	\N	\N
1833	32	un-s-k-022	UN-S-K-022	3	UN-S-K-022	\N	\N	\N
1834	1	f09fc246e10d	F09FC246E10D	1	F09FC246E10D	\N	\N	\N
1835	24	ftx18u9u06e	ftx18u9u06e	3	649ef3010672	1	\N	hasmik@hf.am
1836	48	un-ao15-k-043	UN-AO15-K-043	3	UN-AO15-K-043	1	\N	hasmik@hf.am
1837	22	802aa88d55dd	802AA88D55DD	1	802AA88D55DD	\N	\N	\N
1838	6	68725166bfa3	68725166BFA3	1	68725166BFA3	\N	\N	\N
1839	32	un-s-k-036	UN-S-K-036	3	UN-S-K-036	\N	\N	\N
1840	51	un-a-15-k-003	UN-A-15-K-003	3	UN-A-15-K-003	\N	\N	\N
1841	23	802aa81f5342	802AA81F5342	1	802AA81F5342	2	\N	jass.manasyan@gmail.com
1842	6	68725166bfdd	68725166BFDD	1	68725166BFDD	\N	\N	\N
1843	32	un-s-k-037	UN-S-K-037	3	UN-S-K-037	\N	\N	\N
1844	6	68725166c14a	68725166C14A	1	68725166C14A	\N	\N	\N
1845	6	68725166c537	68725166C537	1	68725166C537	2	\N	hasmik@hf.am
1846	51	un-a-15-h-011	UN-A-15-H-011	1	UN-A-15-H-011	\N	\N	\N
1847	51	un-a-15-h-012	UN-A-15-H-012	1	UN-A-15-H-012	\N	\N	\N
1848	51	un-a-15-h-013	UN-A-15-H-013	1	UN-A-15-H-013	\N	\N	\N
1849	22	un-s-k-038	UN-S-K-038	3	UN-S-K-038	\N	\N	\N
1850	25	0009b78225c5	0009b78225c5	3	0009b78225c5	1	\N	jass.manasyan@gmail.com
1851	48	un-ao15-k-044	UN-AO15-K-044	3	UN-AO15-K-044	1	\N	jass.manasyan@gmail.com
1852	32	un-s-k-039	UN-S-K-039	3	UN-S-K-039	\N	\N	\N
1853	5	802aa8a485c6	802AA8A485C6	1	802AA8A485C6	2	\N	hasmik@hf.am
1854	5	802aa8a483e2	802AA8A483E2	1	802AA8A483E2	\N	\N	\N
1855	32	un-s-k-040	UN-S-K-040	3	UN-S-K-040	\N	\N	\N
1857	32	un-s-k-041	UN-S-K-041	3	UN-S-K-041	\N	\N	\N
1858	51	un-a-15-h-014	UN-A-15-H-014	1		\N	\N	\N
1859	22	802aa8f1a9a3	802AA8F1A9A3	1	802AA8F1A9A3	\N	\N	\N
1860	32	un-s-k-034	UN-S-K-034	3		\N	\N	\N
1861	32	un-s-k-042	UN-S-K-042	3	UN-S-K-042	\N	\N	\N
1862	32	un-s-k-023	UN-S-K-023	3	UN-S-K-023	\N	\N	\N
1864	32	un-s-k-024	UN-S-K-024	3	UN-S-K-024	\N	\N	\N
1865	32	un-s-k-025	UN-S-K-025	3	UN-S-K-025	\N	\N	\N
1867	32	un-s-k-026	UN-S-K-026	3	UN-S-K-026	\N	\N	\N
1868	32	un-s-k-027	UN-S-K-027	3	UN-S-K-027	\N	\N	\N
1869	28	708105926f84	708105926f84	3	708105926f84	\N	\N	\N
1870	32	un-s-k-028	UN-S-K-028	3	UN-S-K-028	\N	\N	\N
1871	32	un-s-k-029	UN-S-K-029	3	UN-S-K-029	\N	\N	\N
1872	48	un-ao15-k-046	UN-AO15-K-046	3	UN-AO15-K-046	\N	\N	\N
1873	32	un-s-k-043	UN-S-K-043	3	UN-S-K-043	\N	\N	\N
1874	1	f09fc246e5bb	F09FC246E5BB	1	F09FC246E5BB	\N	\N	\N
1875	32	un-s-k-044	UN-S-K-044	3	UN-S-K-044	\N	\N	\N
1876	1	f09fc246e961	F09FC246E961	1	F09FC246E961	\N	\N	\N
1877	32	un-s-k-045	UN-S-K-045	3	UN-S-K-045	\N	\N	\N
1878	32	un-s-k-016	UN-S-K-016	3	UN-S-K-016	\N	\N	\N
1879	5	802aa8a4caf0	802AA8A4CAF0	1	802AA8A4CAF0	\N	\N	\N
1880	32	un-s-k-046	UN-S-K-046	3	UN-S-K-046	\N	\N	\N
1881	6	68725166c5a5	68725166C5A5	1	68725166C5A5	\N	\N	\N
1882	32	un-s-k-047	UN-S-K-047	3	UN-S-K-047	\N	\N	\N
1883	32	un-s-k-048	UN-S-K-048	3	UN-S-K-048	\N	\N	\N
1884	51	un-a-15-k-004	UN-A-15-K-004	3	UN-A-15-K-004	\N	\N	\N
1885	32	un-s-k-049	UN-S-K-049	3	UN-S-K-049	\N	\N	\N
1886	13	dc9fdb5321df	DC9FDB5321DF	1	DC9FDB5321DF	\N	\N	\N
1887	30	un-s-u-002	UN-S-U-002	4	UN-S-U-002	\N	\N	\N
1888	45	un-a24-k-012	UN-A24-K-012	3	UN-A24-K-012	\N	\N	\N
1890	45	un-a24-k-013	UN-A24-K-013	3	UN-A24-K-013	\N	\N	\N
1893	32	un-s-k-035	UN-S-K-035	3	UN-S-K-035	\N	\N	\N
1895	48	un-ao15-k-047	UN-AO15-K-047	3	UN-AO15-K-047	\N	\N	\N
1896	11	6872514a49c4	6872514A49C4	3	6872514A49C4	\N	\N	\N
1897	45	un-a24-k-015	UN-A24-K-015	3	UN-A24-K-015	\N	\N	\N
1898	24	7081053a784e	7081053a784e	3	7081053a784e	\N	\N	\N
1899	48	un-ao15-k-048	UN-AO15-K-048	3	UN-AO15-K-048	\N	\N	\N
1900	22	802aa8f1aa82	802AA8F1AA82	1	802AA8F1AA82	\N	\N	\N
1901	6	68725166c522	68725166C522	1	68725166C522	\N	\N	\N
1902	51	un-a-15-h-015	UN-A-15-H-015	1	UN-A-15-H-015	\N	\N	\N
1903	1	f09fc246e41d	F09FC246E41D	1	F09FC246E41D	\N	\N	\N
1904	24	ftx1549u04r	ftx1549u04r	3	649ef3010574	1	\N	hasmik@hf.am
1905	48	un-ao15-k-049	UN-AO15-K-049	3	UN-AO15-K-049	1	\N	hasmik@hf.am
1906	28	ftx1538b0v1	ftx1538b0v1	3	7081059272d6	1	\N	hasmik@hf.am
1907	45	un-a24-k-016	UN-A24-K-016	3	UN-A24-K-016	1	\N	hasmik@hf.am
1908	45	un-a24-k-017	UN-A24-K-017	3	UN-A24-K-017	1	\N	hasmik@hf.am
1909	22	802aa8f1a9b0	802AA8F1A9B0	1	802AA8F1A9B0	\N	\N	\N
1910	11	687251668983	687251668983	1	687251668983	\N	\N	\N
1911	48	un-ao15-k-050	UN-AO15-K-050	3	UN-AO15-K-050	\N	\N	\N
1912	28	ftx1016bu9w	ftx1016bu9w	3	001794eeebf8	1	\N	hasmik@hf.am
1913	48	un-ao15-k-051	UN-AO15-K-051	3	UN-AO15-K-051	1	\N	hasmik@hf.am
1914	30	un-s-u-001	UN-S-U-001	4	UN-S-U-001	\N	\N	\N
1915	22	802aa8f1a469	802AA8F1A469	1	802AA8F1A469	\N	\N	\N
1916	13	002722e6eced	002722E6ECED	3	002722E6ECED	\N	\N	\N
1917	45	un-a24-k-019	UN-A24-K-019	3	UN-A24-K-019	\N	\N	\N
1918	22	802aa8f19a34	802AA8F19A34	1	802AA8F19A34	\N	\N	\N
1919	28	un-c1242-k-003	UN-C1242-K-003	3	UN-C1242-K-003	\N	\N	\N
1920	45	un-a24-k-020	UN-A24-K-020	3	UN-A24-K-020	\N	\N	\N
1921	48	ant15103	ant15103	3	ant15103	\N	\N	\N
1922	45	ant24105	ant24105	3	ant24105	\N	\N	\N
1923	26	un-c1230-k-001	UN-C1230-K-001	3	UN-C1230-K-001	\N	\N	\N
1924	28	70810592723e	70810592723e	3	70810592723e	\N	\N	\N
1925	22	802aa8f1a773	802AA8F1A773	1	802AA8F1A773	\N	\N	\N
1926	45	ant24106	ant24106	3	ant24106	1	\N	vahram@hf.am
1927	28	ftx1538b0cv	ftx1538b0cv	3	ftx1538b0cv	1	\N	hasmik@hf.am
1928	28	un-c1242-k-004	UN-C1242-K-004	3	UN-C1242-K-004	1	\N	\N
1929	24	ftx1549u036	ftx1549u036	3	649ef3010612	4	\N	vahram@hf.am
1930	45	un-a24-k-158	un-a24-k-158	3	un-a24-k-158	1	\N	hasmik@hf.am
1931	11	6872514a49bc	6872514A49BC	3	6872514A49BC	1	\N	vahram@hf.am
1932	48	un-ao15-k-110	un-ao15-k-110	3		1	\N	jass.manasyan@gmail.com
1934	32	2159380014752	2159380014752	1		\N	\N	\N
1935	32	2159380015122	2159380015122	1		\N	\N	\N
1936	32	2159380015140	2159380015140	1		1	\N	vahram@hf.am
1937	32	2159380014757		1		\N	\N	\N
1938	32	2159380014740	2159380014740	1		1	\N	hasmik@hf.am
1939	6	68725120360a	68725120360A	3	68725120360A	\N	\N	\N
1940	33	456fccbrzzz0	456fccbrzzz0	3		4	\N	vahram@hf.am
1941	22	802aa8f1a3d9	802AA8F1A3D9	1	802AA8F1A3D9	\N	\N	\N
1942	19	44d9e7a6ebb7	44D9E7A6EBB7	1	44D9E7A6EBB7	\N	\N	\N
1943	1	f09fc246e65b	F09FC246E65B	1	F09FC246E65B	1	\N	vahram@hf.am
1944	19	44d9e7a6ecf4	44D9E7A6ECF4	1	44D9E7A6ECF4	\N	\N	\N
1945	19	802aa806ce0c	802AA806CE0C	1	802AA806CE0C	\N	\N	\N
1946	20	802aa8ae8ed7	802AA8AE8ED7	2	802AA8AE8ED7	\N	\N	\N
1947	19	802aa806ad5d	802AA806AD5D	1	802AA806AD5D	\N	\N	\N
1948	19	802aa806cbea	802AA806CBEA	1	802AA806CBEA	\N	\N	\N
1949	19	802aa806ce78	802AA806CE78	1	802AA806CE78	\N	\N	\N
1950	1	f09fc246e393	F09FC246E393	1	F09FC246E393	\N	\N	\N
1951	19	802aa806ac39	802AA806AC39	1	802AA806AC39	\N	\N	\N
1952	1	f09fc246e5ce	F09FC246E5CE	1	F09FC246E5CE	\N	\N	\N
1953	19	802aa806c6d4	802AA806C6D4	1	802AA806C6D4	\N	\N	\N
1954	11	24a43ca63154	24A43CA63154	3	24A43CA63154	\N	\N	\N
1955	19	44d9e7a6eee6	44D9E7A6EEE6	1	44D9E7A6EEE6	\N	\N	\N
1956	19	802aa806cfea	802AA806CFEA	1	802AA806CFEA	\N	\N	\N
1957	19	802aa806cff2	802AA806CFF2	1	802AA806CFF2	\N	\N	\N
1958	1	f09fc246e523	F09FC246E523	1	F09FC246E523	\N	\N	\N
1959	1	802aa8f87fb1	802AA8F87FB1	1	802AA8F87FB1	\N	\N	\N
1960	19	802aa806c4ba	802AA806C4BA	1	802AA806C4BA	\N	\N	\N
1961	1	f09fc246e570	F09FC246E570	1	F09FC246E570	\N	\N	\N
1962	1	802aa8f87fb3	802AA8F87FB3	1	802AA8F87FB3	\N	\N	\N
1963	1	f09fc246e5e8	F09FC246E5E8	1	F09FC246E5E8	\N	\N	\N
1964	1	f09fc246e7fc	F09FC246E7FC	1	F09FC246E7FC	\N	\N	\N
1965	19	802aa806c992	802AA806C992	1	802AA806C992	\N	\N	\N
1966	19	802aa806acb6	802AA806ACB6	1	802AA806ACB6	\N	\N	\N
1967	1	802aa8f87d31	802AA8F87D31	1	802AA8F87D31	\N	\N	\N
1968	1	f09fc246e455	F09FC246E455	1	F09FC246E455	\N	\N	\N
1969	1	f09fc246e55d	F09FC246E55D	1	F09FC246E55D	\N	\N	\N
1970	1	f09fc246eaa8	F09FC246EAA8	1	F09FC246EAA8	\N	\N	\N
1971	1	f09fc246e70c	F09FC246E70C	1	F09FC246E70C	\N	\N	\N
1972	1	f09fc246e68d	F09FC246E68D	1	F09FC246E68D	\N	\N	\N
1973	1	f09fc246e50a	F09FC246E50A	1	F09FC246E50A	\N	\N	\N
1974	1	f09fc246e83b	F09FC246E83B	1	F09FC246E83B	\N	\N	\N
1975	11	68725120ddf1	68725120DDF1	3	68725120DDF1	\N	\N	\N
1976	1	f09fc246e572	F09FC246E572	1	F09FC246E572	\N	\N	\N
1977	1	f09fc246e6af	F09FC246E6AF	1	F09FC246E6AF	2	\N	jass.manasyan@gmail.com
1978	1	f09fc246e7de	F09FC246E7DE	1	F09FC246E7DE	\N	\N	\N
1979	1	f09fc246e502	F09FC246E502	1	F09FC246E502	\N	\N	\N
1980	1	802aa8f87b3f	802AA8F87B3F	1	802AA8F87B3F	\N	\N	\N
1981	19	44d9e7ca11e3	44D9E7CA11E3	1	44D9E7CA11E3	\N	\N	\N
1982	19	802aa808ecb6	802AA808ECB6	1	802AA808ECB6	\N	\N	\N
1983	1	f09fc246e8e1	F09FC246E8E1	1	F09FC246E8E1	\N	\N	\N
1984	1	f09fc246e0a6	F09FC246E0A6	1	F09FC246E0A6	\N	\N	\N
1985	20	802aa8ae8d3a	802AA8AE8D3A	2	802AA8AE8D3A	\N	\N	\N
1986	19	802aa806c38a	802AA806C38A	1	802AA806C38A	\N	\N	\N
1987	19	802aa808f4b8  	802AA808F4B8	1	802AA808F4B8	\N	\N	\N
1988	11	6872514a48ed	6872514A48ED	3	6872514A48ED	\N	\N	\N
1989	28	ftx1538b0xa	FTX1538B0XA	3	70810592730E	4	\N	vahram@hf.am
1990	45	un-a24-k-069	UN-A24-K-069	3		\N	\N	\N
1991	13	002722e6ecca	002722E6ECCA	3	002722E6ECCA	\N	\N	\N
1992	13	dc9fdb5221e8	DC9FDB5221E8	3	DC9FDB5221E8	\N	\N	\N
1994	48	un-ao15-k-102	UN-AO15-K-102	3		4	\N	jass.manasyan@gmail.com
1995	11	24a43c9e132c	24A43C9E132C	3	24A43C9E132C	\N	\N	\N
1996	19	44d9e7ca1031	44D9E7CA1031	1	44D9E7CA1031	\N	\N	\N
1997	19	802aa806d15a	802AA806D15A	1	802AA806D15A	\N	\N	\N
1998	1	f09fc246e5c1	F09FC246E5C1	1	F09FC246E5C1	\N	\N	\N
1999	19	802aa806cecf	802AA806CECF	1	802AA806CECF	\N	\N	\N
2000	1	f09fc246e489	F09FC246E489	1	F09FC246E489	\N	\N	\N
2001	19	802aa808f51a	802AA808F51A	1	802AA808F51A	\N	\N	\N
2002	1	f09fc246e5cc	F09FC246E5CC	1	F09FC246E5CC	\N	\N	\N
2003	1	f09fc246e441	F09FC246E441	1	F09FC246E441	\N	\N	\N
2004	1	f09fc246e2bf	F09FC246E2BF	1	F09FC246E2BF	\N	\N	\N
2005	1	f09fc246e4c2	F09FC246E4C2	1	F09FC246E4C2	\N	\N	\N
2006	19	802aa808fcb4	802AA808FCB4	1	802AA808FCB4	\N	\N	\N
2007	1	f09fc246e9da	F09FC246E9DA	1	F09FC246E9DA	\N	\N	\N
2008	19	802aa808fce4	802AA808FCE4	1	802AA808FCE4	\N	\N	\N
2009	1	f09fc246e7ea	F09FC246E7EA	1	F09FC246E7EA	\N	\N	\N
2010	19	802aa808e920	802AA808E920	1	802AA808E920	2	\N	\N
2011	19	44d9e7ca12b4	44D9E7CA12B4	1	44D9E7CA12B4	\N	\N	\N
2012	11	6872514a4a32	6872514A4A32	3	6872514A4A32	\N	\N	\N
2013	19	44d9e7a6ecfd	44D9E7A6ECFD	1	44D9E7A6ECFD	\N	\N	\N
2014	1	f09fc246e62b	F09FC246E62B	1	F09FC246E62B	\N	\N	\N
2015	1	f09fc246e805	F09FC246E805	1	F09FC246E805	\N	\N	\N
2016	19	802aa808f8b0	802AA808F8B0	1	802AA808F8B0	\N	\N	\N
2017	1	f09fc246ea7c	F09FC246EA7C	1	F09FC246EA7C	\N	\N	\N
2018	19	44d9e7a6ecc0	44D9E7A6ECC0	1	44D9E7A6ECC0	\N	\N	\N
2019	1	f09fc246e632	F09FC246E632	1	F09FC246E632	\N	\N	\N
2020	19	802aa808f1d9	802AA808F1D9	1	802AA808F1D9	\N	\N	\N
2021	28	ftx1538b0w0	FTX1538B0W0	3	70810592731E	4	\N	vahram@hf.am
2022	11	24a43ca62e25	24A43CA62E25	3	24A43CA62E25	1	\N	jass.manasyan@gmail.com
2023	45	un-a24-k-070	UN-A24-K-070	3		4	\N	jass.manasyan@gmail.com
2024	45	un-a24-k-071	UN-A24-K-071	3		4	\N	jass.manasyan@gmail.com
2027	45	un-a24-k-072	UN-A24-K-072	3		4	\N	jass.manasyan@gmail.com
2028	28	ftx1538b0xc	FTX1538B0XC	3	7081059272E4	4	\N	vahram@hf.am
2030	27	fcz1231z0rm	FCZ1231Z0RM	3	002155FF4B83	4	\N	vahram@hf.am
2031	45	un-a24-k-073	UN-A24-K-073	3		\N	\N	\N
2032	27	fcz1231z0rz	FCZ1231Z0RZ	3	002155FF46EA	4	\N	vahram@hf.am
2033	48	un-ao15-k-104	UN-AO15-K-104	3		\N	\N	\N
2034	31	23210564626	23210564626	3	0023D302000C	4	\N	vahram@hf.am
2035	45	un-a24-k-075	UN-A24-K-075	3		4	\N	jass.manasyan@gmail.com
2036	28	ftx1538b0eb	FTX1538B0EB	3	708105927174	4	\N	vahram@hf.am
2037	45	un-a24-k-076	UN-A24-K-076	3		\N	\N	\N
2038	49	un-a15-k-004	UN-A15-K-004	3		4	\N	jass.manasyan@gmail.com
2039	32	2165463005941	2165463005941	3		\N	\N	\N
2040	26	fhk0726j0c0	FHK0726J0C0	3	000D29A8A94B	4	\N	vahram@hf.am
2041	45	un-a24-k-077	UN-A24-K-077	3		\N	\N	\N
2042	1	802aa8f87da4	802AA8F87DA4	1	802AA8F87DA4	\N	\N	\N
2043	1	f09fc246e650	F09FC246E650	1	F09FC246E650	\N	\N	\N
2044	1	f09fc246e4f1	F09FC246E4F1	1	F09FC246E4F1	2	\N	jass.manasyan@gmail.com
2045	1	f09fc246e63d	F09FC246E63D	1	F09FC246E63D	\N	\N	\N
2046	1	f09fc246e77a	F09FC246E77A	1	F09FC246E77A	\N	\N	\N
2047	1	802aa8bc1e0f	802AA8BC1E0F	1	802AA8BC1E0F	\N	\N	\N
2048	1	f09fc246e759	F09FC246E759	1	F09FC246E759	\N	\N	\N
2049	1	f09fc246e77e	F09FC246E77E	1	F09FC246E77E	\N	\N	\N
2050	1	f09fc246e6da	F09FC246E6DA	1	F09FC246E6DA	\N	\N	\N
2051	1	f09fc246e422	F09FC246E422	1	F09FC246E422	\N	\N	\N
2052	1	f09fc246e643	F09FC246E643	1	F09FC246E643	\N	\N	\N
2053	1	f09fc246e304	F09FC246E304	1	F09FC246E304	\N	\N	\N
2054	1	f09fc246e50c	F09FC246E50C	1	F09FC246E50C	\N	\N	\N
2055	1	f09fc246e4dc	F09FC246E4DC	1	F09FC246E4DC	\N	\N	\N
2056	1	f09fc246e468	F09FC246E468	1	F09FC246E468	\N	\N	\N
2057	1	802aa8bc26af	802AA8BC26AF	1	802AA8BC26AF	\N	\N	\N
2058	1	f09fc246e63f	F09FC246E63F	1	F09FC246E63F	\N	\N	\N
2059	1	f09fc246edd9	F09FC246EDD9	1	F09FC246EDD9	\N	\N	\N
2060	1	f09fc246edde	F09FC246EDDE	1	F09FC246EDDE	\N	\N	\N
2061	1	f09fc246e48b	F09FC246E48B	1	F09FC246E48B	\N	\N	\N
2062	19	dc9fdb42b84a	DC9FDB42B84A	1	DC9FDB42B84A	\N	\N	\N
2063	1	f09fc246e60d	F09FC246E60D	1	F09FC246E60D	\N	\N	\N
2064	1	f09fc246e607	F09FC246E607	1	F09FC246E607	\N	\N	\N
2065	1	802aa8bc21be	802AA8BC21BE	1	802AA8BC21BE	\N	\N	\N
2066	1	f09fc246e56f	F09FC246E56F	1	F09FC246E56F	\N	\N	\N
2067	1	f09fc246e433	F09FC246E433	1	F09FC246E433	\N	\N	\N
2068	16	6872513cd010	6872513CD010	3	6872513CD010	\N	\N	\N
2069	1	f09fc246e097	F09FC246E097	1	F09FC246E097	\N	\N	\N
2070	1	f09fc246e6e1	F09FC246E6E1	1	F09FC246E6E1	\N	\N	\N
2071	1	f09fc246e434	F09FC246E434	1	F09FC246E434	\N	\N	\N
2072	3	f09fc2504323	F09FC2504323	1	F09FC2504323	2	\N	hasmik@hf.am
2073	11	68725166893c	68725166893C	1	68725166893C	\N	\N	\N
2074	3	f09fc2504446	F09FC2504446	1	F09FC2504446	\N	\N	\N
2075	19	802aa806cc64	802AA806CC64	1	802AA806CC64	\N	\N	\N
2076	1	f09fc246e464	F09FC246E464	1	F09FC246E464	\N	\N	\N
2077	1	f09fc246e3fa	F09FC246E3FA	1	F09FC246E3FA	\N	\N	\N
2078	1	f09fc246e2d4	F09FC246E2D4	1	F09FC246E2D4	\N	\N	\N
2079	1	f09fc246e2f3	F09FC246E2F3	1	F09FC246E2F3	\N	\N	\N
2080	1	f09fc246e0ae	F09FC246E0AE	1	F09FC246E0AE	\N	\N	\N
2081	1	f09fc246e485	F09FC246E485	1	F09FC246E485	\N	\N	\N
2082	15	6872515c180b	6872515C180B	2	6872515C180B	\N	\N	\N
2083	1	f09fc246e3a9	F09FC246E3A9	1	F09FC246E3A9	\N	\N	\N
2084	11	6872512264c5	6872512264C5	3	6872512264C5	\N	\N	\N
2085	1	f09fc246e6e8	F09FC246E6E8	1	F09FC246E6E8	\N	\N	\N
2086	1	f09fc246e35d	F09FC246E35D	1	F09FC246E35D	\N	\N	\N
2087	1	f09fc246e388	F09FC246E388	1	F09FC246E388	\N	\N	\N
2088	1	f09fc246e910	F09FC246E910	1	F09FC246E910	\N	\N	\N
2089	1	f09fc246e475	F09FC246E475	1	F09FC246E475	\N	\N	\N
2090	11	687251226304	687251226304	3	687251226304	\N	\N	\N
2091	1	f09fc246e638	F09FC246E638	1	F09FC246E638	\N	\N	\N
2092	11	68725164a981	68725164A981	2	68725164A981	\N	\N	\N
2093	1	f09fc246e1ae	F09FC246E1AE	1	F09FC246E1AE	\N	\N	\N
2094	1	f09fc246ec6b	F09FC246EC6B	1	F09FC246EC6B	\N	\N	\N
2095	1	f09fc246e6d2	F09FC246E6D2	1	F09FC246E6D2	\N	\N	\N
2096	13	002722e6ec85	002722E6EC85	3	002722E6EC85	1	\N	vahram@hf.am
2097	1	f09fc246ee56	F09FC246EE56	1	F09FC246EE56	\N	\N	\N
2098	11	68725142114b	68725142114B	3	68725142114B	\N	\N	\N
2099	19	802aa806d011	802AA806D011	1	802AA806D011	\N	\N	\N
2100	1	f09fc246e569	F09FC246E569	1	F09FC246E569	\N	\N	\N
2101	1	f09fc246e4cb	F09FC246E4CB	1	F09FC246E4CB	\N	\N	\N
2102	1	f09fc246e24e	F09FC246E24E	1	F09FC246E24E	\N	\N	\N
2103	11	24a43ca6319e	24A43CA6319E	3	24A43CA6319E	\N	\N	\N
2104	1	f09fc246e5a9	F09FC246E5A9	1	F09FC246E5A9	\N	\N	\N
2105	1	f09fc246e18e	F09FC246E18E	1	F09FC246E18E	\N	\N	\N
2106	11	687251226c8a	687251226C8A	3		\N	\N	\N
2107	1	f09fc246ee06	F09FC246EE06	1	F09FC246EE06	\N	\N	\N
2108	11	24a43ca632c0	24A43CA632C0	3	24A43CA632C0	\N	\N	\N
2109	1	f09fc246e4a4	F09FC246E4A4	1	F09FC246E4A4	\N	\N	\N
2110	1	f09fc246e5e9	F09FC246E5E9	1	F09FC246E5E9	\N	\N	\N
2111	1	f09fc246e2bc	F09FC246E2BC	1	F09FC246E2BC	\N	\N	\N
2112	1	f09fc246e6d9	F09FC246E6D9	1	F09FC246E6D9	\N	\N	\N
2114	1	f09fc246ec2e	F09FC246EC2E	1	F09FC246EC2E	\N	\N	\N
2115	1	f09fc246e6e3	F09FC246E6E3	1	F09FC246E6E3	\N	\N	\N
2116	11	24a43c9e1265	24A43C9E1265	3	24A43C9E1265	\N	\N	\N
2117	1	f09fc246e2d8	F09FC246E2D8	1	F09FC246E2D8	\N	\N	\N
2118	1	f09fc246e415	F09FC246E415	1	F09FC246E415	\N	\N	\N
2119	1	f09fc246e353	F09FC246E353	1	F09FC246E353	\N	\N	\N
2120	11	6872514a49bf	6872514A49BF	3	6872514A49BF	4	\N	vahram@hf.am
2121	1	f09fc246e5c4	F09FC246E5C4	1	F09FC246E5C4	\N	\N	\N
2122	1	f09fc246e389	F09FC246E389	1	F09FC246E389	\N	\N	\N
2123	1	f09fc246e7b6	F09FC246E7B6	1	F09FC246E7B6	\N	\N	\N
2124	1	f09fc246e708	F09FC246E708	1	F09FC246E708	\N	\N	\N
2125	28	ftx1537b086	FTX1537B086	3	7081059270F4	4	\N	vahram@hf.am
2126	48	un-ao15-k-103	UN-AO15-K-103	3		\N	\N	\N
2127	1	f09fc246e418	F09FC246E418	1	F09FC246E418	\N	\N	\N
2128	1	f09fc246e74e	F09FC246E74E	1	F09FC246E74E	\N	\N	\N
2129	1	f09fc246e4be	F09FC246E4BE	1	F09FC246E4BE	\N	\N	\N
2130	11	687251668943	687251668943	1	687251668943	\N	\N	\N
2131	11	687251668877	687251668877	1	687251668877	\N	\N	\N
2132	1	f09fc246e14e	F09FC246E14E	1	F09FC246E14E	\N	\N	\N
2133	1	f09fc246e1ee	F09FC246E1EE	1	F09FC246E1EE	\N	\N	\N
2134	1	f09fc246e6e0	F09FC246E6E0	1	F09FC246E6E0	\N	\N	\N
2135	1	f09fc246e596	F09FC246E596	1	F09FC246E596	\N	\N	\N
2136	1	802aa87af97c	802AA87AF97C	1	802AA87AF97C	\N	\N	\N
2137	1	f09fc246e5df	F09FC246E5DF	1	F09FC246E5DF	\N	\N	\N
2138	1	f09fc246e0b3	F09FC246E0B3	1	F09FC246E0B3	\N	\N	\N
2139	1	f09fc246e134	F09FC246E134	1	F09FC246E134	\N	\N	\N
2140	1	f09fc246e816	F09FC246E816	1	F09FC246E816	\N	\N	\N
2141	1	f09fc246e25b	F09FC246E25B	1	F09FC246E25B	\N	\N	\N
2142	1	802aa8bc1da7	802AA8BC1DA7	1	802AA8BC1DA7	\N	\N	\N
2143	11	687251226564	687251226564	3	687251226564	1	\N	jass.manasyan@gmail.com
2144	1	f09fc246e2e5	F09FC246E2E5	1	F09FC246E2E5	\N	\N	\N
2145	1	f09fc246e394	F09FC246E394	3	F09FC246E394	\N	\N	\N
2146	1	f09fc246e2d5	F09FC246E2D5	1	F09FC246E2D5	\N	\N	\N
2147	1	f09fc246e306	F09FC246E306	1	F09FC246E306	\N	\N	\N
2148	1	f09fc246e160	F09FC246E160	1	F09FC246E160	\N	\N	\N
2149	1	f09fc246e4f5	F09FC246E4F5	1	F09FC246E4F5	\N	\N	\N
2150	1	f09fc246e6b3	F09FC246E6B3	1	F09FC246E6B3	\N	\N	\N
2151	1	f09fc246e706	F09FC246E706	1	F09FC246E706	2	\N	\N
2152	1	f09fc246e259	F09FC246E259	1	F09FC246E259	\N	\N	\N
2153	11	6872514a49b4	6872514A49B4	3	6872514A49B4	\N	\N	\N
2154	1	f09fc246e490	F09FC246E490	1	F09FC246E490	\N	\N	\N
2155	1	f09fc246e5c9	F09FC246E5C9	1	F09FC246E5C9	\N	\N	\N
2156	1	f09fc246e515	F09FC246E515	1	F09FC246E515	1	\N	jass.manasyan@gmail.com
2157	1	f09fc246e198	F09FC246E198	1	F09FC246E198	\N	\N	\N
2158	1	f09fc246e0c6	F09FC246E0C6	1	F09FC246E0C6	\N	\N	\N
2159	1	f09fc246ea72	F09FC246EA72	1	F09FC246EA72	\N	\N	\N
2160	1	f09fc246e206	F09FC246E206	1	F09FC246E206	\N	\N	\N
2161	1	f09fc246e5a4	F09FC246E5A4	1	F09FC246E5A4	\N	\N	\N
2162	1	f09fc246e4d4	F09FC246E4D4	1	F09FC246E4D4	\N	\N	\N
2163	1	f09fc246e5d0	F09FC246E5D0	1	F09FC246E5D0	\N	\N	\N
2164	1	f09fc246e52d	F09FC246E52D	1	F09FC246E52D	\N	\N	\N
2165	1	f09fc246e55f	F09FC246E55F	1	F09FC246E55F	\N	\N	\N
2166	1	f09fc246e4cc	F09FC246E4CC	1	F09FC246E4CC	\N	\N	\N
2167	1	f09fc246e4b9	F09FC246E4B9	1	F09FC246E4B9	\N	\N	\N
2168	1	f09fc246e4e9	F09FC246E4E9	1	F09FC246E4E9	\N	\N	\N
2169	1	f09fc246e4da	F09FC246E4DA	1	F09FC246E4DA	\N	\N	\N
2170	1	f09fc246e3bc	F09FC246E3BC	1	F09FC246E3BC	\N	\N	\N
2171	1	f09fc246e242	F09FC246E242	1	F09FC246E242	\N	\N	\N
2172	1	f09fc246e891	F09FC246E891	1	F09FC246E891	\N	\N	\N
2173	1	f09fc246e411	F09FC246E411	1	F09FC246E411	\N	\N	\N
2174	1	f09fc246e737	F09FC246E737	1	F09FC246E737	2	\N	jass.manasyan@gmail.com
2175	1	f09fc246e3bd	F09FC246E3BD	1	F09FC246E3BD	\N	\N	\N
2176	1	f09fc246ed2d	F09FC246ED2D	1	F09FC246ED2D	\N	\N	\N
2177	1	f09fc246e507	F09FC246E507	1	F09FC246E507	\N	\N	\N
2178	1	802aa8f87c4f	802AA8F87C4F	1	802AA8F87C4F	\N	\N	\N
2179	1	f09fc246e2dd	F09FC246E2DD	1	F09FC246E2DD	\N	\N	\N
2180	1	f09fc246e187	F09FC246E187	1	F09FC246E187	\N	\N	\N
2181	11	6872514a4a0c	6872514A4A0C	3	6872514A4A0C	1	\N	hasmik@hf.am
2182	11	68725120dfe1	68725120DFE1	3	68725120DFE1	\N	\N	\N
2183	11	24a43ca63073	24A43CA63073	3	24A43CA63073	\N	\N	\N
2184	13	002722ee7f87	002722EE7F87	3	002722EE7F87	1	\N	jass.manasyan@gmail.com
2185	11	24a43ca62d57	24A43CA62D57	3	24A43CA62D57	\N	\N	\N
2186	11	6872512263e5	6872512263E5	3	6872512263E5	\N	\N	\N
2187	13	00156dea1ed9	00156DEA1ED9	3	00156DEA1ED9	\N	\N	\N
2188	11	24a43ca62ea6	24A43CA62EA6	3	24A43CA62EA6	\N	\N	\N
2189	13	002722e6ed27	002722E6ED27	3	002722E6ED27	\N	\N	\N
2190	13	002722e6ed78	002722E6ED78	3	002722E6ED78	\N	\N	\N
2191	13	dc9fdb52217f	DC9FDB52217F	3	DC9FDB52217F	\N	\N	\N
2192	19	802aa808f3b9	802AA808F3B9	1	802AA808F3B9	\N	\N	\N
2193	16	6872515e286c	6872515E286C	2	6872515E286C	\N	\N	\N
2194	13	002722ee7eb7	002722EE7EB7	3	002722EE7EB7	\N	\N	\N
2195	15	687251820c76	687251820C76	2	687251820C76	\N	\N	\N
2196	16	6872513cbb00	6872513CBB00	3	6872513CBB00	\N	\N	\N
2197	16	6872513cd091	6872513CD091	3	6872513CD091	\N	\N	\N
2198	13	dc9fdb50058b	DC9FDB50058B	3	DC9FDB50058B	\N	\N	\N
2199	1	f09fc246e695	F09FC246E695	1	F09FC246E695	\N	\N	\N
2200	1	f09fc246e809	F09FC246E809	1	F09FC246E809	\N	\N	\N
2201	1	f09fc246e349	F09FC246E349	1	F09FC246E349	\N	\N	\N
2202	1	f09fc246e64c 	F09FC246E64C	1		\N	\N	\N
2203	1	802aa8f8735f	802AA8F8735F	1	802AA8F8735F	\N	\N	\N
2204	1	f09fc246ecd7	F09FC246ECD7	1	F09FC246ECD7	\N	\N	\N
2205	1	f09fc246e2f8	F09FC246E2F8	1	F09FC246E2F8	\N	\N	\N
2206	1	f09fc246e4a2	F09FC246E4A2	1	F09FC246E4A2	\N	\N	\N
2207	1	f09fc246e7b3	F09FC246E7B3	1	F09FC246E7B3	\N	\N	\N
2208	1	f09fc246e63b	F09FC246E63B	1	F09FC246E63B	\N	\N	\N
2209	1	f09fc246e6bc	F09FC246E6BC	1	F09FC246E6BC	\N	\N	\N
2210	1	802aa87af9b5	802AA87AF9B5	1	802AA87AF9B5	\N	\N	\N
2211	1	f09fc246e360	F09FC246E360	1	F09FC246E360	\N	\N	\N
2212	1	f09fc246e828	F09FC246E828	1	F09FC246E828	\N	\N	\N
2213	1	f09fc246e89c	F09FC246E89C	1	F09FC246E89C	\N	\N	\N
2214	1	f09fc246e698	F09FC246E698	1	F09FC246E698	\N	\N	\N
2215	1	f09fc246e374	F09FC246E374	1	F09FC246E374	\N	\N	\N
2216	1	802aa87aee59	802AA87AEE59	1	802AA87AEE59	\N	\N	\N
2217	1	f09fc246e720	F09FC246E720	1	F09FC246E720	\N	\N	\N
2218	1	f09fc246e367	F09FC246E367	1	F09FC246E367	\N	\N	\N
2219	1	f09fc246e5b6	F09FC246E5B6	1	F09FC246E5B6	\N	\N	\N
2220	1	f09fc246e47e	F09FC246E47E	1	F09FC246E47E	\N	\N	\N
2221	1	802aa8f879f2	802AA8F879F2	1	802AA8F879F2	\N	\N	\N
2222	1	f09fc246e717	F09FC246E717	1	F09FC246E717	\N	\N	\N
2223	1	f09fc246e4ac	F09FC246E4AC	1	F09FC246E4AC	2	\N	jass.manasyan@gmail.com
2224	11	687251226716	687251226716	3	687251226716	\N	\N	\N
2225	11	24a43ca63240	24A43CA63240	3	24A43CA63240	\N	\N	\N
2226	11	6872514a491f	6872514A491F	3	6872514A491F	\N	\N	\N
2227	11	6872514a4938	6872514A4938	3	6872514A4938	\N	\N	\N
2228	11	24a43c9e124c	24A43C9E124C	3	24A43C9E124C	\N	\N	\N
2229	13	002722ee7fa2	002722EE7FA2	3	002722EE7FA2	1	\N	\N
2230	11	6872514a494e	6872514A494E	3	6872514A494E	\N	\N	\N
2231	11	68725120df53	68725120DF53	3	68725120DF53	\N	\N	\N
2232	11	6872512265d4	6872512265D4	3	6872512265D4	\N	\N	\N
2233	11	687251226571	687251226571	3	687251226571	\N	\N	\N
2234	11	68725122635e	68725122635E	3	68725122635E	\N	\N	\N
2235	11	687251226488	687251226488	3	687251226488	\N	\N	\N
2236	11	24a43ca62cf3	24A43CA62CF3	3	24A43CA62CF3	\N	\N	\N
2237	11	6872514a4a3a	6872514A4A3A	3	6872514A4A3A	\N	\N	\N
2238	11	24a43ca63072	24A43CA63072	3	24A43CA63072	\N	\N	\N
2239	11	68725120e19b	68725120E19B	3	68725120E19B	\N	\N	\N
2240	11	24a43ca62e2c	24A43CA62E2C	3	24A43CA62E2C	\N	\N	\N
2241	11	24a43ca4e523	24A43CA4E523	3	24A43CA4E523	\N	\N	\N
2242	11	24a43ca63300	24A43CA63300	3	24A43CA63300	2	\N	jass.manasyan@gmail.com
2243	11	24a43cf89bb1	24A43CF89BB1	3	24A43CF89BB1	\N	\N	\N
2244	11	24a43ca6327d	24A43CA6327D	3	24A43CA6327D	\N	\N	\N
2245	11	24a43c9e12b4	24A43C9E12B4	3	24A43C9E12B4	4	\N	vahram@hf.am
2246	11	6872514a4a09	6872514A4A09	3	6872514A4A09	\N	\N	\N
2247	11	68725144dab5	68725144DAB5	3	68725144DAB5	\N	\N	\N
2248	11	68725120e1b1	68725120E1B1	3	68725120E1B1	\N	\N	\N
2249	11	68725122681b	68725122681B	3	68725122681B	\N	\N	\N
2250	13	dc9fdb5005f3	DC9FDB5005F3	3	DC9FDB5005F3	\N	\N	\N
2251	13	dc9fdb50056e	DC9FDB50056E	3	DC9FDB50056E	\N	\N	\N
2252	13	dc9fdb5004fb	DC9FDB5004FB	3	DC9FDB5004FB	\N	\N	\N
2253	13	dc9fdba67f28	DC9FDBA67F28	3	DC9FDBA67F28	4	\N	vahram@hf.am
2254	13	002722e6ed2e	002722E6ED2E	3	002722E6ED2E	\N	\N	\N
2255	13	dc9fdb500628	DC9FDB500628	3	DC9FDB500628	\N	\N	\N
2256	19	44d9e7a80d42	44D9E7A80D42	1	44D9E7A80D42	\N	\N	\N
2257	15	24a43cb4b1f3	24A43CB4B1F3	3	24A43CB4B1F3	\N	\N	\N
2258	15	68725136cd94	68725136CD94	3	68725136CD94	\N	\N	\N
2259	16	6872513cba50	6872513CBA50	3	6872513CBA50	\N	\N	\N
2260	15	24a43cb4b00c	24A43CB4B00C	3	24A43CB4B00C	\N	\N	\N
2261	19	802aa806d25a	802AA806D25a	1	802AA806D25a	\N	\N	\N
2262	19	802aa806cc6a	802AA806CC6A	1	802AA806CC6A	\N	\N	\N
2263	15	6872515c2c21	6872515C2C21	2	6872515C2C21	\N	\N	\N
2264	19	802aa806cdea	802AA806CDEA	1	802AA806CDEA	\N	\N	\N
2265	15	24a43cb4b174	24A43CB4B174	3	24A43CB4B174	\N	\N	\N
2266	19	802aa806cd81	802AA806CD81	1	802AA806CD81	\N	\N	\N
2267	19	802aa806c9b7	802AA806C9B7	1	802AA806C9B7	\N	\N	\N
2268	19	802aa806cf12	802AA806CF12	1	802AA806CF12	\N	\N	\N
2269	11	68725120dda1	68725120DDA1	3	68725120DDA1	1	\N	jass.manasyan@gmail.com
2270	16	6872513ecbaf	6872513ECBAF	3	6872513ECBAF	\N	\N	\N
2271	1	f09fc246e6d8	F09FC246E6D8	1	F09FC246E6D8	\N	\N	\N
2272	11	68725120de96	68725120DE96	3	68725120DE96	\N	\N	\N
2273	11	68725120e196	68725120E196	3	68725120E196	\N	\N	\N
2274	16	6872515e2874	6872515E2874	2	6872515E2874	\N	\N	\N
2275	11	68725120ddad	68725120DDAD	3	68725120DDAD	\N	\N	\N
2276	15	687251307f21	687251307F21	3	687251307F21	\N	\N	\N
2277	11	68725120dd79	68725120DD79	3	68725120DD79	\N	\N	\N
2278	15	6872513080b5	6872513080B5	3	6872513080B5	\N	\N	\N
2279	11	68725120e1a3	68725120E1A3	3	68725120E1A3	\N	\N	\N
2280	11	68725120e1aa	68725120E1AA	3	68725120E1AA	\N	\N	\N
2281	11	24a43ca62eab	24A43CA62EAB	3	24A43CA62EAB	\N	\N	\N
2282	11	687251226511	687251226511	3	687251226511	\N	\N	\N
2283	11	68725120de92	68725120DE92	3	68725120DE92	\N	\N	\N
2284	11	68725120dd35	68725120DD35	3	68725120DD35	\N	\N	\N
2285	11	68725120e197	68725120E197	3	68725120E197	\N	\N	\N
2286	11	68725120e18a	68725120E18A	3	68725120E18A	\N	\N	\N
2287	11	68725120ddb8	68725120DDB8	3	68725120DDB8	\N	\N	\N
2288	11	68725120dda6	68725120DDA6	3	68725120DDA6	\N	\N	\N
2289	1	f09fc246e7eb	F09FC246E7EB	1	F09FC246E7EB	\N	\N	\N
2290	1	802aa8ba23cc	802AA8BA23CC	1	802AA8BA23CC	\N	\N	\N
2291	1	f09fc246e4c1	F09FC246E4C1	1	F09FC246E4C1	\N	\N	\N
2292	1	f09fc246e281	F09FC246E281	1	F09FC246E281	\N	\N	\N
2293	11	68725120dfd2	68725120DFD2	3	68725120DFD2	1	\N	hasmik@hf.am
2294	1	f09fc246e56e	F09FC246E56E	1	F09FC246E56E	\N	\N	\N
2295	1	f09fc246e6ee	F09FC246E6EE	1	F09FC246E6EE	\N	\N	\N
2296	1	f09fc246e1f8	F09FC246E1F8	1	F09FC246E1F8	\N	\N	\N
2297	11	24a43ca62cfb	24A43CA62CFB	3	24A43CA62CFB	\N	\N	\N
2298	11	6872514a4921	6872514A4921	3	6872514A4921	4	\N	vahram@hf.am
2299	1	f09fc246e351	F09FC246E351	1	F09FC246E351	\N	\N	\N
2300	11	6872514a49fa	6872514A49FA	3	6872514A49FA	\N	\N	\N
2301	19	44d9e7ca105d	44D9E7CA105D	1	44D9E7CA105D	\N	\N	\N
2302	1	f09fc246e770	F09FC246E770	1	F09FC246E770	\N	\N	\N
2303	11	6872514a4815	6872514A4815	3	6872514A4815	\N	\N	\N
2304	1	f09fc246e73a	F09FC246E73A	1	F09FC246E73A	\N	\N	\N
2305	1	f09fc246e371	F09FC246E371	1	F09FC246E371	\N	\N	\N
2306	29	71a306af83a6	71A306AF83A6	4	6c3b6bd58dd7	\N	\N	jass.manasyan@gmail.com
2307	29	71a306a4660a	71a306a4660a	4	6c3b6bd58ea3	\N	\N	\N
2308	11	68725120dd85	68725120DD85	3	68725120DD85	\N	\N	\N
2309	11	68725120dda9	68725120DDA9	3	68725120DDA9	\N	\N	\N
2310	11	68725120e1b2	68725120E1B2	3	68725120E1B2	\N	\N	\N
2311	11	68725120de90	68725120DE90	3	68725120DE90	1	\N	jass.manasyan@gmail.com
2312	15	6872513080a4	6872513080A4	3	6872513080A4	\N	\N	\N
2313	11	68725120e194	68725120E194	3	68725120E194	\N	\N	\N
2314	11	68725120e131	68725120E131	3	68725120E131	\N	\N	\N
2315	11	68725120e1b5	68725120E1B5	3	68725120E1B5	\N	\N	\N
2316	29	71a3068ddd4e	71a3068ddd4e	4	6c3b6bda1f10	\N	\N	\N
2317	29	71a3062a3c37	71a3062a3c37	4	6c3b6bda1e3e	\N	\N	\N
2318	29	71a30694643e	71a30694643e	4	6c3b6bd590dd	\N	\N	\N
2319	11	68725120de95	68725120DE95	3	68725120DE95	\N	\N	\N
2320	11	24a43ca62c66	24A43CA62C66	3	24A43CA62C66	\N	\N	\N
2321	15	687251307e80	687251307E80	3	687251307E80	\N	\N	\N
2322	11	68725120ddae	68725120DDAE	3	68725120DDAE	\N	\N	\N
2323	11	68725120dec5	68725120DEC5	3	68725120DEC5	\N	\N	\N
2324	11	68725120dda3	68725120DDA3	3	68725120DDA3	\N	\N	\N
2325	11	68725120ddb4	68725120DDB4	3	68725120DDB4	\N	\N	\N
2326	11	68725120e1a9	68725120E1A9	3	68725120E1A9	\N	\N	\N
2327	29	71a3061fd10f	71a3061fd10f	4	6c3b6bd759fb	\N	\N	\N
2328	11	68725120dd28	68725120dd28	3	68725120dd28	\N	\N	\N
2329	1	f09fc246e470	F09FC246E470	1	F09FC246E470	\N	\N	\N
2330	1	f09fc246e44b	F09FC246E44B	1	F09FC246E44B	\N	\N	\N
2331	1	f09fc246ed2f	F09FC246ED2F	1	F09FC246ED2F	\N	\N	\N
2333	1	f09fc246e6fc	F09FC246E6FC	1	F09FC246E6FC	\N	\N	\N
2334	1	f09fc246e405	F09FC246E405	1	F09FC246E405	\N	\N	\N
2335	1	f09fc246e6ad	F09FC246E6AD	1	F09FC246E6AD	\N	\N	\N
2336	1	f09fc246e11b	F09FC246E11B	1	F09FC246E11B	\N	\N	\N
2337	1	f09fc246e3af	F09FC246E3AF	1	F09FC246E3AF	\N	\N	\N
2338	29	71a306885a79	71A306885A79	4	6C3B6BDA15F8	\N	\N	\N
2339	1	f09fc246edff	F09FC246EDFF	1	F09FC246EDFF	\N	\N	\N
2340	1	f09fc246e4ed	F09FC246E4ED	1	F09FC246E4ED	2	\N	evelina@hf.am
2341	1	f09fc246e97c	F09FC246E97C	1	F09FC246E97C	\N	\N	\N
2342	1	f09fc246e45c	F09FC246E45C	1	F09FC246E45C	1	\N	hasmik@hf.am
2343	1	f09fc246e35a	F09FC246E35A	1	F09FC246E35A	\N	\N	\N
2344	1	f09fc246e74d	F09FC246E74D	1	F09FC246E74D	\N	\N	\N
2345	1	f09fc246e2c6	F09FC246E2C6	1	F09FC246E2C6	\N	\N	\N
2346	1	f09fc246e178	F09FC246E178	1	F09FC246E178	\N	\N	\N
2347	1	f09fc246e66b	F09FC246E66B	1	F09FC246E66B	\N	\N	\N
2348	1	f09fc246e2b0	F09FC246E2B0	1	F09FC246E2B0	\N	\N	\N
2349	1	f09fc246e2d1	F09FC246E2D1	1	F09FC246E2D1	\N	\N	\N
2350	11	6872514a49c8	6872514A49C8	3	6872514A49C8	\N	\N	\N
2351	1	f09fc246e6de	F09FC246E6DE	1	F09FC246E6DE	\N	\N	\N
2352	1	f09fc246e392	F09FC246E392	1	F09FC246E392	\N	\N	\N
2355	11	24a43ca62e42	24A43CA62E42	3	24A43CA62E42	\N	\N	\N
2356	1	f09fc246e5ae	F09FC246E5AE	1	F09FC246E5AE	\N	\N	\N
2358	1	802aa8ba2503	802AA8BA2503	1	802AA8BA2503	\N	\N	\N
2332	1	f09fc246e1b0	F09FC246E1B0	1	F09FC246E1B0	1	\N	hasmik@hf.am
2357	1	f09fc246e2bb	F09FC246E2BB	1	F09FC246E2BB	1	\N	hasmik@hf.am
2353	1	f09fc246e4f4	F09FC246E4F4	1	F09FC246E4F4	1	\N	hasmik@hf.am
2360	11	24a43ca63302	24A43CA63302	3	24A43CA63302	\N	\N	\N
2361	1	802aa87afa5f	802AA87AFA5F	1	802AA87AFA5F	\N	\N	\N
2362	1	802aa8f87351	802AA8F87351	1	802AA8F87351	\N	\N	\N
2363	1	f09fc246e240	F09FC246E240	1	F09FC246E240	\N	\N	\N
2364	1	802aa8ba1d0d	802AA8BA1D0D	1	802AA8BA1D0D	\N	\N	\N
2365	1	802aa8f8773d	802AA8F8773D	1	802AA8F8773D	\N	\N	\N
2366	1	f09fc246e5ca	F09FC246E5CA	1	F09FC246E5CA	\N	\N	\N
2367	11	6872514a4a13	6872514A4A13	3	6872514A4A13	\N	\N	\N
2368	1	f09fc246e5b9	F09FC246E5B9	1	F09FC246E5B9	\N	\N	\N
2369	1	f09fc246e4ec	F09FC246E4EC	1	F09FC246E4EC	\N	\N	\N
2370	1	f09fc246e56c	F09FC246E56C	1	F09FC246E56C	\N	\N	\N
2371	11	24a43ca63179	24A43CA63179	3	24A43CA63179	\N	\N	\N
2372	11	24a43ca631ef	24A43CA631EF	3	24A43CA631EF	\N	\N	\N
2373	1	802aa8ba2256	802AA8BA2256	1	802AA8BA2256	\N	\N	\N
2374	1	f09fc246e4f0	F09FC246E4F0	1	F09FC246E4F0	\N	\N	\N
2375	1	802aa8ba2438	802AA8BA2438	1	802AA8BA2438	\N	\N	\N
2376	1	f09fc246e5b0	F09FC246E5B0	1	F09FC246E5B0	\N	\N	\N
2377	1	f09fc246e453	F09FC246E453	1	F09FC246E453	\N	\N	\N
2378	11	6872514a4962	6872514A4962	3	6872514A4962	\N	\N	\N
2379	11	6872512264d6	6872512264D6	3	6872512264D6	\N	\N	\N
2380	1	f09fc246ec3e	F09FC246EC3E	1	F09FC246EC3E	\N	\N	\N
2381	11	24a43ca632d5	24A43CA632D5	3	24A43CA632D5	\N	\N	\N
2382	11	6872512263e3	6872512263E3	3	6872512263E3	\N	\N	\N
2383	1	f09fc246e16c	F09FC246E16C	1	F09FC246E16C	\N	\N	\N
2384	11	6872514a4a37	6872514A4A37	3	6872514A4A37	\N	\N	\N
2385	15	24a43c74b609	24A43C74B609	3	24A43C74B609	\N	\N	\N
2386	11	6872514a494d	6872514A494D	3	6872514A494D	\N	\N	\N
2387	11	6872514a4a2a	6872514A4A2A	3	6872514A4A2A	1	\N	jass.manasyan@gmail.com
2388	1	f09fc246ec62	F09FC246EC62	1	F09FC246EC62	\N	\N	\N
2389	11	6872514a4a40	6872514A4A40	3	6872514A4A40	\N	\N	\N
2390	11	68725164aa97	68725164AA97	2	68725164AA97	\N	\N	\N
2392	11	24a43ca631b8	24A43CA631B8	3	24A43CA631B8	\N	\N	\N
2393	11	68725122655f	68725122655F	3	68725122655F	1	\N	hasmik@hf.am
2394	11	68725164ab99	68725164AB99	2	68725164AB99	\N	\N	\N
2395	15	6872514a2b86	6872514A2B86	3	6872514A2B86	\N	\N	\N
2396	11	6872514a49d8	6872514A49D8	3	6872514A49D8	\N	\N	\N
2397	15	68725136c7a8	68725136C7A8	3	68725136C7A8	\N	\N	\N
2398	11	24a43ca62a1e	24A43CA62A1E	3	24A43CA62A1E	\N	\N	\N
2399	19	802aa806cf8b	802AA806CF8B	1	802AA806CF8B	\N	\N	\N
2400	11	6872514a4935	6872514A4935	3	6872514A4935	\N	\N	\N
2401	11	68725164a947	68725164A947	2	68725164A947	\N	\N	\N
2402	11	6872514a4a27	6872514A4A27	3	6872514A4A27	\N	\N	\N
2403	11	68725164a959	68725164A959	2	68725164A959	\N	\N	\N
2404	29	71a306f5c233	71A306F5C233	4	6C3B6BD58A3B	\N	\N	\N
2405	11	68725164a979	68725164A979	2	68725164A979	\N	\N	\N
2406	16	6872515e2814	6872515E2814	2	6872515E2814	\N	\N	\N
2407	11	6872514a4a29	6872514A4A29	3	6872514A4A29	\N	\N	\N
2408	13	002722e6ec97	002722E6EC97	3	002722E6EC97	\N	\N	\N
2409	21	f09fc24ab06f	F09FC24AB06F	2	F09FC24AB06F	\N	\N	\N
2410	11	6872512269c8	6872512269C8	3	6872512269C8	\N	\N	\N
2411	1	f09fc246e65a	F09FC246E65A	1	F09FC246E65A	\N	\N	\N
2412	11	6872512263e6	6872512263E6	3	6872512263E6	\N	\N	\N
2413	11	68725122660e	68725122660E	3	68725122660E	\N	\N	\N
2414	19	802aa808e8e5	802AA808E8E5	4	802AA808E8E5	\N	\N	\N
2415	13	002722e6ec83	002722E6EC83	3	002722E6EC83	\N	\N	\N
2416	11	6872514a49a4	6872514A49A4	3	6872514A49A4	\N	\N	\N
2417	13	002722ee8039	002722EE8039	3	002722EE8039	\N	\N	\N
2418	13	dc9fdb52217d	DC9FDB52217D	3	DC9FDB52217D	\N	\N	\N
2419	11	6872514a4964	6872514A4964	3	6872514A4964	\N	\N	\N
2420	1	f09fc246e6a9	F09FC246E6A9	1	F09FC246E6A9	\N	\N	\N
2421	11	24a43ca62de6	24A43CA62DE6	3	24A43CA62DE6	\N	\N	\N
2422	11	68725120e1a1	68725120E1A1	3	68725120E1A1	\N	\N	\N
2423	1	f09fc246ecc0	F09FC246ECC0	1	F09FC246ECC0	\N	\N	\N
2424	11	68725120dec0	68725120DEC0	3	68725120DEC0	\N	\N	\N
2425	1	f09fc246e2be	F09FC246E2BE	1	F09FC246E2BE	\N	\N	\N
2426	1	f09fc246e8c0	F09FC246E8C0	1	F09FC246E8C0	\N	\N	\N
2427	11	24a43ca62e00	24A43CA62E00	3	24A43CA62E00	\N	\N	\N
2428	11	687251668997	687251668997	1	687251668997	\N	\N	\N
2429	15	68725124fa35	68725124FA35	3	68725124FA35	\N	\N	\N
2430	15	24a43c74b5bc	24A43C74B5BC	3	24A43C74B5BC	\N	\N	\N
2431	1	f09fc246e46d	F09FC246E46D	1	F09FC246E46D	\N	\N	\N
2432	28	un-c-24	UN-C-24	3	UN-C-24	\N	\N	\N
2433	13	dc9fdb5221a5	DC9FDB5221A5	3	DC9FDB5221A5	1	\N	jass.manasyan@gmail.com
2434	13	dc9fdba67f33	DC9FDBA67F33	3	DC9FDBA67F33	\N	\N	\N
2435	1	f09fc246e6cb	F09FC246E6CB	1	F09FC246E6CB	\N	\N	\N
2436	1	f09fc246e7cc	F09FC246E7CC	1	F09FC246E7CC	\N	\N	\N
2437	11	24a43ca632ea	24A43CA632EA	3	24A43CA632EA	\N	\N	\N
2438	11	68725166887d	68725166887D	1	68725166887D	\N	\N	\N
2439	11	6872514a4a2d	6872514A4A2D	3	6872514A4A2D	\N	\N	\N
2440	11	24a43ca62e81	24A43CA62E81	3	24A43CA62E81	\N	\N	\N
2441	1	f09fc246e66d	F09FC246E66D	1	F09FC246E66D	\N	\N	\N
2442	11	68725120e06a	68725120E06A	3	68725120E06A	\N	\N	\N
2443	11	24a43ca4e610	24A43CA4E610	3	24A43CA4E610	\N	\N	\N
2444	11	687251668991	687251668991	1	687251668991	\N	\N	\N
2445	1	f09fc246e204	F09FC246E204	1		\N	\N	\N
2446	11	68725164a960	68725164A960	2	68725164A960	\N	\N	\N
2447	1	f09fc246e3d1	F09FC246E3D1	1	F09FC246E3D1	\N	\N	\N
2448	11	24a43c9e1346	24A43C9E1346	3	24A43C9E1346	\N	\N	\N
2449	19	44d9e7ca1706	44D9E7CA1706	1	44D9E7CA1706	\N	\N	\N
2450	1	f09fc246e516	F09FC246E516	1	F09FC246E516	\N	\N	\N
2451	13	dc9fdb500631	DC9FDB500631	3	DC9FDB500631	\N	\N	\N
2452	1	f09fc246e958	F09FC246E958	1	F09FC246E958	\N	\N	\N
2453	11	dc9fdba67d0d	DC9FDBA67D0D	3	DC9FDBA67D0D	\N	\N	\N
2454	1	f09fc246e223	F09FC246E223	1	F09FC246E223	\N	\N	\N
2455	1	f09fc246e387	F09FC246E387	1	F09FC246E387	\N	\N	\N
2456	1	f09fc246e9e1	F09FC246E9E1	1	F09FC246E9E1	\N	\N	\N
2457	13	dc9fdba67def	DC9FDBA67DEF	3	DC9FDBA67DEF	\N	\N	\N
2458	11	6872514a493b	6872514A493B	3	6872514A493B	\N	\N	\N
2459	11	68725164a93a	68725164A93A	2	68725164A93A	\N	\N	\N
2460	1	f09fc246e4fb	F09FC246E4FB	1	F09FC246E4FB	\N	\N	\N
2461	1	f09fc246e0a8	F09FC246E0A8	1	F09FC246E0A8	2	\N	jass.manasyan@gmail.com
2462	1	f09fc246e827	F09FC246E827	1	F09FC246E827	\N	\N	\N
2463	13	dc9fdba67dee	DC9FDBA67DEE	3	DC9FDBA67DEE	\N	\N	\N
2464	1	802aa8bc1f73	802AA8BC1F73	1	802AA8BC1F73	\N	\N	\N
2465	1	f09fc246e7f6	F09FC246E7F6	1	F09FC246E7F6	\N	\N	\N
2466	13	dc9fdb5221e1	DC9FDB5221E1	3	DC9FDB5221E1	\N	\N	\N
2467	1	24a43ce6ec4b	24A43CE6EC4B	1	24A43CE6EC4B	\N	\N	\N
2468	1	f09fc246e30f	F09FC246E30F	1	F09FC246E30F	\N	\N	\N
2469	1	f09fc246e476	F09FC246E476	1	F09FC246E476	\N	\N	\N
2470	11	68725164a963	68725164A963	2	68725164A963	\N	\N	\N
2471	1	24a43cf86295	24A43CF86295	3	24A43CF86295	\N	\N	\N
2472	11	68725120e1a0	68725120E1A0	3	68725120E1A0	\N	\N	\N
2473	1	f09fc246e461	F09FC246E461	1	F09FC246E461	\N	\N	\N
2474	11	6872512265d3	6872512265D3	3	6872512265D3	\N	\N	\N
2475	13	dc9fdba67c3d	DC9FDBA67C3D	3	DC9FDBA67C3D	\N	\N	\N
2476	1	f09fc246e6ef	F09FC246E6EF	1	F09FC246E6EF	\N	\N	\N
2477	1	f09fc246e771	F09FC246E771	1	F09FC246E771	\N	\N	\N
2478	11	6872514a4a3d	6872514A4A3D	3	6872514A4A3D	\N	\N	\N
2479	1	f09fc246e625	F09FC246E625	1	F09FC246E625	\N	\N	\N
2480	11	68725164a966	68725164a966	2	68725164a966	\N	\N	\N
2481	15	6872515c3029	6872515C3029	2	6872515C3029	\N	\N	\N
2482	1	f09fc246e3c8	F09FC246E3C8	1	F09FC246E3C8	\N	\N	\N
2483	16	6872514a581c	6872514A581C	3	6872514A581C	\N	\N	\N
2484	1	f09fc246e136	F09FC246E136	1	F09FC246E136	\N	\N	\N
2485	17	802aa86aee11	802AA86AEE11	2	802AA86AEE11	\N	\N	\N
2486	15	24a43c74b588	24A43C74B588	3	24A43C74B588	\N	\N	\N
2487	1	802aa8f876e2	802AA8F876E2	1	802AA8F876E2	\N	\N	\N
2488	16	6872515e2789	6872515E2789	2	6872515E2789	\N	\N	\N
2489	16	002722e25314	002722E25314	3	002722E25314	\N	\N	\N
2490	1	f09fc246e5de	F09FC246E5DE	1	F09FC246E5DE	\N	\N	\N
2491	29	71a306a721ad1	71A306A721AD1	4	6C3B6BD7F15F	\N	\N	\N
2492	1	f09fc246e6db	F09FC246E6DB	1	F09FC246E6DB	\N	\N	\N
2493	19	802aa806d10c	802AA806D10C	1	802AA806D10C	\N	\N	\N
2494	1	802aa8f879bc	802AA8F879BC	1	802AA8F879BC	\N	\N	\N
2495	19	44d9e7ca1229	44D9E7CA1229	1	44D9E7CA1229	\N	\N	\N
2496	1	f09fc246e591	F09FC246E591	1	F09FC246E591	\N	\N	\N
2497	11	6872514a4816	6872514A4816	3	6872514A4816	\N	\N	\N
2498	11	687251668932	687251668932	1	687251668932	\N	\N	\N
2499	1	f09fc246e6ac	F09FC246E6AC	1	F09FC246E6AC	\N	\N	\N
2500	1	f09fc246e493	F09FC246E493	1	F09FC246E493	\N	\N	\N
2501	1	f09fc246e6dd	F09FC246E6DD	1	F09FC246E6DD	\N	\N	\N
2502	1	f09fc246e6c8	F09FC246E6C8	1	F09FC246E6C8	1	\N	jass.manasyan@gmail.com
2503	11	687251668a27	687251668A27	1	687251668A27	\N	\N	\N
2504	1	f09fc246eb55	F09FC246EB55	1	F09FC246EB55	\N	\N	\N
2505	1	f09fc246e34b	F09FC246E34B	1	F09FC246E34B	\N	\N	\N
2506	1	f09fc246e5e7	F09FC246E5E7	1	F09FC246E5E7	\N	\N	\N
2507	19	802aa806b009	802AA806B009	1	802AA806B009	\N	\N	\N
2508	13	dc9fdba67d56	DC9FDBA67D56	3	DC9FDBA67D56	\N	\N	\N
2509	1	f09fc246e68e	F09FC246E68E	1	F09FC246E68E	\N	\N	\N
2510	1	f09fc246ed20	F09FC246ED20	1	F09FC246ED20	\N	\N	\N
2511	1	f09fc246ec63	F09FC246EC63	1	F09FC246EC63	\N	\N	\N
2512	1	f09fc246e885	F09FC246E885	1	F09FC246E885	\N	\N	\N
2513	1	f09fc246ec8d	F09FC246EC8D	1	F09FC246EC8D	\N	\N	\N
2514	1	f09fc246e725	F09FC246E725	1	F09FC246E725	\N	\N	\N
2515	1	f09fc246eb0e	F09FC246EB0E	1	F09FC246EB0E	\N	\N	\N
2516	1	f09fc246e9db	F09FC246E9DB	1	F09FC246E9DB	\N	\N	\N
2517	1	f09fc246e4af	F09FC246E4AF	1	F09FC246E4AF	2	\N	hasmik@hf.am
2518	1	f09fc246e662	F09FC246E662	1	F09FC246E662	\N	\N	\N
2519	1	802aa8f87501	802AA8F87501	1	802AA8F87501	\N	\N	\N
2520	1	f09fc246e7db	F09FC246E7DB	1	F09FC246E7DB	\N	\N	\N
2521	1	f09fc246e67e	F09FC246E67E	1	F09FC246E67E	\N	\N	\N
2522	1	f09fc246e8b6	F09FC246E8B6	1	F09FC246E8B6	\N	\N	\N
2523	1	f09fc246e9cf	F09FC246E9CF	1	F09FC246E9CF	\N	\N	\N
2524	1	f09fc246e762	F09FC246E762	1	F09FC246E762	\N	\N	\N
2525	1	802aa8f878c6	802AA8F878C6	1	802AA8F878C6	\N	\N	\N
2526	1	f09fc246e9b2	F09FC246E9B2	1	F09FC246E9B2	\N	\N	\N
2527	29	71a306bea29e	71A306BEA29E	4	6C3B6BD7686F	\N	\N	\N
2528	1	f09fc246e1ef	F09FC246E1EF	1	F09FC246E1EF	\N	\N	\N
2529	1	f09fc246e2c8	F09FC246E2C8	1	F09FC246E2C8	\N	\N	\N
2530	1	f09fc246e990	F09FC246E990	1	F09FC246E990	\N	\N	\N
2531	1	f09fc246e566	F09FC246E566	1	F09FC246E566	\N	\N	\N
2532	1	802aa8f87741	802AA8F87741	1	802AA8F87741	\N	\N	\N
2533	1	f09fc246e425	F09FC246E425	1	F09FC246E425	2	\N	jass.manasyan@gmail.com
2534	13	dc9fdb5221c4	DC9FDB5221C4	3	DC9FDB5221C4	\N	\N	\N
2535	13	002722e6ed2c	002722E6ED2C	3	002722E6ED2C	2	\N	jass.manasyan@gmail.com
2536	13	dc9fdb500669	DC9FDB500669	3	DC9FDB500669	\N	\N	\N
2537	13	dc9fdb500604	DC9FDB500604	3	DC9FDB500604	2	\N	hasmik@hf.am
2538	13	dc9fdba67b27	DC9FDBA67B27	3	DC9FDBA67B27	\N	\N	\N
2539	13	dc9fdba67d00	DC9FDBA67D00	3	DC9FDBA67D00	\N	\N	\N
2540	13	dc9fdb5105ea	DC9FDB5105EA	3	DC9FDB5105EA	\N	\N	\N
2541	13	002722ee7fd3	002722EE7FD3	1	002722EE7FD3	2	\N	jass.manasyan@gmail.com
2542	13	dc9fdba67eee	DC9FDBA67EEE	3	DC9FDBA67EEE	\N	\N	\N
2543	29	71a30654e34a	71A30654E34A	4	6C3B6BDC6F56	\N	\N	\N
2544	13	dc9fdba67dac	DC9FDBA67DAC	3	DC9FDBA67DAC	\N	\N	\N
2545	13	dc9fdba67d44	DC9FDBA67D44	3	DC9FDBA67D44	\N	\N	\N
2546	11	68725120dd4d	68725120DD4D	3	68725120DD4D	\N	\N	\N
2547	11	68725164a964	68725164A964	2	68725164A964	\N	\N	\N
2548	11	687251226563	687251226563	3	687251226563	\N	\N	\N
2549	11	24a43cf89da7	24A43CF89DA7	3	24A43CF89DA7	\N	\N	\N
2550	11	68725120e111	68725120E111	3	68725120E111	\N	\N	\N
2551	11	6872514a498e	6872514A498E	3	6872514A498E	\N	\N	\N
2552	11	6872514a4a2c	6872514A4A2C	3	6872514A4A2C	\N	\N	\N
2553	11	6872514a4937	6872514A4937	3	6872514A4937	\N	\N	\N
2554	11	6872514a4961	6872514A4961	3	6872514A4961	\N	\N	\N
2555	11	68725164a8c3	68725164A8C3	2	68725164A8C3	\N	\N	\N
2556	11	6872514a494c	6872514A494C	3	6872514A494C	\N	\N	\N
2557	11	6872514a4933	6872514A4933	3	6872514A4933	\N	\N	\N
2558	19	802aa806cfcc	802AA806CFCC	1	802AA806CFCC	\N	\N	\N
2559	19	802aa806cfd2	802AA806CFD2	1	802AA806CFD2	\N	\N	\N
2560	19	802aa806ce17	802AA806CE17	1	802AA806CE17	\N	\N	\N
2561	29	71a306e0e98e	71A306E0E98E	4	6C3B6BDA103E	\N	\N	\N
2562	29	71a3061ee4df	71A3061EE4DF	4	6C3B6BDC6D88	\N	\N	\N
2563	29	71a3068075f3	71A3068075F3	4	6c3b6bdc5fb4	\N	\N	\N
2564	29	71a306090b0f	71a306090b0f	4	6c3b6bd5811c	\N	\N	\N
2565	45	un-a24-k-078	UN-A24-K-078	3		\N	\N	\N
2566	29	71a30612b431	71A30612B431	4	6C3B6BD75C2F	\N	\N	\N
2567	29	71a3067517f1	71A3067517F1	4	6C3B6BD7FA4D	\N	\N	\N
2568	29	71a306b1b1b8	71A306B1B1B8	4	6C3B6BDC6F44	\N	\N	\N
2569	29	71a306d44487	71A306D44487	4	6C3B6BDC68DE	\N	\N	\N
2570	29	71a30635ae85	71A30635AE85	4	6C3B6BDC6314	\N	\N	\N
2571	29	71a306fdf8dd	71A306FDF8DD	4	6C3B6BDA1496	\N	\N	\N
2572	29	71a306e838c2	71A306E838C2	4	6C3B6BD59833	\N	\N	\N
2573	29	71a3062f4d18	71A3062F4D18	4	6C3B6BD75A73	\N	\N	\N
2574	31	23210456415	23210456415	3	0023d301f5e7	4	\N	vahram@hf.am
2576	28	ftx1538b0e5	FTX1538B0E5	3	708105927430	4	\N	vahram@hf.am
2577	45	un-a24-k-080	UN-A24-K-080	3		\N	\N	\N
2578	27	fcz1231z0uc	FCZ1231Z0UC	3	002155FF4BD8	4	\N	vahram@hf.am
2579	45	un-a24-k-081	UN-A24-K-081	3		4	\N	jass.manasyan@gmail.com
2580	29	71a306312306	71A306312306	4	6c3b6bd58182	\N	\N	\N
2581	28	ftx1538b0qv	ftx1538b0qv	3	708105926fae	4	\N	vahram@hf.am
2582	45	un-a24-k-082	UN-A24-K-082	3		\N	\N	\N
2583	28	ftx1538b0pq	ftx1538b0pq	3	708105927384	4	\N	vahram@hf.am
2584	45	un-a24-k-083	UN-A24-K-083	3		\N	\N	\N
2585	28	ftx1537b08c	ftx1537b08c	3	708105927052	4	\N	vahram@hf.am
2586	45	un-a24-k-084	UN-A24-K-084	3		4	\N	jass.manasyan@gmail.com
2587	28	ftx1538b0xw	ftx1538b0xw	3	708105927218	4	\N	vahram@hf.am
2588	45	un-a24-k-085	UN-A24-K-085	3		\N	\N	\N
2589	28	ftx1537b091	ftx1537b091	3	708105927086	4	\N	vahram@hf.am
2590	49	un-a15-k-007	UN-A15-K-007	3		4	\N	jass.manasyan@gmail.com
2591	28	ftx1538b045	ftx1538b045	3	7081059271b0	4	\N	vahram@hf.am
2592	45	un-a24-k-087	UN-A24-K-087	3		4	\N	jass.manasyan@gmail.com
2593	28	ftx1538b0pf	ftx1538b0pf	3	7081059273d2	4	\N	vahram@hf.am
2594	45	un-a24-k-088	UN-A24-K-088	3		\N	\N	\N
2595	28	fcz1231z0qh	fcz1231z0qh	3	002155ff4b48	4	\N	vahram@hf.am
2596	49	un-a15-k-006	UN-A15-K-006	3		4	\N	jass.manasyan@gmail.com
2597	28	ftx1020b0kg	ftx1020b0kg	3		4	\N	vahram@hf.am
2598	45	un-a24-k-090	UN-A24-K-090	3		\N	\N	\N
2599	29	71a3067c8a3d	71a3067c8a3d	4	6c3b6bd587fa	\N	\N	\N
2600	29	71a306e305e9	71A306E305E9	4	6C3B6BDA0AD6	1	\N	jass.manasyan@gmail.com
2601	29	71a306c4fe88	71A306C4FE88	4	6c3b6bda160a	\N	\N	\N
2602	29	71a306d0c46d	6c3b6bd7520f	4	6c3b6bd7520f	\N	\N	\N
2603	29	71a3069f2943	71A3069F2943	4	6c3b6bdc5d32	\N	\N	\N
2604	29	71a306a418cc	71a306a418cc	4	6c3b6bda0fc1	\N	\N	\N
2606	29	71a3069c6cbd	71a3069c6cbd	4	6c3b6bda0a3f	\N	\N	\N
2607	29	71a3067ffc86	71a3067ffc86	4	6c3b6bdc57cd	\N	\N	\N
2608	1	f09fc246e3f7	F09FC246E3F7	1	F09FC246E3F7	1	\N	\N
2609	29	71a306da5a6b	71a306da5a6b	4	6c3b6bd7658f	\N	\N	\N
2610	29	71a30644c150	71a30644c150	4	6c3b6bdc62f0	\N	\N	\N
2611	29	71a306074d1c	71a306074d1c	4	6c3b6bdc62fc	\N	\N	\N
2612	29	71a30660c73d	71a30660c73d	4	6c3b6bd7f651	\N	\N	\N
2613	29	71a306505d8c	71a306505d8c	4	6c3b6bda0a0a	\N	\N	\N
2614	29	71a306414cf1	71a306414cf1	4	6c3b6bd76787	\N	\N	\N
2615	45	un-a24-k-091	UN-A24-K-091	3		\N	\N	\N
2616	29	71a3068fe52c	71a3068fe52c	4	6c3b6bda1268	\N	\N	\N
2617	29	71a3062e52a8	71a3062e52a8	4	6c3b6bd76613	\N	\N	\N
2618	29	71a3064aa35b	71a3064aa35b	4	6c3b6bd7fa3b	\N	\N	\N
2619	13	dc9fdb5005bb	DC9FDB5005BB	3	DC9FDB5005BB	4	\N	\N
2620	29	71b906245eac	71B906245EAC	4	6c3b6bda17a2	\N	\N	jass.manasyan@gmail.com
2621	29	71b906d20a97	71b906d20a97	4	6c3b6bafb438	\N	\N	\N
2622	29	71a3062f5575	71a3062f5575	4	6c3b6bdc562a	\N	\N	\N
2623	45	un-a24-k-092	UN-A24-K-092	3		\N	\N	\N
2624	29	71a306f4d97c	71A306F4D97C	4	6c3b6bdc617c	\N	\N	\N
2625	29	71a306d5a5f1	71a306d5a5f1	4	6c3b6bd596fb	\N	\N	\N
2626	29	71a306cfed3c	71a306cfed3c	4	6c3b6bd75bdb	\N	\N	\N
2627	29	71a30626dd2d	71a30626dd2d	4	6c3b6bdc6e24	\N	\N	\N
2628	29	71b906088b22	71b906088b22	4	6c3b6bae82a3	\N	\N	\N
2629	29	71b90640febc	71b90640febc	4	6c3b6bae538c	\N	\N	\N
2630	29	71b9061aa357	71b9061aa357	4	6c3b6bae860a	\N	\N	\N
2631	29	71a306ebd4a5	71a306ebd4a5	4	6c3b6bd582df	\N	\N	\N
2633	11	6872514a495f	6872514A495F	3	6872514A495F	4	\N	vahram@hf.am
2634	29	71a306b8546c	71a306b8546c	4	6c3b6bd75041	\N	\N	\N
2635	29	71a306c1f72f	71a306c1f72f	4	6c3b6bd581ad	\N	\N	\N
2636	29	71a30642ed7c	71a30642ed7c	4	6c3b6bd7ecbb	\N	\N	\N
2637	137	nbhdw17223000032	NBHDW17223000032	1		\N	\N	\N
2638	29	71a306b6e319	71A306B6E319	4	6C3B6BDA10F4	\N	\N	\N
2639	137	nbhdw17223000018	nbhdw17223000018	1		\N	\N	\N
2640	137	un-3gm-002	UN-3GM-002	1		\N	\N	\N
2641	137	un-3gm-003	UN-3GM-003	1		\N	\N	\N
2642	137	nbhdw17223000040	NBHDW17223000040	1		\N	\N	\N
2643	137	un-3gm-005	UN-3GM-005	1		\N	\N	\N
2644	137	nbhd17223000082	NBHD17223000082	1		\N	\N	\N
2645	137	nbhdw17223000009	NBHDW17223000009	1		\N	\N	\N
2646	137	nbhdw17223000036	nbhdw17223000036	1		\N	\N	\N
2647	137	un-3gm-009	UN-3GM-009	1		\N	\N	\N
2648	138	g9w9k14807000166	G9W9K14807000166	1		\N	\N	\N
2649	138	g9w9k14807000067	g9w9k14807000067	1		\N	\N	\N
2650	138	un-3gm-012	UN-3GM-012	1		\N	\N	\N
2651	138	g9w9k14807000174	G9W9K14807000174	1		\N	\N	\N
2652	138	g9w9k14807000183	g9w9k14807000183	1		\N	\N	\N
2653	138	g9w9k14807000631	g9w9k14807000631	1		\N	\N	\N
2654	138	un-3gm-016	UN-3GM-016	1		\N	\N	\N
2655	138	un-3gm-017	UN-3GM-017	1		\N	\N	\N
2656	138	un-3gm-018	UN-3GM-018	1		\N	\N	\N
2657	138	un-3gm-019	UN-3GM-019	1		\N	\N	\N
2658	138	un-3gm-020	UN-3GM-020	1		\N	\N	\N
2659	138	un-3gm-021	UN-3GM-021	1		\N	\N	\N
2660	138	g9w9k14807000120	g9w9k14807000120	1		\N	\N	jass.manasyan@gmail.com
2661	138	un-3gm-023	UN-3GM-023	1		\N	\N	\N
2662	138	un-3gm-024	UN-3GM-024	1		\N	\N	\N
2663	11	6872512264bf	6872512264BF	3	6872512264BF	\N	\N	\N
2664	11	24a43ca62e23	24A43CA62E23	3	24A43CA62E23	4	\N	vahram@hf.am
2665	11	68725120e1a4	68725120E1A4	3	68725120E1A4	\N	\N	\N
2666	11	6872514a491d	6872514A491D	3	6872514A491D	\N	\N	\N
2667	11	24a43ca626ac	24A43CA626AC	3	24A43CA626AC	\N	\N	\N
2668	13	002722e6ecba	002722E6ECBA	3	002722E6ECBA	\N	\N	\N
2669	11	68725120e185	68725120E185	3	68725120E185	\N	\N	jass.manasyan@gmail.com
2670	11	6872514a48a7	6872514A48A7	3	6872514A48A7	\N	\N	\N
2671	11	6872512264d0	6872512264D0	3	6872512264D0	\N	\N	\N
2672	11	687251226568	687251226568	3	687251226568	\N	\N	\N
2673	11	68725144dbac	68725144DBAC	3	68725144DBAC	\N	\N	\N
2674	11	6872516689d8	6872516689D8	1	6872516689D8	\N	\N	\N
2675	13	dc9fdba67d84	DC9FDBA67D84	3	DC9FDBA67D84	\N	\N	\N
2676	16	6872513ed4d3	6872513ED4D3	3	6872513ED4D3	\N	\N	\N
2677	1	f09fc246e335	F09FC246E335	1	F09FC246E335	\N	\N	\N
2678	1	f09fc246e19d	F09FC246E19D	1	F09FC246E19D	\N	\N	\N
2679	1	802aa87af92d	802AA87AF92D	1	802AA87AF92D	\N	\N	\N
2680	29	71a306185640	71a306185640	4	6c3b6bdc6f62	\N	\N	\N
2681	29	71a306aacded	71a306aacded	4	6c3b6bda1568	\N	\N	\N
2682	1	f09fc246ec89	F09FC246EC89	1	F09FC246EC89	\N	\N	\N
2683	1	f09fc246e491	F09FC246E491	1	F09FC246E491	2	\N	jass.manasyan@gmail.com
2684	1	f09fc246e33c	F09FC246E33C	1	F09FC246E33C	\N	\N	\N
2685	29	71a3061318dc	71a3061318dc	4	6c3b6bd59851	\N	\N	\N
2686	29	71a3063c9ebf	71a3063c9ebf	4	6c3b6bda1538	\N	\N	\N
2687	29	71a3060cf4b0	71a3060cf4b0	4	6c3b6bd75815	\N	\N	\N
2688	29	71a306ec196f	71a306ec196f	4		\N	\N	\N
2689	29	71a306225740	71A306225740	4	6C3B6BD7F0E6	\N	\N	\N
2690	29	71a3066fcce6	71A3066FCCE6	4	6C3B6BDC6379	\N	\N	\N
2691	29	71a3060534a4	71a3060534a4	4	6c3b6bda0e18	\N	\N	\N
2692	29	71a3067d59d5	71a3067d59d5	4	6c3b6bd7ecd2	\N	\N	\N
2693	29	71a3060a01c3	71A3060A01C3	4	BC3B6BD755DE	\N	\N	\N
2694	29	71a306b40412	71A306B40412	4	6C3B6BD7F0B6	\N	\N	\N
2695	29	71a306772f03	71a306772f03	4	6c3b6bdc6662	\N	\N	\N
2696	29	71a3067768ef	71a3067768ef	4	6c3b6bdc697a	\N	\N	\N
2697	29	71a306d0ce7a	71a306d0ce7a	4	6c3b6bdc674c	\N	\N	\N
2698	29	71b9065f4d83	71b9065f4d83	4	6c3b6b86ee33	\N	\N	\N
2699	45	un-a24-k-093	UN-A24-K-093	3		\N	\N	\N
2700	29	71a306f259ee	71a306f259ee	4	6c3b6bdc67dc	\N	\N	\N
2701	45	un-a24-k-094	UN-A24-K-094	3		\N	\N	\N
2702	29	71b90655120f	71b90655120f	4	6c3b6bafb420	\N	\N	\N
2703	29	71a3062a8dc3	71a3062a8dc3	4	6c3b6b075f83	\N	\N	jass.manasyan@gmail.com
2704	29	71b9067f0388	71b9067f0388	4	6c3b6bafb318	\N	\N	\N
2705	29	71a3067112d4	71a3067112d4	4	6c3b6bd7ebef	\N	\N	\N
2706	29	71a306758f74	71a306758f74	4	6c3b6bda1868	\N	\N	\N
2707	29	71b90677a6ed	71b90677a6ed	4	6c3b6bda16d6	\N	\N	jass.manasyan@gmail.com
2708	29	71b9067d3598	71b9067d3598	4	6c3b6bae519a	\N	\N	\N
2709	45	un-a24-k-095	UN-A24-K-095	3		\N	\N	\N
2710	29	71a306a530be	71a306a530be	4	6c3b6bd75fbf	\N	\N	\N
2711	29	71b906cc5b6d	71b906cc5b6d	4	6c3b6bda162e	\N	\N	jass.manasyan@gmail.com
2712	29	71b906d35f38	71b906d35f38	4	6c3b6bae5266	\N	\N	\N
2713	29	71b906a8f6f8	71b906a8f6f8	4	6c3b6bae83ac	\N	\N	\N
2714	29	71a306a57dd5	71a306a57dd5	4	6c3b6bd7f4b3	\N	\N	\N
2715	29	71a306173981	71a306173981	4	6c3b6bd7f2d3	\N	\N	\N
2716	29	71a306c1f3d0	71a306c1f3d0	4	6c3b6bdc568f	\N	\N	\N
2717	29	71a30623059b	71a30623059b	4	6c3b6bd76792	\N	\N	\N
2718	29	71a306069e67	71a306069e67	4	6c3b6bd59898	\N	\N	\N
2719	29	71a3062de1de	71a3062de1de	4	6c3b6bd7eeee	\N	\N	\N
2720	29	71a3068da8af	71A3068DA8AF	4	6C3B6BDA1447	\N	\N	\N
2721	138	g9w9k14807000150	g9w9k14807000150	1		\N	\N	\N
2722	29	71b906fa7565	71b906fa7565	4	6c3b6bafb2ab	\N	\N	\N
2723	25	fcz1231z0um	FCZ1231Z0UM	3	002155FF4B6F	4	\N	jass.manasyan@gmail.com
2724	45	un-a24-k-096	UN-A24-K-096	3		4	\N	jass.manasyan@gmail.com
2725	28	ftx1537b08h	FTX1537B08H	3	708105927110	1	\N	vahram@hf.am
2726	45	un-a24-k-097	UN-A24-K-097	3		4	\N	jass.manasyan@gmail.com
2727	29	71a306145a3e	71A306145A3E	4	6C3B6BD7F60F	\N	\N	\N
2728	29	71b9067ba974	71B9067BA974	4	6C3B6BAE8550	\N	\N	\N
2729	29	71a306da59ea	71A306DA59EA	4	6C3B6BD75F53	\N	\N	\N
2730	29	71a3069cb572	71a3069cb572	4	6c3b6bda18d4	\N	\N	\N
2731	29	71a3064333fe	71a3064333fe	4	6c3b6bd75f3b	\N	\N	\N
2732	29	71b906b1eb26	71b906b1eb26	4	6c3b6b86ee93	\N	\N	\N
2733	29	71b906bbb4aa	71b906bbb4aa	4	6c3b6baf8480	\N	\N	\N
2734	29	71a3062fed17	71a3062fed17	4	6c3b6bda1808	\N	\N	\N
2735	29	71a306978f27	71a306978f27	4	6c3b6bdc67ca	\N	\N	\N
2736	29	71b90677859b	71b90677859b	4	6c3b6bafb4b0	\N	\N	\N
2737	29	71a30656dc56	71a30656dc56	4	6c3b6bd58fd5	\N	\N	\N
2738	29	71b906169e43	71b906169e43	4	6c3b6bafb431	\N	\N	\N
2739	29	71b906fe1e65	71b906fe1e65	4	6c3b6b86edf7	\N	\N	\N
2740	29	71a306f1c65e	71a306f1c65e	4	6c3b6bda18e6	\N	\N	\N
2741	29	71a30641227d	71a30641227d	4	6c3b6bdc608c	1	\N	jass.manasyan@gmail.com
2742	29	71a306694ce4	71a306694ce4	4	6c3b6bd7f483	\N	\N	\N
2743	31	23210456420 	23210456420	3	0023d301f5f2	4	\N	vahram@hf.am
2744	45	un-a24-k-098	UN-A24-K-098	3		1	\N	jass.manasyan@gmail.com
2745	45	un-a24-k-099	UN-A24-K-099	3		\N	\N	\N
2746	45	un-a24-k-100	UN-A24-K-100	3		\N	\N	\N
2747	29	71a306c9184f	71a306c9184f	4	6c3b6bd75629	\N	\N	\N
2748	29	71a3065ef66b	71a3065ef66b	4	6c3b6bd591c1	\N	\N	\N
2749	29	71a3069cc635	71A3069CC635	4	6C3B6BD7EC55	\N	\N	\N
2750	29	71a306402f27	71A306402F27	4	6C3B6BD7F4A1	\N	\N	\N
2751	29	71a306f9398b	71A306F9398B	4	6C3B6BD74FDB	\N	\N	\N
2752	29	71a30684649a	71a30684649a	4	6C3B6BDA1988	\N	\N	\N
2753	29	71a3068f90cd	71A3068F90CD	4	6C3B6BDA193A	\N	\N	\N
2754	29	71b9069a728c	71B9069A728C	4	6C3B6BAFB486	\N	\N	\N
2755	29	71a30645be05	71a30645be05	4	6c3b6bd58123	\N	\N	\N
2756	29	71a30628c9d6	71a30628c9d6	4	6c3b6bdc5636	\N	\N	\N
2757	29	71a306a2c807	71a306a2c807	4	6c3b6bd75737	\N	\N	\N
2758	29	71b90661d715	71b90661d715	4	6c3b6b86ecb3	\N	\N	\N
2759	29	71a3061dd1e7	71a3061dd1e7	4	6c3b6bd7f4dd	\N	\N	\N
2760	29	71a306c8587e	71a306c8587e	4	6c3b6bdc6908	\N	\N	\N
2761	29	71a30667070e	71a30667070e	4	6c3b6bd75e87	\N	\N	\N
2762	29	71a3061e22bf	71a3061e22bf	4	6c3b6bdc5c06	\N	\N	\N
2763	29	71b906b9a14c	71b906b9a14c	4	6c3b6bae518e	\N	\N	\N
2764	13	dc9fdb500668	dc9fdb500668	1	dc9fdb500668	1	\N	hasmik@hf.am
2765	29	71b906a0531d	71b906a0531d	4	6c3b6bae8388	\N	\N	\N
2766	29	71b906a543c1	71b906a543c1	4	6c3b6b86eca7	\N	\N	\N
2767	13	002722ee7fab	002722ee7fab	1	002722ee7fab	1	\N	hasmik@hf.am
2768	31	23210268665	23210268665	3	0023d301f23b	4	\N	vahram@hf.am
2769	45	un-a24-k-101	UN-A24-K-101	3		4	\N	jass.manasyan@gmail.com
2770	31	23210456378	23210456378	3	0023d301f59d	4	\N	vahram@hf.am
2771	45	un-a24-k-102	UN-A24-K-102	3		4	\N	jass.manasyan@gmail.com
2772	31	23210456387	23210456387	3	0023d301f5af	4	\N	vahram@hf.am
2773	45	un-a24-k-103	UN-A24-K-103	3		4	\N	jass.manasyan@gmail.com
2774	31	23210268659	23210268659	3	0023d301f230	4	\N	vahram@hf.am
2775	45	un-a24-k-104	UN-A24-K-104	3		4	\N	jass.manasyan@gmail.com
2776	31	23210268658	23210268658	3	0023d301f22d	4	\N	vahram@hf.am
2777	45	un-a24-k-105	UN-A24-K-105	3		4	\N	jass.manasyan@gmail.com
2778	29	71a3061e5f3c	71a3061e5f3c	4	6c3b6bda1976	\N	\N	\N
2780	31	23210268256	23210268256	3	0023d301ef08	4	\N	vahram@hf.am
2781	45	un-a24-k-106	UN-A24-K-106	3		4	\N	jass.manasyan@gmail.com
2782	31	23210456384	23210456384	3	0023d301f5a9	4	\N	vahram@hf.am
2783	45	un-a24-k-107	UN-A24-K-107	3		4	\N	jass.manasyan@gmail.com
2784	31	23210268652	23210268652	3		4	\N	vahram@hf.am
2785	28	ftx1538b0xx	FTX1538B0XX	3	708105927226	4	\N	vahram@hf.am
2786	31	23210268653	23210268653	3	0023d301f223	4	\N	vahram@hf.am
2787	45	un-a24-k-108	UN-A24-K-108	3		4	\N	jass.manasyan@gmail.com
2788	31	23210456328	23210456328	3	0023d301f538	4	\N	vahram@hf.am
2789	45	un-a24-k-109	UN-A24-K-109	3		\N	\N	\N
2790	27	fcz1231z0p6	fcz1231z0p6	3	002155ff4c4f	4	\N	vahram@hf.am
2791	28	ftx1539b032	ftx1539b032	3	708105926a22	4	\N	vahram@hf.am
2792	45	un-a24-k-110	UN-A24-K-110	3		\N	\N	\N
2793	28	ftx1539b035	ftx1539b035	3	708105926b2c	4	\N	vahram@hf.am
2794	45	un-a24-k-111	UN-A24-K-111	3		1	\N	hasmik@hf.am
2795	24	ftx1539u07t	ftx1539u07t	3	7081053a77d2	4	\N	vahram@hf.am
2796	29	71a3061db6ec	71a3061db6ec	4	6c3b6bdc57c2	\N	\N	\N
2797	45	un-a24-k-112	UN-A24-K-112	3		\N	\N	\N
2798	29	71a306058550	71a306058550	4	6c3b6bd74fa5	\N	\N	\N
2799	29	71a30676625b	71a30676625b	4	6c3b6bd581fb	\N	\N	\N
2800	29	71a3069c09ef	71a3069c09ef	4	6c3b6bd581d1	\N	\N	\N
2801	29	71a306ea24bb	71a306ea24bb	4	6c3b6bd7ee6b	\N	\N	\N
2802	29	71a306c11184	71a306c11184	4	6c3b6bd74fb1	\N	\N	\N
2803	29	71a306c99d10	71a306c99d10	4	6c3b6bd7ec0d	\N	\N	\N
2804	29	71a3060678cc	71a3060678cc	4	6c3b6bd7568f	\N	\N	\N
2805	29	71a306202249	71a306202249	4	6c3b6bd75695	\N	\N	\N
2806	29	71b9064290c9	71b9064290c9	4	6c3b6bae522a	\N	\N	\N
2807	29	71a3066f43ae	71a3066f43ae	4	6c3b6bd7ec13	\N	\N	\N
2808	45	un-a24-k-113	UN-A24-K-113	3		\N	\N	\N
2809	29	71a306a62cf7	71a306a62cf7	4	6c3b6bdc6572	\N	\N	\N
2810	29	71a3061d7a27	71a3061d7a27	4	6c3b6bd591cd	\N	\N	\N
2811	29	71a306054d64	71a306054d64	4	6c3b6bd75e8d	\N	\N	\N
2812	29	71a3069e127b		4	6c3b6bd58b25	\N	\N	\N
2813	29	71a306211709	71a306211709	4	6c3b6bd7f3b1	\N	\N	\N
2814	29	71a306686248	71a306686248	4	6c3b6bdc6772	\N	\N	\N
2815	45	un-a24-k-114	UN-A24-K-114	3		\N	\N	\N
2816	29	71a306e111dd	71a306e111dd	4	6c3b6bd76139	\N	\N	\N
2817	29	71a306904f84	71a306904f84	4	6c3b6bd75e4b	\N	\N	\N
2818	29	71a3065d0c19	71a3065d0c19	4	6c3b6bd7f447	\N	\N	\N
2819	29	71a3066464b1	71a3066464b1	4	6c3b6bd75a5b	\N	\N	\N
2820	29	71a306cfb642	71a306cfb642	4	6c3b6bd58fbd	\N	\N	\N
2821	45	un-a24-k-115	UN-A24-K-115	3		\N	\N	\N
2822	29	71a30634d52f	71a30634d52f	4	6c3b6bdc57e0	\N	\N	\N
2823	29	71a306d50897	71a306d50897	4	6c3b6bda0638	\N	\N	\N
2824	29	71a3060fb778	71a3060fb778	4	6c3b6bd76199	\N	\N	\N
2825	29	71a306e7a955	71A306E7A955	4	6C3B6BDC5690	\N	\N	\N
2826	29	71a306cf98db	71A306CF98DB	4	6C3B6BD75089	\N	\N	\N
2827	29	71a306e2f4bc	71a306e2f4bc	4	6c3b6bd7e51d	\N	\N	\N
2828	29	71a30671af4a	71a30671af4a	4	6c3b6bd58171	\N	\N	\N
2829	29	71a306d4200d	71a306d4200d	4	6c3b6bd7f11d	\N	\N	\N
2830	29	71a30600f2d9	71a30600f2d9	4	6c3b6bd7f43b	\N	\N	\N
2831	29	71a306317878	71a306317878	4	6c3b6bd7551b	\N	\N	\N
2832	29	71a306a65301	71a306a65301	4	6c3b6bd75b63	\N	\N	\N
2833	29	71a306118b1e	 71a306118b1e	4	6c3b6bd7f039	\N	\N	\N
2834	29	71a306316983	71a306316983	4	6c3b6bd756dd	\N	\N	\N
2835	29	71a306c385c8	71a306c385c8	4	6c3b6bd75b75	\N	\N	\N
2836	29	71a3065afe27	71a3065afe27	4	6c3b6bd757db	\N	\N	\N
2837	29	71a3068a382d	71a3068a382d	4	6c3b6bd74f99	\N	\N	\N
2838	29	71a3062e073e	71a3062e073e	4	6c3b6bd75011	\N	\N	\N
2839	45	un-a24-k-116	UN-A24-K-116	3		\N	\N	\N
2840	13	dc9fdb500670	DC9FDB500670	3		\N	\N	\N
2841	29	71a3061d6c32	71A3061D6C32	4	6C3B6BD7EEA7	\N	\N	\N
2842	29	71b90695ce2d	71B90695CE2D	4	6C3B6B86ECE9	\N	\N	\N
2843	29	71a306770cf5	71A306770CF5	4	6C3B6BDC61EE	\N	\N	\N
2844	29	71a306ddba2f	71a306ddba2f	4	6c3b6bd7f009	\N	\N	\N
2845	29	71a306246ca1	71A306246CA1	4	6C3B6BDA13E8	\N	\N	\N
2846	29	71a306e87e66	71A306E87E66	4	6C3B6BDA1454	\N	\N	\N
2847	48	un-ao15-k-105	UN-AO15-K-105	3		4	\N	jass.manasyan@gmail.com
2848	29	71a3064f070a	71a3064f070a	4	6c3b6bdc6608	\N	\N	\N
2849	29	71a3064bf886	71a3064bf886	4	6c3b6bd7f39f	\N	\N	\N
2850	29	71a3069b2901	71a3069b2901	4	6c3b6bda18c8	\N	\N	\N
2851	29	71a306051164	71a306051164	4	6c3b6bdc6710	\N	\N	\N
2852	29	71a3060f605f	71a3060f605f	4	6c3b6bd59113	\N	\N	\N
2853	29	71a306418865	71a306418865	4	6c3b6bda14b4	\N	\N	\N
2854	29	71a306ca4494	71a306ca4494	4	6c3b6bd58e07	\N	\N	\N
2855	29	71a3067807be	71a3067807be	4	6c3b6bdc659c	\N	\N	\N
2857	29	71a3063e5a42	71a3063e5a42	4	6c3b6bd7f2f1	\N	\N	\N
2858	29	71b9061e3ba6	71b9061e3ba6	4	6c3b6bafb408	\N	\N	\N
2859	29	71b906037f75	71b906037f75	4	6c3b6bae822c	\N	\N	\N
2860	29	71b90633ff1c	71b90633ff1c	4	6c3b6bae53ce	\N	\N	\N
2861	29	71a306f44169	71a306f44169	4	6c3b6bda120e	\N	\N	\N
2862	29	71a3065d8567	71a3065d8567	4	6c3b6bda15a4	\N	\N	\N
2863	29	71a306b67b06	71a306b67b06	4	6c3b6bdc6386	\N	\N	\N
2864	29	71b906e7e1b1	71b906e7e1b1	4	6c3b6b86ee5d	\N	\N	\N
2865	29	71a30660b85b	71a30660b85b	4	6c3b6bd75917	\N	\N	\N
2866	29	71a306306920	71a306306920	4	6c3b6bd58b1f	\N	\N	\N
2867	29	71b9062afebc	71b9062afebc	4	6c3b6b86ec9b	\N	\N	\N
2868	29	71a30683363b	71a30683363b	4	6c3b6bdc6638	\N	\N	\N
2869	29	71b906eaeffb	71b906eaeffb	4	6c3b6ba364ff	\N	\N	\N
2870	29	71a3060dc2e1	71a3060dc2e1	4	6c3b6bdc56ba	\N	\N	\N
2871	29	71a306fd1237	71a306fd1237	4	6c3b6bd5814d	\N	\N	\N
2872	29	71a30618443a	71a30618443a	4	6c3b6bdc5678	\N	\N	\N
2873	29	71a306edaf46	71a306edaf46	4	6c3b6bda1262	\N	\N	\N
2874	29	71a30615bc36	71a30615bc36	4	6c3b6bd7e5d1	\N	\N	\N
2875	29	71a306ea93ea	71a306ea93ea	4	6c3b6bd75005	\N	\N	\N
2876	29	71a3069f5ca2	71a3069f5ca2	4	6c3b6bdc5660	\N	\N	\N
2877	29	71a3067ea2ec	71a3067ea2ec	4	6c3b6bda0a34	\N	\N	\N
2878	29	71a306c2a69d	71a306c2a69d	4	6c3b6bd5813b	\N	\N	\N
2879	29	71a306ab18a0	71a306ab18a0	4	6c3b6bd58183	\N	\N	\N
2881	29	71a30653696c	71a30653696c	4	6c3b6bd58177	\N	\N	\N
2882	29	71a3065e572c	71A3065E572C	3	6C3B6BD750C5	\N	\N	jass.manasyan@gmail.com
2883	29	71a3062a089c	71a3062a089c	4	6c3b6bd7e5a7	\N	\N	\N
2884	29	71a306e74b01	71a306e74b01	4	6c3b6bd74fab	\N	\N	\N
2885	29	71a3068f8790	71a3068f8790	4	6c3b6bd7e52f	\N	\N	\N
2886	29	71a306f6eb09	71a306f6eb09	4	6c3b6bd75947	\N	\N	\N
2887	29	71b90668eb26	71b90668eb26	4	6c3b6bafb27c	\N	\N	\N
2888	29	71b906427f46	71b906427f46	4	6c3b6b86ed13	\N	\N	\N
2889	29	71a3063229ca	71a3063229ca	4	6c3b6bd7558d	\N	\N	\N
2890	29	71a3062ccfe2	71a3062ccfe2	4	6c3b6bd7ec1f	1	\N	jass.manasyan@gmail.com
2891	45	un-a24-k-117	UN-A24-K-117	3		1	\N	hasmik@hf.am
2892	29	71b90664ca4c	71b90664ca4c	4	6c3b6bae5230	\N	\N	\N
2893	29	71a306332e87	71a306332e87	4	6c3b6bd7f4e3	2	\N	jass.manasyan@gmail.com
2894	29	71b9063ee1b1	71b9063ee1b1	4	6c3b6bafb2b2	\N	\N	\N
2895	29	71a30661879c	71a30661879c	4	6c3b6bd75827	\N	\N	\N
2896	29	71b9063409d7	71b9063409d7	4	6c3b6bafb4bc	\N	\N	\N
2897	29	71a3068335ba	71a3068335ba	4	6c3b6bdc5ce4	\N	\N	\N
2898	28	ftx1538b0dv	FTX1538b0dv	3	708105927354	1	\N	hasmik@hf.am
2899	29	71a306a969c6	71a306a969c6	4	6c3b6bd76187	\N	\N	\N
2900	45	un-a24-k-118	UN-A24-K-118	3		1	\N	hasmik@hf.am
2901	28	ftx1538b0sd	ftx1538b0sd	3	708105927004	4	\N	vahram@hf.am
2902	45	un-a24-k-119	UN-A24-K-119	3		\N	\N	\N
2903	29	71a306889e6c	71a306889e6c	4	6c3b6bd75f17	\N	\N	\N
2904	29	71a3065684a9	71a3065684a9	4	6c3b6bd7616f	\N	\N	\N
2905	29	71a30674b0b3	71a30674b0b3	4	6c3b6bda1958	\N	\N	jass.manasyan@gmail.com
2906	45	un-a24-k-120	UN-A24-K-120	3		\N	\N	\N
2907	29	71a3067e7b23	71a3067e7b23	4	6c3b6bda18da	\N	\N	\N
2908	29	71a3069bedc4	71a3069bedc4	4	6c3b6bd75227	\N	\N	\N
2909	29	71a306ed2529	71a306ed2529	4	6c3b6bdc580a	\N	\N	\N
2910	29	71a306ba2be2	094756318	4	6c3b6bd75221	\N	\N	\N
2911	29	71a306d808fb	71a306d808fb	4	6c3b6bd58207	\N	\N	\N
2912	29	71a3062aca2f	71a3062aca2f	4	6c3b6bd7509b	\N	\N	\N
2913	29	71a306206c33	71a306206c33	4	6c3b6bdc5612	\N	\N	\N
2914	29	71a3062c656a	71a3062c656a	4	6c3b6bda0a70	\N	\N	\N
2915	29	71a3062068cc	71a3062068cc	4	6c3b6bd58135	\N	\N	\N
2916	29	71a306523f08	71a306523f08	4	6c3b6bd7506b	\N	\N	\N
2917	29	71a30654f5cf	098139660	4	6c3b6bd5816b	\N	\N	\N
2918	45	un-a24-k-121	UN-A24-K-121	3		\N	\N	\N
2919	29	71a3064842f6	71a3064842f6	4	6c3b6bd7e5ad	\N	\N	\N
2920	29	71a3069c0d10	71a3069c0d10	4	6c3b6bdc56f6	\N	\N	\N
2921	29	71a306674cc3	71a306674cc3	4	6c3b6bda0a58	\N	\N	\N
2922	45	un-a24-k-122	UN-A24-K-122	3		\N	\N	\N
2923	29	71a30622ad79	71a30622ad79	4	6c3b6bd7e583	\N	\N	\N
2924	29	71a306bdcb36	71a306bdcb36	4	6c3b6bdc56f0	\N	\N	\N
2925	29	71a306eafe66	71a306eafe66	4	6c3b6bdc570e	\N	\N	\N
2926	29	71a306780188	71a306780188	4	6c3b6bda0b18	\N	\N	\N
2927	29	71a3064eacf9	71a3064eacf9	4	6c3b6bd74f8d	\N	\N	\N
2928	45	un-a24-k-123	UN-A24-K-123	3		\N	\N	\N
2929	29	71a306ff1910	71a306ff1910	4	6c3b6bda0b00	\N	\N	\N
2930	45	un-a24-k-124	UN-A24-K-124	3		\N	\N	\N
2931	29	71a306814f83	71a306814f83	4	6c3b6bda0adc	\N	\N	\N
2932	28	ftx1538b0c5	ftx1538b0c5	3	70810592749a	4	\N	vahram@hf.am
2933	45	un-a24-k-125	UN-A24-K-125	3		4	\N	jass.manasyan@gmail.com
2934	29	71b906b3114f	71b906b3114f	4	6c3b6bafb4a4	\N	\N	\N
2935	29	71a306a1fdaf	71a306a1fdaf	4	6c3b6bd75f35	\N	\N	\N
2936	29	71a30612ef4f	71a30612ef4f	4	6c3b6bd58849	\N	\N	\N
2937	29	71a30657c12f	71a30657c12f	4	6c3b6bda0a16	\N	\N	\N
2938	29	71a306df85a3	71a306df85a3	4	6c3b6bd581dd	\N	\N	\N
2940	29	71a306816a43	71a306816a43	4	6c3b6bdc63d4	\N	\N	\N
2941	29	71b906f6f302	71b906f6f302	4	6c3b6ba36529	\N	\N	\N
2942	29	71a30610943e	71A30610943E	4	6C3B6BDC5D0E	\N	\N	\N
2943	29	71a30605ac21	71A30605AC21	4	6C3B6BD7EC3D	\N	\N	\N
2944	29	71a306f6bd1e	71A306F6BD1E	4	6C3B6BD75599	\N	\N	\N
2945	29	71a306b41207	71a306b41207	4	6c3b6bd58fdb	\N	\N	\N
2946	29	71a306c912c8	71a306c912c8	4	6c3b6bd7f23d	\N	\N	\N
2947	29	71a30601918e	71a30601918e	4	6c3b6bd75dc1	1	\N	jass.manasyan@gmail.com
2948	29	71a3061800c7	71a3061800c7	4	6c3b6bd7f2eb	\N	\N	\N
2949	29	71a306332e17	71a306332e17	4	6c3b6bdc65b4	\N	\N	\N
2950	29	71a30609346b	71a30609346b	4	6c3b6bd75de5	\N	\N	\N
2951	29	71a3067dd60e	71a3067dd60e	4	6c3b6bd7f2fd	\N	\N	\N
2952	29	71a306b0bb0c	71A306B0BB0C	4	6C3B6BD587CA	\N	\N	\N
2953	29	71a306a86ae4	71A306A86AE4	4	6C3B6BD58699	\N	\N	\N
2954	29	71bn06450c6a	71BN06450C6A	4	6C3B6BAE5236	\N	\N	\N
2955	29	71a306ba9cb0	71A306BA9CB0	4	6C3B6BD7EC4F	\N	\N	\N
2956	29	71a3060f4447	71A3060F4447	4	6C3B6BD7EA33	\N	\N	\N
2957	29	71a306b8d795	71A306B8D795	4	6C3B6BDA15B6	\N	\N	\N
2958	29	71a306d51fca	71A306D51FCA	4	6C3B6BD7F02D	\N	\N	\N
2959	29	71a30605bb7c	71A30605BB7C	4	6C3B6BDA102D	\N	\N	\N
2960	29	71b906aba74a	71B906ABA74A	4	6C3B6BAE833A	1	\N	hasmik@hf.am
2961	29	71b90654b5cd	71b90654b5cd	4	6c3b6bd7f2df	\N	\N	jass.manasyan@gmail.com
2962	29	71a3063d337a	71a3063d337a	4	6c3b6bd75239	\N	\N	\N
2963	29	71a306330a9f	71a306330a9f	4	6c3b6bd58fc3	\N	\N	\N
2964	29	71b906a128c1	71B906A128C1	4	6C3B6BAFB3F6	\N	\N	\N
2965	29	71a3064273cf	71A3064273CF	4	6C3B6BDC601A	\N	\N	\N
2966	29	71b9062fe3e5	71B9062FE3E5	4	6C3B6BAE5218	\N	\N	\N
2967	29	71b906039d7f	71B906039D7F	4	6C3B6B86ECB9	\N	\N	\N
2968	29	71b906d79fac	71B906D79FAC	4	6C3B6BAE8340	\N	\N	\N
2969	29	71a30649a7ef	71a30649a7ef	4	6c3b6bdc5df8	\N	\N	\N
2970	29	71b906c21977	71B906C21977	4	6C3B6BAE8382	\N	\N	\N
2971	29	71b9068a6ce9	71B9068A6CE9	4	6C3B6BAE5290	\N	\N	\N
2972	29	71b906bb314d	71B906BB314D	4	6C3B6B86ECD7	\N	\N	\N
2973	29	71a3066da293	71A3066DA293	4	6C3B6BDC62D2	\N	\N	\N
2974	29	71b906749db7	71B906749DB7	4	6C3B6BAE54C4	\N	\N	\N
2975	29	71a306b2ea1d	71A306B2EA1D	4	6C3B6BD75A91	\N	\N	\N
2976	29	71b906af8851	71B906AF8851	4	6C3B6B86ED25	\N	\N	\N
2977	28	ftx1538b0sr	FTX1538B0SR	3	7081059272B6	\N	\N	\N
2978	29	71b9060e2846	71B9060E2846	4	6C3B6BAE83B2	\N	\N	\N
2979	29	71b906e71fc5	71B906E71FC5	4	6C3B6BAE52A2	\N	\N	\N
2980	28	ftx1537b08z	FTX1537B08Z	3	708105927066	\N	\N	\N
2981	48	un-ao15-k-106	UN-AO15-K-106	3		4	\N	jass.manasyan@gmail.com
2982	24	ftx1549u03v	ftx1549u03v	3	649ef30105e6	4	\N	vahram@hf.am
2983	139	2156350002460	2156350002460	3		\N	\N	\N
2984	19	dc9fdb4cbab7	dc9fdb4cbab7	4	dc9fdb4cbab7	1	\N	hasmik@hf.am
2985	29	71a3065140f5	71a3065140f5	4	6c3b6bd58fc9	\N	\N	\N
2986	29	71a30647b314	71a30647b314	4	6c3b6bdc65ea	\N	\N	\N
2987	29	71a3068c1e86	71a3068c1e86	4	6c3b6bdc65c6	\N	\N	\N
2988	29	71a30627f46f	71a30627f46f	4	6c3b6bd58129	\N	\N	\N
2989	29	71a3063f4cf4	71a3063f4cf4	4	6c3b6bd75059	\N	\N	\N
2990	29	71a306372ba2	71a306372ba2	4	6c3b6bd7e541	\N	\N	\N
2991	29	71a3068596de	71a3068596de	4	6c3b6bdc5dc8	\N	\N	\N
2992	29	71b9060ac6a1	71b9060ac6a1	4	6c3b6bae84b4	\N	\N	\N
2993	29	71a306e17c51	71a306e17c51	4	6c3b6bdc6632	\N	\N	\N
2994	29	71a306934821	71A306934821	4	6C3B6BD75203	\N	\N	\N
2995	29	71a30640e713	71A30640E713	4	6C3B6BD7E589	\N	\N	\N
2996	29	71a306f6b709	71A306F6B709	4	6C3B6BDC60DA	\N	\N	\N
2997	29	71b00614642a	71b00614642a	4	6C3B6B86EE1B	\N	\N	\N
2998	22	802aa8f1a6a8	802AA8F1A6A8	1	802AA8F1A6A8	\N	\N	\N
2999	15	6872515c1728	6872515c1728	2	6872515c1728	\N	\N	\N
3000	15	6872515c3c69	6872515c3c69	2	6872515c3c69	\N	\N	\N
3001	15	687251307db9	687251307db9	3	687251307db9	1	\N	\N
3002	15	6872515c22ca	6872515c22ca	2	6872515c22ca	1	\N	\N
3003	3	f09fc250244a	F09FC250244A	1	F09FC250244A	\N	\N	\N
3004	29	71a306ba9b5e	71a306ba9b5e	4	6c3b6bd590e3	\N	\N	\N
3005	29	71a306df4d97	71a306df4d97	4	6c3b6bd590f5	\N	\N	\N
3006	29	71a30692107d	71a30692107d	4	6c3b6bd7617b	\N	\N	\N
3007	45	un-a24-k126	UN-A24-K126	3		4	\N	jass.manasyan@gmail.com
3009	28	ftx1538b0nt	ftx1538b0nt	3	708105926f24	4	\N	vahram@hf.am
3010	45	un-a24-k-127	UN-A24-K-127	3		4	\N	jass.manasyan@gmail.com
3011	29	71b9063cf9d2	71b9063cf9d2	4	6c3b6bae8610	\N	\N	\N
3012	29	71a3067633a2	71a3067633a2	4	6c3b6bd7f189	\N	\N	\N
3013	29	71a30636e9b2	71a30636e9b2	4	6c3b6bd58dbf	\N	\N	\N
3014	28	ftx1538b0pw	ftx1538b0pw	3	7081059272bc	4	\N	vahram@hf.am
3015	28	ftx1538b0vy	ftx1538b0vy	3	708105926f9c	4	\N	vahram@hf.am
3016	27	fcz1231z0p5	fcz1231z0p5	3	002155ff4c47	4	\N	vahram@hf.am
3017	45	un-a24-k-128	UN-A24-K-128	3		4	\N	jass.manasyan@gmail.com
3018	31	23210268661	23210268661	3	0023d301f233	4	\N	vahram@hf.am
3019	45	un-a24-k-129	UN-A24-K-129	3		4	\N	jass.manasyan@gmail.com
3020	31	23210456329	23210456329	3	0023d301f53b	4	\N	vahram@hf.am
3021	45	un-a24-k-130	UN-A24-K-130	3		4	\N	jass.manasyan@gmail.com
3022	31	23210456396	23210456396	3	0023d301f5c1	4	\N	vahram@hf.am
3023	45	un-a24-k-131	UN-A24-K-131	3		4	\N	jass.manasyan@gmail.com
3024	28	ftx1538b0qq	FTX1538B0QQ	3	708105926F98	4	\N	vahram@hf.am
3025	45	un-a24-k-132	UN-A24-K-132	3		4	\N	jass.manasyan@gmail.com
3026	28	ftx1538b0sp	FTX1538B0SP	3	708105926FAC	4	\N	vahram@hf.am
3028	28	ftx1538b0st	FTX1538B0ST	3	708105927162	4	\N	vahram@hf.am
3029	28	ftx1538b0u2	FTX1538B0U2	3	708105927394	4	\N	vahram@hf.am
3030	28	ftx1538b0w7	FTX1538B0W7	3	708105927206	4	\N	vahram@hf.am
3031	28	ftx1538b0we	FTX1538B0WE	3	7081059270E4	4	\N	vahram@hf.am
3032	45	un-a24-k-133	UN-A24-K-133	3		1	\N	jass.manasyan@gmail.com
3033	45	un-a24-k-135	UN-A24-K-135	3		4	\N	jass.manasyan@gmail.com
3034	45	un-a24-k-134	UN-A24-K-134	3		4	\N	jass.manasyan@gmail.com
3035	28	ftx1538b0tu	FTX1538B0TU	3	7081059273F2	4	\N	vahram@hf.am
3036	28	ftx1538b0ch	FTX1538B0CH	3	70810592752C	4	\N	vahram@hf.am
3037	28	ftx1538b0wg	FTX1538B0WG	3	708105926FC0	4	\N	vahram@hf.am
3038	45	un-a24-k-136	UN-A24-K-136	3		4	\N	jass.manasyan@gmail.com
3039	28	ftx1538b0xs	FTX1538B0XS	3	708105927328	4	\N	vahram@hf.am
3040	45	un-a24-k-137	UN-A24-K-137	3		1	\N	jass.manasyan@gmail.com
3041	28	ftx1538b0c0	FTX1538B0C0	3	70810592756C	4	\N	vahram@hf.am
3042	45	un-a24-k-138	UN-A24-K-138	3		4	\N	jass.manasyan@gmail.com
3043	6	68725186a7eb	68725186A7EB	1	68725186A7EB	\N	\N	\N
3044	6	68725186a9ec	68725186A9EC	1	68725186A9EC	1	\N	jass.manasyan@gmail.com
3045	6	68725186a6cd	68725186A6CD	1	68725186A6CD	\N	\N	\N
3047	6	68725186a867	68725186A867	1	68725186A867	\N	\N	\N
3048	6	68725186aa67	68725186AA67	1	68725186AA67	1	\N	hasmik@hf.am
3049	6	68725186a784	68725186A784	1	68725186A784	\N	\N	\N
3050	6	68725186a88f	68725186A88F	1	68725186A88F	\N	\N	\N
3051	6	68725186a6ca	68725186A6CA	1	68725186A6CA	\N	\N	\N
3052	6	68725186a655	68725186A655	1	68725186A655	1	\N	jass.manasyan@gmail.com
3046	6	68725186a786	68725186A786	1	68725186A786	1	\N	hasmik@hf.am
3054	3	f09fc28ae36b	F09FC28AE36B	1	F09FC28AE36B	1	\N	hasmik@hf.am
3055	3	f09fc28ae36d	F09FC28AE36D	1	F09FC28AE36D	1	\N	hasmik@hf.am
3056	3	f09fc28ae11f	F09FC28AE11F	1	F09FC28AE11F	1	\N	hasmik@hf.am
3057	3	f09fc28ae097	F09FC28AE097	1	F09FC28AE097	1	\N	hasmik@hf.am
3058	3	f09fc28adffb	F09FC28ADFFB	1	F09FC28ADFFB	\N	\N	\N
3059	3	f09fc28ae04b	F09FC28AE04B	1	F09FC28AE04B	1	\N	jass.manasyan@gmail.com
3060	3	f09fc28adff7	F09FC28ADFF7	1	F09FC28ADFF7	1	\N	hasmik@hf.am
3061	3	f09fc28add46	F09FC28ADD46	1	F09FC28ADD46	\N	\N	\N
3062	3	f09fc28add47	F09FC28ADD47	1	F09FC28ADD47	\N	\N	\N
3063	3	f09fc28add3e	F09FC28ADD3E	1	F09FC28ADD3E	\N	\N	\N
3064	3	f09fc28ae033	F09FC28AE033	1	F09FC28AE033	\N	\N	\N
3065	3	f09fc28add41	F09FC28ADD41	1	F09FC28ADD41	\N	\N	\N
3066	3	f09fc28adfe3	F09FC28ADFE3	1	F09FC28ADFE3	\N	\N	\N
3067	3	f09fc28ae02c	F09FC28AE02C	1	F09FC28AE02C	\N	\N	\N
3068	3	f09fc28ae2b2	F09FC28AE2B2	1	F09FC28AE2B2	\N	\N	\N
3069	3	f09fc28ae3b0	F09FC28AE3B0	1	F09FC28AE3B0	\N	\N	\N
3070	3	f09fc28ae368	F09FC28AE368	1	F09FC28AE368	\N	\N	\N
3071	3	f09fc28ad4fc	F09FC28AD4FC	1	F09FC28AD4FC	\N	\N	\N
3072	3	f09fc28ae11e	F09FC28AE11E	1	F09FC28AE11E	\N	\N	\N
3073	52	am2a49181	AM2A49181	1	AM2A49181	\N	\N	\N
3074	52	am2a49182	AM2A49182	1	AM2A49182	\N	\N	\N
3075	52	am2a49179	AM2A49179	1	AM2A49179	\N	\N	\N
3076	52	am2a49180	AM2A49180	1	AM2A49180	\N	\N	\N
3078	52	am2a49204	AM2A49204	1	AM2A49204	1	\N	hasmik@hf.am
3079	52	am2a49205	AM2A49205	1	AM2A49205	1	\N	jass.manasyan@gmail.com
3080	52	am2a49206	AM2A49206	1	AM2A49206	1	\N	jass.manasyan@gmail.com
3081	1	802aa8f8750e	802aa8f8750e	1	802aa8f8750e	\N	\N	\N
3082	37	qs082d1015997	qs082d1015997	5		1	\N	vahram@hf.am
3083	28	ftx1539b03k	ftx1539b03k	3	7081059260b6	1	\N	jass.manasyan@gmail.com
3084	45	un-a24-k-139	UN-A24-K-139	3		4	\N	jass.manasyan@gmail.com
3085	49	un-a15-k-008	UN-A15-K-008	3		1	\N	vahram@hf.am
3086	29	71a3062abfce	71a3062abfce	4	6c3b6bd75bc9	\N	\N	\N
3087	29	71a306405041	71a306405041	4	6c3b6bd75be7	\N	\N	\N
3088	29	71a306a12841	71a306a12841	4	6c3b6bda161c	\N	\N	\N
3089	29	71a306bcec9c	71a306bcec9c	4	6c3b6bd75b99	\N	\N	\N
3090	29	71a3061a5c2f	71a3061a5c2f	4	6c3b6bdc6650	\N	\N	\N
3091	29	71a306dd22aa	71a306dd22aa	4	6c3b6bda122c	\N	\N	\N
3092	29	71b906250b83	055261511	4	6c3b6bae5416	\N	\N	\N
3093	29	71a3062c0038	71a3062c0038	4	6c3b6bd5819b	\N	\N	\N
3094	29	71a306cb5c5a	71a306cb5c5a	4	6c3b6bdc5f9c	\N	\N	\N
3095	29	71b90601f30a	71b90601f30a	4	6c3b6b86ed1f	\N	\N	\N
3096	29	71a306a61984	71a306a61984	4	6c3b6bd5bcc3	\N	\N	\N
3097	29	71a306da05ea	71a306da05ea	4	6c3b6bdc66ce	\N	\N	\N
3098	29	71a306da1481	71a306da1481	4	6c3b6bd7f45f	\N	\N	\N
3099	29	71a306acaa9c	71a306acaa9c	4	6c3b6bd75eab	\N	\N	\N
3100	29	71a306ab3c3f	71a306ab3c3f	4	6c3b6bd75eb7	\N	\N	\N
3101	29	71b906e62d87	71b906e62d87	4	6c3b6bae823e	\N	\N	\N
3102	29	71b906a5a1cb	71b906a5a1cb	4	6c3b6bae8232	\N	\N	\N
3103	29	71a3069c78f1	71a3069c78f1	4	6c3b6bdc5da4	\N	\N	\N
3104	29	71a306ed4b24	71a306ed4b24	4	6c3b6bd765dd	\N	\N	\N
3105	29	71a30685d2b3	71a30685d2b3	4	6c3b6bdc680c	\N	\N	\N
3106	29	71b90678db30	71b90678db30	4	6c3b6bae824a	\N	\N	\N
3107	29	71b906bd23c3	71b906bd23c3	4	6c3b6bafb1e6	\N	\N	\N
3108	33	11893905621	11893905621	3		\N	\N	\N
3109	24	ftx1539u073	ftx1539u073	3	7081053a7976	4	\N	vahram@hf.am
3110	48	un-ao15-k-107	UN-AO15-K-107	3		4	\N	jass.manasyan@gmail.com
3111	29	71a306449ed1	71a306449ed1	4	6c3b6bd761b1	\N	\N	\N
3112	29	71a306c9ee57	71a306c9ee57	3	6c3b6bda1bbc	\N	\N	\N
3113	29	71b90605c06f	71b90605c06f	3	6c3b6bae516a	\N	\N	\N
3114	29	71a306989507	71a306989507	4	6c3b6bd7f129	\N	\N	\N
3115	29	71a306359c88	71a306359c88	4	6c3b6bdc675e	\N	\N	\N
3116	29	71a306cb09cc	71a306cb09cc	4	6c3b6bdc699e	\N	\N	\N
3117	29	71a306fbd2a7	71a306fbd2a7	4	6c3b6bd7f459	\N	\N	\N
3118	29	71a3060b79e8	71a3060b79e8	4	6c3b6bd75bcf	\N	\N	\N
3119	29	71a3067dc7f5	71a3067dc7f5	4	6c3b6bd7f13b	\N	\N	\N
3120	29	71a30610a5b2	71a30610a5b2	4	6c3b6bdc6398	\N	\N	\N
3121	29	71a3069d035b	71a3069d035b	4	6c3b6bdc6950	\N	\N	\N
3122	29	71a3068f02cf	71a3068f02cf	4	6c3b6bd75f0b	\N	\N	\N
3123	29	71a3061840c5	71a3061840c5	4	6c3b6bd5815f	\N	\N	\N
3124	29	71b906707ed5	71b906707ed5	4	6c3b6bae826e	\N	\N	\N
3125	29	71b906715d6c	71b906715d6c	4	6c3b6bae5134	\N	\N	\N
3126	29	71a306ad16a2	71a306ad16a2	4	6c3b6bda1a6c	\N	\N	\N
3127	29	71a3062e715e	71a3062e715e	4	6c3b6bd7619f	1	\N	jass.manasyan@gmail.com
3128	29	71b906e70e3e		4	6c3b6bae5164	\N	\N	\N
3129	29	71a3064c1154	71a3064c1154	4	6c3b6bdc6986	\N	\N	\N
3131	29	71a30659978f	71a30659978f	4	6c3b6bdc5944	\N	\N	\N
3132	29	71a306c6b243	71a306c6b243	4	6c3b6bd5935f	\N	\N	\N
3133	29	71a3063b45f0	71a3063b45f0	4	6c3b6bda1a3c	\N	\N	\N
3134	29	71a306fb1c35	71a306fb1c35	4	6c3b6bda1aa2	\N	\N	\N
3135	29	71a30663e07f	71a30663e07f	4	6c3b6bdc561e	\N	\N	\N
3137	29	71a3065aa411	71A3065AA411	4	6C3B6BDA0FC2	\N	\N	\N
3138	29	71a30661c9e6	71a30661c9e6	4	6c3b6bdc58a0	\N	\N	\N
3130	29	71a3066dfd12	71a3066dfd12	4	6c3b6bd76193	2	\N	hasmik@hf.am
3136	29	71a3060a1a2f	71a3060a1a2f	4	6c3b6bdc6362	2	\N	hasmik@hf.am
3139	29	71a3069c2a19	71A3069C2A19	4	6C3B6BD5865D	\N	\N	\N
3140	29	71a30671fa07	71a30671fa07	4	6c3b6bdc56c0	\N	\N	\N
3141	29	71a306ab5225	71a306ab5225	4	6c3b6bd75623	\N	\N	\N
3142	29	71a306e20d94	71a306e20d94	4	6c3b6bdc5bf4	\N	\N	\N
3143	25	ftx08t4k02p	ftx08t4k02p	3	000f8f28b881	4	\N	vahram@hf.am
3144	28	ftx1340b100	ftx1340b100	3	00260b4d16b6	4	\N	vahram@hf.am
3145	45	un-a24-k-140	UN-A24-K-140	3		4	\N	jass.manasyan@gmail.com
3146	29	71a3060d09c4	71a3060d09c4	4	6c3b6bd7ec19	\N	\N	\N
3147	48	un-ao15-k-108	UN-AO15-K-108	3		4	\N	jass.manasyan@gmail.com
3148	29	71a30694dd14	71a30694dd14	4	6c3b6bdc5d80	\N	\N	\N
3149	47	ant5	ant5	3		1	\N	jass.manasyan@gmail.com
3150	29	71a30683ae2e	71a30683ae2e	4	6c3b6bda154a	\N	\N	\N
3151	29	71a30637a394	71a30637a394	4	6c3b6bd587dd	\N	\N	\N
3152	29	71a3067fb8eb	71a3067fb8eb	4	6c3b6bdc620c	\N	\N	\N
3153	29	71a306042d22	71a306042d22	4	6c3b6bdc5cfc	\N	\N	\N
3154	29	71a306fb6f72	71a306fb6f72	4	6c3b6bd7ee23	\N	\N	\N
3155	29	71a306742fd8	71a306742fd8	4	6c3b6bd587d1	\N	\N	\N
3156	29	71a306b7e875	71a306b7e875	4	6c3b6bd7ea5d	\N	\N	\N
3157	29	71a306deeb9d	71a306deeb9d	4	6c3b6bd7f09f	\N	\N	\N
3158	29	71a3067e2b92	71a3067e2b92	4	6c3b6bd7ebd7	\N	\N	\N
3159	29	71a306868916	71a306868916	3	6c3b6bd75dd9	\N	\N	\N
3160	29	71a306b3eabe	71a306b3eabe	4	6c3b6bd58753	\N	\N	\N
3161	29	71a3065b05f5	71a3065b05f5	4	6c3b6bda1304	\N	\N	\N
3162	29	71a3069aa7e2	71a3069aa7e2	4	6c3b6bd75845	\N	\N	\N
3163	29	71a306b1c327	71a306b1c327	4	6c3b6bd589ed	\N	\N	\N
3164	29	71b9062c9c24	71b9062c9c24	4	6c3b6bae84ae	\N	\N	\N
3165	29	71a30639f302	71a30639f302	4	6c3b6bd58a0b	\N	\N	\N
3166	29	71a3063bf404	71a3063bf404	4	6c3b6bd75b81	\N	\N	\N
3167	29	71a30662bba2	71a30662bba2	4	6c3b6bdc5fba	\N	\N	\N
3168	29	71a30699e42a	71a30699e42a	4	6c3b6bd761c9	\N	\N	\N
3169	29	71a30628cd29	71a30628cd29	4	6c3b6bd58111	\N	\N	\N
3170	29	71a306760709	71a306760709	4	6c3b6bda0a10	\N	\N	\N
3171	29	71a036be9e7b	71a036be9e7b	4	6c3b6bd58141	\N	\N	\N
3172	29	71a3061a4aaa	71a3061a4aaa	4	6c3b6bd5886d	\N	\N	\N
3173	29	71b906a8fb7d	71b906a8fb7d	4	6c3b6bae5200	\N	\N	\N
3174	29	71a30686e71b	71a30686e71b	4	6c3b6bdc600e	\N	\N	\N
3175	29	71a3063d3f5b	71a3063d3f5b	4	6c3b6bda09fe	\N	\N	\N
3176	29	71a306839c23	71a306839c23	4	6c3b6bda1100	\N	\N	\N
3177	29	71a306097a11	71a306097a11	4	6c3b6bdc5d62	\N	\N	\N
3178	29	71a306b63b9e	71a306b63b9e	4	6c3b6bd58165	\N	\N	\N
3179	24	ftx1549u04g	ftx1549u04g	3	649ef301028a	4	\N	vahram@hf.am
3180	48	un-ao15-k-109	UN-AO15-K-109	3		4	\N	jass.manasyan@gmail.com
3181	29	71b90633f299	71b90633f299	4	6c3b6bae8262	\N	\N	\N
3182	29	71a306468ae5	71a306468ae5	4	6c3b6bda0a5e	\N	\N	\N
3183	29	71a306e26a0f	71a306e26a0f	4	6c3b6bdc69bc	\N	\N	\N
3184	29	71a306039688	71a306039688	4	6c3b6bd58c4b	\N	\N	\N
3185	29	71b906b9b0b7	71b906b9b0b7	4	6c3b6bae5248	\N	\N	\N
3187	29	71b906e24a1e	71b906e24a1e	4	6c3b6ba364db	\N	\N	\N
3188	29	71a30602aea1	71a30602aea1	4	6c3b6bd7f1d7	\N	\N	\N
3189	29	71a306eeffbc	71a306eeffbc	4	6c3b6bd5918b	\N	\N	\N
3190	29	71a306ccfb62	71a306ccfb62	4	6c3b6bd75455	\N	\N	\N
3191	29	71a3067a163d	71a3067a163d	4	6c3b6bd75a2b	\N	\N	\N
3192	29	71a306463196	71a306463196	4	6c3b6bd7eff7	\N	\N	\N
3193	29	71a306bba499	71a306bba499	4	6c3b6bd591d3	\N	\N	\N
3194	29	71b9065cabdb	71b9065cabdb	4	6c3b6bafb2b8	\N	\N	\N
3195	54	un-a26-k-001	UN-A26-K-001	3		\N	\N	\N
3196	54	un-a26-k-002	UN-A26-K-002	3		\N	\N	\N
3198	29	71b9061ebe41	71b9061ebe41	4	6c3b6b86ec5f	\N	\N	\N
3199	29	71b906efabdb	71b906efabdb	4	6c3b6bae5140	\N	\N	\N
3200	29	71b9067451ce	71b9067451ce	4	6c3b6b86ec71	\N	\N	\N
3201	29	71a3065078dc	71a3065078dc	4	6c3b6bd7f255	\N	\N	\N
3204	32	2147645004160	2147645004160	3		1	\N	\N
3205	29	71b906b15ccc	71b906b15ccc	4	6c3b6bafb28e	\N	\N	\N
3206	29	71a30685f8d3	71a30685f8d3	4	6c3b6bd7601f	\N	\N	\N
3207	29	71b9068485e7	71b9068485e7	4	6c3b6b86eca1	\N	\N	\N
3208	29	71a30629918a	71a30629918a	4	6c3b6bdc654e	\N	\N	\N
3209	25	fhk0722k3l2	fhk0722k3l2	3	000d28f0de1a	\N	\N	\N
3210	27	fcz1231z0tx	fcz1231z0tx	3	002155ff4b9f	4	\N	vahram@hf.am
3211	28	ftx1538b0cf	ftx1538b0cf	3	708105927530	4	\N	vahram@hf.am
3212	45	un-a24-k-141	UN-A24-K-141	3		\N	\N	\N
3213	45	un-a24-k-142	UN-A24-K-142	3		4	\N	jass.manasyan@gmail.com
3214	28	ftx1539b01d	ftx1539b01d	3	708105926f4a	4	\N	vahram@hf.am
3215	27	fcz1231z0ns	fcz1231z0ns	3	002155ff4b92	4	\N	vahram@hf.am
3217	27	fcz1231z0s4	fcz1231z0s4	3	002155ff455d	4	\N	vahram@hf.am
3218	24	ftx1539u07q	ftx1539u07q	3	7081053a7944	4	\N	vahram@hf.am
3219	29	71a3061d9c8c	71a3061d9c8c	4	6c3b6bd75fd1	\N	\N	\N
3220	27	fcz1231z0qs	fcz1231z0qs	3	002155ff46e4	4	\N	vahram@hf.am
3221	29	71a3065e5dab	71a3065e5dab	4	6c3b6bd7f4d1	\N	\N	\N
3222	29	71b90626deca	71b90626deca	4	6c3b6ba364cf	\N	\N	\N
3223	29	71a3066b0167	71a3066b0167	4	6c3b6bd7f2a9	\N	\N	\N
3224	27	fcz1231z0ul	fcz1231z0ul	3	002155ff4c16	4	\N	vahram@hf.am
3225	27	fcz1231z0t7	fcz1231z0t7	3	002155ff4c57	4	\N	vahram@hf.am
3226	29	71a3063c5aaa	71a3063c5aaa	4	6c3b6bd75fd7	\N	\N	\N
3227	29	71a30674f75f	71a30674f75f	4	6c3b6bda1640	\N	\N	\N
3228	11	68725120dd74	68725120dd74	3	68725120dd74	\N	\N	\N
3229	29	71a306f3a82b	71a306f3a82b	4	6c3b6bda1940	\N	\N	\N
3230	29	71a306658fd0	71a306658fd0	4	6c3b6bd5913d	\N	\N	\N
3231	29	71a306316394	71a306316394	4	6c3b6bdc639e	\N	\N	\N
3232	29	71b9061d0df9	71b9061d0df9	4	6c3b6bae825c	\N	\N	\N
3234	29	71b906086928	71b906086928	4	6c3b6b86ec06	\N	\N	\N
3235	29	71a30690a867	71a30690a867	4	6c3b6bda1328	\N	\N	\N
3236	29	71b906be2c14	71b906be2c14	4	6c3b6bae5254	\N	\N	\N
3237	29	71b906c6f790	71b906c6f790	4	6c3b6bae8484	\N	\N	\N
3238	29	71b90631bf1a	71b90631bf1a	4	6c3b6bae8448	\N	\N	\N
3239	29	71a306912c43	71a306912c43	4	6c3b6bdc66e6	\N	\N	\N
3240	29	71a30688d016	71a30688d016	4	6c3b6bdc65f90	\N	\N	\N
3241	29	71a306021374	71a306021374	4	6c3b6bd7ebad	\N	\N	\N
3242	29	71a306c42b66	71a306c42b66	3	6c3b6bd75f23	\N	\N	\N
3243	29	71a3064c6283	71a3064c6283	4	6c3b6bda0c50	\N	\N	\N
3244	29	71a306e4c37c	71a306e4c37c	4	6c3b6bd75dd3	\N	\N	\N
3245	29	71b906face96	71b906face96	4	6c3b6bd7f2e5	\N	\N	jass.manasyan@gmail.com
3246	29	71a30635528a	71a30635528a	4	6c3b6bda18f2	\N	\N	\N
3247	29	71a30696a18b	71a30696a18b	4	6c3b6bd7f46b	\N	\N	\N
3248	29	71b9068ff457	71b9068ff457	4	6c3b6bafb449	\N	\N	\N
3249	29	71b906caf889	71b906caf889	4	6c3b6b	\N	\N	\N
3250	29	71a306bca619	71a306bca619	4	6c3b6bd58c39	\N	\N	\N
3251	29	71a30684117b	71a30684117b	4	6c3b6bda12da	\N	\N	\N
3252	29	71a3060a65d9	71a3060a65d9	4	6c3b6bd75d73	\N	\N	\N
3253	29	71a3067af1de	71a3067af1de	4	6c3b6bda1748	\N	\N	\N
3254	29	71a30672543b	71a30672543b	4	6c3b6bda176c	\N	\N	\N
3255	29	71a3061e2b95	71a3061e2b95	4	6c3b6bd5915b	\N	\N	\N
3256	29	71b90640f339	71b90640f339	4	6c3b6bae8220	\N	\N	\N
3257	29	71a3069ecafc	71a3069ecafc	4	6c3b6bda1ab4	\N	\N	\N
3258	29	71a3062c51c1		4	6c3b6bd7f1e9	\N	\N	\N
3259	29	71b90668b343	71b90668b343	4	6c3b6bae5158	\N	\N	\N
3260	29	71b906497565	71b906497565	4	6c3b6bae515e	\N	\N	\N
3261	29	71a306ae17a1	71a306ae17a1	4		\N	\N	\N
3262	29	71a3068edc4d	71a3068edc4d	4	6c3b6bd7ec8b	\N	\N	\N
3263	29	71a3069a4001	71a3069a4001	4	6c3b6bda1526	\N	\N	\N
3264	29	71a306ff1f26	71a306ff1f26	4	6c3b6bdc6584	\N	\N	\N
3265	29	71a306cb23ac	71a306cb23ac	4	6c3b6bd7618d	2	\N	\N
3266	29	71a306f26b73	71a306f26b73	4	6c3b6bd7f2c1	\N	\N	\N
3267	29	71a30645cf1b	71a30645cf1b	4	6c3b6bdc5d56	\N	\N	\N
3268	29	71a306c62109	71a306c62109	4	6c3b6bd75616	\N	\N	\N
3269	29	71b9060edbb7	71b9060edbb7	4	6c3b6b86eee1	\N	\N	\N
3270	29	71a306f3dc82	71a306f3dc82	4	6c3b6bd5916d	\N	\N	\N
3271	29	71a3067446ab	71a3067446ab	4	6c3b6bd757fd	\N	\N	\N
3272	29	71b9062a32c5	71b9062a32c5	4	6c3b6bae542e	\N	\N	\N
3273	29	71b906bed260	71b906bed260	4	6c3b6b86eeab	\N	\N	\N
3274	29	71b906de080b	71b906de080b	4	6c3b6bae53f8	\N	\N	\N
3275	29	71a3064b02bf	71a3064b02bf	4	6c3b6bd7e6fd	\N	\N	\N
3276	29	71b906732f67	71b906732f67	4	6c3b6bae82f8	\N	\N	\N
3277	29	71a3062880bb	71a3062880bb	4	6c3b6bdc63f2	\N	\N	\N
3278	29	71a30681f5c4	71a30681f5c4	4	6c3b6bd7f108	\N	\N	\N
3279	29	71a306a032d6	71a306a032d6	4	6c3b6bd7ef73	\N	\N	\N
3280	29	71a306d7e872	71a306d7e872	4	6c3b6bd590d1	2	\N	vahram@hf.am
3281	29	71a30638ff80	71a30638ff80	4	6c3b6bda0c0e	\N	\N	\N
3282	29	71a3061c37ef	71a3061c37ef	4	6c3b6bd7e703	\N	\N	\N
3283	29	71a306f68f13	71a306f68f13	4	6c3b6bd751d3	\N	\N	\N
3284	29	71a306642634	71a306642634	4	6c3b6bd890f8	\N	\N	\N
3285	29	71a306d4b626	71a306d4b626	4	6c3b6bd7eceb	\N	\N	\N
3286	29	71a306aa1803	71a306aa1803	4	6c3b6bd75c41	\N	\N	\N
3287	29	71a306f6df85	71a306f6df85	4	6c3b6bd75c05	\N	\N	\N
3288	29	71a30613e5fb	71a30613e5fb	4	6c3b6bdc60c8	\N	\N	\N
3289	29	71a306503587	71a306503587	4	6c3b6bd75959	\N	\N	\N
3290	29	71a30634ef33	71a30634ef33	4	6c3b6bd58cb7	\N	\N	jass.manasyan@gmail.com
3291	29	71a3068e4296	71a3068e4296	4	6c3b6bd7f17d	\N	\N	\N
3292	29	6c3b6bd75af1	6c3b6bd75af1	4	6c3b6bd75af1	\N	\N	\N
3293	29	71a3061811d4	71a3061811d4	4		\N	\N	\N
3294	29	71a306ccc3e5	71a306ccc3e5	4	6c3b6bd7f410	\N	\N	\N
3295	13	002722ee802e	002722ee802e	3	002722ee802e	4	\N	vahram@hf.am
3296	13	dc9fdb500671	dc9fdb500671	3	dc9fdb500671	4	\N	vahram@hf.am
3297	29	71a3063bbe81	71a3063bbe81	4	6c3b6bd58c21	\N	\N	\N
3298	29	71a306f714c6	71a306f714c6	4	6c3b6bda1268	\N	\N	\N
3299	29	71a3062251e1	71a3062251e1	4	6c3b6bd756a5	\N	\N	\N
3300	26	ftx0841j4h5	ftx0841j4h5	3		1	\N	hasmik@hf.am
3301	45	un-a24-k-143	un-a24-k-143	3		1	\N	hasmik@hf.am
3302	29	71a30641999e	71a30641999e	4	6c3b6bda1472	\N	\N	\N
3303	29	71a306e3a9c7	71a306e3a9c7	4	6c3b6bda136a	\N	\N	\N
3304	29	71a306215462	71a306215462	4	6c3b6bd754c2	\N	\N	\N
3305	11	68725142116c	68725142116c	3	68725142116c	\N	\N	\N
3306	29	71a306fc55c6	71a306fc55c6	4	6c3b6bd58e55	\N	\N	\N
3307	29	71a306cdcf22	71a306cdcf22	4	6c3b6bd7f171	\N	\N	\N
3308	29	71a3061d5d77	71a3061d5d77	4	6c3b6bd75c17	\N	\N	\N
3309	29	71a3064a46c4	71a3064a46c4	4	6c3b6bdc60a4	\N	\N	\N
3310	29	71a306ec0844	71a306ec0844	4	6c3b6bd7f177	\N	\N	\N
3311	29	71a3062d234d	71a3062d234d	4	6c3b6bd756d5	\N	\N	\N
3312	29	71a3061a00d7	71a3061a00d7	4	6c3b6bdc63bc	\N	\N	\N
3313	45	un-a24-k-144	un-a24-k-144	3		1	\N	vahram@hf.am
3314	29	71b9061ef6c3	71b9061ef6c3	4	6c3b6ba364a5	\N	\N	\N
3315	29	71b906758186	71b906758186	4	6c3b6bae5278	\N	\N	\N
3316	29	71b906fbecb3	71b906fbecb3	4	6c3b6b86ec4d	\N	\N	\N
3317	29	71b906a72db4	71b906a72db4	4	6c3b6b86ed01	\N	\N	\N
3318	29	71b90685f2a2	71b90685f2a2	4	6c3b6ba3656b	\N	\N	\N
3319	29	71b90677a66d	71b90677a66d	4	6c3b6bafb33c	\N	\N	\N
3320	29	71b906a963b7	71b906a963b7	4	6c3b6ba364f3	\N	\N	\N
3321	30	71b906210aeb	71b906210aeb	4	6c3b6b86ec29	\N	\N	\N
3322	29	71b9065ec5ae	71b9065ec5ae	4	6c3b6bafb31e	\N	\N	\N
3323	29	71b9061bae9d	71b9061bae9d	4	6c3b6bae8370	\N	\N	\N
3324	29	71b906d9dd36	71b906d9dd36	4	6c3b6bafb306	\N	\N	\N
3325	29	71a30615ec87	71a30615ec87	4	6c3b6bda16dc	\N	\N	\N
3326	29	71a3063f0b18	71a3063f0b18	4	6c3b6bd75f41	\N	\N	\N
3327	29	71a306a2f01d	71a306a2f01d	4	6c3b6bdc663e	\N	\N	\N
3328	29	71a3062ac0a8	71a3062ac0a8	4	6c3b6bd7f48f	\N	\N	\N
3329	29	71a306535608	71a306535608	4	6c3b6bd75d85	\N	\N	\N
3330	29	71a306437e05	71a306437e05	4	6c3b6bdc6560	\N	\N	\N
3331	11	6872514a4a28	6872514a4a28	3	6872514a4a28	\N	\N	\N
3332	29	71a306315218	71a306315218	4	6c3b6bdc5d08	\N	\N	\N
3333	29	71a3068ee8e6	71a3068ee8e6	4	6c3b6bda1712	\N	\N	\N
3334	28	ftx1538b0vn	ftx1538b0vn	3	708105927048	\N	\N	\N
3335	45	un-a24-k-145	un-a24-k-145	3		\N	\N	\N
3336	29	71a30600d6c1	71a30600d6c1	4	6c3b6bd58f1b	\N	\N	\N
3337	29	71a306fab1f0	71a306fab1f0	4	6c3b6bd7d5a3	\N	\N	\N
3338	31	2321026b266	2321026b266	3	0023d301ef07	\N	\N	\N
3339	29	71a3065b37f8	71a3065b37f8	4	6c3b6bda174e	\N	\N	\N
3340	29	71a30689ec50	71a30689ec50	4	6c3b6bdc647c	\N	\N	\N
3341	29	71a3065ab4a2	71a3065ab4a2	4	6c3b6bd58f7b	\N	\N	\N
3342	29	71a30648aeda	71a30648aeda	4	6c3b6bd58fa5	\N	\N	\N
3343	29	71a306b73b3d	71a306b73b3d	4	6c3b6bd75ca7	\N	\N	\N
3344	29	71a306a559cd	71a306a559cd	4	6c3b6bd58f93	\N	\N	\N
3345	29	71a30661cd19	71a30661cd19	4	6c3b6bd58f87	2	\N	\N
3346	29	71b906c947a8	71b906c947a8	4	6c3b6ba3655f	\N	\N	\N
3347	29	71b90679b117	71b90679b117	4	6c3b6bafb1f2	\N	\N	\N
3348	29	71a306ef7951	71a306ef7951	4	6c3b6bdc5de6	\N	\N	\N
3349	29	71b9062b7691	71b9062b7691	4	6c3b6bafb1b6	\N	\N	\N
3350	15	24a43c74b5c9	24a43c74b5c9	3	24a43c74b5c9	\N	\N	\N
3351	29	71a306a886c8	71a306a886c8	4	6c3b6bd7ec91	\N	\N	\N
3352	29	71b906b11552	71b906b11552	4	6c3b6bae526c	\N	\N	\N
3353	29	71a3061557f4	71a3061557f4	4	6c3b6bd7f375	\N	\N	\N
3354	29	71b90681953b	71b90681953b	4	6c3b6bae838e	\N	\N	\N
3355	29	71b9061bfb7d	71b9061bfb7d	4	6c3b6bafb1f8	\N	\N	\N
3356	29	71b90690c28f	71b90690c28f	4	6c3b6bae51ac	\N	\N	\N
3357	29	71b9063a3d5b	71b9063a3d5b	4	6c3b6bafb1fe	\N	\N	\N
3358	43	150226e1000n01115	150226E1000N01115	3		2	\N	jass.manasyan@gmail.com
3359	29	71a3066558f7	71a3066558f7	4	6c3b6bd761b7	1	\N	\N
3360	29	71a306d400ea	71a306d400ea	4	6c3b6bdc5d1a	1	\N	\N
3361	29	71b9065abf55	71b9065abf55	4	6c3b6b86ef89	1	\N	\N
3362	28	ftx1538b0cw	ftx1538b0cw	3	70810592753c	4	\N	jass.manasyan@gmail.com
3363	45	un-a24-k-146	un-a24-k-146	3		1	\N	jass.manasyan@gmail.com
3364	29	71a306cabfeb	71a306cabfeb	4	6c3b6bda181a	1	\N	\N
3365	29	71a306bfe650	71a306bfe650	4	6c3b6bd58f69	1	\N	\N
3366	29	71a306138bf6	71a306138bf6	4	6c3b6bd75d1f	1	\N	\N
3367	29	71a306b9c6a4	71a306b9c6a4	4	6c3b6bda130a	1	\N	\N
3368	29	71a30611af06	71a30611af06	4	6c3b6bd58b19	2	\N	\N
3369	29	71a3064041ba	71A3064041BA	4	6C3B6BD75821	1	\N	\N
3370	29	71a3066a1dc6	71a3066a1dc6	4	6c3b6bdc6542	1	\N	\N
3371	29	71b906dfd843	71b906dfd843	4	6c3b6b86edf1	1	\N	\N
3372	28	ftx153880vv	ftx153880vv	3	708105927130	1	\N	\N
3373	45	un-a24-k-147	un-a24-k-147	3		1	\N	\N
3374	29	71a306e8d300	71a306e8d300	4	6c3b6bd58e97	1	\N	\N
3375	29	71a306dd8e84	71a306dd8e84	4	6c3b6bda0b90	1	\N	\N
3376	29	71a3060da34c	71a3060da34c	4	6c3b6bda0a76	1	\N	\N
3377	29	71a30660aa21	71a30660aa21	4	6c3b6bd7600d	1	\N	\N
3378	29	71a306ed2638	71a306ed2638	4	6c3b6bd7f381	1	\N	\N
3379	29	71a306503c21	71a306503c21	4	6c3b6bdc56c6	1	\N	\N
3380	29	71b90650653e	71b90650653e	4	6c3b6b86edcd	1	\N	\N
3381	28	ftx1538b0e9	ftx1538b0e9	3	70810592719c	1	\N	\N
3382	45	un-a24-k-148	un-a24-k-148	3		1	\N	\N
3383	28	ftx1538b0cu	ftx1538b0cu	3	708105927534	1	\N	\N
3384	45	un-a24-k-149	un-a24-k-149	3		1	\N	\N
3385	29	71b906df6fa9	71b906df6fa9	4	6c3b6bafb1ec	1	\N	\N
3386	28	ftx1537b07j	ftx1537b07j	3	70810592710e	1	\N	\N
3387	29	71a30688ac61	71A30688AC61	4	6C3B6BD75B5D	1	\N	jass.manasyan@gmail.com
3388	140	12171701103	12171701103	3		2	\N	hasmik@hf.am
3389	29	71a3067869b3	71a3067869b3	4	6c3b6bd7584b	1	\N	\N
3390	29	71a30674e6a4	71a30674e6a4	4	6c3b6bda1586	1	\N	\N
3391	29	71a30600f85e	71a30600f85e	4	6c3b6bd7502f	1	\N	\N
3392	29	71a30680271b	71a30680271B	4	6c3b6bd5844d	1	\N	\N
3393	29	71a306e87247	71a306e87247	4	6c3b6bd74f93	1	\N	\N
3394	29	71a306c75922	71a306c75922	4	6c3b6bd75839	1	\N	\N
3395	29	71a3061fa987	71a3061fa987	4	6c3b6bd58a11	1	\N	\N
3396	29	71a3065491d5	71a3065491d5	4	6c3b6bd589ff	1	\N	\N
3397	29	71a30619b67e	71a30619b67e	4	6c3b6bda1238	1	\N	\N
3398	29	71b9068d1fc5	71b9068d1fc5	4	6c3b6b86edb5	1	\N	\N
3399	29	71b906937cb2	71b906937cb2	4	6c3b6b86ee03	1	\N	\N
3400	29	71b906c362ab	71b906c362ab	4	6c3b6bafb3fc	1	\N	\N
3401	29	71a30626a2db	71a30626a2db	4	6c3b6bd75035	1	\N	\N
3402	29	71a3068ada79	71a3068ada79	4	6c3b6bdc56a2	1	\N	\N
3403	29	71a3061a4dd4	71a3061a4dd4	4	6c3b6bdc6596	1	\N	\N
3404	29	71b906c6907d	71b906c6907d	4	6c3b6bafb246	1	\N	\N
3405	29	71a306e158d9	71a306e158d9	4	6c3b6bd58c45	1	\N	\N
3406	29	71a306696f12	71a306696f12	4	6c3b6bd7f30f	1	\N	\N
3407	29	71a30635542c	71a30635542c	4	6c3b6bd7e721	1	\N	\N
3408	29	71a3068db954	71a3068db954	4	6c3b6bda1784	1	\N	\N
3409	29	71a306421dc2	71a306421dc2	4	6c3b6bd75dcd	1	\N	\N
3410	29	71b90653f570	71b90653f570	4	6c3b6bae8442	1	\N	\N
3411	29	71a306762259	71a306762259	4	6c3b6bd7f24f	2	\N	\N
3412	29	71b906f86d06	71b906f86d06	4	6c3b6bae8604	1	\N	\N
3413	29	71a3062057a8	71a3062057a8	4	6c3b6bd75dc7	1	\N	\N
3414	29	71a306213e78	71a306213e78	4	6c3b6bd75029	1	\N	\N
3415	29	6c3b6bd7e5a1	6c3b6bd7e5a1	4	6c3b6bd7e5a1	1	\N	\N
3416	29	71a306101e51	71a306101e51	4	6c3b6bda1766	1	\N	\N
3417	29	71b906a2ce99	71b906a2ce99	4	6c3b6b86ef7d	1	\N	\N
3418	29	71b9063cac32	71b9063cac32	4	6c3b6bafb498	1	\N	\N
3419	29	71a30667e64b	71a30667e64b	4	6c3b6bd7ec37	1	\N	\N
3420	29	71b906ffce2d	71b906ffce2d	4	6c3b6bae53fe	1	\N	\N
3421	29	71a30645f480	71a30645f480	4	6c3b6bd75683	1	\N	\N
3422	29	71a30627b383	71a30627b383	4	6c3b6bd58e31	1	\N	\N
3423	29	71a3061a695c	71a3061a695c	4	6c3b6bd58fe1	1	\N	\N
3424	29	71a306c19335	71a306c19335	4	6c3b6bd58939	1	\N	\N
3425	29	71b906a0a0ec	71b906a0a0ec	4	6c3b6b86eedb	1	\N	\N
3426	29	71b906c05971	71b906c05971	4	6c3b6bae5404	1	\N	\N
3427	29	71a306793e4f	71a306793e4f	4	6c3b6bda0a28	1	\N	\N
3428	29	71b906ab4540	71b906ab4540	4	6c3b6b86edaf	1	\N	\N
3429	29	71a306a78b25	71a306a78b25	4	6c3b6bda1730	1	\N	\N
3430	29	71b906bf3da0	71b906bf3da0	4	6c3b6bae8544	1	\N	\N
3431	29	71b906fcbb80	71b906fcbb80	4	6c3b6b86edd3	1	\N	\N
3432	29	71a306e51dfe	71a306e51dfe	4	6c3b6bd7ee53	1	\N	\N
3433	29	71b906322f54	71b906322f54	4	6c3b6b86edc7	1	\N	\N
3434	29	71b906fcd601	71b906fcd601	4	6c3b6bafb38a	1	\N	\N
3435	29	71b906f1c8ac	71b906f1c8ac	4	6c3b6bae62f6	1	\N	\N
3436	29	71a3066c9dc4	71a3066c9dc4	4	6c3b6bd7f2b5	1	\N	\N
3437	28	ftx1538b0ek	ftx1538b0ek	3	7081059271ea	1	\N	\N
3438	29	71a3063f4673	71a3063f4673	4	6c3b6bd7f450	1	\N	\N
3439	29	71a3065f7307	71a3065f7307	4	6c3b6bdc6770	1	\N	\N
3440	29	71a3069f6739	71a3069f6739	4	6c3b6bd75db5	1	\N	\N
3441	29	71a306f3535a	71a306f3535a	4	6c3b6bd58f5d	1	\N	\N
3442	29	71a3061bf7dc	71a3061bf7dc	4	6c3b6bd74fd5	1	\N	\N
3443	29	71a306bf4b36	71a306bf4b36	4	6c3b6bda15aa	1	\N	\N
3444	29	71a306a09de9	71a306a09de9	4	6c3b6bdc5d44	1	\N	\N
3445	29	71b906db04a9	71b906db04a9	4	6c3b6b86eebd	1	\N	\N
3446	29	71b90674d429	71b90674d429	4	6c3b6bafb426	1	\N	\N
3447	29	71b906b02a95	71b906b02a95	4	6c3b6bae535c	1	\N	\N
3448	29	71b906472b81	71b906472b81	4	6c3b6bafb372	1	\N	\N
3449	29	71b9060240b2	71b9060240b2	4	6c3b6bae831c	1	\N	\N
3450	29	71a3068d61d3	71a3068d61d3	4	6c3b6bd58615	1	\N	\N
3451	29	71a306cece69	71a306cece69	4	6c3b6bd58195	1	\N	\N
3452	29	71a30686b28d	71a30686b28d	4	6c3b6bdc560c	1	\N	\N
3453	29	71a306e4994a	71a306e4994a	4	6c3b6bda0aca	1	\N	jass.manasyan@gmail.com
3454	29	71b9069a3b12	71b9069a3b12	4	6c3b6bae5464	1	\N	\N
3455	29	71b90669be89	71b90669be89	4	6c3b6bae5422	1	\N	\N
3456	29	71a306cddf49	71a306cddf49	4	6c3b6bdc63e0	1	\N	\N
3457	29	71a3067eb5b1	71a3067eb5b1	4	6c3b6bd7f621	1	\N	\N
3458	29	71a306ca1283	71A306CA1283	4	6C3B6BD582D9	1	\N	jass.manasyan@gmail.com
3459	29	71a306422659	71a306422659	4	6c3b6bdc5618	1	\N	\N
3460	29	6c3b6bd59149	6c3b6bd59149	4	6c3b6bd59149	1	\N	\N
3461	29	71a306f27a18	71a306f27a18	4	6c3b6bdc6050	1	\N	\N
3462	29	71b906e3c32f	71b906e3c32f	4	6c3b6b	1	\N	\N
3463	29	71a30687fc54	71a30687fc54	4	6c3b6bd58b49	1	\N	jass.manasyan@gmail.com
3464	29	71a3068d02b7	71a3068d02b7	4	6c3b6bdc637a	1	\N	jass.manasyan@gmail.com
3465	29	71a306a51348	71a306a51348	4	6c3b6bd75833	1	\N	\N
3466	29	71b906591093	71b906591093	4	6c3b6bae53e0	1	\N	\N
3467	29	71a3065d5de0	71a3065d5de0	4	6c3b6bd58435	1	\N	\N
3468	29	71a3067e0ec2	71a3067e0ec2	4	6c3b6bda1388	1	\N	\N
3469	29	71b906c830ed	71b906c830ed	4	6c3b6b86ec95	1	\N	\N
3470	29	71a3067d6d7d	71a3067d6d7d	4	6c3b6bda1754	1	\N	\N
3471	31	23210564608	23210564608	3		1	\N	\N
3472	29	71a3061ecd3e	71a3061ecd3e	4	6c3b6bd75f47	1	\N	\N
3473	29	71a30626039c	71a30626039c	4	6c3b6bd59131	1	\N	\N
3474	29	71a306038773	71a306038773	4	6c3b6bd58f90	1	\N	\N
3475	29	71a306e5b63e	71a306e5b63e	4	6c3b6bd58b43	1	\N	\N
3476	29	71a30659d063	71a30659d063	4	6c3b6bdc665c	1	\N	\N
3477	29	71a3060b6813	71a3060b6813	4	6c3b6bd75809	1	\N	jass.manasyan@gmail.com
3478	29	71a3060506a9	71a3060506a9	4	6c3b6bda0a52	1	\N	\N
3479	29	71a3065ba5fa	71a3065ba5fa	4	6c3b6bd7517f	1	\N	\N
3480	29	71a306b0fb0e	71a306b0fb0e	4	6c3b6bd7f471	1	\N	\N
3481	13	dc9fdba67aae	dc9fdba67aae	3	dc9fdba67aae	1	\N	\N
3482	29	71a306abfe0b	71a306abfe0b	4	6c3b6bd74f9f	1	\N	\N
3483	29	71a306888580	71a306888580	4	6c3b6bdc6992	1	\N	\N
3484	29	71a3065d0f08	71a3065d0f08	4	6c3b6bdc5fcc	1	\N	\N
3485	29	71b906dbb343	71b906dbb343	4	6c3b6bafb2a0	1	\N	\N
3486	29	71a306bf68c0	71a306bf68c0	4	6c3b6bda1226	1	\N	\N
3487	45	un-a24-k-150	un-a24-k-150	3		1	\N	\N
3488	29	71a306ea57ff	71a306ea57ff	4	6c3b6bda1aea	1	\N	\N
3489	29	71a306e3dc26	71a306e3dc26	4	6c3b6bda1838	1	\N	\N
3490	31	23210456433	23210456433	3		1	\N	\N
3491	29	71b906909aea	71b906909aea	4	6c3b6bafb288	1	\N	\N
3492	29	71a3060fcb0f	71a3060fcb0f	4	6c3b6bdc6554	1	\N	\N
3493	29	71a306e5a0bb	71a306e5a0bb	4	6c3b6bdc657e	1	\N	\N
3494	29	71a306acbb67	71a306acbb67	4	6c3b6bd75d6d	1	\N	\N
3495	29	71b906fc3892	71b906fc3892	4	6c3b6ba364ab	1	\N	\N
3496	29	71a3060fc118	71a3060fc118	4	6c3b6ba364ab	1	\N	\N
3497	29	71a306f4c817	71a306f4c817	4	6c3b6bd7f3ed	1	\N	\N
3498	28	ftx1538b0vl	ftx1538b0VL	3	7081059272c4	1	\N	jass.manasyan@gmail.com
3499	45	un-a24-k-151	un-a24-k-151	3		4	\N	jass.manasyan@gmail.com
3500	28	ftx1539b0tw	ftx1539b0tw	3	708105926de0	1	\N	\N
3501	45	un-a24-k-152	un-a24-k-152	3		1	\N	\N
3502	29	71a306b604fa	71a306b604fa	4	6c3b6bd75d97	1	\N	\N
3503	29	71a306f4eb71	71a306f4eb71	4	6c3b6bdc6536	1	\N	\N
3504	29	71b906296ef2	71b906296ef2	4	6c3b6bae8514	1	\N	\N
3505	29	71a306913e39	71a306913e39	4	6c3b6bdc5ffc	1	\N	\N
3506	29	71a30604694f	71a30604694f	4	6c3b6bdc6938	1	\N	\N
3507	29	71a3067c77ea	71a3067c77ea	4	6c3b6bd7ee3b	1	\N	\N
3508	29	71a306992518	71a306992518	4	6c3b6bd7ee29	1	\N	\N
3509	29	71a306b85dfa	71a306b85dfa	4	6c3b6bdc5fde	2	\N	jass.manasyan@gmail.com
3510	29	71a306387058	71a306387058	4	6c3b6b	1	\N	\N
3511	29	71a3069c609c	71a3069c609c	4	6c3b6bd751fd	1	\N	\N
3512	29	71a3066fcf67	71a3066fcf67	4	6c3b6bdc59a8	1	\N	\N
3513	29	71a30695d0de	71a30695d0de	4	6c3b6bdc58fa	1	\N	\N
3514	29	71a306c14d14	71a306c14d14	4	6c3b6bd7e77b	1	\N	\N
3515	29	71a30631993d	71a30631993d	4	6c3b6bd7e7ab	1	\N	\N
3516	29	71a306ab6028	71a306ab6028	4	6c3b6bd75269	1	\N	\N
3517	29	71a30675754d	71a30675754d	4	6c3b6bda0d0a	1	\N	\N
3518	29	71b906f0d918	71b906f0d918	4	6c3b6bae85e6	1	\N	\N
3519	29	71a306916cd1	71a306916cd1	4	6c3b6bd58405	1	\N	\N
3520	29	71a3068b99c9	71a3068b99c9	4	6c3b6bd7535f	1	\N	\N
3521	29	71a3065860ec	71a3065860ec	4	6c3b6bd7e80b	1	\N	\N
3522	29	71a306e17646	71a306e17646	4	6c3b6bd75371	1	\N	\N
3523	29	71a306cb0eb2	71a306cb0eb2	4	6c3b6bd58465	1	\N	\N
3524	29	71a3065ffc4f	71a3065ffc4f	4	6c3b6bd7e817	1	\N	\N
3525	29	71a30648af92	71a30648af92	4	6c3b6bda0cda	1	\N	\N
3526	29	71a30697bb1c	71a30697bb1c	4	6c3b6bda0d04	1	\N	\N
3527	29	71a306b389da	71a306b389da	4	6c3b6bdc623c	1	\N	\N
3528	29	71a3062bca8c	71a3062bca8c	4	6c3b6bd58d59	1	\N	\N
3529	29	71a3066fe926	71a3066fe926	4	6c3b6bda0a7c	1	\N	\N
3530	29	71a306a413eb	71a306a413eb	4	6c3b6bd585f1	1	\N	\N
3531	29	71b9067f4793	71b9067f4793	4	6c3b6bae8256	1	\N	\N
3532	29	71a306e69f04	71a306e69f04	4	6c3b6bd7583f	1	\N	\N
3533	29	71a30652755d	71a30652755d	4	6c3b6bd587cb	1	\N	\N
3534	29	71a3064e473b	71a3064e473b	4	6c3b6bd75929	1	\N	\N
3535	29	71a306f57fe6	71a306f57fe6	4	6c3b6bd59041	1	\N	\N
3536	29	71a306e336ac	71a306e336ac	4	6c3b6bd58de3	1	\N	\N
3537	29	71a30629a387	71a30629a387	4	6c3b6bdc6104	1	\N	\N
3538	29	71a306168e70	71a306168e70	4	6c3b6bd5917f	1	\N	\N
3539	29	71a306ca49fd	71a306ca49fd	4	6c3b6bd756bf	1	\N	\N
3540	29	71b906f136d8	71b906f136d8	4	6c3b6b86ee09	1	\N	\N
3541	29	71a306fe12ec	71a306fe12ec	4	6c3b6bdc60fe	1	\N	\N
3542	28	ftx1538b0en	ftx1538b0en	3	70810592725e	4	\N	jass.manasyan@gmail.com
3543	45	un-a24-k-153	un-a24-k-153	3		1	\N	jass.manasyan@gmail.com
3544	29	71a30699330d	71a30699330d	4	6c3b6bd59143	1	\N	\N
3545	29	71a306c4196b	71a306c4196b	4	6c3b6bd75869	1	\N	\N
3546	29	71a306b14db7	71a306b14db7	4	6c3b6bda14a2	1	\N	\N
3547	29	71a306280455	71a306280455	4	6c3b6bda1346	1	\N	\N
3548	29	71a306b14b11	71a306b14b11	4	6c3b6b	1	\N	\N
3549	29	71a3062aae35	71a3062aae35	4	6c3b6bd7580f	1	\N	\N
3550	29	71b9060d5a02	71b9060d5a02	4	6c3b6bae84a8	1	\N	\N
3551	29	71a306867f0e	71a306867f0e	4	6c3b6bda137c	1	\N	\N
3552	29	71a306d4750b	71a306d4750b	4	6c3b6bdc5648	1	\N	\N
3553	29	71a306095af6	71a306095af6	4	6c3b6bd7f165	1	\N	\N
3554	29	71a3068e5395	71a3068e5395	4	6c3b6bd7f2bb	1	\N	\N
3555	29	71b906eb66ca	71b906eb66ca	4	6c3b6bae51ca	1	\N	\N
3556	29	71b9061c7625	71b9061c7625	4	6c3b6bafb222	1	\N	\N
3557	29	71b9060204a9	71b9060204a9	4	6c3b6bafb252	1	\N	\N
3558	29	71a306450298	71a306450298	4	6c3b6bda1826	1	\N	\N
3559	29	71b90650c32f	71b90650c32f	4	6c3b6bafb216	1	\N	\N
3560	29	71b906269648	71b906269648	4	6c3b6b86ec35	1	\N	\N
3561	29	71a306a6610c	71a306a6610c	4	6c3b6bd75f26	1	\N	\N
3562	29	71a3066b8951	71a3066b8951	4	6c3b6bd59035	1	\N	\N
3563	29	71a30607c5ba	71a30607c5ba	4	6c3b6bd59137	1	\N	\N
3564	29	71a30699d5a6	71a30699d5a6	4	6c3b6bd75f5f	1	\N	\N
3565	29	71a306e5a33a	71a306e5a33a	4	6c3b6bdc5fa2	1	\N	\N
3566	29	71a306431008	71a306431008	4	6c3b6bd758b7	1	\N	\N
3567	29	71a3065718e0	71a3065718e0	4	6c3b6bda18f8	1	\N	\N
3568	29	71a3064da77d	71a3064da77d	4	6c3b6bda1802	1	\N	\N
3569	29	71a306b0b665	71a306b0b665	4	6c3b6bd75f7d	1	\N	\N
3570	29	71a306351566	71a306351566	4	6c3b6bda17ea	1	\N	\N
3571	29	71a306305cc3	71a306305cc3	4	6c3b6bd7f3f9	1	\N	\N
3572	29	71a306beb0e4	71a306beb0e4	4	6c3b6bd75e75	1	\N	\N
3573	29	71a306c1d980	71a306c1d980	4	6c3b6bd75e99	1	\N	\N
3574	29	71b90627b874	71b90627b874	4	6c3b6b86eec3	1	\N	\N
3575	29	71a306b3cdb7	71a306b3cdb7	4	6c3b6bdc57f8	1	\N	\N
3576	29	71a306bef708	71a306bef708	4	6c3b6bd7516d	1	\N	\N
3577	29	71a30614920a	71a30614920a	4	6c3b6bd7e727	1	\N	\N
3578	29	71a306d5435a	71a306d5435a	4	6c3b6bd758e7	1	\N	\N
3579	29	71a3062174fd	71a3062174fd	4	6c3b6bd58789	1	\N	\N
3580	29	71a3068489fe	71a3068489fe	4	6c3b6bd7f0ff	1	\N	\N
3581	29	71a3068edaeb	71a3068edaeb	4	6c3b6bda1358	1	\N	\N
3582	29	71b906d5f1d9	71b906d5f1d9	4	6c3b6bae82e6	1	\N	\N
3583	29	71a306f828d5	71a306f828d5	4	6c3b6bd591df	1	\N	\N
3584	29	71b906b860ff	71b906b860ff	4	6c3b6b86ec41	1	\N	\N
3585	29	71b906361c31	71b906361c31	4	6c3b6bae51b2	1	\N	\N
3586	29	71a306234be1	71a306234be1	4	6c3b6bdc670a	1	\N	\N
3587	29	71b906a4da17	71b906a4da17	4	6c3b6bafb24c	1	\N	\N
3588	29	71a306272ce8	71a306272ce8	4	6c3b6bda10b8	1	\N	\N
3589	29	71a3064b9b72	71a3064b9b72	4	6c3b6bd587a7	1	\N	\N
3590	29	71b9063df418	71b9063df418	4	6c3b6bae836a	1	\N	\N
3591	29	71a306cb202d	71a306cb202d	4	6c3b6bd75b51	1	\N	\N
3592	29	71b9064188e5	71b9064188e5	4	6c3b6bafb25e	1	jass.manasyan@gmail.com	\N
3593	29	71a3069f3b39	71a3069f3b39	4	6c3b6bdc6428	1	jass.manasyan@gmail.com	\N
3594	29	71a3066a3ea0	71a3066a3ea0	4	6c3b6bd7f399	1	jass.manasyan@gmail.com	\N
3595	29	71a3067a0e50	71a3067a0e50	4	6c3b6bdc5672	1	jass.manasyan@gmail.com	\N
3596	29	71a3061cf55c	71a3061cf55c	4	6c3b6bd7523f	1	jass.manasyan@gmail.com	jass.manasyan@gmail.com
3597	29	71a306a7b860	71a306a7b860	4	6c3b6bd59005	1	jass.manasyan@gmail.com	\N
3598	29	71b9060cecbb	71b9060cecbb	4	6c3b6ba3647b	1	jass.manasyan@gmail.com	\N
3599	29	71a306a9584a	71a306a9584a	4	6c3b6bd75f11	1	jass.manasyan@gmail.com	\N
3600	29	71a30646532a	71a30646532a	4	6c3b6bda18b0	1	jass.manasyan@gmail.com	\N
3601	29	71a30671af91	71a30671af91	4	6c3b6bdc50c2	1	jass.manasyan@gmail.com	\N
3602	29	71a30609c273	71a30609c273	4	6c3b6bda1340	1	jass.manasyan@gmail.com	\N
3603	29	71a306016796	71a306016796	4	6c3b6bda1364	1	jass.manasyan@gmail.com	\N
3604	29	71a306c3c833	71a306c3c833	4	6c3b6bdc612e	1	jass.manasyan@gmail.com	\N
3605	29	71a306469d28	71a306469d28	4	6c3b6bdc671c	1	jass.manasyan@gmail.com	\N
3606	29	71a306040a2b	71a306040a2b	4	6c3b6bd58c57	1	jass.manasyan@gmail.com	\N
3607	29	71a306fa83fb	71a306fa83fb	4	6c3b6bd759e9	1	jass.manasyan@gmail.com	\N
3608	29	71a306ee4269	71a306ee4269	4	6c3b6bd58bf1	1	jass.manasyan@gmail.com	\N
3609	29	71a30638e8dd	71a30638e8dd	4	6c3b6bd7f01b	1	jass.manasyan@gmail.com	\N
3610	29	71a306221a2b	71a306221a2b	4	6c3b6bd75bed	1	jass.manasyan@gmail.com	\N
3611	29	71b9069bd957	71B9069BD957	4	6C3B6B86EE27	1	jass.manasyan@gmail.com	\N
3612	29	71a3069f585b	71a3069f585b	4	6c3b6bd58147	1	jass.manasyan@gmail.com	\N
3613	29	71a306349142	71a306349142	4	6c3b6bdc6224	1	jass.manasyan@gmail.com	\N
3614	29	71a306efe2c5	71a306efe2c5	4	6c3b6bda1448	1	jass.manasyan@gmail.com	\N
3615	29	71a30638e84d	71a30638e84d	4	6c3b6bdc614c	1	jass.manasyan@gmail.com	\N
3616	29	71a306448cab	71a306448cab	4	6c3b6bd758a8	1	jass.manasyan@gmail.com	\N
3617	29	71a306da268c	71a306da268c	4	6c3b6bd7f015	1	jass.manasyan@gmail.com	\N
3618	29	71a306d72d2f	71a306d72d2f	4	6c3b6bd75941	1	jass.manasyan@gmail.com	\N
3619	29	71a306ebd9cc	71a306ebd9cc	4	6c3b6bd75a67	1	jass.manasyan@gmail.com	\N
3620	29	71a306df6f29	71a306df6f29	4	6c3b6bda1906	1	jass.manasyan@gmail.com	\N
3621	29	71a3062a7d7d	71a3062a7d7d	4	6c3b6b67eef5	1	jass.manasyan@gmail.com	\N
3622	29	71a3066724f8	71a3066724f8	4	6c3b6bd7590b	1	jass.manasyan@gmail.com	\N
3623	29	71a3067dd69e	71a3067dd69e	4	6c3b6bdc63aa	1	jass.manasyan@gmail.com	\N
3624	29	71a306b66a67	71a306b66a67	4	6c3b6bd7f117	1	jass.manasyan@gmail.com	\N
3625	29	71a3063e4c57	71a3063e4c57	4	6c3b6bd58d9b	1	jass.manasyan@gmail.com	\N
3626	29	71a306eb0a84	71a306eb0a84	4	6c3b6bd7ec9d	1	jass.manasyan@gmail.com	\N
3627	29	71b906a6f079	71b906a6f079	4	6C3B6BAE82A4	2	jass.manasyan@gmail.com	jass.manasyan@gmail.com
3628	29	71a30694c579	71a30694c579	4	6c3b6bd751d9	1	jass.manasyan@gmail.com	\N
3629	29	71a3065051ad	71a3065051AD	4	6c3b6bd751cd	1	jass.manasyan@gmail.com	\N
3630	29	71a306938a92	71a306938a92	4	6c3b6bd7e73f	1	jass.manasyan@gmail.com	\N
3631	29	71a306a62ac1	71a306a62ac1	4	6c3b6bda0bf6	1	jass.manasyan@gmail.com	\N
3632	29	71b906c71850	71b906c71850	4	6c3b6b86ef6b	2	jass.manasyan@gmail.com	jass.manasyan@gmail.com
3633	29	71a3062948d5	71a3062948d5	4	6c3b6bd7e6f7	1	jass.manasyan@gmail.com	\N
3634	29	71a3069aae74	71a3069aae74	4	6c3b6bdc57da	1	jass.manasyan@gmail.com	\N
3635	29	71a3066a1bf0	71a3066a1bf0	4	6c3b6bda0bc6	1	jass.manasyan@gmail.com	\N
3636	29	71a306e579e4	71a306e579e4	4	6c3b6bd7e6c7	1	jass.manasyan@gmail.com	\N
3637	29	71a306ab71d3	71a306ab71d3	4	6c3b6bd751af	1	jass.manasyan@gmail.com	\N
3638	29	71a306e62ef0	71a306e62ef0	4	6c3b6b	1	jass.manasyan@gmail.com	\N
3639	29	71a30692c75a	71a30692c75a	4	6c3b6bd591f1	1	jass.manasyan@gmail.com	\N
3640	29	71b90675907d	71b90675907d	4	6c3b6bae51be	1	jass.manasyan@gmail.com	\N
3641	28	ftx1538b09w	ftx1538b09w	3	7081052fc398	4	jass.manasyan@gmail.com	jass.manasyan@gmail.com
3642	45	un-a15-k-009	un-a15-k-009	3		1	jass.manasyan@gmail.com	jass.manasyan@gmail.com
3643	29	71a306e01f96	71a306e01f96	4	6c3b6bd75e9f	1	jass.manasyan@gmail.com	\N
3644	29	71a3065660cb	71a3065660cb	4	6c3b6bda18d0	1	jass.manasyan@gmail.com	\N
3645	29	71a306f5a629	71a306f5a629	4	6c3b6bd582af	1	jass.manasyan@gmail.com	\N
3646	29	71a3061a6814	71a3061a6814	4	6c3b6bda0c9e	1	jass.manasyan@gmail.com	\N
3647	29	71a306c460ab	71a306c460ab	4	6c3b6bda0bfc	1	jass.manasyan@gmail.com	\N
3648	29	71a306ff3ae6	71a306ff3ae6	4	6c3b6bda0c8c	1	jass.manasyan@gmail.com	\N
3649	29	71a306b293dd	71a306b293dd	4	6c3b6bda0a04	1	jass.manasyan@gmail.com	\N
3650	29	71a3067f9b8d	71a3067f9b8d	4	6c3b6bd7f4d7	1	jass.manasyan@gmail.com	\N
3651	29	71a30650c3af	71a30650c3af	4	6c3b6bda17fc	1	jass.manasyan@gmail.com	\N
3652	29	71a3063ba894	71a3063ba894	4	6c3b6bd7f34b	1	jass.manasyan@gmail.com	\N
3653	29	71a306641c39	71a306641c39	4	6c3b6bd589b1	1	jass.manasyan@gmail.com	\N
3654	29	71a306befa61	71a306befa61	4	6c3b6bd589d5	1	jass.manasyan@gmail.com	\N
3655	29	71a30662b823	71a30662b823	4	6c3b6bdc6566	1	jass.manasyan@gmail.com	\N
3656	29	71a30679e126	71a30679e126	4	6c3b6bd7e715	1	jass.manasyan@gmail.com	\N
3657	29	71b906a46dfd	71b906a46dfd	4	6c3b6b	1	jass.manasyan@gmail.com	\N
3658	29	71a306211418	71a306211418	4	6c3b6bdc583a	1	jass.manasyan@gmail.com	\N
3659	29	71a3069b2f77	71a3069b2f77	4	6c3b6bd7e71b	1	jass.manasyan@gmail.com	\N
3660	29	71a306f9b655	71a306f9b655	4	6c3b6bd751eb	1	jass.manasyan@gmail.com	\N
3661	29	71a306f2f2be	71a306f2f2be	4	6c3b6bd5939b	1	jass.manasyan@gmail.com	\N
3662	29	71a30649b505	71a30649b505	4	6c3b6bd7f5b5	1	jass.manasyan@gmail.com	\N
3663	29	71b906344049	71b906344049	4	6c3b6bae545e	1	jass.manasyan@gmail.com	\N
3664	29	71a3061ed6d2	71a3061ed6d2	4	6c3b6bdc69c2	1	jass.manasyan@gmail.com	\N
3665	29	71b906c5a622	71b906c5a622	4	6c3b6bae8412	1	jass.manasyan@gmail.com	\N
3666	29	71a3068724d3	71a3068724d3	4	6c3b6bda1ad8	1	jass.manasyan@gmail.com	\N
3667	29	71b906441dde	71b906441dde	4	6c3b6bae8526	1	jass.manasyan@gmail.com	\N
3668	29	71b9069c95f3	71b9069c95f3	4	6c3b6bae84e4	1	jass.manasyan@gmail.com	\N
3669	29	71b90695dfd6	71b90695dfd6	4	6c3b6b86ef2f	1	jass.manasyan@gmail.com	\N
3670	29	71a30687bcc6	71a30687bcc6	4	6c3b6bdc69aa	1	jass.manasyan@gmail.com	\N
3671	29	71b9067b7973	71b9067b7973	4	6c3b6b86ef8f	1	jass.manasyan@gmail.com	\N
3672	29	71b90604cda5	71b90604cda5	4	6c3b6bae5410	1	jass.manasyan@gmail.com	\N
3673	29	71a306167449	71a306167449	4	6c3b6bd5841d	1	jass.manasyan@gmail.com	\N
3674	29	71a306bedd68	71a306bedd68	4	6c3b6bdc597e	1	jass.manasyan@gmail.com	\N
3675	29	71b906344dcc	71b906344dcc	4	6c3b6bae85f2	1	jass.manasyan@gmail.com	\N
3676	29	71a3063200bb	71a3063200bb	4	6c3b6bd7f615	1	jass.manasyan@gmail.com	\N
3677	29	71a306802065	71a306802065	4	6c3b6bdc69b6	1	jass.manasyan@gmail.com	\N
3678	29	71b906e91944	71b906e91944	4	6c3b6bae53aa	1	jass.manasyan@gmail.com	\N
3679	29	71a306103cef	71a306103cef	4	6c3b6bd59395	1	jass.manasyan@gmail.com	\N
3680	29	71b906c49460	71b906c49460	4	6c3b6bae548e	1	jass.manasyan@gmail.com	\N
3681	29	71a306fe9a4a	71a306fe9a4a	4	6c3b6bd59335	1	jass.manasyan@gmail.com	\N
3682	29	71a3065f7397	71a3065f7397	4	6c3b6bd7f627	1	jass.manasyan@gmail.com	\N
3683	29	71b906b040fd	71b906b040fd	4	6c3b6bafb432	1	jass.manasyan@gmail.com	\N
3684	29	71a30607129d	71a30607129d	4	6c3b6bd761bd	1	jass.manasyan@gmail.com	\N
3685	29	71b90632eea8	71b90632eea8	4	6c3b6bae84de	1	jass.manasyan@gmail.com	\N
3686	29	71a30678c9bc	71a30678c9bc	4	6c3b6bda1a30	1	jass.manasyan@gmail.com	\N
3687	29	71b906929372	71b906929372	4	6c3b6bae85ec	1	jass.manasyan@gmail.com	\N
3688	29	71a306ddac3a	71a306ddac3a	4	6c3b6bd58f63	1	jass.manasyan@gmail.com	\N
3689	29	71a3060e4f2b	71A3060E4F2B	4	6C3B6BDA109A	1	jass.manasyan@gmail.com	jass.manasyan@gmail.com
3690	29	71a3066cacd8	71a3066cacd8	4	6c3b6bdc5d74	1	jass.manasyan@gmail.com	\N
3691	29	71a30646206d	71a30646206d	4	6c3b6bd7ec31	1	jass.manasyan@gmail.com	\N
3692	29	71a3067086d3	71a3067086d3	4	6c3b6bd58fcf	1	jass.manasyan@gmail.com	\N
3693	29	71a30634b2b4	71a30634b2b4	4	6c3b6bdc65a8	1	jass.manasyan@gmail.com	\N
3694	29	71a3064af65d	71a3064af65d	4	6c3b6bdc5dbe	1	jass.manasyan@gmail.com	\N
3695	29	71a306682fb3	71a306682fb3	4	6c3b6bd75d79	1	jass.manasyan@gmail.com	\N
3696	29	71a30672efd8	71a30672efd8	4	6c3b6bdc6392	1	jass.manasyan@gmail.com	\N
3697	29	71b906a04f63	71b906a04f63	4	6c3b6bae51e2	1	jass.manasyan@gmail.com	\N
3698	29	71a306f963bb	71a306f963bb	4	6c3b6bda18c2	1	jass.manasyan@gmail.com	\N
3699	29	71a30656538e	71a30656538e	4	6c3b6bd591e5	1	jass.manasyan@gmail.com	\N
3700	29	71a3060fdaf4	71a3060fdaf4	4	6c3b6bdc6692	1	jass.manasyan@gmail.com	\N
3701	29	71a306557695	71a306557695	4	6c3b6bda195e	1	jass.manasyan@gmail.com	\N
3702	29	71a306c4660d	71a306c4660d	4	6c3b6bd7f42f	1	jass.manasyan@gmail.com	\N
3703	29	71a30676dec6	71a30676dec6	4	6c3b6bda18fe	1	jass.manasyan@gmail.com	\N
3704	29	71a306b49ddf	71a306b49ddf	4	6c3b6bd591eb	1	jass.manasyan@gmail.com	\N
3705	29	71a3060e5f98	71a3060e5f98	4	6c3b6bd59023	1	jass.manasyan@gmail.com	\N
3706	29	71a306aba43d	71a306aba43d	4	6c3b6bda1886	1	jass.manasyan@gmail.com	\N
3707	29	71a306cd64aa	71a306cd64aa	4	6c3b6bda171e	1	jass.manasyan@gmail.com	\N
3708	29	71a30687b6d1	71a30687b6d1	4	6c3b6bd75ce9	1	jass.manasyan@gmail.com	\N
3709	29	71a306b19859	71a306b19859	4	6c3b6bd75d8b	1	jass.manasyan@gmail.com	\N
3710	29	71a306fc5f6f	71a306fc5f6f	4	6c3b6bdc66d4	1	jass.manasyan@gmail.com	\N
3711	29	71a3069bd54e	71a3069bd54e	4	6c3b6bd7f279	1	jass.manasyan@gmail.com	\N
3712	29	71a306cef10d	71a306cef10d	4	6c3b6bd75d67	1	jass.manasyan@gmail.com	\N
3713	29	71a3060b068e	71a3060b068e	4	6c3b6bd7f489	1	jass.manasyan@gmail.com	\N
3714	29	71b906f437ff	71b906f437ff	4	6c3b6bae82e0	1	jass.manasyan@gmail.com	\N
3715	29	71b9069ffbc9	71b9069ffbc9	4	6c3b6bae5194	1	jass.manasyan@gmail.com	\N
3716	29	71b9068eb003	71b9068eb003	4	6c3b6bae51dc	1	jass.manasyan@gmail.com	\N
3717	29	71b9066264ad	71b9066264ad	4	6c3b6bae82b0	1	jass.manasyan@gmail.com	\N
3718	29	71a3062cbca5	71a3062cbca5	4	6c3b6bda189e	1	jass.manasyan@gmail.com	\N
3719	29	71a3067bfc14	71a3067bfc14	4	6c3b6bda1232	1	jass.manasyan@gmail.com	\N
3720	29	71a30637f2fd	71a30637f2fd	4	6c3b6bdc66f8	1	jass.manasyan@gmail.com	\N
3721	29	71a3064448be	71a3064448be	4	6c3b6bda1244	1	jass.manasyan@gmail.com	\N
3722	1	f09fc246e4eb	f09fc246e4eb	1	f09fc246e4eb	1	jass.manasyan@gmail.com	jass.manasyan@gmail.com
3723	32	12bc51c5713	12bc51c5713	3		1	jass.manasyan@gmail.com	\N
3724	29	6c3b6bd7595d	6c3b6bd7595d	4	6c3b6bd7595d	1	jass.manasyan@gmail.com	\N
3725	29	71a30649db98	71A30649DB98	4	6C3B6BD75935	1	jass.manasyan@gmail.com	\N
3726	29	71b906d9a59b	71b906d9a59b	4	6c3b6bae51c9	1	jass.manasyan@gmail.com	\N
3727	29	71a306fb033c	71a306fb033c	4	6c3b6bae5374	1	jass.manasyan@gmail.com	\N
3728	29	71b906bf1e56	71b906bf1e56	4	6c3b6bae82c8	1	jass.manasyan@gmail.com	\N
3729	29	71b9060e25c3	71b9060e25c3	4	6c3b6bae521e	1	jass.manasyan@gmail.com	\N
3730	29	71b906dd59b9	71b906dd59b9	4	6c3b6bae536e	1	jass.manasyan@gmail.com	\N
3731	45	un-a24-k-154	un-a24-k-154	3		1	vahram@hf.am	\N
3732	29	71a306157492	71a306157492	4	6c3b6bdc65ae	1	jass.manasyan@gmail.com	\N
3733	29	71a306a0fd0c	71a306a0fd0c	4	6c3b6bd582f7	1	jass.manasyan@gmail.com	\N
3734	29	71b90685582a	71b90685582a	4	6c3b6bae8304	1	jass.manasyan@gmail.com	\N
3735	29	71b906d7ca4c	71b906d7ca4c	4	6c3b6bafb1c8	1	jass.manasyan@gmail.com	\N
3736	29	71a306ec3caf	71a306ec3caf	4	6c3b6bda0aee	1	jass.manasyan@gmail.com	\N
3737	29	71a306147958	71a306147958	4	6c3b6bdc60d4	1	jass.manasyan@gmail.com	jass.manasyan@gmail.com
3738	29	71a3062e0a57	71a3062e0a57	4	6c3b6bd588a9	1	jass.manasyan@gmail.com	\N
3739	29	71a30652888a	71A30652888A	4	6c3b6bd7ee05	1	jass.manasyan@gmail.com	jass.manasyan@gmail.com
3740	29	71b906eff3be	71b906eff3be	4	6c3b6bafb264	1	jass.manasyan@gmail.com	\N
3741	29	71b906a49389	71b906a49389	4	6c3b6bae52ae	1	jass.manasyan@gmail.com	\N
3742	29	71a306cc0bdc	71a306cc0bdc	4	6c3b6bd7e523	1	jass.manasyan@gmail.com	\N
3743	29	71a306f37742	71a306f37742	4	6c3b6bd7f47d	1	jass.manasyan@gmail.com	\N
3744	29	71a306151309	71a306151309	4	6c3b6bdc57eb	1	jass.manasyan@gmail.com	\N
3745	33	09a71604720	09a71604720	3	09a71604720	1	jass.manasyan@gmail.com	jass.manasyan@gmail.com
3746	45	un-a24-k-155	un-a24-k-155	3		1	jass.manasyan@gmail.com	hasmik@hf.am
3747	11	687251a44977	687251a44977	3	687251a44977	1	jass.manasyan@gmail.com	\N
3748	29	71a30612fa4b	71a30612fa4b	4	6c3b6bdc5ca8	1	jass.manasyan@gmail.com	\N
3749	29	71a3064f3597	71a3064f3597	4	6c3b6bd7f315	1	jass.manasyan@gmail.com	\N
3750	29	71a3066009af	71a3066009af	4	6c3b6bda18aa	1	jass.manasyan@gmail.com	\N
3751	29	71b90632cd5e	71b90632cd5e	4	6c3b6bae8352	1	jass.manasyan@gmail.com	\N
3752	29	71a306e6d26f	71a306e6d26f	4	6c3b6bd7f333	1	jass.manasyan@gmail.com	\N
3753	29	6c3b6bd7bf61	6c3b6bd7bf61	4	6c3b6bd7bf61	1	jass.manasyan@gmail.com	\N
3754	29	71a3067557f3	71a3067557f3	4	6c3b6bd589f9	1	jass.manasyan@gmail.com	\N
3755	29	71a30699e7ab	71a30699e7ab	4	6c3b6bd75b15	1	jass.manasyan@gmail.com	\N
3756	29	71a306321140	71a306321140	4	6c3b6bd7f5d3	1	jass.manasyan@gmail.com	\N
3757	29	71a306119c43	71a306119c43	4	6c3b6bda0c2c	1	jass.manasyan@gmail.com	\N
3758	29	71a3061ea505	71a3061ea505	4	6c3b6bda0c14	2	jass.manasyan@gmail.com	jass.manasyan@gmail.com
3759	29	71a30614ce9a	71a30614ce9a	4	6c3b6bd74fed	1	jass.manasyan@gmail.com	\N
3760	29	71b9069a3697	71b9069a3697	4	6c3b6bae85c8	1	jass.manasyan@gmail.com	\N
3761	29	71a306a858e9	71a306a858e9	4	6c3b6bd582d3	1	jass.manasyan@gmail.com	\N
3762	29	71a306f1024b	71a306f1024b	3	6c3b6bd75209	1	jass.manasyan@gmail.com	\N
3763	29	71a306490e76	71a306490e76	4	6c3b6bda101c	1	jass.manasyan@gmail.com	\N
3764	29	71a3067f80f1	71a3067f80f1	4	6c3b6bd75305	1	jass.manasyan@gmail.com	\N
3765	29	71a30654b6dc	71a30654b6dc	4	6c3b6bdc5954	1	jass.manasyan@gmail.com	\N
3766	29	71a306a462f5	71a306a462f5	4	6c3b6bdc5984	1	jass.manasyan@gmail.com	\N
3767	29	71a306b3b1c0	71a306b3b1c0	4	6c3b6bd75335	1	jass.manasyan@gmail.com	\N
3768	29	71a3062d4777	71a3062d4777	4	6c3b6bd75341	1	jass.manasyan@gmail.com	\N
3769	29	71a3066ecb3b	71a3066ecb3b	4	6c3b6bd7534d	1	jass.manasyan@gmail.com	\N
3770	29	71a3064eb785	71a3064eb785	4	6c3b6bd7e85f	1	jass.manasyan@gmail.com	\N
3771	29	71a30655f805	71a30655f805	4	6c3b6bd58411	1	jass.manasyan@gmail.com	\N
3772	29	71a306fdefe0	71a306fdefe0	4	6c3b6bd7e883	1	jass.manasyan@gmail.com	\N
3773	29	71a3068a9d95	71a3068a9d95	4	6c3b6bdc59ba	1	jass.manasyan@gmail.com	\N
3774	29	71a3063c3726	71a3063c3726	4	6c3b6bdc58dc	1	jass.manasyan@gmail.com	\N
3775	29	71a3062b26a0	71a3062b26a0	4	6c3b6bd7e751	1	jass.manasyan@gmail.com	\N
3776	29	71a30697006f	71a30697006f	4	6c3b6bd7e8ad	1	jass.manasyan@gmail.com	\N
3777	29	71a30667d446	71a30667d446	4	6c3b6bd7e87d	1	jass.manasyan@gmail.com	\N
3778	29	71a3064c162a	71a3064c162a	4	6c3b6bd5847d	1	jass.manasyan@gmail.com	\N
3779	29	71a3065141bd	71a3065141bd	4	6c3b6bda0cb6	1	jass.manasyan@gmail.com	\N
3780	29	71a3069ad203	71a3069ad203	4	6c3b6bd75317	1	jass.manasyan@gmail.com	\N
3781	29	71a30613f781	71a30613f781	4	6c3b6bdc59d2	1	jass.manasyan@gmail.com	\N
3782	29	71a30639c5f0	71a30639c5f0	4	6c3b6bdc5966	1	jass.manasyan@gmail.com	\N
3783	29	71a306b50ac9	71a306b50ac9	4	6c3b6bdc5e40	1	jass.manasyan@gmail.com	\N
3784	29	71a306e32757	71a306e32757	4	6c3b6bd58e25	1	jass.manasyan@gmail.com	jass.manasyan@gmail.com
3785	29	71a3067b0765	71a3067b0765	4	6c3b6bd5842f	1	jass.manasyan@gmail.com	\N
3786	29	71a3060eef24	71a3060eef24	4	6c3b6bd752e1	1	jass.manasyan@gmail.com	\N
3787	29	71b906dd543c	71b906dd543c	4	6c3b6bae82c2	1	jass.manasyan@gmail.com	\N
3788	29	71a30624580a	71a30624580a	4	6c3b6bd7e871	1	jass.manasyan@gmail.com	\N
3789	29	71a3060c8151	71a3060c8151	4	6c3b6bd75347	1	jass.manasyan@gmail.com	\N
3790	29	71a306743e23	71a306743e23	4	6c3b6bd58417	1	jass.manasyan@gmail.com	\N
3791	29	71a306f451da	71a306f451da	4	6c3b6bd592b7	1	jass.manasyan@gmail.com	\N
3792	45	un-a24-k-156	un-a24-k-156	3		1	jass.manasyan@gmail.com	hasmik@hf.am
3793	29	71b906914bbe	71b906914bbe	4	6c3b6ba36499	1	jass.manasyan@gmail.com	\N
3794	29	71a3066c9a2a	71a3066c9a2a	4	6c3b6bd58e19	1	jass.manasyan@gmail.com	\N
3795	29	71a306da9dff	71a306da9dff	4	6c3b6bda15bc	1	jass.manasyan@gmail.com	\N
3796	29	71a306b24cb4	71a306b24cb4	4	6c3b6bd7e739	1	jass.manasyan@gmail.com	\N
3797	29	71a306c09981	71A306C09981	4	6C3B6BDC61B8	1	jass.manasyan@gmail.com	\N
3799	29	71a306d5e355	71a306d5e355	4	6c3b6bda1aa1	1	jass.manasyan@gmail.com	\N
3800	29	71a3062111af	71a3062111af	4	6c3b6bda0c62	1	jass.manasyan@gmail.com	\N
3801	29	6c3b6bd58a6b	6C3B6BD58A6B	4	6C3B6BD58A6B	1	jass.manasyan@gmail.com	\N
3802	29	71a3067eb521	71a3067eb521	4	6c3b6bdc6776	1	jass.manasyan@gmail.com	\N
3803	29	71a306e37c29	71a306e37c29	4	6c3b6bd75a43	1	jass.manasyan@gmail.com	\N
3805	29	71a306923a1d	71a306923a1d	4	6c3b6bdc6968	1	jass.manasyan@gmail.com	\N
3806	29	71a3067835b3	71a3067835b3	4	6c3b6bdc61d6	1	jass.manasyan@gmail.com	\N
3807	29	71a306cce01e	71a306cce01e	4	6c3b6bd7f387	1	jass.manasyan@gmail.com	\N
3808	29	71a3064b0419	71a3064b0419	4	6c3b6bda192e	1	jass.manasyan@gmail.com	\N
3809	29	71a306a77d3d	71a306a77d3d	4	6c3b6bd75995	1	jass.manasyan@gmail.com	\N
3810	29	6c3b6bd7eb2f	6c3b6bd7eb2f	4	6c3b6bd7eb2f	1	jass.manasyan@gmail.com	\N
3811	29	71a3064f5b0a	71a3064f5b0a	4	6c3b6bd7f595	1	jass.manasyan@gmail.com	\N
3812	29	71a306b742fd	71a306b742fd	4	6c3b6bda0c32	1	jass.manasyan@gmail.com	\N
3813	29	71a3063480b9	71a3063480b9	4	6c3b6bdc61e2	1	jass.manasyan@gmail.com	\N
3814	29	71a30605aa87	71a30605aa87	4	6c3b6bda13ee	1	jass.manasyan@gmail.com	\N
3815	29	71a30618aa4f	71a30618aa4f	4	6c3b6bda1484	1	jass.manasyan@gmail.com	\N
3816	29	71a3066dd772	71a3066dd772	4	6c3b6bdc6980	1	jass.manasyan@gmail.com	\N
3817	29	71a306dede7e	71a306dede7e	4	6c3b6bd58879	1	jass.manasyan@gmail.com	\N
3818	29	71a306c2c3cf	71a306c2c3cf	4	6c3b6bda0ad0	1	jass.manasyan@gmail.com	\N
3819	29	71a306fc48a2	71a306fc48a2	4	6c3b6bda0b96	1	jass.manasyan@gmail.com	\N
3820	29	71a306e9cf31	71a306e9cf31	4	6c3b6bd5882b	1	jass.manasyan@gmail.com	hasmik@hf.am
3821	11	68725120e184	68725120E184	3	68725120E184	1	jass.manasyan@gmail.com	jass.manasyan@gmail.com
3822	11	24a43ca62d63	24A43CA62D63	3	24A43CA62D63	2	jass.manasyan@gmail.com	jass.manasyan@gmail.com
3823	11	24a43ca63134	24A43CA63134	3	24A43CA63134	1	jass.manasyan@gmail.com	jass.manasyan@gmail.com
3824	11	68725120dd6f	68725120DD6F	3	68725120DD6F	2	jass.manasyan@gmail.com	jass.manasyan@gmail.com
3825	29	71a306894700	71a306894700	4	6c3b6bd5903b	1	jass.manasyan@gmail.com	\N
3826	29	041929247	041929247	4	6c3b6bd5912b	1	jass.manasyan@gmail.com	\N
3827	29	71a3063ab4a5	71a3063ab4a5	4	6c3b6bd7f5f7	1	jass.manasyan@gmail.com	\N
3828	29	71a30657d672	71a30657d672	4	6c3b6bd7f603	1	jass.manasyan@gmail.com	\N
3829	29	71a3062abc4f	71a3062abc4f	4	6c3b6bd76115	1	jass.manasyan@gmail.com	\N
3830	29	71a3068993a6	71a3068993a6	4	6c3b6bd75a6d	1	jass.manasyan@gmail.com	\N
3831	29	71a3064ad154	71a3064ad154	4	6c3b6bd58dc5	1	jass.manasyan@gmail.com	\N
3832	29	71a306deec73	71a306deec73	4	6c3b6bd58c33	1	jass.manasyan@gmail.com	\N
3833	29	71a306d38633	71a306d38633	4	6c3b6bdc641c	1	jass.manasyan@gmail.com	\N
3834	31	23210456398	23210456398	3	0023d301f5c5	1	jass.manasyan@gmail.com	\N
3835	29	71b9060aa14c	71b9060aa14c	4	6c3b6bafb27b	1	jass.manasyan@gmail.com	\N
3836	29	71b90699ee5b	71b90699ee5b	4	6c3b6ba364bd	1	jass.manasyan@gmail.com	\N
3837	28	ftx1538b0nl	ftx1538b0nl	3	7081592735c	1	jass.manasyan@gmail.com	\N
3838	29	71a306bb59de	71a306bb59de	4	6c3b6bdc694a	1	jass.manasyan@gmail.com	\N
3839	29	71a306c5d0b4	71A306C5D0B4	4	6C3B6BDA14FC	1	jass.manasyan@gmail.com	\N
3840	28	708105927008	708105927008	3	708105927008	1	jass.manasyan@gmail.com	\N
3841	29	71a306c446ea	71A306C446EA	4	6C3B6BDC5828	1	jass.manasyan@gmail.com	\N
3842	29	71a3067d2c37	71A3067D2C37	4	6C3B6BD7E79F	1	jass.manasyan@gmail.com	\N
3843	29	71b906cfb642	71b906cfb642	4	6c3b6bd58fbd	1	jass.manasyan@gmail.com	\N
3844	29	71a3065f7910	71A3065F7910	4	6C3B6BD75233	1	jass.manasyan@gmail.com	\N
3845	29	71a306400fc0	71A306400FC0	4	6C3B6BDC58A6	1	jass.manasyan@gmail.com	\N
3846	29	71a06987ec5	71A06987EC5	4	6C3B6BD7E78D	1	jass.manasyan@gmail.com	\N
3847	29	71a306437412	71A306437412	4	6C3B6BD75023	1	jass.manasyan@gmail.com	\N
3848	29	71a306baeff7	71A306BAEFF7	4	6c3b6bda18ce	1	jass.manasyan@gmail.com	\N
3849	29	71a306da3466	71A306DA3466	4	6C3B6BDC5858	1	jass.manasyan@gmail.com	\N
3850	29	71a306b0dbe9	71A306B0DBE9	4	6C3B6BDC5876	1	jass.manasyan@gmail.com	\N
3851	29	71a306f4ceb1	71A306F4CEB1	4	6C3B6BDA0C3E	1	jass.manasyan@gmail.com	\N
3852	29	71a30684623c	71A30684623C	4	6C3B6BD7E65B	1	jass.manasyan@gmail.com	\N
3853	29	71a306efb274	71A306EFB274	4	6C3B6BD7E745	1	jass.manasyan@gmail.com	\N
3854	29	71a306d29183	71A306D29183	4	6C3B6BDC587C	1	jass.manasyan@gmail.com	\N
3855	29	71a3061450b9	71A3061450B9	4	6C3B6BD7521B	1	jass.manasyan@gmail.com	\N
3856	29	71a30600f537	71A30600F537	4	6C3B6BD58897	1	jass.manasyan@gmail.com	\N
3857	29	71a306a7213d	71A306A7213D	4	6C3B6BDC6008	1	jass.manasyan@gmail.com	\N
3858	29	71b906ebfa3a	71b906ebfa3a	4	6c3b6bd75deb	1	jass.manasyan@gmail.com	\N
3859	29	71a306435bc5	71A306435BC5	4	6C3B6BDA0C68	1	jass.manasyan@gmail.com	\N
3860	29	71a306029fbd	71A306029FBD	4	6C3B6BDC5E16	1	jass.manasyan@gmail.com	\N
3861	29	71a306e29748	71A306E29748	4	6C3B6BD59125	1	jass.manasyan@gmail.com	\N
3862	29	71a3060b2669	71A3060B2669	4	6C3B6BDC588E	1	jass.manasyan@gmail.com	\N
3863	29	71a3068aa60e	71A3068AA60E	4	6C3B6BD7526F	1	jass.manasyan@gmail.com	\N
3864	29	71a306b7474a	71A306B7474A	4	6C3B6BDC586A	1	jass.manasyan@gmail.com	\N
3865	29	71a306c92a42	71A306C92A42	4	6C3B6BD75263	1	jass.manasyan@gmail.com	\N
3866	29	71a306c9322f	71A306C9322F	4	6C3B6BDC5E3A	1	jass.manasyan@gmail.com	\N
3867	29	71a30602b5dd	71A30602B5DD	4	6C3B6BD75605	1	jass.manasyan@gmail.com	\N
3868	29	71a3065e3aa0	71A3065E3AA0	4	6C3B6BDC57CE	1	jass.manasyan@gmail.com	\N
3869	29	71a306acfc8b	71A306ACFC8B	4	6C3B6BD75275	1	jass.manasyan@gmail.com	\N
3870	29	71a3065fbba3	71A3065FBBA3	4	6C3B6BD7E70F	1	jass.manasyan@gmail.com	\N
3871	29	71a3061e8344	71A3061E8344	4	6C3b6bdc5fc0	1	jass.manasyan@gmail.com	\N
3872	29	71a3064e32da	71A3064E32DA	4	6C3B6BD7527B	1	jass.manasyan@gmail.com	\N
3873	29	71a30687a72a	71A30687A72A	4	6C3B6BD75F2F	1	jass.manasyan@gmail.com	\N
3874	29	71b9066f7705	71b9066f7705	4	6c3b6bda178a	1	jass.manasyan@gmail.com	\N
3875	29	71a306657297	71A306657297	4	6C3B6BDC69A4	1	jass.manasyan@gmail.com	\N
3876	29	71b906ec6699	71b906ec6699	4	6c3b6bd75df7	1	jass.manasyan@gmail.com	\N
3877	29	71a306934236	71A306934236	4	6C3B6BDC6740	1	jass.manasyan@gmail.com	\N
3878	29	71a306cf4b95	71A306CF4B95	4	6C3B6BD7E673	1	jass.manasyan@gmail.com	\N
3879	29	71a30667950c	71A30667950C	4	6c3b6bda18b6	1	jass.manasyan@gmail.com	\N
3880	29	71a306a60937	71A306A60937	4	6C3B6BDA0C7A	1	jass.manasyan@gmail.com	\N
3881	29	71a3067a402a	71A3067A402A	4	6C3B6BD756F5	1	jass.manasyan@gmail.com	\N
3882	29	71a3060484bb	71A3060484BB	4	6C3B6BDA1118	1	jass.manasyan@gmail.com	\N
3883	29	71a30644c766	71A30644C766	4	6C3B6BDA0C74	1	jass.manasyan@gmail.com	\N
3884	29	71a3066da4a5	71A3066DA4A5	4	6C3B6BDA0C56	1	jass.manasyan@gmail.com	\N
3885	29	71a30687338e	71A30687338E	4	6C3B6BD7E6CD	1	jass.manasyan@gmail.com	\N
3886	29	71a30669f797	71A30669F797	4	6C3B6BDA112A	1	jass.manasyan@gmail.com	\N
3887	29	71a306bcb6aa	71A306BCB6AA	4	6C3B6BDA0C80	1	jass.manasyan@gmail.com	\N
3888	29	71a306f69ee8	71A306F69EE8	4	6C3B6BD75215	1	jass.manasyan@gmail.com	\N
3889	29	71a306e7d522	71A306E7D522	4	6C3B6BD7525D	1	jass.manasyan@gmail.com	\N
3890	29	71a30636059e	71A30636059E	4	6C3B6BD7E7B7	1	jass.manasyan@gmail.com	\N
3891	29	71a3060d7c25	71A3060D7C25	4	6C3B6BD7E74B	1	jass.manasyan@gmail.com	\N
3892	29	71a306241fe6	71A306241FE6	4	6C3B6BD7E769	1	jass.manasyan@gmail.com	\N
3893	29	71a306a4596e	71A306A4596E	4	6C3B6BD75251	1	jass.manasyan@gmail.com	\N
3894	29	71a3069d708c	71A3069D708C	4	6C3B6BDA0C86	1	jass.manasyan@gmail.com	\N
3895	29	71a306fa34af	71A306FA34AF	4	6C3B6BD7E787	1	jass.manasyan@gmail.com	\N
3896	29	71b906d34ec3	71B906D34EC3	4	6c3b6bae51a0	1	jass.manasyan@gmail.com	\N
3897	29	71a306d75158	71A306D75158	4	6C3B6BDC5D8C	1	jass.manasyan@gmail.com	\N
3898	29	71a306629b45	71A306629B45	4	6C3B6BD7F3BD	1	jass.manasyan@gmail.com	\N
3899	29	71a306e6d17e	71A306E6D17E	4	6C3B6BDC58B8	1	jass.manasyan@gmail.com	\N
3900	29	71a306c602ff	71A306C602FF	4	6C3B6BD7519D	1	jass.manasyan@gmail.com	\N
3901	29	71a30617010b	71A30617010B	4	6C3B6BD7528D	1	jass.manasyan@gmail.com	\N
3902	29	71a306820a7d	71A306820A7D	4	6C3B6BDC5DD4	1	jass.manasyan@gmail.com	\N
3903	29	71a306dbf289	71A306DBF289	4	6C3B6BD7E781	1	jass.manasyan@gmail.com	\N
3904	29	71a306a761af	71A306A761AF	4	6C3B6BD582EB	1	jass.manasyan@gmail.com	\N
3905	29	71a306cb7fac	71A306CB7FAC	4	6C3B6BDC5810	1	jass.manasyan@gmail.com	\N
3906	29	71a3062245aa	71A3062245AA	4	6C3B6BDC58AC	1	jass.manasyan@gmail.com	\N
3907	29	71a30676d860	71A30676D860	4	6C3B6BD7E72D	1	jass.manasyan@gmail.com	\N
3908	29	71a306400cd1	71A306400CD1	4	6C3B6BD7F32D	1	jass.manasyan@gmail.com	\N
3909	29	71a30605d9c0	71A30605D9C0	4	6C3B6BD7E76F	1	jass.manasyan@gmail.com	\N
3910	32	13cd7609565	13cd7609565	3		2	jass.manasyan@gmail.com	jass.manasyan@gmail.com
3911	48	un-ao15-k-111	un-ao15-k-111	3		1	jass.manasyan@gmail.com	jass.manasyan@gmail.com
3912	29	71a306783523	71A306783523	4	6C3B6BD7F081	1	jass.manasyan@gmail.com	\N
3913	29	71a306d00078	71A306D00078	4	6C3B6BDA18E0	1	jass.manasyan@gmail.com	\N
3914	29	71a306d59012	71A306D59012	4	6C3B6BD7EE1D	1	jass.manasyan@gmail.com	\N
3915	29	71a3060675a5	71A3060675A5	4	6C3B6BD58E37	1	jass.manasyan@gmail.com	\N
3916	29	71a306dfd4ca	71A306DFD4CA	4	6C3B6BDC60F8	1	jass.manasyan@gmail.com	\N
3917	29	71a306d3894d	71A306D3894D	4	6C3B6BD589E7	1	jass.manasyan@gmail.com	\N
3918	29	71b906cd3c4f	71B906CD3C4F	4	6C3B6BAE51D0	1	jass.manasyan@gmail.com	\N
3919	29	71b90617cbec	71B90617CBEC	4	6C3B6BAE5272	1	jass.manasyan@gmail.com	\N
3920	29	71a306d53bd2	71A306D53BD2	4	6C3B6BD58B0D	1	jass.manasyan@gmail.com	\N
3921	29	71b906f78447	71B906F78447	4	6C3B6B86ECE3	1	jass.manasyan@gmail.com	\N
3922	29	71b9068acbe4	71B9068ACBE4	4	6C3B6BA36553	1	jass.manasyan@gmail.com	\N
3923	29	71b906b0c51a	71B906B0C51A	4	6C3B6B86EC65	1	jass.manasyan@gmail.com	\N
3924	29	71a306233d81	71A306233D81	4	6C3B6BDC5684	1	jass.manasyan@gmail.com	\N
3925	29	71a3066c15f2	71A3066C15F2	4	6C3B6BD59029	1	jass.manasyan@gmail.com	\N
3926	29	71a30697bd2a	71A30697BD2A	4	6C3B6BDC6380	1	jass.manasyan@gmail.com	\N
3927	29	71a306c35026	71A306C35026	4	6C3B6BDA125C	1	jass.manasyan@gmail.com	\N
3928	29	71b9060d3def	71B9060D3DEF	4	6C3B6BAFB26A	1	jass.manasyan@gmail.com	\N
3929	29	71a3064a83bc	71A3064A83BC	4	6C3B6BDC563C	1	jass.manasyan@gmail.com	\N
3930	29	71a306a730c6	71A306A730C6	4	6C3B6BDC63CE	1	jass.manasyan@gmail.com	\N
3931	29	71a30651387d	71A30651387D	4	6C3B6BD75C23	1	jass.manasyan@gmail.com	\N
3932	29	71a306b658fa	71A306B658FA	4	6C3B6BDC640A	1	jass.manasyan@gmail.com	\N
3933	29	71a306f4de02	71A306F4DE02	4	6C3B6BD58C87	1	jass.manasyan@gmail.com	\N
3934	29	71a3065c4cb8	71A3065C4CB8	4	6C3B6BD75A31	1	jass.manasyan@gmail.com	\N
3935	29	71a3066b01f7	71A3066B01F7	4	6C3B6BDC63FE	1	jass.manasyan@gmail.com	\N
3936	29	71a306787848	71A306787848	4	6C3B6BD75B8D	1	jass.manasyan@gmail.com	\N
3937	29	71a3069f0934	71A3069F0934	4	6C3B6BDC6062	1	jass.manasyan@gmail.com	\N
3938	29	71b906f81b10	71B906F81B10	4	6C3B6BAFB300	1	jass.manasyan@gmail.com	\N
3939	29	71b906604ec3	71B906604EC3	4	6C3B6BAFB258	1	jass.manasyan@gmail.com	\N
3940	29	71b9060c4633	71B9060C4633	4	6C3B6BAE8214	1	jass.manasyan@gmail.com	\N
3941	29	71b9064d4600	71B9064D4600	4	6C3B6B86ED2B	1	jass.manasyan@gmail.com	\N
3942	29	71a3065bcc89	71A3065BCC89	4	6C3B6BD58153	1	jass.manasyan@gmail.com	\N
3943	29	71b906b00963	71B906B00963	4	6C3B6BAE54D0	1	jass.manasyan@gmail.com	\N
3944	29	71a306a99c5f	71A306A99C5F	4	6C3B6BDA15FE	1	jass.manasyan@gmail.com	\N
3945	29	71a3069f09a4	71A3069F09A4	4	6C3B6BD7F135	1	jass.manasyan@gmail.com	\N
3946	29	71a3067a4a3d	71A3067A4A3D	4	6C3B6BDC63B6	1	jass.manasyan@gmail.com	\N
3947	29	71a3061479c8	71a3061479c8	4	6c3b6bd7f183	1	jass.manasyan@gmail.com	\N
3948	29	71a306da37e7	71A306DA37E7	4	6C3B6BDC6284	1	jass.manasyan@gmail.com	\N
3949	29	71b9061196fc	71B9061196FC	4	6C3B6B86EFA1	1	jass.manasyan@gmail.com	\N
3950	29	71b906f0bef5	71B906F0BEF5	4	6C3B6BAFB324	1	jass.manasyan@gmail.com	\N
3951	29	71a306a74f30	71A306A74F30	4	6C3B6BD75DDF	1	jass.manasyan@gmail.com	\N
3952	29	71b90659e510	71b90659e510	4	6c3b6bd58fed	1	jass.manasyan@gmail.com	\N
3953	29	71b90668eba6	71b90668eba6	4	6c3b6bda1796	1	jass.manasyan@gmail.com	\N
3954	29	71b906ad63c3	71B906AD63C3	4	6C3B6BAFB4D4	1	jass.manasyan@gmail.com	\N
3955	29	71a3065742d6	71A3065742D6	4	6C3B6BD74FE1	1	jass.manasyan@gmail.com	\N
3956	29	71a3064f9f1f	71A3064F9F1F	4	6C3B6BDA157A	1	jass.manasyan@gmail.com	\N
3957	29	71a30624a5dd	71A30624A5DD	4	6C3B6BD581BF	1	jass.manasyan@gmail.com	\N
3958	29	71b9063a68bb	71B9063A68BB	4	6C3B6BAE8376	1	jass.manasyan@gmail.com	jass.manasyan@gmail.com
3959	29	71b9069ed870	71B9069ED870	4	6C3B6BAE82CE	1	jass.manasyan@gmail.com	jass.manasyan@gmail.com
3960	29	71b906864d83	71B906864D83	4	6C3B6BAFB2DC	1	jass.manasyan@gmail.com	\N
3961	29	71a3069330a9	71A3069330A9	4	6C3B6BD581E9	1	jass.manasyan@gmail.com	\N
3962	29	71b906b882f5	71B906B882F5	4	6C3B6BAE82D4	1	jass.manasyan@gmail.com	\N
3963	29	71b906fba431	71B906FBA431	4	6C3B6BA364B7	1	jass.manasyan@gmail.com	\N
3964	29	71a306cc7e3d	71A306CC7E3D	4	6C3B6BD7EE71	1	jass.manasyan@gmail.com	\N
3965	29	71b906f50838	71B906F50838	4	6C3B6BAE83D0	1	jass.manasyan@gmail.com	\N
3966	29	71a306094b0d	71A306094B0D	4	6C3B6BD7F2A3	1	jass.manasyan@gmail.com	\N
3967	29	71a30631d877	71a30631d877	4	6C3B6BDA1765	1	jass.manasyan@gmail.com	\N
3968	29	71a30646c128	71A30646C128	4	6C3B6BD75E81	1	jass.manasyan@gmail.com	\N
3969	29	71a306901384	71A306901384	4	6C3B6BDC67D6	1	jass.manasyan@gmail.com	\N
3970	29	71a3067ab632	71A3067AB632	4	6C3B6BDA1850	1	jass.manasyan@gmail.com	\N
3971	29	71b90679a0ec	71B90679A0EC	4	6C3B6BAFB234	1	jass.manasyan@gmail.com	\N
3972	29	71a30623266d	71A30623266D	4	6C3B6BD76001	1	jass.manasyan@gmail.com	\N
3973	29	71a306a0acf5	71A306A0ACF5	4	6C3B6BD7F285	1	jass.manasyan@gmail.com	\N
3974	29	71b90675c818	71B90675C818	4	6C3B6BAFB29A	1	jass.manasyan@gmail.com	\N
3975	29	71b9060fbd09	71B9060FBD09	4	6C3B6BA364ED	1	jass.manasyan@gmail.com	\N
3976	29	71b906ae559c	71B906AE559C	4	6C3B6BAE8280	1	jass.manasyan@gmail.com	\N
3977	29	71b90613a1f0	71B90613A1F0	4	6C3B6BA3653B	1	jass.manasyan@gmail.com	\N
3978	29	71a306477bb0	71A306477BB0	4	6C3B6BD7E595	1	jass.manasyan@gmail.com	\N
3979	29	71b906f2991e	71B906F2991E	4	6C3B6BAE5260	1	jass.manasyan@gmail.com	\N
3980	29	71b9061d49e2	71B9061D49E2	4	6C3B6BAFB312	1	jass.manasyan@gmail.com	\N
3981	29	71a3061508e5	71A3061508E5	4	6C3B6BD76163	1	jass.manasyan@gmail.com	\N
3982	29	71a306b63f61	71A306B63F61	4	6C3B6BDC5642	1	jass.manasyan@gmail.com	\N
3983	29	71b906ecfa69	71B906ECFA69	4	6C3B6BAE51D6	1	jass.manasyan@gmail.com	\N
3985	29	71a306a1b662	71A306A1B662	4	6C3B6BDA0BEA	1	jass.manasyan@gmail.com	\N
3986	29	71a30644b3cf	71A30644B3CF	4	6C3B6BD58459	1	jass.manasyan@gmail.com	\N
3987	29	71a3065bbe16	71A3065BBE16	4	6C3B6BDC67FA	1	jass.manasyan@gmail.com	\N
3988	29	71a306cda0bf	71A306CDA0BF	4	6C3B6BD75DF1	1	jass.manasyan@gmail.com	\N
3989	29	71a306cc83ea	71A306CC83EA	4	6C3B6BD587BF	2	jass.manasyan@gmail.com	hasmik@hf.am
3990	29	71a306fbc3cc	71A306FBC3CC	4	6C3B6BDC66C8	1	jass.manasyan@gmail.com	\N
3991	29	71a306864d03	71A306864D03	4	6C3B6BDA1736	1	jass.manasyan@gmail.com	\N
3992	29	71a306ad955b	71A306AD955B	4	6C3B6BD75F9B	1	jass.manasyan@gmail.com	\N
3993	29	71a3068cb49e	71A3068CB49E	4	6C3B6BDA12FE	1	jass.manasyan@gmail.com	\N
3994	29	71a306d006de	71A306D006DE	4	6C3B6BD7E733	1	jass.manasyan@gmail.com	\N
3995	29	71a306660945	71A306660945	4	6C3B6BD76121	1	jass.manasyan@gmail.com	\N
3996	29	71a3062e84c7	71A3062E84C7	4	6C3B6BDA15E6	1	jass.manasyan@gmail.com	\N
3997	29	71a30686c4ed	71A30686C4ED	4	6C3B6BDC6782	1	jass.manasyan@gmail.com	\N
3998	29	71a3062cde19	71A3062CDE19	4	6C3B6BD7EFD9	1	jass.manasyan@gmail.com	\N
3999	29	71b9065ffa69	71B9065FFA69	4	6C3B6BAFB22E	1	jass.manasyan@gmail.com	\N
4000	29	71a3061da496	71A3061DA496	4	6C3B6BDC6ED8	1	jass.manasyan@gmail.com	\N
4001	29	71a306d43166	71A306D43166	4	6C3B6BDC638C	1	jass.manasyan@gmail.com	\N
4002	29	71a3066089d7	71A3066089D7	4	6C3B6BD76781	1	jass.manasyan@gmail.com	\N
4003	29	71a3063796e7	71A3063796E7	4	6C3B6BDC6E6C	1	jass.manasyan@gmail.com	\N
4004	29	71a3064a91c6	71A3064A91C6	4	6C3B6BDC6F26	1	jass.manasyan@gmail.com	\N
4005	29	71a306a5f4ab	71A306A5F4AB	4	6C3B6BDA1550	1	jass.manasyan@gmail.com	\N
4006	29	71a306c278bc	71A306C278BC	4	6C3B6BD7EF79	1	jass.manasyan@gmail.com	\N
4007	29	71a306fbf151	71A306FBF151	4	6C3B6BD7F3D5	1	jass.manasyan@gmail.com	\N
4008	29	71a306a0f065	71A306A0F065	4	6C3B6BD75A4F	1	jass.manasyan@gmail.com	\N
4009	29	71a306ea8806	71A306EA8806	4	6C3B6BDC6680	1	jass.manasyan@gmail.com	\N
4010	29	71a306369bbd	71A306369BBD	4	6C3B6BD7FA41	1	jass.manasyan@gmail.com	\N
4011	29	71b90622b4d6	71B90622B4D6	4	6C3B6BAE5386	1	jass.manasyan@gmail.com	\N
4012	29	71a3061bbd59	71A3061BBD59	4	6C3B6BD59875	1	jass.manasyan@gmail.com	\N
4013	29	71a306685045	71A306685045	4	6C3B6BDC6368	1	jass.manasyan@gmail.com	\N
4014	29	71a306b51b32	71A306B51B32	4	6C3B6BDC5D86	1	jass.manasyan@gmail.com	\N
4015	29	71a3067a364a	71A3067A364A	4	6C3B6BD7677B	1	jass.manasyan@gmail.com	\N
4016	29	71a30697ac41	71A30697AC41	4	6C3B6BD7F111	1	jass.manasyan@gmail.com	\N
4017	29	71a306456682	71A306456682	4	6C3B6BDA10B2	1	jass.manasyan@gmail.com	\N
4018	29	71a3063f4562	71A3063F4562	4	6C3B6BDC5FC6	1	jass.manasyan@gmail.com	\N
4019	29	71b90621e8e1	71B90621E8E1	4	6C3B6BAE82BC	1	jass.manasyan@gmail.com	\N
4020	29	71a306c81c13	71A306C81C13	4	6C3B6BDC5CCC	1	jass.manasyan@gmail.com	\N
4021	29	71a306537fe9	71A306537FE9	4	6C3B6BDC6F4A	1	jass.manasyan@gmail.com	\N
4022	29	71a3068d195b	71A3068D195B	4	6C3B6BD755FF	1	jass.manasyan@gmail.com	\N
4023	29	71a306d2b275	71A306D2B275	4	6C3B6BDC5FF0	1	jass.manasyan@gmail.com	\N
4024	29	71b906cfac4e	71B906CFAC4E	4	6C3B6B86EC89	1	jass.manasyan@gmail.com	\N
4025	29	71a306e8fd9f	71A306E8FD9F	4	6C3B6BD751A3	1	jass.manasyan@gmail.com	\N
4026	29	71a306f054ff	71A306F054FF	4	6C3B6BD58315	1	jass.manasyan@gmail.com	\N
4027	29	71a306fe2af6	71A306FE2AF6	4	6C3B6BD751F7	1	jass.manasyan@gmail.com	\N
4028	29	71a306ccc54e	71A306CCC54E	4	6C3B6BDA0BDC	1	jass.manasyan@gmail.com	\N
4029	29	71a3061829b6	71A3061829B6	4	6C3B6BD75177	1	jass.manasyan@gmail.com	\N
4030	29	71b906ae7bef	71B906AE7BEF	4	6C3B6BAE54A0	1	jass.manasyan@gmail.com	\N
4031	29	71a306c3da49	71A306C3DA49	4	6C3B6BDC5834	1	jass.manasyan@gmail.com	\N
4032	29	71a306792982	71A306792982	4	6C3B6BDC676A	1	jass.manasyan@gmail.com	\N
4033	29	71a306d560ac	71A306D560AC	4	6C3B6BD75F6B	1	jass.manasyan@gmail.com	\N
4034	29	71a30637aefd	71A30637AEFD	4	6C3B6BD75F65	1	jass.manasyan@gmail.com	\N
4035	29	71a306a9bee1	71A306A9BEE1	4	6C3B6BD5910D	1	jass.manasyan@gmail.com	\N
4036	29	71a306ba7df5	71A306BA7DF5	4	6C3B6BD7F504	1	jass.manasyan@gmail.com	\N
4037	29	71a306dec8fb	71A306DEC8FB	4	6C3B6BDC6644	1	jass.manasyan@gmail.com	\N
4038	29	71a30648f5a4	71A30648F5A4	4	6C3B6BD75BC3	1	jass.manasyan@gmail.com	\N
4039	29	71b906493cfb	71B906493CFB	4	6C3B6BAFB1BC	1	jass.manasyan@gmail.com	\N
4040	29	71b9068a929d	71B9068A929D	4	6C3B6B86EE6F	1	jass.manasyan@gmail.com	\N
4041	29	71a3067c04ad	71A3067C04AD	4	6C3B6BDA1ABA	1	jass.manasyan@gmail.com	\N
4042	29	71b90667967b	71B90667967B	4	6C3B6BAE830A	1	jass.manasyan@gmail.com	\N
4043	29	71a30640624c	71A30640624C	4	6C3B6BD75FAD	1	jass.manasyan@gmail.com	\N
4044	29	71a306578ae2	71A306578AE2	4	6C3B6BD75EC9	1	jass.manasyan@gmail.com	\N
4045	29	71a3068e4580	71A3068E4580	4	6C3B6BD58DD1	1	jass.manasyan@gmail.com	\N
4046	29	71a306ea32ad	71A306EA32AD	4	6C3B6BD59101	1	jass.manasyan@gmail.com	\N
4047	29	71a3062bee04	71A3062BEE04	4	6C3B6BDC672E	1	jass.manasyan@gmail.com	\N
4048	29	71a306cbf488	71A306CBF488	4	6C3B6BD59107	1	jass.manasyan@gmail.com	\N
4049	29	71a3069911b3	71A3069911B3	4	6C3B6BDA15B0	1	jass.manasyan@gmail.com	\N
4050	29	71a30655b897	71A30655B897	4	6C3B6BDC66F2	1	jass.manasyan@gmail.com	\N
4051	29	71a306001ff13	71A306001FF13	4	6C3B6BD7F141	1	jass.manasyan@gmail.com	\N
4052	29	71a30616acce	71A30616ACCE	4	6C3B6BDA158C	1	jass.manasyan@gmail.com	\N
4053	29	71a306b93dbc	71A306B93DBC	4	6C3B6BD75DAF	1	jass.manasyan@gmail.com	\N
4054	29	71a306c79c7f	71A306C79C7F	3	6C3B6BD591A9	1	jass.manasyan@gmail.com	\N
4055	29	71a3064bff68	71A3064BFF68	4	6C3B6BD58F33	1	jass.manasyan@gmail.com	\N
4056	29	71a3066ca827	71A3066CA827	4	6C3B6BD58A53	1	jass.manasyan@gmail.com	\N
4057	29	71a306d60313	71A306D60313	4	6C3B6BD75BB7	1	jass.manasyan@gmail.com	\N
4058	29	71a306cadbff	71A306CADBFF	4	6C3B6BDA108E	1	jass.manasyan@gmail.com	\N
4059	29	71b9067e3c4f	71B9067E3C4F	4	6C3B6BAFB228	1	jass.manasyan@gmail.com	\N
4060	29	71a3061939a6	71A3061939A6	4	6C3B6BDA0C08	1	jass.manasyan@gmail.com	\N
4061	29	71a306829dc8	71A306829DC8	4	6C3B6BD74FBD	1	jass.manasyan@gmail.com	\N
4062	29	71a30621ed30	71A30621ED30	4	6C3B6BD7E6D3	1	jass.manasyan@gmail.com	\N
4063	29	71a3061b7804	71A3061B7804	4	6C3B6BD751E5	1	jass.manasyan@gmail.com	\N
4064	29	71a306e23c88	71A306E23C88	4	6C3B6BD7F435	1	jass.manasyan@gmail.com	\N
4065	29	71a306db1ea5	71A306DB1EA5	4	6C3B6BD58D89	1	jass.manasyan@gmail.com	\N
4066	29	71a30624e54f	71A30624E54F	4	6C3B6BDC635C	1	jass.manasyan@gmail.com	\N
4067	29	71a306c737bf	71A306C737BF	4	6C3B6BD7F4B9	1	jass.manasyan@gmail.com	\N
4068	29	71a3061de54c	71A3061DE54C	4	6C3B6BDA0F44	1	jass.manasyan@gmail.com	\N
4069	29	71a3068a00a7	71A3068A00A7	4	6C3B6BD7EFC7	1	jass.manasyan@gmail.com	\N
4070	29	71a306ee5392	71A306EE5392	4	6C3B6BD58837	1	jass.manasyan@gmail.com	\N
4071	29	71b906f982c6	71B906F982C6	4	6C3B6B86EDEB	1	jass.manasyan@gmail.com	\N
4072	29	71a3060ae086	71A3060AE086	4	6C3B6BD7E757	1	jass.manasyan@gmail.com	\N
4073	29	71b9069b2723	71B9069B2723	4	6C3B6BAE52D8	1	jass.manasyan@gmail.com	\N
4074	29	71a306478119	71A306478119	4	6C3B6BDC61A0	1	jass.manasyan@gmail.com	\N
4075	29	71b906fc9f9f	71B906FC9F9F	4	6C3B6BAE5368	1	jass.manasyan@gmail.com	\N
4076	29	71a306247d5a	71A306247D5A	4	6C3B6BDA102E	1	jass.manasyan@gmail.com	\N
4077	29	71b906dbfadd	71B906DBFADD	4	6C3B6BAE5242	1	jass.manasyan@gmail.com	\N
4078	29	71a30656b84c	71A30656B84C	4	6C3B6BD58741	1	jass.manasyan@gmail.com	\N
4079	29	71a3061573ec	71A3061573EC	4	6C3B6BD58855	1	jass.manasyan@gmail.com	\N
4080	29	71a30630f0ed	71A30630F0ED	4	6C3B6BD7EA45	1	jass.manasyan@gmail.com	\N
4081	29	71a306e0d7a2	71A306E0D7A2	4	6C3B6BD74FB7	1	jass.manasyan@gmail.com	\N
4082	29	71a3061bfbfd	71A3061BFBFD	4	6C3B6BDA1412	1	jass.manasyan@gmail.com	\N
4083	29	71a306a42519	71A306A42519	4	6C3B6BDC569C	1	jass.manasyan@gmail.com	\N
4084	29	71a306170c62	71A306170C62	4	6C3B6BD58A35	1	jass.manasyan@gmail.com	\N
4085	29	71a3060d20b5	71A3060D20B5	4	6C3B6BD74F81	1	jass.manasyan@gmail.com	\N
4086	29	71b9067c71cc	71B9067C71CC	4	6C3B6BAFB402	1	jass.manasyan@gmail.com	\N
4087	29	71b906fd8e2b	71B906FD8E2B	4	6C3B6BAE8478	1	jass.manasyan@gmail.com	\N
4088	29	71a306f4e8f0	71A306F4E8F0	4	6C3B6BDC5FEA	1	jass.manasyan@gmail.com	\N
4089	29	71a30658cc52	71A30658CC52	4	6C3B6BDC60E0	1	jass.manasyan@gmail.com	\N
4090	29	71a306004f0c	71A306004F0C	4	6C3B6BD7EE41	1	jass.manasyan@gmail.com	\N
4091	29	71b906c20509	71B906C20509	4	6C3B6BAE51E8	1	jass.manasyan@gmail.com	\N
4092	29	71a306bd174e	71A306BD174E	4	6C3B6BDA1046	1	jass.manasyan@gmail.com	\N
4093	29	71b906f288e5	71B906F288E5	4	6C3B6BAE51A6	1	jass.manasyan@gmail.com	\N
4094	29	71a3060e498d	71A3060E498D	4	6C3B6BD7EF49	1	jass.manasyan@gmail.com	\N
4095	29	71a3067fc71d	71A3067FC71D	4	6C3B6BD75C1D	1	jass.manasyan@gmail.com	jass.manasyan@gmail.com
4096	29	71a306d581e9	71A306D581E9	4	6C3B6BD7EDDB	1	jass.manasyan@gmail.com	jass.manasyan@gmail.com
4097	29	71b9064cdfd6	71B9064CDFD6	4	6C3B6BAFB3C0	1	jass.manasyan@gmail.com	\N
4098	29	71a3064ac7d1	71A3064AC7D1	4	6C3B6BDC63F8	1	jass.manasyan@gmail.com	\N
4099	29	71b906ea0168	71B906EA0168	4	6C3B6BAFB3DE	1	jass.manasyan@gmail.com	\N
4100	29	71a306875794	71A306875794	4	6C3B6BD7EE59	1	jass.manasyan@gmail.com	\N
4101	29	71b90600cccd	71B90600CCCD	4	6C3B6B86EC2F	1	jass.manasyan@gmail.com	\N
4102	29	71a3067684f0	71A3067684F0	4	6C3B6BD74FE7	1	jass.manasyan@gmail.com	\N
4103	29	71a30634eeb4	71A30634EEB4	4	6C3B6BD75C35	1	jass.manasyan@gmail.com	\N
4104	29	71a306643fcf	71A306643FCF	4	6C3B6BD58E3D	1	jass.manasyan@gmail.com	\N
4105	29	71a30608eae9	71A30608EAE9	4	6C3B6BD7EE65	1	jass.manasyan@gmail.com	\N
4106	29	71b906e62002	71B906E62002	4	6C3B6BAE5392	1	jass.manasyan@gmail.com	\N
4107	29	71a306d620e5	71A306D620E5	4	6C3B6BD75C3B	1	jass.manasyan@gmail.com	\N
4108	29	71a306c2b766	71A306C2B766	4	6C3B6BD582FD	1	jass.manasyan@gmail.com	\N
4109	29	71a306dfecd0	71A306DFECD0	4	6C3B6BD751F1	1	jass.manasyan@gmail.com	\N
4110	29	71b906e2cee5	71B906E2CEE5	4	6C3B6BAE5494	1	jass.manasyan@gmail.com	\N
4111	29	71a306744bc2	71A306744BC2	4	6C3B6BD58F45	1	jass.manasyan@gmail.com	\N
4112	47	ant6	ant6	3		1	hasmik@hf.am	hasmik@hf.am
4113	29	71a306adfc28	71A306ADFC28	4	6C3B6BD58FB7	1	hasmik@hf.am	\N
4114	29	71b906026344	71B906026344	4	6C3B6BAE8490	1	hasmik@hf.am	\N
4115	29	71a3065c25cb	71A3065C25CB	4	6C3B6BD58A1D	1	hasmik@hf.am	\N
4116	29	71a3065c1aaf	71A3065C1AAF	4	6C3B6BD756EF	1	hasmik@hf.am	\N
4117	29	71b9062561eb	71B9062561EB	4	6C3B6BAFB378	1	hasmik@hf.am	\N
4118	29	71b90654b9d4	71B90654B9D4	4	6C3B6B86EE81	1	hasmik@hf.am	\N
4119	29	71b9061d6a14	71B9061D6A14	4	6C3B6BAFB49E	1	hasmik@hf.am	\N
4120	29	71a3067b6401	71A3067B6401	4	6C3B6BDC6140	1	hasmik@hf.am	\N
4121	29	71a3061ea0b2	71a3061ea0b2	4	6c3b6bdc584c	2	hasmik@hf.am	hasmik@hf.am
4130	15	788a201e8a07	788A201E8A07	1	788A201E8A07	1	hasmik@hf.am	\N
4123	142	f09fc298c346	F09FC298C346	1	F09FC298C346	1	hasmik@hf.am	hasmik@hf.am
4124	142	f09fc298952a	F09FC298952A	1	F09FC298952A	1	hasmik@hf.am	hasmik@hf.am
2359	1	802aa8f87c6a	802AA8F87C6A	1	802AA8F87C6A	1	\N	hasmik@hf.am
4125	143	24a43c82f1b9	24A43C82F1B9	1	24A43C82F1B9	1	hasmik@hf.am	hasmik@hf.am
165	22	802aa8f1a57e	802AA8F1A57E	1	802AA8F1A57E	1	\N	hasmik@hf.am
3053	3	f09fc28ae1a2	F09FC28AE1A2	1	F09FC28AE1A2	1	\N	hasmik@hf.am
3077	52	am2a49203	AM2A49203	1	AM2A49203	1	\N	hasmik@hf.am
4126	143	24a43cb4fd66	24A43CB4FD66	1	24A43CB4FD66	1	hasmik@hf.am	hasmik@hf.am
4128	143	24a43c341fe9	24A43C341FE9	1	24A43C341FE9	1	hasmik@hf.am	hasmik@hf.am
4127	143	00272236129f	00272236129F	1	00272236129F	1	hasmik@hf.am	hasmik@hf.am
2391	11	24a43ca63157	24A43CA63157	3	24A43CA63157	1	\N	hasmik@hf.am
4129	144	am5j74684	AM5J74684	1		1	hasmik@hf.am	hasmik@hf.am
4131	29	71a306612135	71A306612135	4	6C3B6BD7E58F	1	hasmik@hf.am	hasmik@hf.am
3984	29	71a306961c5e	71A306961C5E	4	6C3B6BD7EE11	1	jass.manasyan@gmail.com	hasmik@hf.am
1425	13	002722ee7e9a	002722ee7e9a	5	002722ee7e9a	1	\N	hasmik@hf.am
2354	1	f09fc246e5f3	F09FC246E5F3	1	F09FC246E5F3	1	\N	hasmik@hf.am
122	1	44d9e7ae2a12	44D9E7AE2A12	1	44D9E7AE2A12	1	\N	hasmik@hf.am
916	19	802aa808ead2	802AA808EAD2	1	802AA808EAD2	2	\N	hasmik@hf.am
2113	11	6872514a48a6	6872514A48A6	3	6872514A48A6	2	\N	hasmik@hf.am
1933	11	68725120dd4e	68725120DD4E	3	68725120DD4E	1	\N	hasmik@hf.am
4132	29	71a306437833	71A306437833	4	6C3B6BDA0BE4	1	hasmik@hf.am	\N
4133	29	71a306e580cc	71A306E580CC	4	6C3B6BDC582E	1	hasmik@hf.am	\N
4134	29	71b90685ba20	71B90685BA20	4	6C3B6B86ED91	1	hasmik@hf.am	\N
4135	29	71a306ed0368	71A306ED0368	4	6C3B6BDA0BDE	1	hasmik@hf.am	\N
4136	29	71a3068f869	71a3068f869	4	6C3B6BDA0A2E	1	hasmik@hf.am	\N
4137	29	71a3065b8f9a	71A3065B8F9A	4	6C3B6BDC596C	1	hasmik@hf.am	\N
\.


--
-- TOC entry 3330 (class 0 OID 16498)
-- Dependencies: 229
-- Data for Name: Item_Mode; Type: TABLE DATA; Schema: public; Owner: inventory
--

COPY public."Item_Mode" ("Item_Mode_ID", "Item_Mode_Name") FROM stdin;
1	AP
2	Client
3	P2P-Link
\.


--
-- TOC entry 3331 (class 0 OID 16505)
-- Dependencies: 230
-- Data for Name: Item_Status; Type: TABLE DATA; Schema: public; Owner: inventory
--

COPY public."Item_Status" ("Item_Status_ID", "Item_Status_Name") FROM stdin;
1	Աշխատում է
2	Չի աշխատում
4	Դուրս գրված
7	Նոր
\.


--
-- TOC entry 3332 (class 0 OID 16512)
-- Dependencies: 231
-- Data for Name: Item_Type; Type: TABLE DATA; Schema: public; Owner: inventory
--

COPY public."Item_Type" ("Item_Type_ID", "Item_Type_Name") FROM stdin;
1	Wireless Modem
2	Router
3	3G Router
4	Wireless Router
5	Antena
6	SDSL Modem
7	UPS
8	Switch
9	ADSL Router
11	DSL Pool
12	3G/4G Modem
\.


--
-- TOC entry 3333 (class 0 OID 16519)
-- Dependencies: 232
-- Data for Name: Location; Type: TABLE DATA; Schema: public; Owner: inventory
--

COPY public."Location" ("Location_ID", "Device_Name", "PhysicalConnected_Item_ID", "From_Site_ID", "To_Site_ID", "Item_Status_ID", "Start_Date", "End_Date", "Item_IP_Address", "Item_Mode_ID", "Item_SSID", "Technician_ID", "Assigner_ID", "Transfer_Status_ID", "Description", "Item_ID", "Creator", "LastModifier") FROM stdin;
1	geghadirkotayq	3	\N	478	1	2017-07-13	\N	10.205.140.200	2	DeghtsutRocket	9	3	2		1	\N	\N
2		1	\N	478	1	2017-07-13	\N		\N		9	3	2		3	\N	\N
3	geghadirkotayq	\N	\N	478	1	2017-07-13	\N	91.205.140.200	\N		9	3	2		2	\N	\N
4	hacavan	\N	\N	486	1	2017-07-13	\N	10.20.140.203	2	Hf_Bardzrashen_sector	9	3	2		4	\N	\N
5	hacavan	\N	\N	486	1	2017-07-13	\N	91.205.140.203	\N		9	3	2		5	\N	\N
6	Artimet	\N	\N	911	1	2017-07-13	\N	10.205.138.146	2	ZVTS_AP	8	3	2		6	\N	\N
7	Artimet	\N	\N	911	1	2017-07-13	\N	91.205.138.146	\N		8	3	2		7	\N	\N
8	Geghakert Dproc	\N	\N	926	1	2017-07-13	\N	10.205.133.47	2	HF_Aghavnatun	8	3	2		8	\N	\N
9	Geghakert Dproc	\N	\N	926	1	2017-07-13	\N	91.205.133.47	\N		8	3	2		9	\N	\N
10	Metsamor Vil	\N	\N	936	1	2017-07-13	\N	10.205.138.158	2	ZVTS_AP	8	3	2		10	\N	\N
11	Metsamor Vil	\N	\N	936	1	2017-07-13	\N	91.205.138.158	\N		8	3	2		11	\N	\N
12	Jrarat	\N	\N	942	1	2017-07-13	\N	10.205.138.134	2	Yerasxahun_Omni	8	3	2		12	\N	\N
13	Jrarat	\N	\N	942	1	2017-07-13	\N	91.205.138.134	\N		8	3	2		13	\N	\N
14		\N	\N	1664	\N	2017-07-17	2017-10-26		\N		5	3	2		14	\N	\N
15		\N	\N	1664	\N	2017-07-17	2017-10-26		\N		5	3	2		15	\N	\N
16		\N	\N	1664	\N	2017-07-17	2017-11-06		\N		5	3	2		16	\N	\N
17		\N	\N	1664	\N	2017-07-17	2017-10-26		\N		5	3	2		17	\N	\N
18		\N	\N	1664	\N	2017-07-17	2017-11-06		\N		5	3	2		18	\N	\N
19		\N	\N	1664	\N	2017-07-17	2017-10-12		\N		5	3	2		19	\N	\N
20		\N	\N	1664	\N	2017-07-17	2017-10-12		\N		5	3	2		20	\N	\N
21		\N	\N	1664	\N	2017-07-17	2017-10-12		\N		5	3	2		21	\N	\N
22		\N	\N	1664	\N	2017-07-17	2017-10-12		\N		5	3	2		22	\N	\N
23		\N	\N	1664	\N	2017-07-17	2017-10-12		\N		5	3	2		23	\N	\N
24		\N	\N	1664	\N	2017-07-17	2017-10-23		\N		5	3	2		24	\N	\N
25		\N	\N	1664	\N	2017-07-17	2017-10-23		\N		5	3	2		25	\N	\N
26		\N	\N	1664	\N	2017-07-17	2017-10-23		\N		5	3	2		26	\N	\N
27		\N	\N	1664	\N	2017-07-17	2017-12-05		\N		5	3	2		27	\N	\N
28		\N	\N	1664	\N	2017-07-17	2017-10-23		\N		5	3	2		28	\N	\N
29		\N	\N	1664	\N	2017-07-17	2017-10-30		\N		5	3	2		29	\N	\N
30		\N	\N	1664	2	2017-07-17	\N		\N		5	3	2		30	\N	jass.manasyan@gmail.com
31		\N	\N	1664	\N	2017-07-17	2017-10-23		\N		5	3	2		31	\N	\N
32		\N	\N	1664	\N	2017-07-17	2017-12-05		\N		5	3	2		32	\N	\N
33		\N	\N	1664	\N	2017-07-17	2017-12-05		\N		5	3	2		33	\N	\N
34		\N	\N	1664	\N	2017-07-17	2017-12-05		\N		5	3	2		34	\N	\N
35		\N	\N	1664	\N	2017-07-17	2017-12-08		\N		5	3	2		35	\N	\N
36		\N	\N	1664	\N	2017-07-17	2017-11-07		\N		5	3	2		36	\N	\N
37		\N	\N	1664	1	2017-07-17	2018-01-31		\N		5	3	2		37	\N	jass.manasyan@gmail.com
38		\N	\N	1664	\N	2017-07-17	2018-03-02		\N		5	3	2		38	\N	\N
39		\N	\N	1664	\N	2017-07-17	2018-03-02		\N		5	3	2		39	\N	\N
40		\N	\N	1664	\N	2017-07-17	2017-11-06		\N		5	3	2		40	\N	\N
41		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		41	\N	\N
42		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		42	\N	\N
43		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		43	\N	\N
44		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		44	\N	\N
45		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		45	\N	\N
46		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		46	\N	\N
47		\N	\N	1664	\N	2017-07-17	2018-04-16		\N		5	3	2		47	\N	\N
48		\N	\N	1664	\N	2017-07-17	2018-04-16		\N		5	3	2		48	\N	\N
49		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		49	\N	\N
50		\N	\N	1664	\N	2017-07-17	2018-04-16		\N		5	3	2		50	\N	\N
51		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		51	\N	\N
52		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		52	\N	\N
53		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		53	\N	\N
54		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		54	\N	\N
55		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		55	\N	\N
56		\N	\N	1664	\N	2017-07-17	2018-04-19		\N		5	3	2		56	\N	\N
57		\N	\N	1664	\N	2017-07-17	2018-04-19		\N		5	3	2		57	\N	\N
58		\N	\N	1664	\N	2017-07-17	2018-04-19		\N		5	3	2		58	\N	\N
59		\N	\N	1664	\N	2017-07-17	2018-04-19		\N		5	3	2		59	\N	\N
60		\N	\N	1664	\N	2017-07-17	2018-04-19		\N		5	3	2		60	\N	\N
62		\N	\N	1664	\N	2017-07-17	2017-09-01		\N		5	3	2		62	\N	\N
63		\N	\N	1664	\N	2017-07-17	2017-09-18		\N		5	3	2		63	\N	\N
66		\N	\N	1664	\N	2017-07-17	2018-04-05		\N		5	3	2		66	\N	\N
67		\N	\N	1664	\N	2017-07-17	2018-03-22		\N		5	3	2		67	\N	\N
68		\N	\N	1664	\N	2017-07-17	2018-04-05		\N		5	3	2		68	\N	\N
69		\N	\N	1664	\N	2017-07-17	2018-03-16		\N		5	3	2		69	\N	\N
70		\N	\N	1664	1	2017-07-17	2018-01-30		\N		5	3	2		70	\N	jass.manasyan@gmail.com
71		\N	\N	1664	\N	2017-07-17	2018-04-05		\N		5	3	2		71	\N	\N
72		\N	\N	1664	\N	2017-07-17	2018-03-16		\N		5	3	2		72	\N	\N
73		\N	\N	1664	\N	2017-07-17	2017-11-27		\N		5	3	2		73	\N	\N
74		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		74	\N	\N
75		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		75	\N	\N
76		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		76	\N	\N
77		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		77	\N	\N
78		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		78	\N	\N
79		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		79	\N	\N
80		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		80	\N	\N
81		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		81	\N	\N
82		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		82	\N	\N
83		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		83	\N	\N
84		\N	\N	1664	\N	2017-07-17	2017-07-30		\N		5	3	2		84	\N	\N
85		\N	\N	1664	\N	2017-07-17	2017-09-02		\N		5	3	2		85	\N	\N
86		\N	\N	1664	\N	2017-07-17	2017-09-02		\N		5	3	2		86	\N	\N
87		\N	\N	1664	\N	2017-07-17	2017-08-19		\N		5	3	2		87	\N	\N
88		\N	\N	1664	\N	2017-07-17	2017-09-21		\N		5	3	2		88	\N	\N
89		\N	\N	1664	\N	2017-07-17	2017-08-31		\N		5	3	2		89	\N	\N
90		\N	\N	1664	1	2017-07-17	2017-10-12		\N		7	3	2		90	\N	\N
91		\N	\N	1664	2	2017-07-16	\N		\N		5	3	2		91	\N	\N
92		\N	\N	1664	\N	2017-07-17	2017-09-27		\N		5	3	2		92	\N	\N
93		\N	\N	1664	\N	2017-07-17	2017-09-13		\N		5	3	2		93	\N	\N
94		\N	\N	1664	\N	2017-07-17	2017-09-13		\N		5	3	2		94	\N	\N
95		\N	\N	1664	\N	2017-07-17	2017-09-27		\N		5	3	2		95	\N	\N
96		\N	\N	1664	\N	2017-07-17	2017-09-13		\N		5	3	2		96	\N	\N
97		\N	\N	1664	\N	2017-07-17	2017-09-21		\N		5	3	2		97	\N	\N
98		\N	\N	1664	\N	2017-07-17	2017-10-23		\N		5	3	2		98	\N	\N
99		\N	\N	1664	\N	2017-07-17	2017-09-27		\N		5	3	2		99	\N	\N
100		\N	\N	1664	\N	2017-07-17	2017-09-21		\N		5	3	2		100	\N	\N
101		\N	\N	1664	\N	2017-07-17	2017-09-27		\N		5	3	2		101	\N	\N
102		\N	\N	1664	\N	2017-07-17	2017-09-21		\N		5	3	2		102	\N	\N
103		\N	\N	1664	\N	2017-07-17	2017-09-27		\N		5	3	2		103	\N	\N
105		\N	\N	1664	1	2017-07-17	2018-01-19		\N		5	3	2		105	\N	jass.manasyan@gmail.com
106		\N	\N	1664	\N	2017-07-17	2018-03-16		\N		5	3	2		106	\N	\N
107		\N	\N	1664	\N	2017-07-17	2018-04-04		\N		5	3	2		107	\N	\N
108		\N	\N	1664	\N	2017-07-17	2017-11-21		\N		5	3	2		108	\N	\N
109		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		109	\N	\N
110		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		110	\N	\N
111		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		111	\N	\N
112		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		112	\N	\N
113		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		113	\N	\N
114		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		114	\N	\N
115		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		115	\N	\N
116		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		116	\N	\N
117		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		117	\N	\N
118		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		118	\N	\N
119		\N	\N	1664	\N	2017-07-17	2018-04-13		\N		5	3	2		119	\N	\N
120		\N	\N	1664	\N	2017-07-17	2018-04-16		\N		5	3	2		120	\N	\N
121		\N	\N	1664	\N	2017-07-17	2018-04-06		\N		5	3	2		121	\N	\N
122		\N	\N	1664	\N	2017-07-17	2018-04-12		\N		5	3	2		122	\N	\N
123		\N	\N	1664	\N	2017-07-17	2018-04-16		\N		5	3	2		123	\N	\N
124		\N	\N	1664	\N	2017-07-17	2017-08-31		\N		5	3	2		124	\N	\N
125		\N	\N	1664	\N	2017-07-17	2017-10-23		\N		5	3	2		125	\N	\N
126		\N	\N	1664	\N	2017-07-17	2017-10-23		\N		5	3	2		126	\N	\N
127		\N	\N	1664	\N	2017-07-17	2017-09-27		\N		5	3	2		127	\N	\N
128		\N	\N	1664	\N	2017-07-17	2017-09-27		\N		5	3	2		128	\N	\N
129		\N	\N	1664	\N	2017-07-17	2017-09-25		\N		5	3	2		129	\N	\N
130		\N	\N	1664	\N	2017-07-17	2017-09-27		\N		5	3	2		130	\N	\N
131		\N	\N	1664	\N	2017-07-17	2017-09-12		\N		5	3	2		131	\N	\N
132		\N	\N	1664	\N	2017-07-17	2017-09-13		\N		5	3	2		132	\N	\N
133		\N	\N	1664	\N	2017-07-17	2017-09-27		\N		5	3	2		133	\N	\N
134		\N	\N	1664	\N	2017-07-17	2017-09-27		\N		5	3	2		134	\N	\N
135		\N	\N	1664	2	2017-07-17	\N		\N		5	3	2		135	\N	\N
136		\N	\N	1664	\N	2017-07-17	2017-10-05		\N		5	3	2		136	\N	\N
137		\N	\N	1664	\N	2017-07-17	2017-09-24		\N		5	3	2		137	\N	\N
138		\N	\N	1664	\N	2017-07-17	2017-09-11		\N		5	3	2		138	\N	\N
139		\N	\N	1664	\N	2017-07-17	2017-09-11		\N		5	3	2		139	\N	\N
140		\N	\N	1664	\N	2017-07-17	2017-09-11		\N		5	3	2		140	\N	\N
141		\N	\N	1664	1	2017-07-16	2017-09-11		\N		5	3	2		141	\N	\N
142		\N	1460	1664	1	2017-07-16	2017-09-10		\N		5	3	2		142	\N	\N
143		\N	\N	1664	\N	2017-07-17	2017-09-12		\N		5	3	2		143	\N	\N
144		\N	\N	1664	\N	2017-07-17	2017-09-12		\N		5	3	2		144	\N	\N
145		\N	\N	1664	\N	2017-07-17	2017-09-12		\N		5	3	2		145	\N	\N
146		\N	\N	1664	\N	2017-07-17	2017-09-14		\N		5	3	2		146	\N	\N
147		\N	\N	1664	\N	2017-07-17	2017-09-12		\N		5	3	2		147	\N	\N
148		\N	\N	1664	\N	2017-07-17	2017-10-23		\N		5	3	2		148	\N	\N
149		\N	\N	1664	\N	2017-07-17	2017-10-11		\N		5	3	2		149	\N	\N
150		\N	\N	1664	\N	2017-07-17	2017-10-23		\N		5	3	2		150	\N	\N
151		\N	\N	1664	\N	2017-07-17	2017-10-27		\N		5	3	2		151	\N	\N
152		\N	\N	1664	\N	2017-07-17	2017-11-20		\N		5	3	2		152	\N	\N
153		\N	\N	1664	\N	2017-07-17	2017-11-20		\N		5	3	2		153	\N	\N
155		\N	\N	1664	\N	2017-07-17	2017-11-16		\N		5	3	2		155	\N	\N
156		\N	\N	1664	\N	2017-07-17	2017-11-06		\N		5	3	2		156	\N	\N
157		\N	\N	1664	\N	2017-07-17	2017-11-15		\N		5	3	2		157	\N	\N
158		\N	\N	1664	\N	2017-07-17	2017-12-12		\N		5	3	2		158	\N	\N
159		\N	\N	1664	\N	2017-07-17	2018-03-13		\N		5	3	2		159	\N	\N
160		\N	\N	1664	\N	2017-07-17	2018-03-29		\N		5	3	2		160	\N	\N
161		\N	\N	1664	\N	2017-07-17	2017-12-18		\N		5	3	2		161	\N	\N
162		\N	\N	1664	\N	2017-07-17	2018-01-12		\N		5	3	2		162	\N	\N
163		\N	\N	1664	\N	2017-07-17	2018-02-15		\N		5	3	2		163	\N	\N
164		\N	\N	1664	\N	2017-07-17	2018-02-20		\N		5	3	2		164	\N	\N
165		\N	\N	1664	\N	2017-07-17	2018-04-10		\N		5	3	2		165	\N	\N
166		\N	\N	1664	1	2017-07-17	2018-02-08		\N		5	3	2		166	\N	jass.manasyan@gmail.com
167		\N	\N	1664	1	2017-07-17	2018-01-12		\N		5	3	2		167	\N	jass.manasyan@gmail.com
168		\N	\N	1664	\N	2017-07-17	2018-05-03		\N		5	3	2		168	\N	\N
169		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		169	\N	\N
170		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		170	\N	\N
171		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		171	\N	\N
172		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		172	\N	\N
173		\N	\N	1664	\N	2017-07-17	2018-04-18		\N		5	3	2		173	\N	\N
174		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		174	\N	\N
175		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		175	\N	\N
177		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		177	\N	\N
178		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		178	\N	\N
179		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		179	\N	\N
180		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		180	\N	\N
181		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		181	\N	\N
182		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		182	\N	\N
183		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		183	\N	\N
184		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		184	\N	\N
185		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		185	\N	\N
186		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		186	\N	\N
187		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		187	\N	\N
188		\N	\N	1664	\N	2017-07-17	2018-04-16		\N		5	3	2		188	\N	\N
189		\N	\N	1664	\N	2017-07-16	2017-08-19		\N		5	3	2		189	\N	\N
190		\N	\N	1664	2	2017-07-16	\N		\N		5	3	2		190	\N	\N
191		\N	\N	1664	1	2017-07-16	2017-09-11		\N		5	3	2		191	\N	\N
192		\N	\N	1664	\N	2017-07-17	2017-09-11		\N		5	3	2		192	\N	\N
193		\N	\N	1664	\N	2017-07-17	2017-09-11		\N		5	3	2		193	\N	\N
194		\N	\N	1664	2	2017-07-16	\N		\N		5	3	2		194	\N	\N
195		\N	\N	1664	\N	2017-07-17	2017-09-11		\N		5	3	2		195	\N	\N
196		\N	\N	1664	\N	2017-07-17	2017-09-11		\N		5	3	2		196	\N	\N
197		\N	\N	1664	2	2017-07-17	\N		\N		5	3	2		197	\N	jass.manasyan@gmail.com
199		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		199	\N	\N
202		\N	\N	1664	\N	2017-07-17	2018-04-19		\N		5	3	2		202	\N	\N
203		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		203	\N	\N
204		\N	\N	1664	\N	2017-07-17	2018-04-18		\N		5	3	2		204	\N	\N
205		\N	\N	1664	\N	2017-07-17	2018-05-10		\N		5	3	2		205	\N	\N
206		\N	\N	1664	\N	2017-07-17	2017-09-11		\N		5	3	2		206	\N	\N
207		\N	\N	1664	\N	2017-07-17	2017-09-11		\N		5	3	2		207	\N	\N
208		\N	\N	1664	\N	2017-07-17	2017-10-23		\N		5	3	2		208	\N	\N
209		\N	\N	1664	\N	2017-07-17	2017-10-23		\N		5	3	2		209	\N	\N
210		\N	\N	1664	\N	2017-07-17	2017-09-12		\N		5	3	2		210	\N	\N
211		\N	\N	1664	\N	2017-07-17	2017-10-31		\N		5	3	2		211	\N	\N
212		\N	\N	1664	\N	2017-07-17	2017-09-11		\N		5	3	2		212	\N	\N
213		\N	\N	1664	\N	2017-07-17	2017-08-31		\N		5	3	2		213	\N	\N
214		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		214	\N	\N
215		\N	\N	1664	\N	2017-07-17	2017-09-02		\N		5	3	2		215	\N	\N
216		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		216	\N	\N
217		\N	\N	1664	\N	2017-07-17	2017-09-06		\N		5	3	2		217	\N	\N
218		\N	\N	1664	\N	2017-07-17	2017-09-05		\N		5	3	2		218	\N	\N
219		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		219	\N	\N
220		\N	\N	1664	4	2017-07-16	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	220	\N	vahram@hf.am
221		\N	\N	1664	\N	2017-07-17	2017-09-19		\N		5	3	2		221	\N	\N
222		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		222	\N	\N
223		\N	\N	1664	\N	2017-07-17	2017-09-12		\N		5	3	2		223	\N	\N
224		\N	\N	1664	4	2017-07-16	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	224	\N	vahram@hf.am
229		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		229	\N	\N
234		\N	\N	1664	\N	2017-07-17	2017-08-31		\N		5	3	2		234	\N	\N
245		\N	\N	1664	\N	2017-08-24	2018-03-02		\N		5	3	2		245	\N	\N
250		\N	\N	1664	\N	2017-08-24	2018-03-02		\N		5	3	2		250	\N	\N
251		\N	\N	1664	\N	2017-08-24	2017-10-23		\N		5	3	2		251	\N	\N
252		\N	\N	1664	\N	2017-08-24	2017-10-23		\N		5	3	2		252	\N	\N
253		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	253	\N	vahram@hf.am
254		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	254	\N	vahram@hf.am
255		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	255	\N	vahram@hf.am
256		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	256	\N	vahram@hf.am
257		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	257	\N	vahram@hf.am
258		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	258	\N	vahram@hf.am
259		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	259	\N	vahram@hf.am
260		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	260	\N	vahram@hf.am
261		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	261	\N	vahram@hf.am
262		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	262	\N	vahram@hf.am
263		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	263	\N	vahram@hf.am
264		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	264	\N	vahram@hf.am
265		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		265	\N	\N
266		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		266	\N	\N
267		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		267	\N	\N
268		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		268	\N	\N
269		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		269	\N	\N
270		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		270	\N	\N
271		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		271	\N	\N
272		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		272	\N	\N
273		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		273	\N	\N
274		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		274	\N	\N
275		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	275	\N	vahram@hf.am
276		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	276	\N	vahram@hf.am
277		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	277	\N	vahram@hf.am
278		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	278	\N	vahram@hf.am
279		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	279	\N	vahram@hf.am
280		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	280	\N	vahram@hf.am
281		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	281	\N	vahram@hf.am
282		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	282	\N	vahram@hf.am
283		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	283	\N	vahram@hf.am
284		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	284	\N	vahram@hf.am
285		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	285	\N	vahram@hf.am
286		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	286	\N	vahram@hf.am
287		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	287	\N	vahram@hf.am
288		\N	\N	1664	\N	2017-07-17	2017-09-11		\N		5	3	2		288	\N	\N
289		\N	\N	1664	\N	2017-07-17	2017-09-06		\N		5	3	2		289	\N	\N
290		\N	\N	1664	\N	2017-07-17	2017-09-10		\N		5	3	2		290	\N	\N
291		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		291	\N	\N
292		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		292	\N	\N
293		\N	\N	1664	1	2017-07-17	2018-02-05		\N		5	3	2		293	\N	jass.manasyan@gmail.com
294		\N	\N	1664	1	2017-07-17	2018-02-05		\N		5	3	2		294	\N	jass.manasyan@gmail.com
295		\N	\N	1664	\N	2017-07-17	2018-02-26		\N		5	3	2		295	\N	\N
296		\N	\N	1664	\N	2017-07-17	2017-12-18		\N		5	3	2		296	\N	\N
297		\N	\N	1664	\N	2017-07-17	2017-09-24		\N		5	3	2		297	\N	\N
298		\N	\N	1664	\N	2017-07-17	2017-09-24		\N		5	3	2		298	\N	\N
299		\N	\N	1664	\N	2017-08-24	\N		\N		5	3	2		299	\N	\N
300		\N	\N	1664	\N	2017-08-24	2017-09-12		\N		5	3	2		300	\N	\N
301		\N	\N	1664	\N	2017-08-24	2017-09-10		\N		5	3	2		301	\N	\N
302		\N	\N	1664	\N	2017-08-24	2017-09-12		\N		5	3	2		302	\N	\N
303		\N	\N	1664	\N	2017-08-24	2017-09-12		\N		5	3	2		303	\N	\N
304		\N	\N	1664	\N	2017-08-24	2017-09-12		\N		5	3	2		304	\N	\N
305		\N	\N	1664	\N	2017-08-24	\N		\N		5	3	2		305	\N	\N
306		\N	\N	1664	\N	2017-08-24	2017-09-11		\N		5	3	2		306	\N	\N
311		\N	\N	1664	\N	2017-07-17	2017-09-12		\N		5	3	2		311	\N	\N
312		\N	\N	1664	\N	2017-07-17	2017-09-11		\N		5	3	2		312	\N	\N
313		\N	\N	1664	\N	2017-07-17	2017-09-12		\N		5	3	2		313	\N	\N
314		\N	\N	1664	\N	2017-07-17	2017-09-11		\N		5	3	2		314	\N	\N
315		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		315	\N	\N
316		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		316	\N	\N
317		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		317	\N	\N
318		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		318	\N	\N
320		\N	\N	1664	\N	2017-07-17	2017-08-31		\N		5	3	2		320	\N	\N
321		\N	\N	1664	\N	2017-07-17	2017-09-11		\N		5	3	2		321	\N	\N
322		\N	\N	1664	\N	2017-07-17	2017-08-31		\N		5	3	2		322	\N	\N
328		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		328	\N	\N
329		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		329	\N	\N
330		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		330	\N	\N
331		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		331	\N	\N
332		\N	\N	1664	\N	2017-08-24	2017-10-18		\N		5	3	2		332	\N	\N
333		\N	\N	1664	1	2017-08-23	2017-09-11		\N		5	3	2		333	\N	\N
334		\N	\N	1664	\N	2017-07-17	2017-10-09		\N		5	3	2		334	\N	\N
335		\N	\N	1664	\N	2017-07-17	2018-04-16		\N		5	3	2		335	\N	\N
336		\N	\N	1664	\N	2017-07-17	2017-09-12		\N		5	3	2		336	\N	\N
337		\N	\N	1664	\N	2017-07-17	2017-09-13		\N		5	3	2		337	\N	\N
338		\N	\N	1664	\N	2017-07-17	2017-09-12		\N		5	3	2		338	\N	\N
339		\N	\N	1664	\N	2017-07-17	2018-03-21		\N		5	3	2		339	\N	\N
342		\N	\N	1664	\N	2017-07-17	2017-10-05		\N		5	3	2		342	\N	\N
345		\N	\N	1664	\N	2017-07-17	2017-09-19		\N		5	3	2		345	\N	\N
346		\N	\N	1664	1	2017-07-16	2017-10-13		\N		9	3	2		346	\N	\N
347		\N	\N	1664	\N	2017-07-17	2017-10-05		\N		5	3	2		347	\N	\N
348		\N	\N	1664	\N	2017-07-17	2017-09-21		\N		5	3	2		348	\N	\N
349		\N	\N	1664	\N	2017-07-17	2017-10-11		\N		5	3	2		349	\N	\N
350		\N	\N	1664	\N	2017-07-17	2017-10-12		\N		5	3	2		350	\N	\N
351		\N	\N	1664	\N	2017-07-17	2017-10-12		\N		5	3	2		351	\N	\N
352		\N	\N	1664	\N	2017-07-17	2017-09-27		\N		5	3	2		352	\N	\N
353		\N	\N	1664	1	2017-07-16	2017-10-19		\N		9	3	2		353	\N	\N
354		\N	\N	1664	\N	2017-07-17	2017-11-21		\N		5	3	2		354	\N	\N
355		\N	\N	1664	\N	2017-07-17	2017-09-21		\N		5	3	2		355	\N	\N
357		\N	\N	1664	1	2017-07-25	2017-11-22		\N		5	3	2		357	\N	\N
358		\N	\N	1664	\N	2017-07-17	2017-10-16		\N		5	3	2		358	\N	\N
359		\N	\N	1664	\N	2017-07-17	2017-10-27		\N		5	3	2		359	\N	\N
360		\N	\N	1664	\N	2017-07-17	2017-10-12		\N		5	3	2		360	\N	\N
361		\N	\N	1664	1	2017-07-16	2017-11-10		\N		9	3	2		361	\N	\N
362		\N	\N	1664	\N	2017-07-17	2017-10-12		\N		5	3	2		362	\N	\N
363		\N	\N	1664	\N	2017-07-17	2017-10-12		\N		5	3	2		363	\N	\N
364		\N	\N	1664	1	2017-07-17	2017-10-12		\N		7	3	2		364	\N	\N
365		\N	\N	1664	\N	2017-07-17	2017-10-12		\N		5	3	2		365	\N	\N
366		\N	\N	1664	\N	2017-07-17	2017-11-27		\N		5	3	2		366	\N	\N
367		\N	\N	1664	\N	2017-07-17	2017-11-22		\N		5	3	2		367	\N	\N
368		\N	\N	1664	1	2017-07-17	2017-11-21		\N		5	3	2		368	\N	\N
369		\N	\N	1664	\N	2017-07-17	2017-11-06		\N		5	3	2		369	\N	\N
370		\N	\N	1664	\N	2017-07-17	2017-11-06		\N		5	3	2		370	\N	\N
371		\N	\N	1664	1	2017-07-17	2018-01-15		\N		5	3	2		371	\N	jass.manasyan@gmail.com
372		\N	\N	1664	\N	2017-07-17	2017-11-15		\N		5	3	2		372	\N	\N
373		\N	\N	1664	\N	2017-07-17	2017-11-21		\N		5	3	2		373	\N	\N
374		\N	\N	1664	\N	2017-07-17	2017-11-21		\N		5	3	2		374	\N	\N
375		\N	\N	1664	\N	2017-07-17	2017-11-15		\N		5	3	2		375	\N	\N
376		\N	\N	1664	\N	2017-07-17	2017-11-10		\N		5	3	2		376	\N	\N
377		\N	\N	1664	\N	2017-07-17	2017-11-27		\N		5	3	2		377	\N	\N
378		\N	\N	1664	\N	2017-07-17	2017-11-22		\N		5	3	2		378	\N	\N
379		\N	\N	1664	\N	2017-07-17	2017-11-27		\N		5	3	2		379	\N	\N
380		\N	\N	1664	\N	2017-07-17	2017-11-22		\N		5	3	2		380	\N	\N
381		\N	\N	1664	\N	2017-07-17	2017-11-22		\N		5	3	2		381	\N	\N
382		\N	\N	1664	\N	2017-07-17	2017-11-22		\N		5	3	2		382	\N	\N
383		\N	\N	1664	\N	2017-07-17	2017-11-22		\N		5	3	2		383	\N	\N
384		\N	\N	1664	\N	2017-07-17	2017-11-06		\N		5	3	2		384	\N	\N
385		\N	\N	1664	\N	2017-07-17	2017-10-20		\N		5	3	2		385	\N	\N
386		\N	\N	1664	\N	2017-07-17	2017-12-08		\N		5	3	2		386	\N	\N
387		\N	\N	1664	\N	2017-07-17	2017-12-29		\N		5	3	2		387	\N	\N
388		\N	\N	1664	\N	2017-07-17	2017-11-30		\N		5	3	2		388	\N	\N
389		\N	\N	1664	\N	2017-07-17	2018-01-10		\N		5	3	2		389	\N	\N
390		\N	\N	1664	\N	2017-07-17	2017-12-05		\N		5	3	2		390	\N	\N
391		\N	\N	1664	\N	2017-07-17	2018-01-10		\N		5	3	2		391	\N	\N
392		\N	\N	1664	\N	2017-07-17	2017-12-05		\N		5	3	2		392	\N	\N
393		\N	\N	1664	\N	2017-07-17	2018-01-10		\N		5	3	2		393	\N	\N
394		\N	\N	1664	\N	2017-07-17	2018-01-10		\N		5	3	2		394	\N	\N
395		\N	\N	1664	\N	2017-07-17	2017-12-05		\N		5	3	2		395	\N	\N
396		\N	\N	1664	\N	2017-07-17	2018-01-10		\N		5	3	2		396	\N	\N
397		\N	\N	1664	\N	2017-07-17	2017-12-05		\N		5	3	2		397	\N	\N
398		\N	\N	1664	1	2017-07-17	2018-01-15		\N		5	3	2		398	\N	jass.manasyan@gmail.com
399		\N	\N	1664	\N	2017-07-17	2017-12-05		\N		5	3	2		399	\N	\N
400		\N	\N	1664	1	2017-07-17	2018-01-15		\N		5	3	2		400	\N	jass.manasyan@gmail.com
401		\N	\N	1664	\N	2017-07-17	2017-12-05		\N		5	3	2		401	\N	\N
402		\N	\N	1664	1	2017-07-17	2018-01-15		\N		5	3	2		402	\N	jass.manasyan@gmail.com
403		\N	\N	1664	\N	2017-07-17	2017-12-05		\N		5	3	2		403	\N	\N
404		\N	\N	1664	\N	2017-07-17	2017-12-08		\N		5	3	2		404	\N	\N
405		\N	\N	1664	\N	2017-07-17	2017-12-08		\N		5	3	2		405	\N	\N
406		\N	\N	1664	1	2017-07-17	2018-01-15		\N		5	3	2		406	\N	jass.manasyan@gmail.com
407		\N	\N	1664	1	2017-07-17	2018-01-15		\N		5	3	2		407	\N	jass.manasyan@gmail.com
408		\N	\N	1664	1	2017-07-17	2018-01-15		\N		5	3	2		408	\N	jass.manasyan@gmail.com
409		\N	\N	1664	1	2017-07-17	2018-01-15		\N		5	3	2		409	\N	jass.manasyan@gmail.com
410		\N	\N	1664	1	2017-07-17	2018-01-30		\N		5	3	2		410	\N	jass.manasyan@gmail.com
411		\N	\N	1664	1	2017-07-17	2018-01-30		\N		5	3	2		411	\N	jass.manasyan@gmail.com
412		\N	\N	1664	1	2017-07-17	2018-01-15		\N		5	3	2		412	\N	jass.manasyan@gmail.com
413		\N	\N	1664	1	2017-07-17	2018-01-23		\N		5	3	2		413	\N	jass.manasyan@gmail.com
414		\N	\N	1664	1	2017-07-17	2018-02-08		\N		5	3	2		414	\N	jass.manasyan@gmail.com
415		\N	\N	1664	1	2017-07-17	2018-01-23		\N		5	3	2		415	\N	jass.manasyan@gmail.com
416		\N	\N	1664	1	2017-07-17	2018-01-15		\N		5	3	2		416	\N	jass.manasyan@gmail.com
417		\N	\N	1664	1	2017-07-17	2018-02-08		\N		5	3	2		417	\N	jass.manasyan@gmail.com
418		\N	\N	1664	1	2017-07-17	2018-01-29		\N		5	3	2		418	\N	jass.manasyan@gmail.com
419		\N	\N	1664	1	2017-07-17	2018-02-08		\N		5	3	2		419	\N	jass.manasyan@gmail.com
420		\N	\N	1664	1	2017-07-17	2018-01-29		\N		5	3	2		420	\N	jass.manasyan@gmail.com
421		\N	\N	1664	1	2017-07-17	2018-01-30		\N		5	3	2		421	\N	jass.manasyan@gmail.com
422		\N	\N	1664	1	2017-07-17	2018-01-30		\N		5	3	2		422	\N	jass.manasyan@gmail.com
423		\N	\N	1664	1	2017-07-17	2018-01-29		\N		5	3	2		423	\N	jass.manasyan@gmail.com
424		\N	\N	1664	1	2017-07-17	2018-01-29		\N		5	3	2		424	\N	jass.manasyan@gmail.com
425		\N	\N	1664	1	2017-07-17	2018-01-29		\N		5	3	2		425	\N	jass.manasyan@gmail.com
426		\N	\N	1664	\N	2017-07-17	2017-10-02		\N		5	3	2		426	\N	\N
427		\N	\N	1664	\N	2017-07-17	2017-09-06		\N		5	3	2		427	\N	\N
428		\N	\N	1664	\N	2017-07-17	2017-08-30		\N		5	3	2		428	\N	\N
429		\N	\N	1664	\N	2017-07-17	2017-09-06		\N		5	3	2		429	\N	\N
430		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		430	\N	\N
431		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		431	\N	\N
432		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		432	\N	\N
433		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		433	\N	\N
434		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		434	\N	\N
435		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		435	\N	\N
436		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		436	\N	\N
437		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		437	\N	\N
438		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		438	\N	\N
443		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		443	\N	\N
444		\N	\N	1664	\N	2017-07-17	2018-03-02		\N		5	3	2		444	\N	\N
445		\N	\N	1664	\N	2017-07-17	2017-12-27		\N		5	3	2		445	\N	\N
446		\N	\N	1664	\N	2017-07-17	2017-11-07		\N		5	3	2		446	\N	\N
447		\N	\N	1664	\N	2017-07-17	2018-05-10		\N		5	3	2		447	\N	\N
448		\N	\N	1664	1	2017-07-17	2018-02-02		\N		5	3	2		448	\N	jass.manasyan@gmail.com
449		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		449	\N	\N
450		\N	\N	1664	\N	2017-07-17	2017-11-06		\N		5	3	2		450	\N	\N
451		\N	\N	1664	\N	2017-07-17	2017-11-22		\N		5	3	2		451	\N	\N
452		\N	\N	1664	1	2017-07-17	2017-11-22		\N		5	3	2		452	\N	\N
453		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		453	\N	\N
454		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		454	\N	\N
455		\N	\N	1664	\N	2017-07-17	2017-11-21		\N		5	3	2		455	\N	\N
456		\N	\N	1664	\N	2017-07-17	2017-11-21		\N		5	3	2		456	\N	\N
457		\N	\N	1664	\N	2017-07-17	2017-11-22		\N		5	3	2		457	\N	\N
458		\N	\N	1664	\N	2017-07-17	2017-11-03		\N		5	3	2		458	\N	\N
459		\N	\N	1664	\N	2017-07-17	2017-11-03		\N		5	3	2		459	\N	\N
460		\N	\N	1664	4	2017-07-16	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	460	\N	vahram@hf.am
461		\N	\N	1664	\N	2017-07-17	2017-10-11		\N		5	3	2		461	\N	\N
463		\N	\N	1664	4	2017-07-16	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	463	\N	vahram@hf.am
464		\N	\N	1664	2	2017-07-17	\N		\N		5	3	2		464	\N	jass.manasyan@gmail.com
465		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		465	\N	\N
466		\N	\N	1664	\N	2017-07-17	2017-09-12		\N		5	3	2		466	\N	\N
467		\N	\N	1664	\N	2017-07-17	2017-10-11		\N		5	3	2		467	\N	\N
468		\N	\N	1664	\N	2017-07-17	2017-09-20		\N		5	3	2		468	\N	\N
469		\N	\N	1664	4	2017-07-16	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	469	\N	vahram@hf.am
470		\N	\N	1664	\N	2017-07-17	2017-09-12		\N		5	3	2		470	\N	\N
471		\N	\N	1664	\N	2017-07-17	2017-10-26		\N		5	3	2		471	\N	\N
472		\N	\N	1664	\N	2017-07-17	2017-10-11		\N		5	3	2		472	\N	\N
473		\N	\N	1664	4	2017-07-16	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	473	\N	vahram@hf.am
474		\N	\N	1664	\N	2017-07-17	2017-10-09		\N		5	3	2		474	\N	\N
475		\N	\N	1664	4	2017-07-16	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	475	\N	vahram@hf.am
477		\N	\N	1664	\N	2017-07-17	2017-09-13		\N		5	3	2		477	\N	\N
478		\N	\N	1664	\N	2017-07-17	2017-10-26		\N		5	3	2		478	\N	\N
479		\N	\N	1664	\N	2017-07-17	2017-10-11		\N		5	3	2		479	\N	\N
481		\N	\N	1664	4	2017-07-16	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	481	\N	vahram@hf.am
482		\N	\N	1664	4	2017-07-16	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	482	\N	vahram@hf.am
483		\N	\N	1664	2	2017-07-17	\N		\N		5	3	2		483	\N	jass.manasyan@gmail.com
484		\N	\N	1664	\N	2017-07-17	2017-10-11		\N		5	3	2		484	\N	\N
485		\N	\N	1664	1	2017-07-16	2017-08-30		\N		5	3	2		485	\N	\N
486		\N	\N	1664	\N	2017-07-17	2017-08-30		\N		5	3	2		486	\N	\N
487		\N	\N	1664	\N	2017-07-17	2017-10-11		\N		5	3	2		487	\N	\N
488		\N	\N	1664	\N	2017-07-17	2017-08-15		\N		5	3	2		488	\N	\N
489		\N	\N	1664	\N	2017-07-17	2017-09-13		\N		5	3	2		489	\N	\N
490		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017	490	\N	vahram@hf.am
491		\N	\N	1664	\N	2017-07-17	2017-09-10		\N		5	3	2		491	\N	\N
492		\N	\N	1664	\N	2017-07-17	2017-10-23		\N		5	3	2		492	\N	\N
493		\N	\N	1664	\N	2017-07-17	2017-09-12		\N		5	3	2		493	\N	\N
494		\N	\N	1664	\N	2017-07-17	2017-10-11		\N		5	3	2		494	\N	\N
495		\N	\N	1664	\N	2017-07-17	2017-10-11		\N		5	3	2		495	\N	\N
496		\N	\N	1664	\N	2017-07-17	2017-09-20		\N		5	3	2		496	\N	\N
497		\N	\N	1664	2	2017-07-17	\N		\N		5	3	2		497	\N	jass.manasyan@gmail.com
498		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		498	\N	\N
499		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		499	\N	\N
500		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		500	\N	\N
501		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		501	\N	\N
502		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		502	\N	\N
503		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		503	\N	\N
504		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		504	\N	\N
505		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		505	\N	\N
506		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		506	\N	\N
507		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		507	\N	\N
509		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		509	\N	\N
510		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		510	\N	\N
511		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		511	\N	\N
512		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		512	\N	\N
513		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		513	\N	\N
514		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		514	\N	\N
515		\N	\N	1664	2	2017-07-17	\N		\N		5	3	2		515	\N	vahram@hf.am
516		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		516	\N	\N
517		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		517	\N	\N
518		\N	\N	1664	\N	2017-07-17	2017-09-11		\N		5	3	2		518	\N	\N
519		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		519	\N	\N
520		\N	\N	1664	1	2017-07-17	2017-10-09		\N		5	3	2		520	\N	\N
521		\N	\N	1664	\N	2017-07-17	2017-11-06		\N		5	3	2		521	\N	\N
522		\N	\N	1664	\N	2017-07-17	2018-03-16		\N		5	3	2		522	\N	\N
523		\N	\N	1664	\N	2017-07-17	2017-10-09		\N		5	3	2		523	\N	\N
524		\N	\N	1664	\N	2017-07-17	2017-09-13		\N		5	3	2		524	\N	\N
525		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		525	\N	\N
526		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		526	\N	\N
527		\N	\N	1664	4	2017-07-16	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	527	\N	vahram@hf.am
528		\N	\N	1664	\N	2017-07-17	2017-11-06		\N		5	3	2		528	\N	\N
529		\N	\N	1664	\N	2017-07-17	2017-10-31		\N		5	3	2		529	\N	\N
530		\N	\N	1664	\N	2017-07-17	2017-09-13		\N		5	3	2		530	\N	\N
531		\N	\N	1664	2	2017-07-16	\N		\N		5	3	2		531	\N	\N
532		\N	\N	1664	1	2017-07-17	2018-01-26		\N		5	3	2		532	\N	jass.manasyan@gmail.com
533		\N	\N	1664	\N	2017-07-17	2017-10-31		\N		5	3	2		533	\N	\N
534		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017	534	\N	vahram@hf.am
535		\N	\N	1664	\N	2017-07-17	2017-11-06		\N		5	3	2		535	\N	\N
536		\N	\N	1664	1	2017-07-17	2017-10-09		\N		5	3	2		536	\N	\N
537		\N	\N	1664	\N	2017-07-17	2017-10-23		\N		5	3	2		537	\N	\N
538		\N	\N	1664	\N	2017-07-17	2017-09-13		\N		5	3	2		538	\N	\N
539		\N	\N	1664	\N	2017-07-17	2017-09-12		\N		5	3	2		539	\N	\N
540		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		540	\N	\N
541		\N	\N	1664	\N	2017-07-17	2017-09-13		\N		5	3	2		541	\N	\N
542		\N	\N	1664	\N	2017-07-17	2017-08-19		\N		5	3	2		542	\N	\N
543		\N	\N	1664	\N	2017-07-17	2017-09-13		\N		5	3	2		543	\N	\N
544		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		544	\N	\N
545		\N	\N	1664	\N	2017-07-17	2017-11-06		\N		5	3	2		545	\N	\N
546		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		546	\N	\N
547		\N	\N	1664	\N	2017-07-17	2017-10-18		\N		5	3	2		547	\N	\N
549		\N	\N	1664	\N	2017-07-17	2017-10-11		\N		5	3	2		549	\N	\N
550		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		550	\N	\N
551		\N	\N	1664	4	2017-07-16	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	551	\N	vahram@hf.am
553		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		553	\N	\N
554		\N	\N	1664	\N	2017-07-17	2017-10-11		\N		5	3	2		554	\N	\N
555		\N	\N	1664	2	2017-07-16	\N		\N		5	3	2		555	\N	\N
556		\N	\N	1664	\N	2017-07-17	2017-11-06		\N		5	3	2		556	\N	\N
557		\N	\N	1664	4	2017-07-16	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	557	\N	vahram@hf.am
558		\N	\N	1664	\N	2017-07-17	2017-09-11		\N		5	3	2		558	\N	\N
559		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017	559	\N	vahram@hf.am
560		\N	\N	1664	\N	2017-07-17	2017-08-22		\N		5	3	2		560	\N	\N
561		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		561	\N	\N
562		\N	\N	1664	\N	2017-07-17	2017-10-09		\N		5	3	2		562	\N	\N
563		\N	\N	1664	4	2017-07-16	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	563	\N	vahram@hf.am
564		\N	\N	1664	\N	2017-07-17	2018-04-05		\N		5	3	2		564	\N	\N
565		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		565	\N	\N
566		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		566	\N	\N
567		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		567	\N	\N
568		\N	\N	1664	\N	2017-07-17	2017-11-07		\N		5	3	2		568	\N	\N
569		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		569	\N	\N
570		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		570	\N	\N
571		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		571	\N	\N
572		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		572	\N	\N
573		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		573	\N	\N
574		\N	\N	1664	\N	2017-07-17	2018-02-21		\N		5	3	2		574	\N	\N
575		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		575	\N	\N
576		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		576	\N	\N
577		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		577	\N	\N
578		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		578	\N	\N
579		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		579	\N	\N
580		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		580	\N	\N
581		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		581	\N	\N
582		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	582	\N	vahram@hf.am
583		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	583	\N	vahram@hf.am
584		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	584	\N	vahram@hf.am
585		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	585	\N	vahram@hf.am
586		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	586	\N	vahram@hf.am
587		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	587	\N	vahram@hf.am
588		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	588	\N	vahram@hf.am
589		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	589	\N	vahram@hf.am
590		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	590	\N	vahram@hf.am
591		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	591	\N	vahram@hf.am
592		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	592	\N	vahram@hf.am
593		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	593	\N	vahram@hf.am
594		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	594	\N	vahram@hf.am
595		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	595	\N	vahram@hf.am
596		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	596	\N	vahram@hf.am
597		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	597	\N	vahram@hf.am
598		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	598	\N	vahram@hf.am
599		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	599	\N	vahram@hf.am
600		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	600	\N	vahram@hf.am
601		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	601	\N	vahram@hf.am
602		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	602	\N	vahram@hf.am
603		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	603	\N	vahram@hf.am
604		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	604	\N	vahram@hf.am
605		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	605	\N	vahram@hf.am
606		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	606	\N	vahram@hf.am
607		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	607	\N	vahram@hf.am
608		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	608	\N	vahram@hf.am
609		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	609	\N	vahram@hf.am
610		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	610	\N	vahram@hf.am
611		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	611	\N	vahram@hf.am
612		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	612	\N	vahram@hf.am
613		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	613	\N	vahram@hf.am
614		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	614	\N	vahram@hf.am
615		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	615	\N	vahram@hf.am
616		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	616	\N	vahram@hf.am
617		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	617	\N	vahram@hf.am
618		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	618	\N	vahram@hf.am
619		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	619	\N	vahram@hf.am
620		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	620	\N	vahram@hf.am
621		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	621	\N	vahram@hf.am
622		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	622	\N	vahram@hf.am
623		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	623	\N	vahram@hf.am
624		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	624	\N	vahram@hf.am
625		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	625	\N	vahram@hf.am
626		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	626	\N	vahram@hf.am
627		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	627	\N	vahram@hf.am
628		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	628	\N	vahram@hf.am
629		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	629	\N	vahram@hf.am
630		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	630	\N	vahram@hf.am
631		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	631	\N	vahram@hf.am
632		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	632	\N	vahram@hf.am
633		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	633	\N	vahram@hf.am
634		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	634	\N	vahram@hf.am
635		\N	\N	1664	\N	2017-07-17	2018-02-15		\N		5	3	2		635	\N	\N
636		\N	\N	1664	\N	2017-07-17	2017-10-23		\N		5	3	2		636	\N	\N
637		\N	\N	1664	\N	2017-07-17	2017-09-02		\N		5	3	2		637	\N	\N
639		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		639	\N	\N
640		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		640	\N	\N
641		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		641	\N	\N
642		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		642	\N	\N
643		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		643	\N	\N
644		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		644	\N	\N
645		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		645	\N	\N
646		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		646	\N	\N
647		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		647	\N	\N
648		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		648	\N	\N
649		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		649	\N	\N
650		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		650	\N	\N
651		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		651	\N	\N
652		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		652	\N	\N
653		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		653	\N	\N
654		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		654	\N	\N
655		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		655	\N	\N
656		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		656	\N	\N
657		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		657	\N	\N
658		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		658	\N	\N
659		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 16/01/2018	659	\N	jass.manasyan@gmail.com
660		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 16/01/2018	660	\N	jass.manasyan@gmail.com
661		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 16/01/2018	661	\N	jass.manasyan@gmail.com
662		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 16/01/2018	662	\N	jass.manasyan@gmail.com
663		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 16/01/2018	663	\N	jass.manasyan@gmail.com
664		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 16/01/2018	664	\N	jass.manasyan@gmail.com
665		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 16/01/2018	665	\N	jass.manasyan@gmail.com
666		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 16/01/2018	666	\N	jass.manasyan@gmail.com
667		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 16/01/2018	667	\N	jass.manasyan@gmail.com
668		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 16/01/2018	668	\N	jass.manasyan@gmail.com
669		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	669	\N	vahram@hf.am
670		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 16/01/2018	670	\N	jass.manasyan@gmail.com
671		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 16/01/2018	671	\N	jass.manasyan@gmail.com
672		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	672	\N	vahram@hf.am
673		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 16/01/2018	673	\N	jass.manasyan@gmail.com
677		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		677	\N	\N
678		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		678	\N	\N
679		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		679	\N	\N
680		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		680	\N	\N
681		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		681	\N	\N
682		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		682	\N	\N
683		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		683	\N	\N
684		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		684	\N	\N
685		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		685	\N	\N
687		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		687	\N	\N
688		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		688	\N	\N
689		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		689	\N	\N
690		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		690	\N	\N
691		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		691	\N	\N
692		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		692	\N	\N
693		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		693	\N	\N
694		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		694	\N	\N
695		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		695	\N	\N
696		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		696	\N	\N
697		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		697	\N	\N
698		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		698	\N	\N
699		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		699	\N	\N
700		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		700	\N	\N
701		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		701	\N	\N
702		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		702	\N	\N
703		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		703	\N	\N
704		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		704	\N	\N
705		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		705	\N	\N
706		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		706	\N	\N
707		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		707	\N	\N
708		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		708	\N	\N
709		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		709	\N	\N
710		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		710	\N	\N
711		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		711	\N	\N
712		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		712	\N	\N
713		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		713	\N	\N
714		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		714	\N	\N
715		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		715	\N	\N
716		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		716	\N	\N
717		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		717	\N	\N
718		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		718	\N	\N
719		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		719	\N	\N
720		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		720	\N	\N
721		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		721	\N	\N
722		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		722	\N	\N
723		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		723	\N	\N
724		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		724	\N	\N
725		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		725	\N	\N
726		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		726	\N	\N
727		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		727	\N	\N
728		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		728	\N	\N
729		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		729	\N	\N
730		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		730	\N	\N
731		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		731	\N	\N
732		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		732	\N	\N
733		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		733	\N	\N
734		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		734	\N	\N
735		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		735	\N	\N
736		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		736	\N	\N
737		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		737	\N	\N
738		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		738	\N	\N
739		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		739	\N	\N
740		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		740	\N	\N
741		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		741	\N	\N
742		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		742	\N	\N
743		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		743	\N	\N
744		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		744	\N	\N
745		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		745	\N	\N
746		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		746	\N	\N
747		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		747	\N	\N
748		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		748	\N	\N
749		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		749	\N	\N
750		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		750	\N	\N
751		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		751	\N	\N
752		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		752	\N	\N
753		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		753	\N	\N
754		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		754	\N	\N
755		\N	\N	1664	\N	2017-07-17	2018-04-03		\N		5	3	2		755	\N	\N
756		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		756	\N	\N
757		\N	\N	1664	\N	2017-07-17	2017-08-18		\N		5	3	2		757	\N	\N
758		\N	\N	1664	\N	2017-07-17	2017-09-19		\N		5	3	2		758	\N	\N
759		\N	\N	1664	\N	2017-07-17	2017-09-10		\N		5	3	2		759	\N	\N
760		\N	\N	1664	\N	2017-07-17	2018-03-29		\N		5	3	2		760	\N	\N
761		\N	\N	1664	4	2017-07-16	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	761	\N	vahram@hf.am
762		\N	\N	1664	\N	2017-07-17	2017-09-12		\N		5	3	2		762	\N	\N
763		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 16/01/2018	763	\N	jass.manasyan@gmail.com
764		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 16/01/2018	764	\N	jass.manasyan@gmail.com
765		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 16/01/2018	765	\N	jass.manasyan@gmail.com
766		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		766	\N	\N
767		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		767	\N	\N
768		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		768	\N	\N
769		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		769	\N	\N
770		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		770	\N	\N
771		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		771	\N	\N
772		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		772	\N	\N
773		\N	\N	1664	\N	2017-07-17	2017-10-27		\N		5	3	2		773	\N	\N
774		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		774	\N	\N
775		\N	\N	1664	1	2017-07-17	\N		\N		5	3	2		775	\N	jass.manasyan@gmail.com
776		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		776	\N	\N
777		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		777	\N	\N
778		\N	\N	1664	1	2017-07-17	2018-01-12		\N		5	3	2		778	\N	vahram@hf.am
779		\N	\N	1664	1	2017-07-17	2018-01-12		\N		5	3	2		779	\N	vahram@hf.am
780		\N	\N	1664	1	2017-07-17	2018-01-12		\N		5	3	2		780	\N	vahram@hf.am
781		\N	\N	1664	1	2017-07-17	2018-01-12		\N		5	3	2		781	\N	vahram@hf.am
782	pyunik	\N	\N	460	1	2017-07-19	\N	10.205.140.55	2	MeghradzorOmni	9	3	2		782	\N	\N
783	pyunik	\N	\N	460	1	2017-07-19	\N	91.205.140.55	\N		9	3	2		783	\N	\N
784	Fantan Dproc	\N	\N	1303	1	2017-07-19	\N	10.207.133.171	2	HF_Fantan	9	3	2		784	\N	\N
785	Fantan Dproc	\N	\N	1303	1	2017-07-19	\N	91.207.133.171	\N		9	3	2		785	\N	\N
786	katnaaghbyur	\N	\N	483	1	2017-07-19	\N	91.205.140.12	\N		9	3	2		786	\N	\N
787		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		787	\N	\N
788		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		788	\N	\N
789		\N	\N	1664	\N	2017-07-17	\N		\N		5	3	2		789	\N	\N
798	Araks	\N	\N	886	1	\N	\N	10.205.133.9	2	Srdbad_AP2	7	3	2		800	\N	\N
799	Araks	\N	\N	886	1	2017-08-01	\N	91.205.133.9	\N		7	3	2		801	\N	\N
800	Amasia(Armavir)	\N	\N	894	1	2017-08-02	\N	10.205.133.10	2	Srdbad_AP2	7	3	2		802	\N	\N
801	Amasia(Armavir)	\N	\N	894	1	2017-08-01	\N	91.205.133.10	\N		7	3	2		803	\N	\N
802	Artashar	\N	\N	876	1	2017-08-02	\N	10.205.133.23	2	Mmor_AP3	7	3	2		804	\N	\N
803	Artashar	\N	\N	876	1	2017-08-02	\N		\N		7	3	2		805	\N	\N
804	Artashar	\N	\N	876	1	2017-08-02	\N	91.205.133.23	\N		7	3	2		806	\N	\N
805	Arazap	\N	\N	873	1	2017-08-02	\N	10.205.138.155	2	Yerasxahun_Omni	7	3	2		807	\N	\N
806	Arazap	\N	\N	873	1	2017-08-02	\N	91.205.138.155	\N		7	3	2		808	\N	\N
807	Aygevan	\N	\N	885	1	2017-08-02	\N	10.205.133.7	2	Hf_Armavir_Ap2	7	3	2		809	\N	\N
809	Aygevan	\N	\N	885	1	2017-08-02	\N	91.205.133.7	\N		7	3	2		810	\N	\N
812	shorja	\N	\N	375	1	2017-08-02	\N	10.205.141.44	2	TsovazardHF	9	3	2		813	\N	\N
813	shorja	\N	\N	375	1	2017-08-02	\N		\N		9	3	2		814	\N	\N
814	shorja	\N	\N	375	1	2017-08-02	\N	91.205.141.44	\N		9	3	2		815	\N	\N
815	Vahan	\N	\N	377	1	2017-08-01	\N	10.205.141.55	2	VahanOmni	9	3	2		816	\N	\N
816	Vahan	\N	\N	377	1	2017-08-01	\N	91.205.141.55	\N		9	3	2		817	\N	\N
822	vanevan	\N	\N	323	1	2017-07-31	\N	10.205.134.81	2	VardenisRocket	9	3	2		823	\N	\N
823	vanevan	\N	\N	1030	1	2017-08-01	\N	91.205.134.81	\N		9	3	2		824	\N	\N
824	eranos1	\N	\N	989	1	2017-08-02	\N	10.205.134.30	2	MtuniSector2	9	3	2		825	\N	\N
825	eranos1	\N	\N	989	1	2017-08-02	\N	91.205.134.30	\N		9	3	2		826	\N	\N
826	geghaqar	\N	\N	336	1	2017-08-02	2017-11-22	10.205.134.87	2	AzpunkHF	9	3	2		827	\N	\N
827	geghaqar	\N	\N	336	1	2017-08-02	2018-04-06		\N		9	3	2		828	\N	\N
828	areguni	\N	\N	344	1	2017-08-03	\N	10.205.141.3	2	TsovinarBullet	9	3	2		829	\N	\N
829	areguni	\N	\N	344	1	2017-08-03	\N	91.205.141.3	\N		9	3	2		830	\N	\N
830	tsapatagh	\N	\N	345	1	2017-08-03	\N	10.205.134.54	2	ArtanishHF	9	3	2		831	\N	\N
831	eranos1	\N	\N	989	1	2017-08-02	\N		\N		9	3	2		832	\N	\N
832	areguni	\N	\N	344	1	2017-08-03	\N		\N		9	3	2		833	\N	\N
833	tsapatagh	\N	\N	345	1	2017-08-03	\N	91.205.134.54	\N		9	3	2		834	\N	\N
834	yeranos2	\N	\N	990	1	2017-08-03	\N	10.205.134.19	2	MtuniSector2	9	3	2		835	\N	\N
835	yeranos2	\N	\N	990	1	2017-08-03	\N	91.205.134.19	\N		9	3	2		836	\N	\N
836	dzoragyugh2	\N	\N	365	1	2017-08-03	\N	10.205.134.20	2	DzoragyughHF	9	3	2		837	\N	\N
837	dzoragyugh2	\N	\N	16	1	2017-08-03	\N	91.205.134.20	\N		20	3	2		838	\N	\N
838	martuni1	\N	\N	1000	1	2017-08-03	\N	91.205.134.26	\N		9	3	2		839	\N	\N
839	martuni1	\N	\N	1000	1	2017-08-03	\N	10.205.134.26	2	MtuniSector1	9	3	2		840	\N	\N
840	martuni2	\N	\N	1001	1	2017-08-03	\N	10.205.134.25	2	MtuniSector1	9	3	2		841	\N	\N
841	martuni2	\N	\N	1001	1	2017-08-03	\N	91.205.134.25	\N		9	3	2		842	\N	\N
843	veringetashen2	\N	\N	996	1	2017-08-03	\N	10.205.141.21	2	GetashenHF	9	3	2		843	\N	\N
844	veringetashen2	\N	\N	364	1	2017-08-03	\N	91.205.141.21	\N		9	3	2		844	\N	\N
845	vanevan	\N	\N	1664	2	2017-08-01	\N		\N		9	3	2		845	\N	\N
848	 Armavir Sector 90	\N	\N	42	1	2017-08-13	\N	10.207.132.108	1	 Hf_Armavir_Ap2	8	3	2		847	\N	\N
849	 Armavir Talin Ap Link	\N	\N	42	1	2017-08-14	\N	10.206.133.152	1	 HF_Talin_Link	8	3	2		848	\N	\N
850	 Armavir_Partizak_link	\N	\N	42	1	2017-08-14	2017-09-24	10.206.133.116	2	 partizaklink	8	3	2		849	\N	\N
851	 Armavir Sector 120	\N	\N	42	1	2017-08-14	2018-05-11	10.207.132.115	1	 Hf_Armavir_AP	8	3	2		850	\N	\N
852	 ArmavirSardarapatLink	\N	\N	42	1	2017-08-14	\N	10.206.133.124	2	 Srdbad5	8	3	2		851	\N	\N
853	ArmavirBagramyanLink	\N	\N	42	1	2017-08-14	2018-02-26	10.207.132.103	2	 Baghramyan school	8	3	2		852	\N	\N
854	Armavir build	\N	\N	42	1	2017-08-14	\N		\N		8	3	2		853	\N	\N
855	Armavir build	\N	\N	42	1	2017-08-14	\N		\N		8	3	2		854	\N	\N
856	Armavir build	\N	\N	42	1	2017-08-14	2017-09-24		\N		8	3	2		855	\N	\N
857	Armavir build	\N	\N	42	1	2017-08-14	\N		\N		8	3	2		856	\N	\N
858	 SardarapatArmavirLink	\N	\N	197	1	2017-08-14	\N	10.206.133.123	1	 Srdbad5	8	3	2		857	\N	\N
859	 SardarapatRocketOmni	\N	\N	197	1	2017-08-14	\N	10.207.132.109	1	 Srdbad_AP2	8	3	2		858	\N	\N
860	Sardarapat build	\N	\N	197	1	2017-08-14	\N		\N		8	3	2		859	\N	\N
861	BagramyanArmavirLink	\N	\N	904	1	2017-08-14	2018-02-26	10.207.132.104	1	Baghramyan school	8	3	2		860	\N	\N
862	BaghramyanBullet	\N	\N	904	1	2017-08-14	2018-02-16	10.207.132.114	1	BaghramyanHF	8	3	2		861	\N	\N
863	Baghramyan School AP	\N	\N	904	1	2017-08-14	2018-02-16		\N		8	3	2		862	\N	\N
864	MetsamorSwitch	\N	\N	196	1	2017-08-14	\N	10.206.133.117	\N		8	3	2		863	\N	\N
865	 Metsamor_Mayisyan	\N	\N	196	1	2017-08-14	\N	10.207.132.113	1	Mmor_AP2	8	3	2		864	\N	\N
866	Metsamor Nano	\N	\N	196	1	2017-08-14	\N	10.206.133.119	1	Mmor_AP3	8	3	2		865	\N	\N
867	Metsamor Sector	\N	\N	196	1	2017-08-14	\N	10.207.132.110	1	 Hf_Mecamor_AP	8	3	2		866	\N	\N
868	Metsamor build	\N	\N	196	1	2017-08-14	\N		\N		8	3	2		867	\N	\N
869	MetsamorAghavnatun	\N	\N	196	1	2017-08-14	\N	10.206.133.112	1	Aghavnatun_HF	8	3	2		868	\N	\N
870	AghavnatunMetsamor	\N	\N	916	1	2017-08-14	\N	10.206.133.111	2	Aghavnatun_HF	8	3	2		869	\N	\N
871	Aghavnatun sector	\N	\N	916	1	2017-08-14	\N	10.207.132.111	1	HF_Aghavnatun	8	3	2		870	\N	\N
872	Aghavnatun school	\N	\N	916	1	2017-08-14	\N		\N		8	3	2		871	\N	\N
873	Aghavnatun Nano	\N	\N	916	1	2017-08-14	\N	10.206.133.110	1	AghavnatunAP2	8	3	2		872	\N	\N
874	 Vagharshapat  Omni Bullet	\N	\N	40	1	2017-08-14	2017-11-21	10.207.132.135	1	EchAP2	8	3	2		873	\N	\N
875	VagharshapatGriboedovLink	\N	\N	40	1	2017-08-14	2017-11-20	10.206.133.166	2	Griboedov_hf	8	3	2		874	\N	\N
876	Vagharshapat build	\N	\N	40	1	2017-08-14	2017-11-21		\N		8	3	2		875	\N	\N
877	GriboedovVagharshapatLink	\N	\N	927	1	2017-08-14	2017-11-20	10.206.133.167	1	Griboedov_hf	8	3	2		876	\N	\N
878	Gribaedov omni	\N	\N	927	1	2017-08-14	\N	10.206.133.168	1	ZVTS_AP	8	3	2		877	\N	\N
879	Griboedov School AP	\N	\N	927	1	2017-08-14	\N		\N		8	3	2		878	\N	\N
880	ZvartnotsSwitch	\N	\N	198	1	2017-08-14	\N	10.206.133.165	\N		8	3	2		879	\N	\N
881	ZvartnotsHF_Rocket	\N	\N	198	1	2017-08-14	\N	10.207.132.136	1	Zvartnots_AP2	8	3	2		880	\N	\N
882	Zvartnots build	\N	\N	198	1	2017-08-14	\N		\N		8	3	2		881	\N	\N
883	ZvartnocAP_Gay	\N	\N	198	1	2017-08-14	\N	10.207.132.142	1	HF_Zvartnoc_Gay	8	3	2		882	\N	\N
884	paraqar-sw	\N	\N	1666	1	2017-08-14	\N		\N		8	3	2		883	\N	\N
885	ParakarMerdzavan	\N	\N	1666	1	2017-08-14	\N	10.207.132.140	1	SiroRocketOmni	8	3	2		884	\N	\N
886	ParakarMusalerAP	\N	\N	1666	1	2017-08-14	\N	10.207.132.112	1	Musaler-Paraqar	8	3	2		885	\N	\N
887	yerashxahun-sw	\N	\N	878	1	2017-08-14	\N	10.207.132.138	\N		8	3	2		886	\N	\N
888	Yerasxahun Omni	\N	\N	878	1	2017-08-14	\N	10.207.132.137	1	 Yerasxahun_Omni	8	3	2		887	\N	\N
889	Yeraskhahun School AP	\N	\N	878	1	2017-08-14	\N		\N		8	3	2		888	\N	\N
890	abovyan1-sw	\N	\N	25	1	2017-08-15	\N	10.207.136.194	\N		9	3	2		889	\N	\N
891	Abovyan Sevaberd Link	\N	\N	25	1	2017-08-15	\N	10.206.135.77	2	AbovSevaberdlink	9	3	2		890	\N	\N
892	Abovyan1Kaputanclient	\N	\N	25	1	2017-08-15	\N	10.207.136.196	2	KaputanAbovyan1Link	9	3	2		891	\N	\N
893	Abovyan1ArtametClient	\N	\N	25	1	2017-08-15	\N	10.206.135.73	2	AbovyanArtametLink	9	3	2		892	\N	\N
894	Abovyan_Byur	\N	\N	25	1	2017-08-15	\N	10.206.135.81	2	AbovByurLink	9	3	2		893	\N	\N
895	Abovyan bullet Omni	\N	\N	25	1	2017-08-15	\N	10.206.135.82	1	ABOVBUL	9	3	2		894	\N	\N
896	Abovyan AP1	\N	\N	25	1	2017-08-15	\N		\N		9	3	2		895	\N	\N
897	abovyan2-sw	\N	\N	222	1	2017-08-15	\N	10.207.136.195	\N		9	3	2		896	\N	\N
898	Abovyan2AramusLink	\N	\N	222	1	2017-08-15	\N	10.207.136.199	2	Abovyan2AramusLink	9	3	2		897	\N	\N
899	AbovyanAP2_Zar	\N	\N	474	1	2017-08-15	\N	10.207.136.208	2	Zar_Link	9	3	2		898	\N	\N
900	Abovyan Omni2	\N	\N	222	1	2017-08-15	\N	10.207.136.201	1	AbovyanOmni2	9	3	2		899	\N	\N
901	Abovyan AP2	\N	\N	222	1	2017-08-15	\N		\N		9	3	2		900	\N	\N
902		\N	1664	1612	1	2017-08-15	2017-08-21		\N		8	5	2		488	\N	\N
904		\N	1664	1680	1	2017-08-19	\N		\N		\N	5	2		542	\N	\N
905		\N	1664	1680	1	2017-08-19	2017-10-10		\N		\N	5	2		87	\N	\N
906		\N	1664	96	1	2017-08-18	2017-09-07		\N		18	5	2		757	\N	\N
907	Byureghavan_Abovyan	\N	\N	243	1	2017-08-20	\N	10.206.135.89	1	AbovByurLink	9	3	2		901	\N	\N
908	 ByureghavanAP	\N	\N	243	1	2017-08-20	\N	10.206.135.90	1	ByureghavanHF	9	3	2		902	\N	\N
909	Byureghavan Build	\N	\N	243	1	2017-08-20	\N		\N		9	3	2		903	\N	\N
910	ByurakanArzniAP	\N	\N	243	1	2017-08-20	\N	10.207.136.212	1	ArzniHF	9	3	2		904	\N	\N
911	Zar_AbovyanAP2	\N	\N	1683	1	2017-08-20	\N	10.207.136.209	1	Zar_Link	9	3	2		905	\N	\N
912	Zar_AP	\N	\N	1683	1	2017-08-20	\N	10.207.136.210	1	Zar_HF	9	3	2		906	\N	\N
913	ArtametAbovyan1Link	\N	\N	27	1	2017-08-20	\N	10.206.135.76	1	AbovyanArtametLink	9	3	2		907	\N	\N
914	N.Artamet_RocketOmni	\N	\N	27	1	2017-08-20	\N	10.206.135.85	1	NArtamet_bul	9	3	2		908	\N	\N
915	Nor  Artamet Build AP	\N	\N	27	1	2017-08-20	\N		\N		9	3	2		909	\N	\N
916	Getamej_N.Artamet	\N	\N	28	1	2017-08-20	\N	10.206.135.75	2	NArtamet_bul	9	3	2		910	\N	\N
917	Getamej Build AP	\N	\N	28	1	2017-08-20	\N		\N		9	3	2		911	\N	\N
918	V.PtxniAP	\N	\N	493	1	2017-08-20	\N	10.206.135.87	2	Getargel_HF	9	3	2		912	\N	\N
919	Aramus Omni	\N	\N	474	1	2017-08-20	\N	10.206.135.67	1	AramusHF	9	3	2		913	\N	\N
920	AramusAbovyan2Link	\N	\N	474	1	2017-08-20	\N	10.207.136.200	1	Abovyan2AramusLink	9	3	2		914	\N	\N
921	Aramus School AP	\N	\N	474	1	2017-08-20	\N		\N		9	3	2		915	\N	\N
923	Sevaberd Omni	\N	\N	26	1	2017-08-20	2018-05-11	10.206.135.70	1	SevaberdHF	9	3	2		917	\N	\N
925	Sevaberd New Tower	\N	\N	26	1	2017-08-20	\N		\N		9	3	2		918	\N	\N
926	KaputanAbovyan1Link	\N	\N	217	1	2017-08-20	\N	10.207.136.197	1	KaputanAbovyan1Link	9	3	2		919	\N	\N
927	KaputanOmni	\N	\N	217	1	2017-08-20	\N	10.207.136.198	1	KaputanOmni	9	3	2		920	\N	\N
928	Kaputan Build AP	\N	\N	217	1	2017-08-20	\N		\N		9	3	2		921	\N	\N
929	charentsavan_hp-sw	\N	\N	22	1	2017-08-20	\N	10.207.133.194	\N		9	3	2		922	\N	\N
930	CharentsavanLinkGyumush	\N	\N	22	1	2017-08-20	2017-12-18	10.207.133.197	2	CharentsavanGyumush	9	3	2		923	\N	\N
931	gyumush-sw	\N	\N	23	1	2017-08-20	\N	10.207.133.205	\N		9	3	2		924	\N	\N
932	GyumushCharentsavanLink	\N	\N	23	1	2017-08-20	\N	10.207.133.196	1	CharentsavanGyumush	9	3	2		925	\N	\N
933	GyumushArzakanLink	\N	\N	23	1	2017-08-20	\N	10.207.133.203	1	GyumushArzakanLink	9	3	2		926	\N	\N
1011	Talin TV	\N	\N	55	1	2017-08-21	\N		\N		12	3	2		988	\N	\N
934	GyumushBjniLink	\N	\N	23	1	2017-08-20	\N	10.207.133.200	1	BjniGyumushLink	9	3	2		927	\N	\N
935	GyumushOmni	\N	\N	23	1	2017-08-20	\N	10.207.133.198	1	GyumushOmni	9	3	2		928	\N	\N
936	Gyumush Build AP	\N	\N	23	1	2017-08-20	\N		\N		9	3	2		929	\N	\N
937	ArzakanGyumushLink	\N	\N	24	1	2017-08-20	\N	10.207.133.202	2	GyumushArzakanLink	9	3	2		930	\N	\N
938	ArzakanOmni	\N	\N	24	1	2017-08-20	\N	10.207.133.204	1	ArzakanOmni	9	3	2		931	\N	\N
939	Arzakan Build AP	\N	\N	24	1	2017-08-20	\N		\N		9	3	2		932	\N	\N
940	BjniGyumushLink	\N	\N	1684	1	2017-08-20	\N	10.207.133.199	2	BjniGyumushLink	9	3	2		933	\N	\N
941	BjniOmni	\N	\N	1684	1	2017-08-20	\N	10.207.133.201	1	BjniOmni	9	3	2		934	\N	\N
942	Bjni Build AP	\N	\N	1684	1	2017-08-20	\N		\N		9	3	2		935	\N	\N
943	hrazdan_hp-sw	\N	\N	18	1	2017-08-20	\N	10.207.133.162	\N		9	3	2		936	\N	\N
944	Hrazdan Omni Rocket	\N	\N	18	1	2017-08-20	\N	10.207.133.173	1	HrazdanRocket	9	3	2		937	\N	\N
945	HrazdanTV_Micro_Link	\N	\N	18	1	2017-08-20	\N	10.207.133.176	2	TV_Link	9	3	2		938	\N	\N
946	HrazadnTVHrazdanBuldClient	\N	\N	19	1	2017-08-20	\N	10.207.133.165	2	HrazdanBuildHrazdan	9	3	2		939	\N	hasmik@hf.am
947	HrazdanTVFantan AP	\N	\N	18	1	2017-08-20	\N	10.207.133.170	1	HF_Fantan	9	3	2		940	\N	\N
948	Hrazdan TV	\N	\N	18	1	2017-08-20	\N		\N		9	3	2		941	\N	\N
949	Micro_LInk	\N	\N	244	1	2017-08-20	\N	10.207.133.175	1	TV_Link	9	3	2		942	\N	\N
950	HrazdanMicroOmni	\N	\N	244	1	2017-08-20	2018-05-02	10.207.133.174	1	MicroHF	9	3	2		943	\N	\N
951	Hrazdan Micro Buil AP	\N	\N	244	1	2017-08-20	2018-05-02		\N		9	3	2		944	\N	\N
952	HrazdanBuildHrazdanTVLink	\N	\N	18	1	2017-08-20	\N	10.207.133.166	1	HrazdanBuildHrazdan	9	3	2		945	\N	hasmik@hf.am
953	HrazdanBuildOmni	\N	\N	19	1	2017-08-20	\N	10.207.133.167	1	HrazdanBuildOmni	9	3	2		946	\N	\N
954	Hrazdan Build AP	\N	\N	19	1	2017-08-20	\N		\N		9	3	2		947	\N	\N
955	HrazdanBuidAghavnadzorAP	\N	\N	19	1	2017-08-20	\N	10.207.133.178	1	Aghavnadzor_Link	9	3	2		948	\N	\N
956	meghradzor-sw	\N	\N	20	1	2017-08-20	\N	10.207.133.168	\N		9	3	2		949	\N	\N
957	MeghradzorArtavazLink	\N	\N	20	1	2017-08-20	\N	10.207.133.172	1	MeghradzorArtavaz	9	3	2		950	\N	\N
958	Meghradzor Omni	\N	\N	20	1	2017-08-20	\N	10.207.133.177	1	MeghradzorOmni	9	3	2		951	\N	\N
959	Meghradzor TV	\N	\N	20	1	2017-08-20	\N		\N		9	3	2		952	\N	\N
960	ArtavazMeghradzorLink	\N	\N	171	1	2017-08-20	\N	10.207.133.169	2	MeghradzorOmni	9	3	2		953	\N	\N
961	ArtavazAP	\N	\N	171	1	2017-08-20	\N	10.207.133.171	1	Artavaz	9	3	2		954	\N	\N
962	HF Qanaqer Switch	\N	\N	30	1	2017-08-20	\N	10.207.136.202	\N		9	3	2		955	\N	\N
963	Qanaqeravan Omni	\N	\N	30	1	2017-08-20	\N	10.207.136.203	1	QanaqeravanOmni	9	3	2		956	\N	\N
964	QanaqerArtashavanAP	\N	\N	30	1	2017-08-20	\N	10.206.135.86	1	HF_Artashavan_Link	9	3	2		957	\N	\N
966		\N	1664	311	1	2017-09-01	\N	10.205.140.196	2	DeghtsutRocket	9	5	2		62	\N	\N
968		\N	1664	1664	1	2017-07-31	2017-08-15		\N		5	3	2		61	\N	\N
971		\N	1664	1664	1	2017-07-30	2017-09-24		\N		9	5	2		344	\N	\N
972		\N	1664	1664	1	2017-07-30	2017-09-25		\N		9	5	2		340	\N	\N
973		\N	1664	1664	1	2017-07-30	2017-09-25		\N		9	5	2		341	\N	\N
974		\N	1664	1664	1	2017-07-31	2017-09-14		\N		5	3	2		480	\N	\N
975		\N	1664	1664	1	2017-07-31	2017-10-04		\N		5	5	2		476	\N	\N
976		\N	1664	1664	1	2017-07-31	2017-09-14		\N		5	5	2		674	\N	\N
977		\N	1664	1664	1	2017-07-31	2017-08-16		\N		5	3	2		675	\N	\N
978		\N	1664	1664	1	2017-07-30	2017-10-04		\N		5	5	2		676	\N	\N
979	GarniAP_Switch	\N	\N	477	1	2017-08-21	2017-09-06	10.207.136.34	\N		9	3	2		958	\N	\N
980	GarniGeghardLink	\N	\N	477	1	2017-08-21	2017-09-06	10.207.136.35	2	GarniGeghard	9	3	2		959	\N	\N
981	GarniGoghtLink	\N	\N	477	1	2017-08-21	2017-09-07	10.207.136.37	2	GarniGoght	9	3	2		960	\N	\N
982	GoghGarnitLink	\N	\N	191	1	2017-08-21	\N	10.207.136.38	1	GarniGoght	9	3	2		961	\N	\N
983	Goght Omni	\N	\N	191	1	2017-08-21	\N	10.207.136.40	1	Geghard_Ucom	9	3	2		962	\N	\N
984	Goght TV	\N	\N	191	1	2017-08-21	\N		\N		9	3	2		963	\N	\N
985	geghard-sw	\N	\N	192	1	2017-08-21	2017-09-05	10.207.136.41	\N		9	3	2		964	\N	\N
986	GeghardGarniLink	\N	\N	192	1	2017-08-21	2017-09-06	10.207.136.36	1	GarniGeghard	9	3	2		965	\N	\N
987	GeghardOmni	\N	\N	192	1	2017-08-21	2017-09-06	10.207.136.39	1	GeghardHF	9	3	2		966	\N	\N
989	GeghardAPGarniAmbulatorAP	\N	\N	192	1	2017-08-20	2017-09-06	10.207.136.42 	1	Hf_GarniAmbulator	9	3	2		968	\N	\N
991	GarniAmbulatorGehhardAP	\N	\N	1685	1	2017-08-21	2017-09-27	10.207.136.43 	2	Hf_GarniAmbulator	9	3	2		970	\N	\N
992	proshyan-sw	\N	\N	1587	1	2017-08-21	\N	10.207.132.141	\N		9	3	2		971	\N	\N
993	ProshyanAP	\N	\N	1587	1	2017-08-21	\N	10.207.132.143	1	HF_Proshyan_AP	9	3	2		972	\N	\N
994	Dzoraghbyur Omni	\N	\N	1686	1	2017-08-21	2018-03-21	10.206.135.80	1	DzoraghbyurOmni	9	3	2		973	\N	\N
995	Partizak_Armavir_link	\N	\N	39	1	2017-08-20	2017-09-23	10.206.133.115	1	partizaklink	12	3	2		974	\N	\N
996	PartizakOmni	\N	\N	39	1	2017-08-20	\N	10.207.132.107	1	PartizakRocket	12	3	2		975	\N	\N
997	Partizak Build Ap	\N	\N	39	1	2017-08-21	\N		\N		12	3	2		976	\N	\N
998	Partizak Build Ap	\N	\N	39	1	2017-08-21	2017-09-23		\N		12	3	2		977	\N	\N
999	talin-sw	\N	\N	55	1	2017-08-21	2017-08-23		\N		12	3	2		978	\N	\N
1000		\N	1612	1664	1	2017-08-21	2017-08-31		\N		8	5	2		488	\N	\N
1002	TalinArmavirLink	\N	\N	55	1	2017-08-21	\N	10.206.133.151	2	 HF_Talin_Link	12	3	2		979	\N	\N
1003	TalinRocketOmni	\N	\N	55	1	2017-08-21	\N	10.206.133.137	1	OmniRocket	12	3	2		980	\N	\N
1004	TalinRocketSector	\N	\N	55	1	2017-08-21	\N	10.206.133.135	1	RocketTalinSector	12	3	2		981	\N	\N
1005	TalinSector5Link	\N	\N	55	1	2017-08-21	\N	10.206.133.134	1	TalinLink5Sector	12	3	2		982	\N	\N
1006	TalinDzitankovLink	\N	\N	55	1	2017-08-21	\N	10.206.133.155	2	TALINTITYANKOV	12	3	2		983	\N	\N
1007	TalinLanjikLink	\N	\N	55	1	2017-08-21	\N	10.206.133.153	1	TalinLanjik	12	3	2		984	\N	\N
1008	TalinAshnakLink	\N	\N	55	1	2017-08-21	\N	10.206.133.146	1	TalinAshnakLink	12	3	2		985	\N	\N
1009	TalinDdmasar	\N	\N	55	1	2017-08-21	\N	10.206.133.138	2	TalinDdmasarLink	12	3	2		986	\N	\N
1010	Talin TV	\N	\N	55	1	2017-08-21	\N		\N		12	3	2		987	\N	\N
1012	Talin TV	\N	\N	55	1	2017-08-21	\N		\N		12	3	2		989	\N	\N
1013	VosketasBuilTalinLink	\N	\N	1671	1	2017-08-21	\N	10.206.133.143	2	TalinLink5Sector	12	3	2		990	\N	\N
1014	VosketasBuilOmni	\N	\N	1671	1	2017-08-21	\N	10.206.133.148	1	 VosketasBuilOmni	12	3	2		991	\N	\N
1015	Vosketas Buil AP	\N	\N	1671	1	2017-08-21	\N		\N		12	3	2		992	\N	\N
1016	AshnakTalinLink	\N	\N	731	1	2017-08-21	\N	10.206.133.141	2	TalinAshnakLink	12	3	2		993	\N	\N
1017	AshnakOmni	\N	\N	731	1	2017-08-21	2017-11-27	10.206.133.142	1	AshnakOmni	12	5	2		994	\N	\N
1018	Ashnak School AP	\N	\N	731	1	2017-08-21	2017-11-27		\N		12	3	2		995	\N	\N
1019	DdmasarTalinLink	\N	\N	734	1	2017-08-21	\N	10.206.133.139	1	TalinDdmasarLink	12	3	2		996	\N	\N
1020	DdmasarOmni	\N	\N	734	1	2017-08-21	\N	10.206.133.140	1	DdmasarOmni	12	3	2		997	\N	\N
1021	Ddmasar School AP	\N	\N	734	1	2017-08-21	\N		\N		12	3	2		998	\N	\N
1022	ashtarak_hp-sw	\N	\N	203	1	2017-08-21	\N	10.207.133.226	\N		12	3	2		999	\N	\N
1023	AshtarakBuild.Omni	\N	\N	203	1	2017-08-21	\N	10.207.133.240	1	AshtarakBuild.Bullet	12	3	2		1000	\N	\N
1024	Ashtarak Build AP	\N	\N	203	1	2017-08-21	\N		\N		12	3	2		1001	\N	\N
1025	AshtarakOshakanLink	\N	\N	203	1	2017-08-21	\N	10.207.133.243	2	AshtarakOshakan	12	3	2		1002	\N	\N
1026	Ashtarak-Byurakan	\N	\N	203	1	2017-08-21	\N	10.207.133.229	2	AshtarakByurakan	12	3	2		1003	\N	\N
1027	Ashtarak Build AP	\N	\N	203	1	2017-08-21	\N		\N		12	5	2		1004	\N	\N
1028	oshakan-sw	\N	\N	50	1	2017-08-21	\N	10.207.133.245	\N		12	3	2		1005	\N	\N
1029	OshakanAshtarakLink	\N	\N	50	1	2017-08-21	\N	10.207.133.244	1	AshtarakOshakan	12	3	2		1006	\N	\N
1030	 OshakanTVOmni	\N	\N	50	1	2017-08-21	\N	10.207.133.251	1	Oshakan_AP	12	3	2		1007	\N	\N
1031	Oshakan TV 	\N	\N	50	1	2017-08-21	\N		\N		12	3	2		1008	\N	\N
1032	OshakanByurakanAP	\N	\N	50	1	2017-08-21	\N	10.207.133.253	1	HF_Oshakan	12	3	2		1009	\N	\N
1033	OshakanVoskevazLink	\N	\N	50	1	2017-08-21	\N	10.207.133.232	1	OshakanVoskevaz	12	3	2		1010	\N	\N
1034	OshakanAragatsotnLink	\N	\N	50	1	2017-08-21	\N	10.207.133.237	1	AragatsotnOshakan	12	3	2		1011	\N	\N
1035	AragatsotnOshakanLink	\N	\N	281	1	2017-08-21	\N	10.207.133.236	2	AragatsotnOshakan	12	3	2		1012	\N	\N
1036	AragatsotnOmni	\N	\N	281	1	2017-08-21	\N	10.207.133.242	1	AragatsotnBullet	12	3	2		1013	\N	\N
1037	Aragatsotn School AP	\N	\N	281	1	2017-08-21	\N		\N		12	3	2		1014	\N	\N
1038	VoskevazOshakanLink	\N	\N	707	1	2017-08-22	\N	10.207.133.233	2	OshakanVoskevaz	12	3	2		1015	\N	\N
1039	VoskevazParpiLink	\N	\N	707	1	2017-08-22	\N	10.207.133.234	2	VoskevazParpi	12	3	2		1016	\N	jass.manasyan@gmail.com
1040	VoskevazOmni	\N	\N	707	1	2017-08-22	\N	10.207.133.239	1	VoskevazAP	12	3	2		1017	\N	jass.manasyan@gmail.com
1041	Voskevaz School AP	\N	\N	707	1	2017-08-22	\N		\N		12	3	2		1018	\N	\N
1042	ParpiVoskevazLink	\N	\N	53	1	2017-08-22	\N	10.207.133.235	1	VoskevazParpi	12	3	2		1019	\N	\N
1043	Parpi Omni	\N	\N	53	1	2017-08-22	\N	10.207.133.241	1	ParpiHF	12	3	2		1020	\N	\N
1044	Parpi TV	\N	\N	53	1	2017-08-22	\N		\N		12	3	2		1021	\N	\N
1045	ByurakanAshtarakLink	\N	\N	51	1	2017-08-22	\N	10.207.133.230	1	AshtarakByurakan	12	3	2		1022	\N	\N
1046	Byurakan Build AP	\N	\N	51	1	2017-08-22	\N		\N		12	3	2		1023	\N	\N
1047	Byurakan Build AP	\N	\N	51	1	2017-08-22	\N		\N		12	3	2		1024	\N	\N
1048	ashtarak-sw	\N	\N	247	1	2017-08-22	\N	10.207.133.238	\N		12	3	2		1025	\N	\N
1049	AshtarakTVOmni	\N	\N	247	1	2017-08-22	\N	10.207.133.250	1	Ashtarak_AP1	12	3	2		1026	\N	\N
1050	Ashtarak TV	\N	\N	247	1	2017-08-22	\N		\N		12	3	2		1027	\N	\N
1051	quchak-sw	\N	\N	1687	1	2017-08-22	\N	10.206.135.120	\N		12	3	2		1028	\N	\N
1052	QuchakAragats1Link	\N	\N	1687	1	2017-08-22	\N	10.206.135.119	2	QuchakAragats1Link	12	3	2		1029	\N	\N
1053	Aragats1QuchakLink	\N	\N	720	1	2017-08-22	\N	10.206.135.118	1	QuchakAragats1Link	12	3	2		1030	\N	\N
1054	Aragats1Omni	\N	\N	720	1	2017-08-22	\N	10.206.135.117	1	Aragats1Omni	12	3	2		1031	\N	\N
1055	Aragats1 School AP	\N	\N	720	1	2017-08-22	\N		\N		12	3	2		1032	\N	\N
1056	 YernjatapOmni	\N	\N	299	1	2017-08-22	\N	10.206.135.103	1	YernjatapOmni	12	3	2		1033	\N	\N
1057	Yerinjatap School AP	\N	\N	299	1	2017-08-22	\N		\N		12	3	2		1034	\N	\N
1058	aparan-sw	\N	\N	43	1	2017-08-22	\N	10.206.135.100	\N		12	3	2		1035	\N	\N
1059	AparanShenkanLink	\N	\N	43	1	2017-08-22	\N	10.206.135.99	1	AparanShenkan	12	3	2		1036	\N	\N
1060	AparanSector	\N	\N	43	1	2017-08-22	\N	10.206.135.98	1	AparanSector	12	3	2		1037	\N	\N
1061	Aparan TV	\N	\N	43	1	2017-08-22	\N		\N		12	3	2		1038	\N	\N
1062	NigavanAP	\N	\N	43	1	2017-08-22	\N	10.206.135.109	1	NigavanAP	12	3	2		1039	\N	\N
1063	Aparan TV	\N	\N	43	1	2017-08-22	\N		\N		12	3	2		1040	\N	\N
1064	Chqnagh School AP	\N	\N	305	1	2017-08-22	\N		\N		12	3	2		1041	\N	\N
1065	Chknagh-ap	\N	\N	305	1	2017-08-22	\N	10.206.135.102	\N		12	3	2		1042	\N	\N
1066	ShenkanAparanLink	\N	\N	46	1	2017-08-22	\N	10.206.135.106	2	AparanShenkan	12	3	2		1043	\N	\N
1067	ShenkanSector	\N	\N	46	1	2017-08-22	\N	10.206.135.108	1	ShenkanSector	12	3	2		1044	\N	\N
1068	Shenkan new Tower AP	\N	\N	46	1	2017-08-22	\N		\N		12	3	2		1045	\N	\N
1069	geghadzor-sw	\N	\N	48	1	2017-08-22	\N	10.206.135.110	\N		12	3	2		1046	\N	\N
1070	 GeghadzorOmniRocket	\N	\N	48	1	2017-08-22	\N	10.206.135.111	1	GeghadzorOmniRocket	12	3	2		1047	\N	\N
1071	Geghadzor TV	\N	\N	48	1	2017-08-22	\N		\N		12	3	2		1048	\N	\N
1072	TlikAP	\N	\N	57	1	2017-08-22	\N	10.206.133.156	1	TlikHF	12	3	2		1049	\N	\N
1073	gukasavan-sw	\N	\N	836	1	2017-08-22	\N	10.207.132.72	\N		12	3	2		1050	\N	\N
1074	GukasavanOmni	\N	\N	836	1	2017-08-22	\N	10.207.132.73	1	GukasavanRocket	12	3	2		1051	\N	\N
1075	GukasavanDashtavanLink	\N	\N	836	1	2017-08-22	\N	10.207.132.75	1	GukasavanDashtavanLi	12	3	2		1052	\N	\N
1076	Gukasavan School AP	\N	\N	836	1	2017-08-22	\N		\N		12	3	2		1053	\N	\N
1077	DashtavanGukasavanClient	\N	\N	831	1	2017-08-22	\N	10.207.132.74	2	GukasavanDashtavanLi	7	3	2		1054	\N	\N
1078	DashtavanOmni	\N	\N	831	1	2017-08-22	\N	10.207.132.76	1	DashtavanRocket	7	3	2		1055	\N	\N
1079	Dashtavan School AP	\N	\N	831	1	2017-08-22	\N		\N		7	3	2		1056	\N	\N
1080	masis_hp-sw	\N	\N	185	1	2017-08-22	\N	10.207.132.66	\N		7	3	2		1057	\N	\N
1081	Masis Omni	\N	\N	185	1	2017-08-22	\N	10.206.133.30	1	Masis_AP	7	3	2		1058	\N	\N
1082	Masis Build AP	\N	\N	185	1	2017-08-22	\N		\N		7	3	2		1059	\N	\N
1083	MasisNoramargClient	\N	\N	185	1	2017-08-22	\N	10.207.132.69	2	MasisNoramargLink	7	7	2		1060	\N	\N
1084	MasisHayanist	\N	\N	185	1	2017-08-22	\N	10.206.133.25	2	Hay_link	7	3	2		1061	\N	\N
1085	Masis Build AP	\N	\N	185	1	2017-08-22	\N		\N		7	3	2		1062	\N	\N
1086	HayanistMasis	\N	\N	834	1	2017-08-22	\N	10.206.133.26	1	Hay_link	7	3	2		1063	\N	\N
1087	HayanistOmni	\N	\N	834	1	2017-08-22	\N	10.207.132.77	1	HayanistOmni	7	3	2		1064	\N	\N
1088	Hayanist School AP	\N	\N	834	1	2017-08-22	\N		\N		7	3	2		1065	\N	\N
1089	Hayanist School AP	\N	\N	834	1	2017-08-22	\N		\N		7	3	2		1066	\N	\N
1090	NoramargMasisLink	\N	\N	843	1	2017-08-22	\N	10.207.132.70	1	MasisNoramargLink	7	3	2		1067	\N	\N
1091	NoramargOmni	\N	\N	843	1	2017-08-22	\N	10.207.132.71	1	NoramargRocket	7	3	2		1068	\N	\N
1092	Noramarg School AP	\N	\N	843	1	2017-08-22	\N		\N		7	3	2		1069	\N	\N
1093		\N	1664	55	1	2017-08-19	\N		\N		13	5	2		189	\N	\N
1094	artashat-sw	\N	\N	187	1	2017-08-22	\N	10.207.136.226	\N		7	3	2		1070	\N	\N
1095	ArtashatDeghtsutClient	\N	\N	187	1	2017-08-22	\N	10.207.136.231	2	DeghtsutArtashatLink	7	3	2		1071	\N	\N
1096	ArtashatDvinClient	\N	\N	187	1	2017-08-22	\N	10.207.136.228	1	DvinArtashatLink	7	3	2		1072	\N	\N
1097	NarekArtashat	\N	\N	187	1	2017-08-22	\N	10.207.136.241	1	Narek_Link_HF	7	3	2		1073	\N	\N
1098	Artashat Bardzrashen Link	\N	\N	187	1	2017-08-22	\N	10.207.136.244	1	HF_Bardzrashen_Link	7	3	2		1074	\N	\N
1099	ArtashatQakhtsrashenAP	\N	\N	187	1	2017-08-22	\N	10.207.136.243	1	ArtashatRocket	7	3	2		1075	\N	\N
1100	DeghtsutArtashatLink	\N	\N	822	1	2017-08-22	\N	10.207.136.232	1	DeghtsutArtashatLink	7	3	2		1076	\N	\N
1101	Deghtsut Nano	\N	\N	822	1	2017-08-22	\N	10.207.136.233	1	DeghtsutRocket	7	3	2		1077	\N	\N
1102	Bardzrashen Artashat Link	\N	\N	309	1	2017-08-22	\N	10.207.136.235	2	HF_Bardzrashen_Link	7	3	2		1078	\N	\N
1103	Bardzrashen sector AC	\N	\N	309	1	2017-08-22	\N	10.207.136.236	1	HF_Bardzrashen_Sector	7	3	2		1079	\N	\N
1104	DvinArtashatLink	\N	\N	225	1	2017-08-22	\N	10.207.136.229	2	DvinArtashatLink	7	3	2		1080	\N	\N
1105	DvinOmni	\N	\N	225	1	2017-08-22	\N	10.207.136.230	1	DvinRocketOmni	7	3	2		1081	\N	\N
1106	N.Dvin School AP	\N	\N	225	1	2017-08-22	\N		\N		7	4	2		1082	\N	\N
1107	vosketap-sw	\N	\N	773	1	2017-08-22	\N	10.207.132.44	\N		7	3	2		1083	\N	\N
1108	Vosketap Omni	\N	\N	773	1	2017-08-22	\N	10.207.132.45	1	VediRocket	7	3	2		1084	\N	\N
1109	Vosketap#2 School AP	\N	\N	773	1	2017-08-22	\N		\N		7	3	2		1085	\N	\N
1110	vedi_hp-sw	\N	\N	183	1	2017-08-22	\N		\N		7	3	2		1086	\N	\N
1111	VediLushashogShaghapAP	\N	\N	183	1	2017-08-22	\N	10.207.132.42	1	HF_Lusashogh	7	3	2		1087	\N	\N
1112	VediDashtakarUrtsadzorAP	\N	\N	183	1	2017-08-22	\N	10.207.132.38	1	HF_Urtsadzor_Link	7	3	2		1088	\N	\N
1113	Vedi_Ararat_Client	\N	\N	183	1	2017-08-22	2018-01-12	10.207.132.53	1	Ararat_link	7	3	2		1089	\N	\N
1114	ZovashenSwitch	\N	\N	1673	1	2017-08-22	\N	10.207.132.50	\N		7	3	2		1090	\N	\N
1115	Zovashen Omni	\N	\N	1673	1	2017-08-22	2018-04-09	10.207.132.49	1	ZovashenHF	7	3	2		1091	\N	\N
1116	Zovashen TV	\N	\N	1673	1	2017-08-22	2018-04-09		\N		7	3	2		1092	\N	\N
1117	ZovashenZangagatun	\N	\N	1673	1	2017-08-22	\N	10.207.132.46	1	Zangakatun	7	3	2		1093	\N	\N
1118	ZovashenXachikLink	\N	\N	1673	1	2017-08-22	\N	10.210.140.31	1	ZovashenXachik	7	3	2		1094	\N	\N
1119	Zovashen TV	\N	\N	1673	1	2017-08-22	\N		\N		7	3	2		1095	\N	\N
1120	LanjarZovashenLink	\N	\N	246	1	2017-08-23	2018-04-09	10.207.132.48	2	ZovashenHF	7	3	2		1096	\N	\N
1121	LanjarAP	\N	\N	246	1	2017-08-23	\N	10.207.132.47	1	LanjarHF	7	3	2		1097	\N	\N
1122	TigranashenZovashenLink	\N	\N	1672	1	2017-08-23	\N	10.207.132.51	2	ZovashenHF	7	3	2		1098	\N	\N
1123	Tigranashen Build AP	\N	\N	1672	1	2017-08-23	\N		\N		7	3	2		1099	\N	\N
1124	TigranashenAP	\N	\N	1672	1	2017-08-23	\N	10.207.132.52	1	Tighranashen_HF	7	3	2		1100	\N	\N
1125	armash-sw	\N	\N	220	1	2017-08-23	\N	10.207.132.39	\N		7	3	2		1101	\N	\N
1126	Armash_AP	\N	\N	220	1	2017-08-23	2017-10-27	10.207.132.41	\N		7	3	2		1102	\N	\N
1127	Armash Build AP	\N	\N	220	1	2017-08-23	\N		\N		7	3	2		1103	\N	\N
1128	sevan_hp-sw	\N	\N	12	1	2017-08-23	\N	10.207.135.2	\N		7	3	2		1104	\N	\N
1129	SevanRocket	\N	\N	12	1	2017-08-23	\N	 SevanRocket	1	SevanRocket	9	3	2		1105	\N	\N
1130	Sevan TV	\N	\N	12	1	2017-08-23	\N		\N		9	3	2		1106	\N	\N
1131	SevanTV_OMNI	\N	\N	12	1	2017-08-23	\N	10.206.135.61	\N		9	3	2		1107	\N	\N
1132	Sevan TV	\N	\N	12	1	2017-08-23	\N		\N		9	3	2		1108	\N	\N
1133	semyonovka-sw	\N	\N	1675	1	2017-08-23	\N	10.207.135.8	\N		7	3	2		1109	\N	\N
1134	SemyonovkaOmniRocket	\N	\N	1675	1	2017-08-23	\N	10.207.135.10	1	SemyonovkaRocket	9	3	2		1110	\N	\N
1135	Semyonovka TV	\N	\N	1675	1	2017-08-23	\N		\N		9	3	2		1111	\N	\N
1136	Tsovazard_AP	\N	\N	14	1	2017-08-23	\N	10.207.135.11	1	TsovazardHF	7	3	2		1112	\N	\N
1137	Tsovazard School AP	\N	\N	14	1	2017-08-23	\N		\N		9	3	2		1113	\N	\N
1138	gavar_hp-sw	\N	\N	7	1	2017-08-23	\N	10.207.135.34	\N		7	3	2		1114	\N	\N
1139	 GavarRocketNoratus	\N	\N	7	1	2017-08-23	\N	10.207.135.41	1	RocketNoratus	9	3	2		1115	\N	\N
1140	GavarRocketGandzak	\N	\N	7	1	2017-08-23	\N	10.207.135.42	1	RocketGandzak	9	3	2		1116	\N	\N
1141	Gavar  TV	\N	\N	7	1	2017-08-23	\N		\N		9	3	2		1117	\N	\N
1142	Gavar  TV	\N	\N	7	1	2017-08-23	\N		\N		9	3	2		1118	\N	\N
1143	GavarLanjaghbyurLink	\N	\N	7	1	2017-08-23	\N	10.206.135.29	2	GavarLanjaghbyurLink	9	3	2		1119	\N	\N
1144	GavarJilLink	\N	\N	7	1	2017-08-23	\N	10.206.135.22	1	GavarJilLink	9	3	2		1120	\N	\N
1145	LanjaghbyurGavarLink	\N	\N	1674	1	2017-08-23	2017-09-07	10.206.135.25	1	GavarLanjaghbyurLink	9	3	2		1121	\N	\N
1146	LanjaghbyurRocket	\N	\N	1674	1	2017-08-23	2017-09-06	10.206.135.26	1	LandjaghbyurAP	9	3	2		1122	\N	\N
1147	Lanjaghbyur Ucom  Vishka	\N	\N	1674	1	2017-08-23	\N		\N		9	3	2		1123	\N	\N
1148	JilGavarLink	\N	\N	10	1	2017-08-23	\N	10.206.135.24	2	GavarJilLink	9	3	2		1124	\N	\N
1149	JilArtanishLink	\N	\N	10	1	2017-08-23	\N	10.207.135.43	2	To_ArtanishHF	9	3	2		1125	\N	\N
1150	Jil Build AP	\N	\N	10	1	\N	\N		\N		9	3	2		1126	\N	\N
1151	Artanish_To_Jil	\N	\N	9	1	2017-08-23	\N	10.207.135.44	1	To_ArtanishHF	9	3	2		1127	\N	\N
1152	Artanish New Tower	\N	\N	9	1	2017-08-23	\N		\N		9	3	2		1128	\N	\N
1153	Artanish omni	\N	\N	9	1	2017-08-23	\N	10.206.135.23	1	ArtanishHF	9	3	2		1129	\N	\N
1154	Artanish New Tower	\N	\N	9	1	2017-08-23	\N		\N		9	3	2		1130	\N	\N
1155	martuni_sw_internet	\N	\N	15	1	2017-08-23	\N	10.207.135.69	\N		9	3	2		1131	\N	\N
1156	martuni_sw2	\N	\N	15	1	2017-08-23	\N	10.207.135.70	\N		9	3	2		1132	\N	\N
1157	MartuniTVSector1-V	\N	\N	15	1	2017-08-23	\N	10.207.135.71	1	MtuniSector1	9	3	2		1133	\N	\N
1158	MartuniTVSector2-G	\N	\N	15	1	2017-08-23	\N	10.207.135.72	1	MtuniSector2	9	3	2		1134	\N	\N
1160	Martuni TV	\N	\N	15	1	2017-08-23	\N		\N		9	3	2		1136	\N	\N
1161	MartuniDzoragyughLink	\N	\N	15	1	2017-08-23	\N	10.207.135.74	1	MartuniDzoragyugh	9	3	2		1137	\N	\N
1162	MartuniTsovinarLink	\N	\N	15	1	2017-08-23	\N	10.207.135.73	1	MartuniTsovinar	9	3	2		1138	\N	\N
1163	MartuniZolakarLink	\N	\N	15	1	2017-08-23	\N	10.207.135.81	2	MartuniZolakarLink	9	3	2		1139	\N	\N
1164	MartuniMadinaAP	\N	\N	15	1	2017-08-23	\N	10.207.135.79	1	MtuniMadina	9	3	2		1140	\N	\N
1165	Martuni TV	\N	\N	15	1	2017-08-23	\N		\N		9	3	2		1141	\N	\N
1166	MartuniTVGetashenAP	\N	\N	15	1	2017-08-23	\N	10.207.135.85	1	GetashenHF	9	3	2		1142	\N	\N
1167	DzoragyughMartuniLink	\N	\N	16	1	2017-08-23	\N	10.207.135.75	2	MartuniDzoragyugh	9	3	2		1143	\N	\N
1168	DzoragyughOmni	\N	\N	16	1	2017-08-23	\N	10.207.135.78	1	DzoragyughHF	9	3	2		1144	\N	\N
1169	Dzoragyugh h/d School AP	\N	\N	16	1	2017-08-23	\N		\N		9	3	2		1145	\N	\N
1170	ZolakarMartuniLink	\N	\N	992	1	2017-08-23	\N	10.207.135.82	1	MartuniZolakarLink	9	3	2		1146	\N	\N
1171	ZolakarOmni	\N	\N	992	1	2017-08-23	\N	10.207.135.83	1	MtuniSector1	9	3	2		1147	\N	\N
1172	Zolakar#1 School AP	\N	\N	992	1	2017-08-23	\N		\N		9	3	2		1148	\N	\N
1173	TsovinarMartuniLink	\N	\N	355	1	2017-08-23	\N	10.207.135.76	2	MartuniTsovinar	9	3	2		1149	\N	\N
1174	TsovinarOmni	\N	\N	355	1	2017-08-23	\N	10.207.135.80	1	TsovinarOmni	9	3	2		1150	\N	\N
1175	Tsovinar Prim. School AP	\N	\N	355	1	2017-08-23	\N		\N		9	3	2		1151	\N	\N
1176	TsovinarAreguniAP	\N	\N	355	1	2017-08-23	\N	10.206.135.43	1	TsovinarBullet	9	3	2		1152	\N	\N
1177	Tsovinar Prim. School AP	\N	\N	355	1	2017-08-23	\N		\N		9	3	2		1153	\N	\N
1178	TsovinarPambak AP	\N	\N	355	1	2017-08-23	\N	10.207.135.87	1	h_Ttsovinar	9	3	2		1154	\N	\N
1179	talin-sw	\N	55	1664	1	2017-08-23	2017-11-16		\N		13	5	2		978	\N	\N
1180		\N	1664	1688	1	2017-08-22	\N		\N		14	5	2		560	\N	\N
1182	TsovinarLchapLink	\N	\N	355	1	2017-08-23	\N	10.207.135.77	1	TsovinarLchavan	9	3	2		1155	\N	\N
1183	Aknalich	\N	\N	959	1	2017-08-22	\N	10.205.140.242	2	Mmor_AP3	7	3	2		1156	\N	\N
1184	Aknalich	\N	\N	959	1	2017-08-22	\N	91.205.140.242	\N		7	3	2		1157	\N	\N
1185	LchavanTsovinarLink	\N	\N	17	1	2017-08-24	2017-11-16	10.207.135.86	2	TsovinarLchavan	9	3	2		1158	\N	\N
1186	Lchavan Omni	\N	\N	17	1	2017-08-24	\N	10.206.135.39	1	LtjavanOmni	9	3	2		1159	\N	\N
1187	Lchavan New Tower	\N	\N	17	1	2017-08-24	\N		\N		9	3	2		1160	\N	\N
1188	vardenis-sw	\N	\N	5	1	2017-08-24	\N	10.206.135.158	\N		9	3	2		1161	\N	\N
1189	VardenisRocketSector	\N	\N	5	1	2017-08-24	\N	10.206.135.152	1	VardenisRocket2	9	3	2		1162	\N	\N
1190	Vardenis TV	\N	\N	5	1	2017-08-24	\N		\N		9	3	2		1163	\N	\N
1191	VardenisPB_AP	\N	\N	5	1	2017-08-24	\N	10.206.135.154	1	VardenisRocket3	9	3	2		1164	\N	\N
1192	VardenisArpunkLink	\N	\N	5	1	2017-08-24	\N	10.206.135.147	1	VardenisArpunk	9	3	2		1165	\N	\N
1193	Vardenis TV	\N	\N	5	1	2017-08-24	2017-11-16	10.206.135.149	\N		9	3	2		1166	\N	\N
1194	Vardenis TV	\N	\N	5	1	2017-08-24	2017-11-16		\N		9	3	2		1167	\N	\N
1195	 ArpunkVardenisLink	\N	\N	6	1	2017-08-24	\N	10.206.135.148	2	VardenisArpunk	9	3	2		1168	\N	\N
1196	ArpunkHF	\N	\N	6	1	2017-08-24	\N	10.206.135.151	1	ArpunkHF	9	3	2		1169	\N	\N
1197	Arpunk School AP	\N	\N	6	1	2017-08-24	2018-04-09		\N		9	3	2		1170	\N	\N
1199	tchambarak-sw	\N	\N	1	1	2017-08-24	2018-04-10	10.206.135.14	\N		9	3	2		1171	\N	\N
1200	TchambarakVahanClient	\N	\N	1	1	2017-08-24	\N	10.206.135.4	2	TchambarakVahanLink	9	3	2		1172	\N	\N
1201	VahanTchambarakLink	\N	\N	11	1	2017-08-24	\N	10.206.135.6	1	TchambarakVahanLink	9	3	2		1173	\N	\N
1202	Vahan Omni	\N	\N	11	1	2017-08-24	\N	10.206.135.3	1	VahanOmni	9	3	2		1174	\N	\N
1203	Vahan Build AP (TV)	\N	\N	11	1	2017-08-24	\N		\N		9	3	2		1175	\N	\N
1204	ttujur-sw	\N	\N	2	1	2017-08-24	\N	10.206.135.8	\N		9	3	2		1176	\N	\N
1205	ThtujurGetikClient	\N	\N	2	1	2017-08-24	\N	10.206.135.5	2	ThtujurGetikLink	9	3	2		1177	\N	\N
1206	GetikThtujurLink	\N	\N	3	1	2017-08-24	\N	10.206.135.7	1	ThtujurGetikLink	9	3	2		1178	\N	\N
1207	GetikantaramejClient	\N	\N	3	1	2017-08-24	\N	10.206.135.10	2	Getikantaramej	9	3	2		1179	\N	\N
1208	GetikOmni	\N	\N	3	1	2017-08-24	\N	10.206.135.11	1	GetikHF	9	3	2		1180	\N	\N
1209	Getik TV	\N	\N	3	1	2017-08-24	\N		\N		9	3	2		1181	\N	\N
1210	AntaramejGetikLink	\N	\N	4	1	2017-08-24	\N	10.206.135.12	1	Getikantaramej	9	3	2		1182	\N	\N
1211	AntaramejOmni	\N	\N	4	1	2017-08-24	\N	10.206.135.13	1	AntaramejHF	9	3	2		1183	\N	\N
1212	Antaramej TV	\N	\N	4	1	2017-08-24	\N		\N		9	3	2		1184	\N	\N
1213	dilijan_hp-sw	\N	\N	78	1	2017-08-24	\N	10.207.135.162	\N		\N	3	2		1185	\N	\N
1214	Dilijan_Texut_client	\N	\N	78	1	2017-08-24	\N	10.207.135.166	2	Teghut_Link	\N	3	2		1186	\N	\N
1215	Texut_Dilijan_link	\N	\N	79	1	2017-08-24	\N	10.207.135.165	1	Teghut_Link	\N	3	2		1187	\N	\N
1216	TeghutHagharcinClient	\N	\N	79	1	2017-08-24	\N	10.207.135.174	2	 TeghutHagharcinLink	\N	3	2		1188	\N	\N
1217	HagharcinTeghutLink	\N	\N	80	2	2017-08-24	\N	10.207.135.175	1	TeghutHagharcinLink	\N	3	2		1189	\N	\N
1218	Hagharcin Omni	\N	\N	80	\N	2017-08-24	\N	10.207.135.176	1	Hagharcin Omni	\N	3	2		1190	\N	\N
1219	Hagharcin TV	\N	\N	80	\N	2017-08-24	\N		\N		\N	3	2		1191	\N	\N
1220	ijevan-sw	\N	\N	158	1	2017-08-24	\N	10.206.134.194	\N		\N	3	2		1192	\N	\N
1221	IjevanSectorRocket	\N	\N	158	1	2017-08-24	\N	10.206.134.196	1	IjevanOmniRocket	\N	3	2		1193	\N	\N
1222	Ijevan TV	\N	\N	158	1	2017-08-24	\N		\N		\N	3	2		1194	\N	\N
1223	IjevanTVAchajurAP	\N	\N	158	1	2017-08-24	\N	10.206.134.195	1	IjevanOmniBullet	\N	3	2		1195	\N	\N
1224	IjevanLusadzorClient	\N	\N	158	1	2017-08-24	\N	10.206.134.197	2	IjevanLusadzorLink	\N	3	2		1196	\N	\N
1225	Ijevan TV	\N	\N	158	1	2017-08-24	\N		\N		\N	3	2		1197	\N	\N
1226	SevqarIjevan Link	\N	\N	158	1	2017-08-23	2017-09-11	10.206.134.199	2	 ubnt	\N	3	2		1198	\N	\N
1227	LusadzorIjevanLink	\N	\N	1478	1	2017-08-23	\N	10.206.134.198	1	IjevanLusadzorLink	\N	3	2		1199	\N	\N
1228	Lusadzor Omni	\N	\N	1478	1	2017-08-24	\N	10.206.134.202	1	LusadzorOmni	\N	3	2		1200	\N	\N
1229	Lusadzor School AP	\N	\N	1478	1	2017-08-24	\N		\N		\N	3	2		1201	\N	\N
1230	sevqar-sw	\N	\N	160	1	2017-08-24	\N	10.206.134.204	\N		\N	3	2		1202	\N	\N
1231	SevqarRocketSector	\N	\N	160	1	2017-08-24	\N	10.206.134.211	1	SevqarOmni	\N	3	2		1203	\N	\N
1232	Sevqar TV	\N	\N	160	1	2017-08-24	\N		\N		\N	3	2		1204	\N	\N
1233	SevqarBaghanisClient	\N	\N	160	1	2017-08-24	\N	10.206.134.220	2	SevqarBaghanisLink	\N	3	2		1205	\N	\N
1234	SevqarVazashenClient	\N	\N	160	1	2017-08-24	\N	10.206.134.219	2	 SevqarVazashenLink	\N	3	2		1206	\N	\N
1235	SevqarDitavanClient	\N	\N	160	1	2017-08-24	\N	10.206.134.215	2	SevqarDitavanLink	\N	3	2		1207	\N	\N
1236	DitavanSevqarLink	\N	\N	1488	1	2017-08-24	\N	10.206.134.205	1	SevqarDitavanLink	\N	3	2		1212	\N	\N
1237	DitavanOmni	\N	\N	1488	1	2017-08-24	\N	10.206.134.207	1	DitavanHF	\N	3	2		1213	\N	\N
1238	Ditavan School AP	\N	\N	1488	1	2017-08-24	\N		\N		\N	3	2		1214	\N	\N
1239	VazashenSevqarLink	\N	\N	161	1	2017-08-24	\N	10.206.134.208	1	SevqarVazashenLink	\N	3	2		1215	\N	\N
1240	VazashenTVBullet	\N	\N	161	1	2017-08-24	\N	10.206.134.221	1	VazashenOmni	\N	3	2		1216	\N	\N
1241	Vazashen TV	\N	\N	161	1	2017-08-24	\N		\N		\N	3	2		1217	\N	\N
1242	BaghanisSevqarLink	\N	\N	162	1	2017-08-24	\N	10.206.134.213	1	SevqarBaghanisLink	\N	3	2		1218	\N	\N
1243	Baghanis Omni	\N	\N	162	1	2017-08-24	\N	10.206.134.218	1	BaghanisOmni	\N	3	2		1219	\N	\N
1244	Baghanis TV	\N	\N	162	1	2017-08-24	\N		\N		\N	3	2		1220	\N	\N
1245	BerqaberRepeater	\N	\N	1676	1	2017-08-24	\N	10.206.134.214	2	BaghanisOmni	\N	3	2		1221	\N	\N
1246	Berqaber_AP	\N	\N	1676	1	2017-08-24	\N	10.206.134.212	1	 Berqaber_AP	\N	3	2		1222	\N	\N
1247	Bergaber Build AP	\N	\N	1676	1	2017-08-24	\N		\N		\N	3	2		1223	\N	\N
1248	chinchin-sw	\N	\N	167	1	2017-08-24	\N	10.207.135.198	\N		\N	3	2		1224	\N	\N
1249	ChinchinTV(hin)ChinchinTV(new)Link	\N	\N	167	1	2017-08-24	\N	10.207.135.214	2	Chin2chin1Link	\N	3	2		1225	\N	\N
1250	ChinchinTV(hin)LocoAP	\N	\N	167	1	2017-08-24	\N	10.207.135.195	1	HF_Chin-chin	\N	3	2		1226	\N	\N
1251	ChinchinTV(new)ChinchinTV(old)Link	\N	\N	1677	1	2017-08-24	\N	10.207.135.215	1	Chin2chin1Link	\N	3	2		1227	\N	\N
1252	ChinchinTV(new)RocketSector	\N	\N	1677	1	2017-08-24	\N	10.207.135.197	1	ChinchinOmni	\N	3	2		1228	\N	\N
1253	ChinchinTV(new)	\N	\N	1677	1	2017-08-24	\N		\N		\N	3	2		1229	\N	\N
1254	Berd2Omni	\N	\N	1470	1	2017-08-24	\N	10.207.135.194	1	Berd#2Omni	\N	3	2		1230	\N	\N
1255	Berd#2SchoolAP	\N	\N	1470	1	2017-08-24	\N		\N		\N	3	2		1231	\N	\N
1256	berd_hp-sw	\N	\N	165	1	2017-08-24	2018-03-13	10.207.135.210	\N		\N	3	2		1232	\N	\N
1257	BerdTVRocketOmni	\N	\N	165	1	2017-08-24	\N	10.207.135.204	1	BerdOmni	\N	3	2		1233	\N	\N
1258	Berd TV	\N	\N	165	1	2017-08-24	\N		\N		\N	3	2		1234	\N	\N
1259	BerdItsaqarLink	\N	\N	165	1	2017-08-24	\N	10.207.135.222	1	BerdItsaqarLink	\N	3	2		1235	\N	\N
1260	BerdArtsvaberdClient	\N	\N	165	1	2017-08-24	\N	10.207.135.219	2	BerdArtsvaberdLink	\N	3	2		1236	\N	\N
1261	ItsaqarBerdLink	\N	\N	215	1	2017-08-24	\N	10.207.135.221	2	BerdItsaqarLink	\N	3	2		1237	\N	\N
1262	Itsaqar Omni	\N	\N	215	1	2017-08-24	\N	10.207.135.203	1	ItsaqarOmni	\N	3	2		1238	\N	\N
1263	ArtsvaberdBerdLink	\N	\N	157	1	2017-08-24	\N	10.207.135.213	1	BerdArtsvaberdLink	\N	3	2		1239	\N	\N
1264	Artsvaberd Omni	\N	\N	157	1	2017-08-24	\N	10.207.135.202	1	ArtsvaberdOmni	\N	3	2		1240	\N	\N
1265	Artsvaberd TV	\N	\N	157	1	2017-08-24	\N		\N		\N	3	2		1241	\N	\N
1266	ArtsvaberdAygedzorClient	\N	\N	157	1	2017-08-24	\N	10.207.135.200	2	AygedzorArtsvaberdLi	\N	3	2		1242	\N	\N
1267	ArtsvaberdTVChorotanAP	\N	\N	157	1	2017-08-24	\N	10.207.135.196	1	Chorotan_HF	\N	3	2		1243	\N	\N
1268	AygedzorArtsvaberdLink	\N	\N	155	1	2017-08-24	\N	10.207.135.201	1	AygedzorArtsvaberdLi	\N	3	2		1244	\N	\N
1275	Aghvorik	\N	\N	516	1	2017-08-27	\N	10.205.141.243	2	AMASIA_AP3	\N	3	2		1259	\N	\N
1276	Aygedzor Omni	\N	\N	155	1	2017-08-27	\N	10.207.135.199	1	AygedzorOmni	\N	3	2		1260	\N	\N
1278	Aygedzor TV	\N	\N	155	1	2017-08-27	\N		\N		\N	3	2		1261	\N	\N
1280	AygedzorChinariLink	\N	\N	155	1	2017-08-27	\N	10.207.135.206	2	Chinari_Omni	\N	3	2		1263	\N	\N
1282	Chinari Omni	\N	\N	1678	1	2017-08-27	\N	10.207.135.205	1	Chinari_Omni	\N	3	2		1264	\N	\N
1283	Chinari Ucom AP	\N	\N	1678	1	2017-08-27	\N		\N		\N	3	2		1265	\N	\N
1287	NoyemberyanTVRocketSector	\N	\N	77	\N	2017-08-27	\N	10.207.135.231	1	Noyemberyan_Omni	\N	3	2		1267	\N	\N
1288	Noyemberyan TV	\N	\N	77	1	2017-08-27	\N		\N		\N	3	2		1268	\N	\N
1289	NoyemberyanPB_AP	\N	\N	77	1	2017-08-27	\N	10.207.135.232	1	HF_PB400	\N	3	2		1269	\N	\N
1290	Ayrum_Switch	\N	\N	71	1	2017-08-27	2017-11-16	10.207.136.10	\N		\N	3	2		1270	\N	\N
1291	AyrumSector5Link	\N	\N	71	1	2017-08-27	\N	10.207.136.21	1	AyrumLink5Sector	\N	3	2		1271	\N	\N
1292	Ayrum	\N	\N	666	1	2017-08-27	2017-08-27	10.205.141.106	2	AyrumRocket	15	3	2		1272	\N	\N
1293	Ayrum	\N	666	1664	1	2017-08-27	2017-09-27		\N		15	5	2		1272	\N	\N
1294	NeghotsBldLoco	\N	1664	423	1	2017-08-15	2017-08-24		\N		15	3	2		1273	\N	\N
1295	NeghotsBldLoco	\N	423	1664	1	2017-08-24	2017-08-30	10.207.136.7	2	AkhtalaHF	15	5	2		1273	\N	\N
1298	Neghots	\N	\N	423	1	2017-08-25	2017-08-26		\N		15	3	2		1275	\N	\N
1299	Neghots	\N	423	1664	4	2017-08-26	\N		\N		15	5	2	Դուրս գրման ա/թ 21/12/2017թ	1275	\N	vahram@hf.am
1300	Neghots	\N	1664	1691	1	2017-08-24	2017-08-25		\N		15	3	2		1276	\N	\N
1302	NanoStation Loco M2	\N	1664	423	1	2017-08-24	2017-08-26	10.205.141.104	2	Neghots_HF	15	3	2		1274	\N	\N
1303	NanoStation Loco M2	\N	423	1664	1	2017-08-26	2017-08-30	10.205.141.104	2		15	5	2		1274	\N	\N
1304	PambakVanadzorBuild	\N	\N	84	1	2017-08-28	2017-08-28	10.207.136.71	1	hf_Pambak	15	3	2		1277	\N	\N
1305	PambakVanadzorBuild	\N	84	1664	1	2017-08-28	2017-09-12		\N		3	5	2		1277	\N	\N
1306	Ayrum TV	\N	\N	71	1	2017-08-28	\N		\N		13	3	2		1278	\N	\N
1307	AyrumTchotchkanLink	\N	\N	71	1	2017-08-28	\N	10.207.136.24	1	TchotchkanAyrumLink	13	3	2		1279	\N	\N
1308	AyrumBagratashenLink	\N	\N	71	1	2017-08-28	\N	10.207.136.23	1	BagratashenLink	13	3	2		1280	\N	\N
1309	AyrumTVRocketSector	\N	\N	71	1	2017-08-28	\N	10.207.136.11	1	AyrumRocket	13	3	2		1281	\N	\N
1310	Ayrum TV	\N	\N	71	1	2017-08-28	\N		\N		13	3	2		1282	\N	\N
1311	LchkadzorAyrumLink	\N	\N	234	1	2017-08-28	\N	10.207.136.13	2	AyrumLink5Sector	13	3	2		1283	\N	\N
1312	lchkadzorOmni	\N	\N	234	1	2017-08-28	\N	10.207.136.15	1	LchkadzorOmni	13	3	2		1284	\N	\N
1313	Lchkadzor Buid AP	\N	\N	234	1	2017-08-28	\N		\N		13	3	2		1285	\N	\N
1314	QarkopAyrumLink	\N	\N	1679	1	2017-08-28	\N	10.207.136.16	2	AyrumLink5Sector	13	3	2		1286	\N	\N
1315	QarkopOmni	\N	\N	1679	1	2017-08-28	\N	10.207.136.18	1	QarkopOmni	13	3	2		1287	\N	\N
1316	Qarkop New Tower	\N	\N	1679	1	2017-08-28	\N		\N		13	3	2		1288	\N	\N
1317	tchochkan-sw	\N	\N	405	1	2017-08-28	\N	10.207.136.27	\N		13	3	2		1289	\N	\N
1318	TchotchkanAyrumLink	\N	\N	405	1	2017-08-28	\N	10.207.136.22	2	TchotchkanAyrumLink	13	3	2		1290	\N	\N
1319	Tchotchkan Omni	\N	\N	405	1	2017-08-28	\N	10.207.136.14	1	 TchotchkanOmni	13	3	2		1291	\N	\N
1320	Tchotchkan School AP	\N	\N	405	1	2017-08-28	\N		\N		13	3	2		1292	\N	\N
1321	BagratashenAyrumClient	\N	\N	81	1	2017-08-28	\N	10.207.136.4	2	BagratashenLink	13	3	2		1293	\N	\N
1322	Bagratashen Omni	\N	\N	81	1	2017-08-28	\N	10.207.136.20	1	BagratashenOmni	13	3	2		1294	\N	\N
1323	Bagratashen New Tower	\N	\N	81	1	2017-08-28	\N		\N		13	3	2		1295	\N	\N
1324	koti-sw	\N	\N	163	1	2017-08-28	\N	10.206.134.209	\N		13	3	2		1296	\N	\N
1325	KotiOmni	\N	\N	163	1	2017-08-28	\N	10.206.134.210	1	KotiOmni	13	3	2		1297	\N	\N
1326	Koti Ucom AP	\N	\N	163	1	2017-08-28	\N		\N		13	3	2		1298	\N	\N
1327	gyumri-sw	\N	\N	96	1	2017-08-27	\N	10.207.136.108	\N		\N	3	2		1299	\N	\N
1328	GyumriTVRocketOmni	\N	\N	96	1	2017-08-28	2017-09-05	10.206.134.5	1	 HFAP5	\N	3	2		1300	\N	\N
1329	GyumriTV	\N	\N	96	1	2017-08-28	\N		\N		\N	3	2		1301	\N	\N
1330	gala-sw	\N	\N	1680	1	2017-08-20	\N	10.206.134.39	\N		\N	3	2		1302	\N	\N
1331	GalaOmni	\N	1664	1680	1	2017-05-30	2017-08-19	10.207.136.171	1	GalaOmni	18	3	2		1303	\N	\N
1335	BasenJrarat	\N	1680	1680	1	2017-05-30	2017-08-20		\N		18	5	2		1305	\N	\N
1337	Talin TV	\N	\N	55	1	2017-08-29	\N		\N		7	3	2		1306	\N	\N
1338	Vanevan	\N	1664	1030	1	2017-07-30	\N	10.205.134.81	2	VardenisRocket2	9	5	2		84	\N	\N
1339	gyumri_ani-sw	\N	\N	204	1	2017-08-29	\N	10.207.136.168	\N		\N	3	2		1307	\N	\N
1340	GyumriAniBuldOmni	\N	\N	204	1	2017-08-29	\N	10.206.134.46	1	GyumriAni	\N	3	2		1308	\N	\N
1341	GyumriANI buil AP	\N	\N	204	1	2017-08-29	\N		\N		\N	3	2		1309	\N	\N
1342	gyumri6-sw	\N	\N	1394	1	2017-08-28	\N	10.207.136.162	\N		18	3	2		1310	\N	\N
1343	Gyumri6YerazgavorsLink	\N	\N	1394	1	2017-08-29	\N	10.207.136.163	2	Gyumri6Yerazgavors	\N	3	2		1311	\N	\N
1344	Gyumri#6ShirakavanLink	\N	\N	1394	1	2017-08-29	\N	10.206.134.35	2	GyumriShirakavanLink	\N	3	2		1312	\N	\N
1345	Gyumri#6Omni	\N	\N	1394	1	2017-08-29	2018-04-18	10.207.136.165	1	Gyumri#6Omni	\N	3	2		1313	\N	\N
1346	Gyumri#6 School AP	\N	\N	1394	1	2017-08-29	2018-04-18		\N		\N	3	2		1314	\N	\N
1347	 YerazgavorsGyumri6Link	\N	\N	1338	1	2017-08-29	\N	10.207.136.164	1	 Gyumri6Yerazgavors	\N	3	2		1315	\N	\N
1348	Yerazgavorsi Omni	\N	\N	1338	1	2017-08-29	\N	10.207.136.166	1	 Erazgavorsk_AP	\N	3	2		1316	\N	\N
1349	Yerazgavors School AP	\N	\N	1338	1	2017-08-29	\N		\N		\N	3	2		1317	\N	\N
1350	ShirakavanGyumriLink	\N	\N	107	1	2017-08-29	\N	10.206.134.36	1	GyumriShirakavanLink	\N	3	2		1318	\N	\N
1351	ShirakavanOmni	\N	\N	107	1	2017-08-29	\N	ShirakavanOmni	1	ShirakavanOmni	\N	3	2		1319	\N	\N
1352	Shirakavan new Tower	\N	\N	107	1	2017-08-29	\N		\N		\N	3	2		1320	\N	\N
1353	ShirakavanJrapiLink	\N	\N	107	1	2017-08-29	\N	10.206.134.38	2	ShirakavanOmni	\N	3	2		1321	\N	\N
1354	JrapiShirakavanLink	\N	\N	115	1	2017-08-29	\N	10.206.134.41	1	ShirakavanJrapiLink	\N	3	2		1322	\N	\N
1355	JrapOmni	\N	\N	115	1	2017-08-29	\N	10.206.134.42	1	 JrapiOmni	\N	3	2		1323	\N	\N
1356	Jrapi Ucom AP	\N	\N	115	1	2017-08-29	\N		\N		\N	3	2		1324	\N	\N
1357	Keti School AP	\N	\N	1354	1	2017-08-29	\N		\N		\N	3	2		1325	\N	\N
1358	DzitankovTalinLink	\N	\N	60	1	2017-08-29	\N	10.206.133.154	1	TALINTITYANKOV	\N	3	2		1326	\N	\N
1359	DzitankovOmni	\N	\N	60	1	2017-08-29	\N	10.206.133.145	1	DzitankovOmni	\N	3	2		1327	\N	\N
1360	LanjikTalinLink	\N	\N	59	1	2017-08-29	\N	10.206.133.130	2	TalinLanjik	\N	3	2		1328	\N	\N
1361	LanjikOmni	\N	\N	59	1	2017-08-29	\N	10.206.133.144	1	LanjikOmni	\N	3	2		1329	\N	\N
1362	Lanjik TV	\N	\N	59	1	2017-08-29	\N		\N		\N	3	2		1330	\N	\N
1363	akhuryan-sw	\N	\N	210	1	2017-08-29	\N	10.207.136.172	\N		\N	3	2		1331	\N	\N
1364	AkhuryanJajur	\N	\N	210	1	2017-08-29	\N	10.206.134.43	1	AkhuryanJajur	3	\N	2		1332	\N	\N
1365	JajurAkhuryan	\N	\N	1351	1	2017-08-29	\N	10.206.134.50	2	AkhuryanJajur	\N	3	2		1333	\N	\N
1366	Jajur_Omni	\N	\N	1351	1	2017-08-29	\N	10.206.134.44	1	JajurOmni	\N	3	2		1334	\N	\N
1367	Jajur School AP	\N	\N	1351	1	2017-08-29	\N		\N		\N	3	2		1335	\N	\N
1368	amasis-sw	\N	\N	100	1	2017-08-29	\N	10.206.134.6	\N		\N	3	2		1336	\N	\N
1369	 Amasiya Rocket 1	\N	\N	100	1	2017-08-29	\N	10.206.134.11	1	 AMASIA_AP3	\N	3	2		1337	\N	\N
1370	Amasia TV	\N	\N	100	1	2017-08-29	\N		\N		\N	3	2		1338	\N	\N
1371	 Amasiya Rocket 2	\N	\N	100	1	2017-08-29	\N	10.206.134.10	1	AMASIA_AP1	\N	3	2		1339	\N	\N
1372	Amasia TV	\N	\N	100	1	2017-08-29	\N		\N		\N	3	2		1340	\N	\N
1373	Amasia Garnarich Link	\N	\N	100	1	2017-08-29	\N	10.206.134.23	1	HF_Garnarich_Link	\N	3	2		1341	\N	\N
1374	AmasiyaTV DzorashenLink	\N	\N	100	1	2017-08-29	\N	10.206.134.22	1	HF_Dzorashen_Link	\N	3	2		1342	\N	\N
1375	AmasiaTVKarmravanAP	\N	\N	100	1	2017-08-29	\N	10.206.134.4	1	HF_Karmravan_Link	\N	3	2		1343	\N	\N
1376	AmasiyaTVTorosAP_Link	\N	\N	100	1	2017-08-29	\N	10.206.134.25	1	HF_Toros_Link	\N	3	2		1344	\N	\N
1377	GarnarichAPAmasiaTVLInk	\N	\N	519	1	2017-08-29	\N	10.206.134.21	2	HF_Garnarich_Link	\N	3	2		1345	\N	\N
1378	GarnarichOmni	\N	\N	519	1	2017-08-29	\N	10.206.134.20	1	Garnarich_Omni	\N	3	2		1346	\N	\N
1379	Garnarich School AP	\N	\N	519	1	2017-08-29	\N		\N		\N	3	2		1347	\N	\N
1380	DzorashenAmasiaTVLink	\N	\N	102	1	2017-08-29	\N	10.206.134.19	2	HF_Dzorashen_Link	\N	3	2		1348	\N	\N
1381	dzorashenomni	\N	\N	102	1	2017-08-29	\N	10.206.134.7	1	Dzorashen_Omni	\N	3	2		1349	\N	\N
1382	Dzorashen TV	\N	\N	102	1	2017-08-29	\N		\N		\N	3	2		1350	\N	\N
1387		\N	\N	1664	1	2017-08-30	2017-08-30		\N		1	3	2		1355	\N	\N
1388		\N	\N	1664	1	2017-08-30	2018-03-21		\N		1	3	2		1356	\N	\N
1389	QarinjChkalovLink	\N	1664	1681	1	2017-08-30	\N		\N		7	3	2		1355	\N	\N
1390	QarinjBulletOmni	\N	1664	1681	1	2017-08-30	2017-09-20		\N		7	3	2		485	\N	\N
1391	Qarinj	\N	1664	411	1	2017-08-30	\N		\N		7	3	2		1273	\N	\N
1392	Ardvi	\N	1664	417	1	2017-08-30	\N		\N		8	3	2		1274	\N	\N
1393	Hovtamej	\N	1664	935	1	2017-08-30	\N	91.205.133.61	\N		8	5	2		428	\N	\N
1394	DzoragetChkalovLink	\N	1664	70	1	2017-08-30	\N		\N		8	3	2		486	\N	\N
1395	Yeghegnut	\N	1664	392	1	2017-08-31	\N		\N		8	3	2		488	\N	\N
1396	Mghart	\N	1664	415	1	2017-08-31	\N		\N		8	3	2		124	\N	\N
1397	Dsegh	\N	1664	403	1	2017-08-31	\N		\N		8	3	2		89	\N	\N
1404	ChkalovBulletOmni	\N	1664	68	1	2017-08-31	\N		\N		8	8	2		234	\N	\N
1405	ChkalovSectorD	\N	1664	68	1	2017-08-31	\N		\N		8	3	2		213	\N	\N
1406		\N	1664	68	1	2017-08-31	\N		\N		8	3	2		320	\N	\N
1407		\N	1664	68	1	2017-08-31	\N		\N		8	3	2		322	\N	\N
1410	Lanjazat	\N	1664	311	1	2017-05-31	2017-09-06	91.205.140.196	\N		24	3	2		1359	\N	\N
1412	Lanjazat	\N	1664	311	1	2017-05-31	2017-09-05	10.205.140.196	2	DeghtsutRocket	24	3	2		1358	\N	\N
1414	Lanjazat	\N	1664	311	1	2017-09-01	\N	91.205.140.196	\N		9	5	2		343	\N	\N
1417	KAQAVASARCLIENT	\N	\N	108	1	2017-08-31	2018-05-08	10.206.134.15	2	Dzorashen_Omni	18	3	2		1360	\N	\N
1418	Kaqavasar New Tower	\N	\N	108	1	2017-08-31	2018-05-08		\N		18	3	2		1361	\N	\N
1419	Kaqavasar New Tower	\N	\N	108	1	2017-09-01	2018-04-26		\N		18	3	2		1362	\N	\N
1420	KarmravanOmni	\N	\N	564	1	2017-09-01	\N	10.207.136.105	1	Karmravan_Omni	18	3	2		1363	\N	\N
1421	Karmravan Shool AP	\N	\N	564	1	2017-09-01	\N		\N		18	3	2		1364	\N	\N
1422	TorosAPAmasiaTVLink	\N	\N	101	1	2017-09-01	2018-03-28	10.206.134.2	2	HF_Toros_Link	18	3	2		1365	\N	\N
1423	 Toros Omni	\N	\N	101	1	2017-09-01	2018-03-28	10.206.134.3	1	Toros_Omni	18	3	2		1366	\N	\N
1424	Toros New Tower (Orange Tower)	\N	\N	101	1	2017-09-01	\N		\N		18	3	2		1367	\N	\N
1425	saratak-sw	\N	\N	113	1	2017-09-01	\N	10.207.136.140	\N		18	3	2		1368	\N	\N
1426	MaralikLernakertLink	\N	\N	109	1	2017-09-01	\N	10.206.133.195	2	MaralikLernakertLink	18	3	2		1369	\N	\N
1427	MaralikHarichLink	\N	\N	109	1	2017-09-01	\N	10.206.133.196	2	MaralikHarichLink	18	3	2		1370	\N	\N
1428	MaralikOmni	\N	\N	109	1	2017-09-01	\N	10.207.136.137	1	MaralikOmni	18	3	2		1371	\N	\N
1429	Maralik Build AP	\N	\N	109	1	2017-09-01	\N		\N		18	3	2		1372	\N	\N
1430	HarichMaralikLink	\N	\N	545	1	2017-09-01	\N	10.206.133.197	1	MaralikHarichLink	18	3	2		1373	\N	\N
1431	Harichi Omni	\N	\N	545	1	2017-09-01	\N	10.207.136.131	1	HarichOmni	18	3	2		1374	\N	\N
1432	Harich School AP	\N	\N	545	1	2017-09-01	\N		\N		18	3	2		1375	\N	\N
1433	mantash-sw	\N	\N	551	1	2017-09-01	\N		\N		18	3	2		1376	\N	\N
1434	MantashOmni	\N	\N	551	1	2017-09-01	\N	10.207.136.135	1	MantashOmni	18	3	2		1377	\N	\N
1435	Pokr Mantash School AP	\N	\N	551	1	2017-09-01	\N		\N		18	3	2		1378	\N	\N
1436	LernakertMaralikLink	\N	\N	540	1	2017-09-01	\N	10.206.133.199	1	MaralikLernakertLink	18	3	2		1379	\N	\N
1437	LernakertGeghanistLink	\N	\N	540	1	2017-09-01	\N	10.206.133.203	2	LernakertGeghanistLi	18	3	2		1380	\N	\N
1438	Lernakerti Omni	\N	\N	540	1	2017-09-01	\N	10.207.136.130	1	LernakertOmni	18	3	2		1381	\N	\N
1439	Lernakert School AP	\N	\N	540	1	2017-09-01	\N		\N		18	3	2		1382	\N	\N
1440	GeghanistLernakertLink	\N	\N	542	1	2017-09-01	\N	10.206.133.204	1	LernakertGeghanistLi	18	3	2		1383	\N	\N
1441	GeghanistShirakOmni	\N	\N	542	1	2017-09-01	\N	10.207.136.132	1	GeghanistOmni	18	3	2		1384	\N	\N
1442	Geghanist(Shirak)  School AP	\N	\N	542	1	2017-09-01	\N		\N		18	3	2		1385	\N	\N
1443	Martuni TV	\N	\N	15	1	2017-09-03	\N		\N		9	3	2		1386	\N	\N
1444	SaratakTVOmni	\N	\N	113	1	2017-09-02	\N	10.207.136.138	1	SaratakTVOmni	18	3	2		1387	\N	\N
1445	Saratak TV	\N	\N	113	1	2017-09-03	\N		\N		18	3	2		1388	\N	\N
1446	GarniRocketOmni	\N	1664	1690	1	2017-09-02	\N	10.207.136.39	1	GeghardHF	13	5	2		215	\N	\N
1447	Garni TV	\N	1664	1690	1	2017-09-02	\N		\N		13	5	2		637	\N	\N
1448		\N	1664	477	1	2017-09-02	\N		2		13	5	2		86	\N	\N
1449		\N	1664	479	1	2017-09-02	\N		2		13	5	2		85	\N	\N
1457	Vazashen	\N	\N	655	1	2017-09-05	\N	10.205.142.2	2	VazashenOmni	22	3	2		1392	\N	\N
1458	Vazashen	\N	\N	655	1	2017-09-05	\N	91.205.142.2	\N		22	3	2		1393	\N	\N
1459		\N	1664	1664	1	2017-06-20	\N		\N		5	3	2		508	\N	\N
1460	dsegh	\N	\N	403	1	2017-05-31	2017-09-04		\N		15	3	2		1394	\N	\N
1461		\N	403	1664	4	2017-09-04	\N		\N		7	5	2	Դուրս գրման ա/թ 21/12/2017թ	1394	\N	vahram@hf.am
1462	dsegh	\N	\N	403	1	2017-05-31	2017-09-04		\N		15	3	2		1395	\N	\N
1463		\N	403	1664	1	2017-09-04	\N		\N		7	3	2		1395	\N	\N
1464	yeghegnut	\N	\N	392	1	2017-05-31	2017-09-04		\N		15	3	2		1396	\N	\N
1465		\N	392	1664	4	2017-09-04	\N		\N		7	3	2	Դուրս գրման ա/թ 21/12/2017թ	1396	\N	vahram@hf.am
1466	aygehat	\N	\N	416	1	2017-05-31	2017-09-04		\N		15	3	2		1397	\N	\N
1467		\N	416	1664	4	2017-09-04	\N		\N		7	3	2	Դուրս գրման ա/թ 21/12/2017թ	1397	\N	vahram@hf.am
1468	dzoraget	\N	\N	70	1	2017-05-31	2017-09-04		\N		15	3	2		1398	\N	\N
1469		\N	70	1664	4	2017-09-04	\N		\N		8	3	2	Դուրս գրման ա/թ 21/12/2017	1398	\N	vahram@hf.am
1472	qarinj	\N	\N	411	1	2017-05-31	2017-09-04		\N		15	3	2		1400	\N	\N
1473		\N	411	1664	4	2017-09-04	\N		\N		7	3	2	Դուրս գրման ա/թ 21/12/2017թ	1400	\N	vahram@hf.am
1474	qarinj	\N	\N	411	1	2017-05-31	2017-09-04		\N		15	3	2		1401	\N	\N
1475		\N	411	1664	1	2017-09-04	\N		\N		7	3	2		1401	\N	\N
1476	qarinjbuild	\N	\N	1681	1	2017-05-31	2017-09-04		\N		15	3	2		1402	\N	\N
1477		\N	1681	1664	4	2017-09-04	\N		\N		7	3	2	Դուրս գրման ա/թ 21/12/2017	1402	\N	vahram@hf.am
1478	qajirnjbld	\N	\N	1681	1	2017-05-31	2017-09-04		\N		15	3	2		1403	\N	\N
1479	Chkalov AP	\N	\N	68	1	2017-06-30	2017-09-04		\N		15	3	2		1404	\N	\N
1480		\N	1681	1664	1	2017-09-04	2017-09-13		\N		7	3	2		1403	\N	\N
1481		\N	68	1664	4	2017-09-04	\N		\N		7	3	2	Դուրս գրման ա/թ 16/01/2018	1404	\N	jass.manasyan@gmail.com
1482	ardvi	\N	\N	417	1	2017-05-31	2017-09-04		\N		15	3	2		1405	\N	\N
1483	Chkalov TV	\N	\N	68	1	2017-06-30	2017-09-04		\N		15	3	2		1406	\N	\N
1484		\N	417	1664	4	2017-09-04	\N		\N		8	3	2	Դուրս գրման ա/թ 21/12/2017թ	1405	\N	vahram@hf.am
1485		\N	68	1664	1	2017-09-04	\N		\N		7	3	2		1406	\N	\N
1486	ardvi	\N	\N	417	1	2017-05-31	2017-09-04		\N		15	3	2		1407	\N	\N
1487		\N	417	1664	1	2017-09-04	\N		\N		8	3	2		1407	\N	\N
1490	Sardarapat Build AP	\N	\N	197	1	2017-05-31	2017-09-04		\N		7	3	2		1409	\N	\N
1491		\N	197	1664	4	2017-09-04	\N		\N		7	3	2	Դուրս գրման ա/թ 21/12/2017	1409	\N	vahram@hf.am
1493		\N	\N	68	1	2017-05-31	2017-09-04		\N		15	3	2		1410	\N	\N
1494		\N	68	1664	1	2017-09-04	2017-09-20		\N		7	3	2		1410	\N	\N
1495		\N	\N	68	1	2017-05-31	2017-09-04		\N		15	3	2		1411	\N	\N
1496		\N	68	1664	1	2017-09-04	2017-10-23		\N		7	3	2		1411	\N	\N
1497		\N	\N	68	1	2017-05-31	2017-09-04		\N		15	3	2		1412	\N	\N
1498		\N	68	1664	1	2017-09-04	2017-09-20		\N		7	3	2		1412	\N	\N
1499	Lanjaghbyur-sw	\N	192	1674	1	2017-09-05	\N		\N		9	3	2		964	\N	\N
1500	Mghart	\N	\N	415	1	2017-06-03	2017-09-04		\N		15	3	2		1413	\N	\N
1501		\N	415	1664	4	2017-09-04	\N		\N		7	3	2	Դուրս գրման ա/թ 21/12/2017թ	1413	\N	vahram@hf.am
1502		\N	\N	415	1	2017-07-01	2017-09-05		\N		15	3	2		1414	\N	\N
1503		\N	415	1664	1	2017-09-05	\N		\N		7	3	2		1414	\N	\N
1504		\N	\N	70	1	2017-05-30	2017-09-04		\N		15	3	2		1415	\N	\N
1505		\N	70	1664	1	2017-09-04	\N		\N		7	3	2		1415	\N	\N
1506		\N	\N	68	1	2017-05-31	2017-09-04		\N		15	3	2		1416	\N	\N
1507		\N	68	1664	1	2017-09-04	\N		\N		7	3	2		1416	\N	\N
1508	GyumriTVRocketOmni	\N	1664	96	1	2017-09-05	\N	10.206.134.5	1	HFAP5	18	5	2		218	\N	\N
1509		\N	96	1664	4	2017-09-05	\N		\N		18	3	2	Դուրս գրման ա/թ 21/12/2017թ	1300	\N	vahram@hf.am
1510	hovtamej	\N	1664	935	1	2017-06-30	2017-09-04		\N		24	3	2		1357	\N	\N
1511		\N	935	1664	2	2017-09-04	\N		\N		8	5	2		1357	\N	\N
1512		\N	311	1664	2	2017-09-05	\N		\N		9	3	2		1358	\N	\N
1513		\N	311	1664	2	2017-09-06	\N		\N		9	3	2		1359	\N	\N
1514		\N	192	1664	1	2017-09-06	2017-09-11		\N		9	5	2		965	\N	\N
1515		\N	192	1664	1	2017-09-06	2017-09-12		\N		9	5	2		966	\N	\N
1516		\N	192	1664	1	2017-09-06	2017-09-27		\N		9	5	2		968	\N	\N
1517	Geghard new Tower	\N	\N	192	1	2017-06-30	2017-09-06		\N		9	3	2		1417	\N	\N
1518		\N	192	1664	4	2017-09-06	\N		\N		9	5	2	Դուրս գրման ա/թ 16/01/2018	1417	\N	jass.manasyan@gmail.com
1519		\N	477	1664	1	2017-09-06	2017-09-11		\N		9	5	2		959	\N	\N
1520	Garni School AP	\N	1664	479	1	2017-06-29	2017-09-06		\N		9	3	2		1418	\N	\N
1521		\N	479	1664	1	2017-09-06	2017-09-10		\N		9	5	2		1418	\N	\N
1522	 LanjaghbyurGavarLink	\N	1664	1674	1	2017-09-06	\N	10.206.135.25	1	 GavarLanjaghbyurLink	9	5	2		289	\N	\N
1523		\N	1674	1664	2	2017-09-07	\N		\N		9	5	2		1121	\N	\N
1524	Lanjaghbyur	\N	\N	343	1	2017-05-30	2017-09-07		2		9	3	2		1419	\N	\N
1525		\N	343	1664	2	2017-09-07	\N		\N		9	5	2		1419	\N	\N
1526	aralez	\N	\N	763	1	2017-09-06	\N	10.205.134.123	2	VediRocket	24	3	2		1420	\N	\N
1527	aralez	\N	\N	763	1	2017-09-06	\N	91.205.134.123	\N		24	3	2		1421	\N	\N
1528	zolaqar2	\N	\N	991	1	2017-09-07	\N	10.205.141.25	2	MtuniSector1	9	3	2		1422	\N	\N
1529	 LanjaghbyurRocket	\N	1664	1674	1	2017-09-06	\N	10.206.135.26	1	LandjaghbyurAP	9	5	2		217	\N	\N
1530	norashen-geghar	\N	\N	371	1	2017-09-06	\N	10.205.141.40	2	SevanRocket	9	3	2		1423	\N	\N
1531	norashen-geghar	\N	\N	371	1	2017-09-06	\N	91.205.141.33	\N		9	3	2		1424	\N	\N
1534	gegharquniq	\N	\N	343	1	2017-09-06	\N	91.205.134.56	\N		9	3	2		1427	\N	\N
1537		\N	1664	1093	1	2017-09-06	\N		\N		6	3	2		429	\N	\N
1538		\N	1664	1141	1	2017-09-06	\N		\N		6	3	2		427	\N	\N
1541		\N	\N	1664	1	2017-06-30	2017-08-21		\N		5	3	2		1428	\N	\N
1542		\N	1664	1612	1	2017-08-21	2017-08-22		\N		8	3	2		1428	\N	\N
1543		\N	1612	1664	1	2017-08-22	\N		\N		8	3	2		1428	\N	\N
1544		\N	1674	1664	2	2017-09-06	\N		\N		20	3	2		1122	\N	\N
1545		\N	\N	1664	1	2017-08-30	2017-09-01		\N		1	3	2		1429	\N	\N
1546	Aygehat-chkalov	\N	1664	416	1	2017-09-01	\N		\N		8	3	2		1429	\N	\N
1547		\N	\N	1664	1	2017-05-31	2017-08-24		\N		5	3	2		1430	\N	\N
1548		\N	1664	1688	1	2017-08-24	\N		\N		14	1	2		1430	\N	\N
1549		\N	\N	1664	1	2017-08-29	2017-09-01		\N		1	3	2		1431	\N	\N
1550	ChkalovMartsLink	\N	1664	68	1	2017-09-01	\N		\N		8	3	2		1431	\N	\N
1551		\N	\N	1664	1	2017-08-29	2017-09-01		\N		1	3	2		1432	\N	\N
1552		\N	1664	68	1	2017-09-01	\N		\N		8	3	2		1432	\N	\N
1553		\N	\N	1664	1	2017-08-29	2017-09-01		\N		1	3	2		1433	\N	\N
1554		\N	1664	68	1	2017-09-01	\N		\N		8	3	2		1433	\N	\N
1555		\N	\N	778	1	2017-07-11	2017-09-07		\N		24	3	2		1434	\N	\N
1556		\N	778	1664	4	2017-09-07	\N		\N		17	3	2	Դուրս գրման ա/թ 21/12/2017թ	1434	\N	vahram@hf.am
1557		\N	\N	778	1	2017-07-17	2017-09-07		\N		24	3	2		1435	\N	\N
1558		\N	778	1664	1	2017-09-07	\N		\N		17	3	2		1435	\N	\N
1559		\N	\N	773	1	2017-07-09	2017-09-07		\N		24	3	2		1436	\N	\N
1560		\N	773	1664	1	2017-09-07	2017-10-11		\N		17	3	2		1436	\N	\N
1561		\N	\N	773	1	2017-07-16	2017-09-07		\N		24	3	2		1437	\N	\N
1562		\N	773	1664	1	2017-09-07	\N		\N		17	3	2		1437	\N	\N
1563		\N	\N	246	1	2017-07-18	2017-09-07		\N		17	3	2		1438	\N	\N
1564		\N	246	1664	4	2017-09-07	\N		\N		17	3	2	Դուրս գրման ա/թ 21/12/2017թ	1438	\N	vahram@hf.am
1567		\N	\N	786	1	2017-07-18	2017-09-07		\N		17	3	2		1440	\N	\N
1568		\N	786	1664	1	2017-09-07	2017-09-12		\N		17	3	2		1440	\N	\N
1569		\N	\N	786	1	2017-07-18	2017-09-07		\N		17	3	2		1441	\N	\N
1570		\N	786	1664	1	2017-09-07	\N		\N		17	3	2		1441	\N	\N
1571		\N	\N	246	1	2017-08-08	2017-09-07		\N		17	3	2		1442	\N	\N
1572		\N	246	1664	1	2017-09-07	\N		\N		17	3	2		1442	\N	\N
1573		\N	477	1690	1	2017-09-06	\N		\N		8	3	2		958	\N	\N
1574		\N	477	1690	1	2017-09-07	\N		\N		8	3	2		960	\N	\N
1575		\N	96	1664	4	2017-09-07	\N		\N		18	3	2	Դուրս գրման ա/թ 21/12/2017թ	757	\N	vahram@hf.am
1576		\N	\N	1664	1	2017-09-06	2017-09-08		\N		5	3	2		1443	\N	\N
1577		\N	1664	96	1	2017-09-08	\N		\N		18	3	2		1443	\N	\N
1578		\N	1680	1664	2	2017-08-19	\N		\N		18	3	2		1303	\N	\N
1579		\N	1680	1664	2	2017-08-20	\N		\N		18	3	2		1305	\N	\N
1533	caghkashen	\N	\N	970	1	2017-09-06	2018-05-14		\N		9	3	2		1426	\N	\N
1580	BasenJrarat	\N	1680	1680	1	2017-08-27	2017-09-18		\N	BasenJrarat	18	3	2		1304	\N	\N
1581	saralanj-sw	\N	\N	37	1	2017-08-10	\N		\N		5	3	2		1444	\N	\N
1582	 SaralanjGeghasarLink	\N	\N	37	1	2017-08-26	\N		\N		5	3	2		1445	\N	\N
1584		\N	1664	1664	1	2017-07-30	2017-08-16		\N		5	5	2		104	\N	\N
1585		\N	1664	1664	1	2017-07-16	2017-09-13		\N		5	3	2		65	\N	\N
1586	gegharquniq	\N	343	343	1	2017-09-07	\N		\N		9	5	2		64	\N	\N
1587		\N	158	1664	1	2017-09-11	2017-11-22		\N		22	3	2		1198	\N	\N
1589		\N	\N	138	1	2017-06-14	\N		\N		23	3	2		1448	\N	\N
1590		\N	1664	138	1	2017-06-20	2017-09-11		\N		23	3	2		1449	\N	\N
1591		\N	\N	138	1	2017-07-17	\N		\N		23	3	2		1450	\N	\N
1592		\N	\N	138	1	2017-06-11	\N		\N		23	3	2		1451	\N	\N
1593		\N	\N	138	1	2017-05-23	\N		\N		23	3	2		1452	\N	\N
1594		\N	\N	138	1	2017-07-12	2017-09-11		\N		23	3	2		1453	\N	\N
1595		\N	\N	138	1	2017-06-19	\N		\N		23	3	2		1454	\N	\N
1597		\N	\N	138	1	2017-07-19	2017-09-11		\N		23	3	2		1456	\N	\N
1601		\N	1664	138	1	2017-06-14	2017-09-11		\N		23	3	2		1460	\N	\N
1605		\N	1664	138	1	2017-07-01	2017-09-12		\N		23	3	2		1464	\N	\N
1609		\N	1664	138	1	2017-09-11	\N		\N		13	3	2		212	\N	\N
1610		\N	1664	138	1	2017-09-11	\N		\N		13	3	2		207	\N	\N
1611		\N	1664	138	1	2017-09-11	\N		\N		13	3	2		312	\N	\N
1612		\N	138	1664	4	2017-09-11	\N		\N		13	3	2	Դուրս գրման ա/թ 21/12/2017թ	1453	\N	vahram@hf.am
1613		\N	1664	138	1	2017-09-11	\N		\N		13	3	2		314	\N	\N
1614		\N	1664	138	1	2017-09-11	\N		\N		13	3	2		288	\N	\N
1615		\N	138	1664	4	2017-09-11	\N		\N		13	3	2	Դուրս գրման ա/թ 21/12/2017	1456	\N	vahram@hf.am
1616		\N	1664	138	1	2017-09-11	\N		\N		13	3	2		193	\N	\N
1617		\N	1664	138	1	2017-09-11	\N		\N		13	3	2		195	\N	\N
1618		\N	1664	138	1	2017-09-11	\N		\N		13	3	2		192	\N	\N
1619		\N	1664	138	1	2017-09-11	\N		\N		13	3	2		139	\N	\N
1620		\N	138	1664	4	2017-09-11	\N		\N		13	3	2	Դուրս գրման ա/թ 21/12/2017	1460	\N	vahram@hf.am
1628		\N	138	1664	1	2017-09-11	2017-07-01		\N		13	3	2		1464	\N	\N
1635		\N	138	1664	4	2017-09-11	\N		\N		13	3	2	Դուրս գրման ա/թ 21/12/2017	1449	\N	vahram@hf.am
1641		\N	130	138	1	2017-05-10	2017-09-25		\N		23	3	2		1468	\N	\N
1643		\N	1664	138	1	2017-06-06	2017-09-11		\N		23	3	2		1469	\N	\N
1644		\N	138	1664	1	2017-09-11	2017-11-06		\N		13	3	2		1469	\N	\N
1645		\N	1664	138	1	2017-05-17	2017-09-12		\N		23	3	2		1470	\N	\N
1646		\N	138	1664	1	2017-09-12	\N		\N		13	3	2		1470	\N	vahram@hf.am
1647		\N	1664	138	1	2017-06-19	2017-09-12		\N		23	3	2		1471	\N	\N
1648		\N	138	1664	1	2017-09-11	\N		\N		13	3	2		1471	\N	\N
1649		\N	\N	138	1	2017-05-22	2017-09-11		\N		23	3	2		1472	\N	\N
1650		\N	138	1664	4	2017-09-11	\N		\N		13	3	2	Դուրս գրման ա/թ 16/01/2018	1472	\N	jass.manasyan@gmail.com
1651		\N	\N	138	1	2017-06-11	2017-09-11		\N		23	3	2		1473	\N	\N
1652		\N	138	1664	1	2017-09-11	\N		\N		13	3	2		1473	\N	\N
1653		\N	1664	138	1	2017-06-12	2017-09-12		\N		23	3	2		1474	\N	\N
1654		\N	138	1664	1	2017-09-11	2017-06-12		\N		13	3	2		1474	\N	\N
1655		\N	1664	138	1	2017-07-17	2017-09-12		\N		23	3	2		1475	\N	\N
1656		\N	138	1664	1	2017-09-11	2017-07-17		\N		13	3	2		1475	\N	\N
1657		\N	1664	138	1	2017-09-12	2017-09-11		\N		23	3	2		1476	\N	\N
1658		\N	138	1664	1	2017-09-10	2017-09-12		\N		13	3	2		1476	\N	\N
1660		\N	1664	138	1	2017-09-12	2017-09-12		\N		23	3	2		1478	\N	\N
1661		\N	138	1664	1	2017-09-11	2017-09-12		\N		13	3	2		1478	\N	\N
1662		\N	130	138	1	2017-06-19	2017-09-25		\N		23	3	2		1479	\N	\N
1664		\N	1664	151	1	2017-09-11	\N		\N		23	3	2		196	\N	\N
1665		\N	1664	151	1	2017-09-11	\N		\N		23	3	2		206	\N	\N
1666		\N	1664	151	1	2017-09-11	\N		\N		23	3	2		138	\N	\N
1667		\N	1664	151	1	2017-09-11	\N		\N		23	3	2		321	\N	\N
1668		\N	1664	148	1	2017-09-11	\N		\N		21	3	2		140	\N	\N
1669		\N	1664	148	1	2017-09-11	\N		\N		21	3	2		306	\N	\N
1670		\N	1664	148	1	2017-09-11	\N		\N		21	3	2		965	\N	\N
1671		\N	1664	148	1	2017-09-11	\N		\N		21	3	2		558	\N	\N
1672		\N	1664	1693	1	2017-09-10	\N		\N		23	3	2		491	\N	\N
1673		\N	1664	1693	1	2017-09-10	\N		\N		23	3	2		1418	\N	\N
1674		\N	1664	1693	1	2017-09-10	\N		\N		23	3	2		759	\N	\N
1675		\N	1664	147	1	2017-09-11	\N		\N		21	3	2		141	\N	\N
1676		\N	1664	147	1	2017-09-11	\N		\N		21	3	2		191	\N	\N
1677		\N	1664	147	1	2017-09-11	\N		\N		21	3	2		959	\N	\N
1678		\N	1664	147	1	2017-09-11	\N		\N		21	3	2		333	\N	\N
1679		\N	\N	1664	1	2017-01-12	2017-07-10		\N		5	3	2		1480	\N	\N
1680		\N	1664	129	1	2017-07-10	\N		\N		23	3	2		1480	\N	\N
1681		\N	129	1664	1	2017-04-11	2017-07-11		\N		5	3	2		1481	\N	\N
1682		\N	1664	129	1	2017-07-10	2017-04-11		\N		23	3	2		1481	\N	\N
1683		\N	\N	1664	1	2017-03-14	2017-07-10		\N		5	3	2		1482	\N	\N
1684		\N	1664	143	1	2017-07-10	\N		\N		23	3	2		1482	\N	\N
1685		\N	143	1664	1	2017-03-16	2017-07-11		\N		5	3	2		1483	\N	\N
1686		\N	1664	143	1	2017-07-10	2017-03-16		\N		23	3	2		1483	\N	\N
1687		\N	1664	1269	1	2017-04-13	2017-09-12		\N		5	3	2		1484	\N	\N
1688		\N	1269	1664	2	2017-09-11	\N		\N		16	3	2		1484	\N	\N
1689		\N	1664	1269	1	2017-04-10	2017-09-11		\N		5	3	2		1485	\N	\N
1690		\N	1269	1664	1	2017-09-11	2018-03-29		\N		16	3	2		1485	\N	jass.manasyan@gmail.com
1691		\N	1664	1269	1	2017-04-11	2017-09-11		\N		5	3	2		1486	\N	\N
1692		\N	1269	1664	4	2017-09-11	\N		\N		16	3	2	Դուրս գրման ա/թ 16/01/2018	1486	\N	jass.manasyan@gmail.com
1693		\N	\N	448	1	2017-07-19	2017-11-01		\N		5	3	2		1487	\N	\N
1694		\N	\N	448	1	2017-07-12	2017-11-01		\N		5	3	2		1488	\N	\N
1695		\N	\N	448	1	2017-07-12	\N		\N		5	3	2		1489	\N	\N
1696		\N	1664	143	1	2017-09-12	\N		\N		23	3	2		145	\N	\N
1697		\N	1664	143	1	2017-09-12	\N		\N		23	3	2		302	\N	\N
1699		\N	1664	1460	1	2017-09-10	\N		\N		23	3	2		290	\N	\N
1700		\N	1664	1460	1	2017-09-10	\N		\N		23	3	2		301	\N	\N
1701		\N	1664	153	1	2017-09-12	\N		\N		23	3	2		493	\N	\N
1702		\N	1664	153	1	2017-09-12	\N		\N		23	3	2		466	\N	\N
1703		\N	1664	137	1	2017-09-12	\N		\N		23	3	2		966	\N	\N
1704		\N	1664	139	1	2017-09-12	\N		\N		23	3	2		144	\N	\N
1706		\N	1664	139	1	2017-09-12	\N		\N		23	3	2		1277	\N	\N
1707		\N	1664	1424	1	2017-09-12	\N		\N		23	3	2		303	\N	\N
1708		\N	1664	1424	1	2017-09-12	\N		\N		23	3	2		470	\N	\N
1709		\N	1664	149	1	2017-09-12	\N		\N		21	3	2		147	\N	\N
1710		\N	1664	592	1	2017-09-12	\N		\N		23	3	2		143	\N	\N
1711		\N	1664	592	1	2017-09-12	\N		\N		23	3	2		300	\N	\N
1712		\N	1664	149	1	2017-09-12	\N		\N		21	3	2		304	\N	\N
1713		\N	1664	592	1	2017-09-12	\N		\N		23	3	2		223	\N	\N
1714		\N	1664	592	1	2017-09-12	\N		\N		23	3	2		313	\N	\N
1715		\N	1664	1424	1	2017-09-12	\N		\N		23	3	2		762	\N	\N
1716		\N	1664	149	1	2017-09-12	\N		\N		21	3	2		311	\N	\N
1717		\N	1664	149	1	2017-09-12	\N		\N		21	3	2		210	\N	\N
1718		\N	1664	140	1	2017-09-12	2017-10-11		\N		23	3	2		539	\N	\N
1719		\N	1664	1459	1	2017-09-12	2017-10-05		\N		21	3	2		336	\N	\N
1720		\N	1664	597	1	2017-09-13	\N		\N		23	3	2		543	\N	\N
1721		\N	1664	595	1	2017-09-13	\N		\N		23	3	2		538	\N	\N
1722		\N	1664	575	1	2017-09-12	\N		\N		23	3	2		338	\N	\N
1724		\N	1664	584	1	2017-09-13	\N		\N		23	3	2		1403	\N	\N
1725		\N	1664	583	1	2017-09-13	\N		\N		23	3	2		524	\N	\N
1726		\N	1664	582	1	2017-09-13	\N		\N		23	3	2		541	\N	\N
1727		\N	1664	585	1	2017-09-13	\N		\N		23	3	2		96	\N	\N
1728		\N	1664	581	1	2017-09-13	2017-10-17		\N		23	3	2		530	\N	\N
1729		\N	1664	1692	1	2017-09-12	\N		\N		23	3	2		131	\N	\N
1730		\N	1664	574	1	2017-09-12	\N		\N		21	3	2		1440	\N	\N
1731		\N	1664	593	1	2017-09-13	\N		\N		23	3	2		94	\N	\N
1732		\N	1664	573	1	2017-09-13	\N		\N		21	3	2		489	\N	\N
1733		\N	1664	594	1	2017-09-13	\N		\N		23	3	2		93	\N	\N
1734		\N	1664	1450	1	2017-09-13	\N		\N		23	3	2		132	\N	\N
1735		\N	1664	1458	1	2017-09-13	\N		\N		23	3	2		477	\N	\N
1736		\N	1664	625	1	2017-09-13	\N		\N		23	3	2		337	\N	\N
1737		\N	\N	145	1	2017-06-19	\N		\N		23	3	2		1490	\N	\N
1738		\N	\N	146	1	2017-06-12	2018-02-06		\N		23	3	2		1491	\N	\N
1739		\N	\N	145	1	2017-06-19	2017-09-25		\N		23	3	2		1492	\N	\N
1740		\N	\N	146	1	2017-07-16	2017-09-18		\N		23	3	2		1493	\N	\N
1741		\N	\N	146	1	2017-06-12	\N		\N		23	3	2		1494	\N	\N
1742		\N	\N	145	1	2017-06-19	2018-02-06		\N		23	3	2		1495	\N	\N
1743		\N	\N	145	1	2017-06-19	\N		\N		23	3	2		1496	\N	\N
1744		\N	\N	146	1	2017-07-07	\N		\N		23	3	2		1497	\N	\N
1745		\N	\N	145	1	2017-06-19	\N		\N		23	3	2		1498	\N	\N
1746		\N	\N	145	1	2017-06-19	2018-02-06		\N		23	3	2		1499	\N	\N
1747		\N	\N	151	1	2017-06-04	2017-09-25		\N		23	3	2		1500	\N	\N
1748		\N	\N	145	1	2017-06-18	2017-09-25		\N		23	3	2		1501	\N	\N
1749		\N	\N	151	1	2017-07-17	2017-09-25		\N		23	3	2		1502	\N	\N
1750		\N	\N	1693	1	2017-06-09	2017-09-25		\N		4	3	2		1503	\N	\N
1751		\N	\N	151	1	2017-06-05	2017-09-25		\N		23	3	2		1504	\N	\N
1752		\N	\N	151	1	2017-06-05	2017-09-25		\N		23	3	2		1505	\N	\N
1753		\N	\N	1693	1	2017-06-17	\N		\N		23	3	2		1506	\N	\N
1754		\N	\N	147	1	2017-06-18	2017-09-25		\N		23	3	2		1507	\N	\N
1755		\N	\N	1693	1	2017-07-16	2017-09-25		\N		23	3	2		1508	\N	\N
1756		\N	\N	147	1	2017-06-17	2017-09-25		\N		23	3	2		1509	\N	\N
1757		\N	\N	147	1	2017-06-19	2017-09-25		\N		23	3	2		1510	\N	\N
1758		\N	\N	147	1	2017-06-12	2017-09-25		\N		23	3	2		1511	\N	\N
1759		\N	\N	147	1	2017-06-12	2017-09-25		\N		23	3	2		1512	\N	\N
1760		\N	\N	149	1	2017-06-07	2017-09-25		\N		23	3	2		1513	\N	\N
1761		\N	\N	149	1	2017-06-02	2017-09-25		\N		23	3	2		1514	\N	\N
1762		\N	\N	140	1	2017-06-24	\N		\N		23	3	2		1515	\N	\N
1763		\N	\N	140	1	2017-06-15	\N		\N		23	3	2		1516	\N	\N
1764		\N	\N	140	1	2017-06-20	2017-09-25		\N		23	3	2		1517	\N	\N
1765		\N	\N	140	1	2017-06-28	\N		\N		23	3	2		1518	\N	\N
1766		\N	\N	139	1	2017-07-14	2017-09-25		\N		23	3	2		1519	\N	\N
1767		\N	\N	139	1	2017-06-24	2017-09-25		\N		23	3	2		1520	\N	\N
1768		\N	\N	139	1	2017-06-09	2017-09-25		\N		23	3	2		1521	\N	\N
1769		\N	\N	139	1	2017-06-18	\N		\N		23	3	2		1522	\N	\N
1770		\N	\N	1460	1	2017-06-21	2017-09-25		\N		23	3	2		1523	\N	\N
1771		\N	\N	148	1	2017-06-12	2017-09-25		\N		23	3	2		1524	\N	\N
1772		\N	\N	1460	1	2017-06-16	2017-09-25		\N		23	3	2		1525	\N	\N
1773		\N	\N	1460	1	2017-06-22	2017-09-25		\N		23	3	2		1526	\N	\N
1774		\N	\N	148	1	2017-06-18	2017-09-25		\N		23	3	2		1527	\N	\N
1775		\N	\N	1460	1	2017-07-05	2017-09-25		\N		23	3	2		1528	\N	\N
1776		\N	\N	148	1	2017-07-17	\N		\N		23	3	2		1529	\N	\N
1777		\N	\N	148	1	2017-06-19	2017-09-25		\N		23	3	2		1530	\N	\N
1778		\N	\N	1460	1	2017-07-20	\N		\N		23	3	2		1531	\N	\N
1779		\N	\N	148	1	2017-07-17	2017-09-25		\N		23	3	2		1532	\N	\N
1781		\N	\N	137	1	2017-07-09	\N		\N		23	3	2		1534	\N	\N
1782		\N	\N	592	1	2017-06-09	2017-09-25		\N		23	3	2		1535	\N	\N
1783		\N	\N	137	1	2017-07-10	\N		\N		23	3	2		1536	\N	\N
1784		\N	\N	137	1	2017-07-10	2017-09-25		\N		23	3	2		1537	\N	\N
1785		\N	\N	137	1	2017-07-09	2017-09-25		\N		23	3	2		1538	\N	\N
1786		\N	\N	129	1	2017-06-19	\N		\N		23	3	2		1539	\N	\N
1787		\N	\N	129	1	2017-06-19	\N		\N		23	3	2		1540	\N	\N
1788		\N	\N	129	1	2017-06-12	\N		\N		23	3	2		1541	\N	\N
1789		\N	\N	129	1	2017-06-20	2017-09-25		\N		23	3	2		1542	\N	\N
1790		\N	\N	129	1	2017-07-17	2017-09-25		\N		23	3	2		1543	\N	\N
1791		\N	\N	129	1	2017-06-19	2017-09-25		\N		23	3	2		1544	\N	\N
1792		\N	\N	129	1	2017-06-19	2017-09-25		\N		23	3	2		1545	\N	\N
1793		\N	\N	143	1	2017-06-04	2017-09-25		\N		23	3	2		1546	\N	\N
1794		\N	\N	143	1	2017-06-21	2017-09-25		\N		23	3	2		1547	\N	\N
1795		\N	\N	143	1	2017-06-25	\N		\N		23	3	2		1548	\N	\N
1796		\N	\N	129	1	2017-06-20	2017-09-25		\N		23	3	2		1549	\N	\N
1797		\N	\N	143	1	2017-07-15	\N		\N		23	3	2		1550	\N	\N
1798		\N	\N	129	1	2017-07-09	2017-09-25		\N		23	3	2		1551	\N	\N
1799		\N	\N	143	1	2017-06-02	2017-09-25		\N		23	3	2		1552	\N	\N
1800		\N	\N	129	1	2017-06-12	2017-09-25		\N		23	3	2		1553	\N	\N
1801		\N	\N	143	1	2017-06-30	2017-09-12		\N		23	3	2		1554	\N	\N
1802		\N	\N	143	1	2017-07-25	2017-09-25		\N		23	3	2		1555	\N	\N
1803		\N	\N	129	1	2017-06-11	\N		\N		23	3	2		1556	\N	\N
1804		\N	\N	143	1	2017-06-05	2017-09-25		\N		23	3	2		1557	\N	\N
1805		\N	\N	143	1	2017-07-14	2017-09-25		\N		23	3	2		1558	\N	\N
1806		\N	\N	153	1	2017-07-09	2017-09-25		\N		23	3	2		1559	\N	\N
1807		\N	\N	143	1	2017-06-21	\N		\N		23	3	2		1560	\N	\N
1808		\N	\N	153	1	2017-07-17	\N		\N		23	3	2		1561	\N	\N
1809		\N	\N	153	1	2017-06-12	2017-09-25		\N		23	3	2		1562	\N	\N
1810		\N	\N	153	1	2017-07-09	\N		\N		23	3	2		1563	\N	\N
1811		\N	\N	120	1	2017-06-12	2017-11-09		\N		23	3	2		1564	\N	\N
1812		\N	\N	120	1	2017-07-17	\N		\N		23	3	2		1565	\N	\N
1813		\N	\N	1424	1	2017-06-08	2017-09-25		\N		23	3	2		1566	\N	\N
1814		\N	\N	120	1	2017-07-17	2017-11-09		\N		23	3	2		1567	\N	\N
1815		\N	\N	1424	1	2017-06-10	2017-09-25		\N		23	3	2		1568	\N	\N
1816		\N	\N	1424	1	2017-07-07	2017-09-25		\N		23	3	2		1569	\N	\N
1817		\N	\N	120	1	2017-07-10	\N		\N		23	3	2		1570	\N	\N
1818		\N	\N	1424	1	2017-07-19	\N		\N		23	3	2		1571	\N	\N
1819		\N	\N	1424	1	2017-06-05	\N		\N		23	3	2		1572	\N	\N
1820		\N	\N	117	1	2017-07-21	\N		\N		23	3	2		1573	\N	\N
1821		\N	\N	117	1	2017-07-07	\N		\N		23	3	2		1574	\N	\N
1822		\N	\N	117	1	2017-06-26	\N		\N		23	3	2		1575	\N	\N
1823		\N	\N	130	1	2017-03-21	2017-10-05		\N		23	3	2		1576	\N	\N
1824		\N	\N	117	1	2017-07-14	\N		\N		23	3	2		1577	\N	\N
1825		\N	130	1664	2	2017-10-05	\N		\N		13	3	2		1576	\N	\N
1826		\N	\N	117	1	2017-06-21	\N		\N		23	3	2		1578	\N	\N
1827		\N	130	1664	1	2017-05-15	2017-09-14		\N		5	3	2		1579	\N	\N
1828		\N	\N	117	1	2017-06-08	\N		\N		23	3	2		1580	\N	\N
1830		\N	\N	117	1	2017-07-14	\N		\N		23	3	2		1581	\N	\N
1831		\N	\N	133	1	2017-06-28	2018-04-05		\N		23	3	2		1582	\N	\N
1832		\N	\N	130	1	2017-06-12	\N		\N		23	3	2		1583	\N	\N
1833		\N	\N	133	1	2017-07-07	2018-04-05		\N		23	3	2		1584	\N	\N
1835		\N	\N	130	1	2017-05-16	\N		\N		23	3	2		1585	\N	\N
1836		\N	\N	130	1	2017-05-08	2017-09-25		\N		23	3	2		1586	\N	\N
1837		\N	\N	133	1	2017-06-05	2018-04-05		\N		23	3	2		1587	\N	\N
1838		\N	\N	130	1	2017-04-11	2017-09-25		\N		23	3	2		1588	\N	\N
1839		\N	\N	130	1	2017-04-12	\N		\N		23	3	2		1589	\N	\N
1840		\N	\N	133	1	2017-06-04	2018-04-05		\N		23	3	2		1590	\N	\N
1841		\N	\N	130	1	2017-05-09	\N		\N		23	3	2		1591	\N	\N
1842		\N	\N	212	1	2017-06-09	2018-04-05		\N		23	3	2		1592	\N	\N
1843		\N	\N	212	1	2017-07-13	2018-04-05		\N		23	3	2		1593	\N	\N
1844		\N	\N	131	1	2017-05-16	\N		\N		23	3	2		1594	\N	\N
1845		\N	\N	212	1	2017-07-02	2018-04-05		\N		23	3	2		1595	\N	\N
1846		\N	\N	131	1	2017-05-17	\N		\N		23	3	2		1596	\N	\N
1847		\N	\N	131	1	2017-05-15	\N		\N		23	3	2		1597	\N	\N
1848		\N	\N	118	1	2017-07-04	\N		\N		23	3	2		1598	\N	\N
1849		\N	\N	118	1	2017-07-02	\N		\N		23	3	2		1599	\N	\N
1850		\N	\N	118	1	2017-07-04	2017-11-09		\N		23	3	2		1600	\N	\N
1851		\N	\N	118	1	2017-07-04	\N		\N		23	3	2		1601	\N	\N
1852		\N	\N	131	1	2017-06-13	\N		\N		23	3	2		1602	\N	\N
1853		\N	\N	131	1	2017-05-23	\N		\N		23	3	2		1603	\N	\N
1854		\N	\N	119	1	2017-07-09	\N		\N		23	3	2		1604	\N	\N
1855		\N	\N	119	1	2017-07-09	2017-11-09		\N		23	3	2		1605	\N	\N
1856		\N	\N	1695	1	2017-07-11	2017-11-09		\N		23	3	2		1606	\N	\N
1857		\N	\N	1695	1	2017-05-29	2017-11-09		\N		23	3	2		1607	\N	\N
1858		\N	\N	1695	1	2017-07-04	2017-11-09		\N		23	3	2		1608	\N	\N
1859		\N	\N	119	1	2017-07-17	2017-11-09		\N		23	3	2		1609	\N	\N
1860		\N	\N	211	1	2017-07-06	\N		\N		23	3	2		1610	\N	\N
1861		\N	\N	211	1	2017-07-12	\N		\N		23	3	2		1611	\N	\N
1862		\N	\N	125	1	2017-07-04	\N		\N		23	3	2		1612	\N	\N
1863		\N	\N	122	1	2017-07-02	\N		\N		23	3	2		1613	\N	\N
1864		\N	\N	125	1	2017-07-04	\N		\N		23	3	2		1614	\N	\N
1865		\N	\N	132	1	2017-04-18	\N		\N		23	3	2		1615	\N	\N
1866		\N	\N	122	1	2017-06-19	\N		\N		23	3	2		1616	\N	\N
1867		\N	\N	132	1	2017-06-12	\N		\N		23	3	2		1617	\N	\N
1868		\N	\N	616	1	2017-07-09	\N		\N		23	3	2		1618	\N	\N
1869		\N	\N	132	1	2017-04-10	\N		\N		23	3	2		1619	\N	\N
1870		\N	\N	132	1	2017-06-12	\N		\N		23	3	2		1620	\N	\N
1871		\N	\N	616	1	2017-07-03	\N		\N		23	3	2		1621	\N	\N
1872		\N	\N	134	1	2017-06-12	\N		\N		23	3	2		1622	\N	\N
1873		\N	\N	134	1	2017-07-10	\N		\N		23	3	2		1623	\N	\N
1874		\N	\N	1446	1	2017-06-11	\N		\N		23	3	2		1624	\N	\N
1875		\N	\N	1696	1	2017-07-10	\N		\N		23	3	2		1625	\N	\N
1876		\N	\N	134	1	2017-07-04	\N		\N		23	3	2		1626	\N	\N
1877		\N	\N	134	1	2017-07-10	\N		\N		23	3	2		1627	\N	\N
1878		\N	\N	1696	1	2017-07-04	\N		\N		23	3	2		1628	\N	\N
1879		\N	\N	1446	1	2017-06-05	\N		\N		23	3	2		1629	\N	\N
1880		\N	\N	134	1	2017-07-10	\N		\N		23	3	2		1630	\N	\N
1881		\N	\N	1696	1	2017-07-11	\N		\N		23	3	2		1631	\N	\N
1882		\N	\N	134	1	2017-07-11	\N		\N		23	3	2		1632	\N	\N
1883		\N	\N	135	1	2017-07-11	\N		\N		23	3	2		1633	\N	\N
1884		\N	\N	135	1	2017-07-11	\N		\N		23	3	2		1634	\N	\N
1885		\N	\N	135	1	2017-07-11	\N		\N		23	3	2		1635	\N	\N
1886		\N	\N	135	1	2017-07-10	\N		\N		23	3	2		1636	\N	\N
1887		\N	\N	128	1	2017-07-17	\N		\N		23	3	2		1637	\N	\N
1888		\N	\N	136	1	2017-07-10	\N		\N		23	3	2		1638	\N	\N
1889		\N	\N	128	1	2017-07-09	\N		\N		23	3	2		1639	\N	\N
1890		\N	\N	136	1	2017-07-10	\N		\N		23	3	2		1640	\N	\N
1891		\N	\N	1697	1	2017-05-15	\N		\N		23	3	2		1641	\N	\N
1892		\N	\N	128	1	2017-07-10	\N		\N		23	3	2		1642	\N	\N
1893		\N	\N	1697	1	2017-06-20	\N		\N		23	3	2		1643	\N	\N
1894		\N	\N	136	1	2017-06-08	\N		\N		23	3	2		1644	\N	\N
1895		\N	\N	1697	1	2017-06-05	\N		\N		23	3	2		1645	\N	\N
1896		\N	\N	136	1	2017-06-01	\N		\N		23	3	2		1646	\N	\N
1897		\N	\N	173	1	2017-06-01	\N		\N		23	3	2		1647	\N	\N
1898		\N	\N	173	1	2017-06-01	\N		\N		23	3	2		1648	\N	\N
1899		\N	\N	236	1	2017-07-03	\N		\N		23	3	2		1649	\N	\N
1900		\N	\N	173	1	2017-06-13	\N		\N		23	3	2		1650	\N	\N
1901		\N	\N	173	1	2017-07-10	\N		\N		23	3	2		1651	\N	\N
1902		\N	\N	173	1	2017-07-09	\N		\N		23	3	2		1652	\N	\N
1903		\N	\N	236	1	2017-07-11	\N		\N		23	3	2		1653	\N	\N
1904		\N	\N	173	1	2017-07-09	\N		\N		23	3	2		1654	\N	\N
1905		\N	\N	236	1	2017-07-10	\N		\N		23	3	2		1655	\N	\N
1906		\N	\N	173	1	2017-06-12	\N		\N		23	3	2		1656	\N	\N
1907		\N	\N	236	1	2017-07-10	\N		\N		23	3	2		1657	\N	\N
1908		\N	\N	173	1	2017-07-08	\N		\N		23	3	2		1658	\N	\N
1909		\N	\N	173	1	2017-07-02	\N		\N		23	3	2		1659	\N	\N
1910		\N	\N	173	1	2017-06-11	\N		\N		23	3	2		1660	\N	\N
1911		\N	\N	235	1	2017-07-09	\N		\N		23	3	2		1661	\N	\N
1912		\N	\N	173	1	2017-07-02	\N		\N		23	3	2		1662	\N	\N
1913		\N	\N	242	1	2017-07-01	2018-01-12		\N		23	3	2		1663	\N	\N
1914		\N	\N	235	1	2017-07-09	\N		\N		23	3	2		1664	\N	\N
1915		\N	\N	242	1	2017-07-11	2018-01-12		\N		23	3	2		1665	\N	\N
1916		\N	\N	242	1	2017-07-10	2018-01-12		\N		23	3	2		1666	\N	\N
1917		\N	\N	235	1	2017-07-09	\N		\N		23	3	2		1667	\N	\N
1918		\N	\N	241	1	2017-06-11	\N		\N		23	3	2		1668	\N	\N
1919		\N	\N	241	1	2017-07-10	\N		\N		23	3	2		1669	\N	\N
1920		\N	\N	235	1	2017-07-09	\N		\N		23	3	2		1670	\N	\N
1921		\N	\N	241	1	2017-07-08	\N		\N		23	3	2		1671	\N	\N
1922		\N	\N	241	1	2017-07-10	\N		\N		23	3	2		1672	\N	\N
1923		\N	\N	235	1	2017-07-10	\N		\N		23	3	2		1673	\N	\N
1924		\N	\N	241	1	2017-06-20	\N		\N		23	3	2		1674	\N	\N
1925		\N	\N	180	1	2017-07-11	\N		\N		23	3	2		1675	\N	\N
1926		\N	\N	180	1	2017-07-04	\N		\N		23	3	2		1676	\N	\N
1927		\N	\N	175	1	2017-07-11	\N		\N		23	3	2		1677	\N	\N
1928		\N	\N	180	1	2017-07-10	\N		\N		23	3	2		1678	\N	\N
1929		\N	\N	180	1	2017-07-10	\N		\N		23	3	2		1679	\N	\N
1930		\N	\N	175	1	2017-07-10	\N		\N		23	3	2		1680	\N	\N
1931		\N	\N	180	1	2017-07-10	\N		\N		23	3	2		1681	\N	\N
1932		\N	\N	180	1	2017-06-03	\N		\N		23	3	2		1682	\N	\N
1933		\N	\N	175	1	2017-06-12	\N		\N		23	3	2		1683	\N	\N
1934		\N	\N	180	1	2017-07-05	\N		\N		23	3	2		1684	\N	\N
1935		\N	\N	175	1	2017-07-09	\N		\N		23	3	2		1685	\N	\N
1936		\N	\N	216	1	2017-06-04	\N		\N		23	3	2		1686	\N	\N
1937		\N	\N	216	1	2017-07-11	\N		\N		23	3	2		1687	\N	\N
1938		\N	\N	169	1	2017-07-01	\N		\N		23	3	2		1688	\N	\N
1939		\N	\N	216	1	2017-07-01	\N		\N		23	3	2		1689	\N	\N
1940		\N	\N	216	1	2017-07-09	\N		\N		23	3	2		1690	\N	\N
1941		\N	\N	169	1	2017-07-09	\N		\N		23	3	2		1691	\N	\N
1942		\N	\N	216	1	2017-06-06	\N		\N		23	3	2		1692	\N	\N
1943		\N	\N	170	1	2017-06-19	\N		\N		23	3	2		1693	\N	\N
1944		\N	\N	169	1	2017-07-10	\N		\N		23	3	2		1694	\N	\N
1945		\N	\N	170	1	2017-06-20	\N		\N		23	3	2		1695	\N	\N
1946		\N	\N	216	1	2017-07-02	\N		\N		23	3	2		1696	\N	\N
1947		\N	\N	170	1	2017-06-19	\N		\N		23	3	2		1697	\N	\N
1948		\N	\N	169	1	2017-07-10	\N		\N		23	3	2		1698	\N	\N
1949		\N	\N	170	1	2017-06-20	\N		\N		23	3	2		1699	\N	\N
1950		\N	\N	648	1	2017-07-04	\N		\N		23	3	2		1700	\N	\N
1951		\N	\N	648	1	2017-07-05	\N		\N		23	3	2		1701	\N	\N
1952		\N	\N	169	1	2017-07-10	\N		\N		23	3	2		1702	\N	\N
1953		\N	\N	170	1	2017-06-04	\N		\N		23	3	2		1703	\N	\N
1954		\N	\N	648	1	2017-07-04	\N		\N		23	3	2		1704	\N	\N
1955		\N	\N	169	1	2017-07-10	\N		\N		23	3	2		1705	\N	\N
1956		\N	\N	178	1	2017-07-11	2017-12-13		\N		23	3	2		1706	\N	\N
1957		\N	\N	237	1	2017-06-19	\N		\N		23	3	2		1707	\N	\N
1958		\N	\N	169	1	2017-07-11	\N		\N		23	3	2		1708	\N	\N
1959		\N	\N	178	1	2017-07-04	\N		\N		23	3	2		1709	\N	\N
1960		\N	\N	237	1	2017-06-07	\N		\N		23	3	2		1710	\N	\N
1961		\N	\N	178	1	2017-07-04	\N		\N		23	3	2		1711	\N	\N
1962		\N	\N	237	1	2017-06-13	\N		\N		23	3	2		1712	\N	\N
1963		\N	\N	169	1	2017-07-02	\N		\N		23	3	2		1713	\N	\N
1964		\N	\N	178	1	2017-07-11	\N		\N		23	3	2		1714	\N	\N
1965		\N	\N	237	1	2017-06-05	\N		\N		23	3	2		1715	\N	\N
1966		\N	\N	237	1	2017-05-16	\N		\N		23	3	2		1716	\N	\N
1967		\N	\N	178	1	2017-07-03	\N		\N		23	3	2		1717	\N	\N
1968		\N	\N	237	1	2017-05-22	\N		\N		23	3	2		1718	\N	\N
1969		\N	\N	237	1	2017-06-13	\N		\N		23	3	2		1719	\N	\N
1970		\N	\N	178	1	2017-07-10	\N		\N		23	3	2		1720	\N	\N
1971		\N	\N	172	1	2017-07-02	\N		\N		23	3	2		1721	\N	\N
1972		\N	\N	172	1	2017-06-26	\N		\N		23	3	2		1722	\N	\N
1973		\N	\N	177	1	2017-07-03	\N		\N		23	3	2		1723	\N	\N
1974		\N	\N	172	1	2017-06-11	\N		\N		23	3	2		1724	\N	\N
1975		\N	\N	177	1	2017-07-03	\N		\N		23	3	2		1725	\N	\N
1976		\N	\N	172	1	2017-07-11	\N		\N		23	3	2		1726	\N	\N
1977		\N	\N	177	1	2017-07-03	\N		\N		23	3	2		1727	\N	\N
1978		\N	\N	177	1	2017-07-10	\N		\N		23	3	2		1728	\N	\N
1979		\N	\N	172	1	2017-07-03	\N		\N		23	3	2		1729	\N	\N
1980		\N	\N	177	1	2017-07-04	\N		\N		23	3	2		1730	\N	\N
1981		\N	\N	172	1	2017-07-03	\N		\N		23	3	2		1731	\N	\N
1982		\N	\N	177	1	2017-07-17	\N		\N		23	3	2		1732	\N	\N
1983		\N	\N	172	1	2017-07-03	\N		\N		23	3	2		1733	\N	\N
1984		\N	\N	223	1	2017-06-10	\N		\N		23	3	2		1734	\N	\N
1985		\N	\N	223	1	2017-07-11	\N		\N		23	3	2		1735	\N	\N
1986		\N	\N	172	1	2017-07-10	\N		\N		23	3	2		1736	\N	\N
1987		\N	\N	223	1	2017-07-03	\N		\N		23	3	2		1737	\N	\N
1988		\N	\N	223	1	2017-07-09	\N		\N		23	3	2		1738	\N	\N
1989		\N	\N	238	1	2017-07-09	\N		\N		23	3	2		1739	\N	\N
1990		\N	\N	239	1	2017-07-03	2017-11-15		\N		23	3	2		1740	\N	\N
1991		\N	\N	238	1	2017-07-18	\N		\N		23	3	2		1741	\N	\N
1992		\N	\N	238	1	2017-07-09	\N		\N		23	3	2		1742	\N	\N
1993		\N	\N	239	1	2017-07-03	2017-11-15		\N		23	3	2		1743	\N	\N
1994		\N	\N	238	1	2017-07-09	\N		\N		23	3	2		1744	\N	\N
1995		\N	\N	239	1	2017-07-02	\N		\N		23	3	2		1745	\N	\N
1996		\N	\N	181	1	2017-07-09	\N		\N		23	3	2		1746	\N	\N
1997		\N	\N	181	1	2017-07-02	\N		\N		23	3	2		1747	\N	\N
1998		\N	\N	239	1	2017-07-10	\N		\N		23	3	2		1748	\N	\N
1999		\N	\N	181	1	2017-07-10	\N		\N		23	3	2		1749	\N	\N
2000		\N	\N	181	1	2017-07-03	\N		\N		23	3	2		1750	\N	\N
2001		\N	\N	181	1	2017-07-03	\N		\N		23	3	2		1751	\N	\N
2002		\N	\N	181	1	2017-07-03	\N		\N		23	3	2		1752	\N	\N
2003		\N	\N	240	1	2017-07-02	\N		\N		23	3	2		1753	\N	\N
2004		\N	\N	176	1	2017-06-27	\N		\N		23	3	2		1754	\N	\N
2005		\N	\N	240	1	2017-07-18	\N		\N		23	3	2		1755	\N	\N
2006		\N	\N	176	1	2017-07-02	\N		\N		23	3	2		1756	\N	\N
2007		\N	\N	240	1	2017-07-10	\N		\N		23	3	2		1757	\N	\N
2008		\N	\N	176	1	2017-07-10	\N		\N		23	3	2		1758	\N	\N
2009		\N	\N	176	1	2017-07-02	\N		\N		23	3	2		1759	\N	\N
2010		\N	\N	638	1	2017-07-02	\N		\N		23	3	2		1760	\N	\N
2011		\N	\N	176	1	2017-07-02	\N		\N		23	3	2		1761	\N	\N
2012		\N	\N	240	2	2017-06-05	\N		\N		23	3	2		1762	\N	\N
2013		\N	\N	174	1	2017-07-09	\N		\N		23	3	2		1763	\N	\N
2014		\N	\N	174	1	2017-07-03	\N		\N		23	3	2		1764	\N	\N
2015		\N	\N	174	1	2017-07-09	\N		\N		23	3	2		1765	\N	\N
2016		\N	\N	174	1	2017-07-03	\N		\N		23	3	2		1766	\N	\N
2017		\N	\N	174	1	2017-07-03	\N		\N		23	3	2		1767	\N	\N
2018		\N	\N	174	1	2017-07-02	\N		\N		23	3	2		1768	\N	\N
2019		\N	\N	174	1	2017-05-15	\N		\N		23	3	2		1769	\N	\N
2020		\N	\N	37	1	2017-07-10	\N		\N		5	3	2		1770	\N	\N
2021		\N	\N	37	1	2017-07-10	\N		\N		5	3	2		1771	\N	\N
2022		\N	\N	37	1	2017-07-13	\N		\N		5	3	2		1772	\N	\N
2023		\N	\N	37	1	2017-06-05	\N		\N		5	3	2		1773	\N	\N
2024		\N	\N	37	1	2017-06-13	\N		\N		5	3	2		1774	\N	\N
2025		\N	\N	433	1	2017-06-05	\N		\N		5	3	2		1775	\N	\N
2026	switch	\N	\N	904	1	2017-05-31	\N		\N		8	3	2		1776	\N	\N
2027		\N	\N	433	1	2017-07-10	\N		\N		5	3	2		1777	\N	\N
2028		\N	\N	433	1	2017-07-18	\N		\N		5	3	2		1778	\N	\N
2029		\N	\N	433	1	2017-07-10	\N		\N		5	3	2		1779	\N	\N
2030	Switch	\N	\N	42	1	2017-05-31	\N		\N		7	3	2		1780	\N	\N
2031		\N	\N	443	1	2017-07-09	\N		\N		5	3	2		1781	\N	\N
2032		\N	\N	443	1	2017-07-18	\N		\N		5	3	2		1782	\N	\N
2033		\N	\N	916	1	2017-05-31	2017-11-20		\N		7	3	2		1783	\N	\N
2034		\N	\N	443	1	2017-07-11	\N		\N		5	3	2		1784	\N	\N
2035		\N	\N	443	1	2017-07-11	\N		\N		5	3	2		1785	\N	\N
2036	Switch	\N	\N	40	1	2017-06-01	\N		\N		8	3	2		1786	\N	\N
2037		\N	\N	31	1	2017-07-11	\N		\N		5	3	2		1787	\N	\N
2038	Switch	\N	\N	927	1	2017-05-31	2017-11-20		\N		7	3	2		1788	\N	\N
2039		\N	\N	31	1	2017-07-10	\N		\N		5	3	2		1789	\N	\N
2040		\N	\N	31	1	2017-07-10	\N		\N		5	3	2		1790	\N	\N
2041	Switch	\N	\N	831	1	2017-05-31	\N		\N		24	3	2		1791	\N	\N
2042		\N	\N	31	1	2017-07-10	\N		\N		5	3	2		1792	\N	\N
2043		\N	\N	31	1	2017-06-12	\N		\N		5	3	2		1793	\N	\N
2044	Switch	\N	\N	834	1	2017-05-31	\N		\N		24	3	2		1794	\N	\N
2045		\N	\N	31	1	2017-07-10	\N		\N		5	3	2		1795	\N	\N
2046	Switch	\N	\N	843	1	2017-05-31	\N		\N		24	3	2		1796	\N	\N
2047		\N	\N	31	1	2017-07-11	\N		\N		5	3	2		1797	\N	\N
2048	Switch	\N	\N	822	1	2017-05-31	\N		\N		24	3	2		1798	\N	\N
2049		\N	\N	32	1	2017-06-12	\N		\N		5	3	2		1799	\N	\N
2050		\N	\N	32	1	2017-07-11	\N		\N		5	3	2		1800	\N	\N
2051		\N	\N	32	1	2017-07-18	\N		\N		5	3	2		1801	\N	\N
2052		\N	\N	33	1	2017-07-10	\N		\N		5	3	2		1802	\N	\N
2053		\N	\N	33	1	2017-07-12	\N		\N		5	3	2		1803	\N	\N
2054	Switch	\N	\N	309	1	2017-05-31	\N		\N		24	3	2		1804	\N	\N
2055		\N	\N	33	1	2017-07-10	\N		\N		5	3	2		1805	\N	\N
2056		\N	\N	438	1	2017-07-10	2017-12-13		\N		5	3	2		1806	\N	\N
2057		\N	\N	438	1	2017-07-11	2017-12-13		\N		5	3	2		1807	\N	\N
2058		\N	\N	438	1	2017-07-10	\N		\N		5	3	2		1808	\N	\N
2059	Switch	\N	\N	225	1	2017-05-31	\N		\N		24	3	2		1809	\N	\N
2060		\N	\N	89	1	2017-07-11	\N		\N		5	3	2		1810	\N	\N
2061	Switch	\N	\N	39	1	2017-05-31	2017-09-24		\N		12	3	2		1811	\N	\N
2062		\N	\N	89	1	2017-07-10	\N		\N		5	3	2		1812	\N	\N
2063		\N	\N	89	1	2017-07-10	\N		\N		5	3	2		1813	\N	\N
2064	Switch	\N	\N	55	1	2017-05-31	\N		\N		12	3	2		1814	\N	\N
2065	Switch	\N	\N	731	1	2017-05-31	2018-02-20		\N		12	3	2		1815	\N	\N
2066		\N	\N	89	1	2017-07-04	2017-11-16		\N		5	3	2		1816	\N	\N
2067	Switch	\N	\N	734	1	2017-05-31	\N		\N		12	3	2		1817	\N	\N
2068		\N	\N	89	1	2017-07-17	\N		\N		5	3	2		1818	\N	\N
2069		\N	\N	89	1	2017-07-02	\N		\N		5	3	2		1819	\N	\N
2070	Switch	\N	\N	281	1	2017-05-31	\N		\N		12	3	2		1820	\N	\N
2071	Switch	\N	\N	707	1	2017-05-31	\N		\N		12	3	2		1821	\N	\N
2072		\N	\N	1205	1	2017-07-10	\N		\N		5	3	2		1822	\N	\N
2073	Switch	\N	\N	720	1	2017-05-31	\N		\N		12	3	2		1823	\N	\N
2074		\N	\N	1205	1	2017-07-10	\N		\N		5	3	2		1824	\N	\N
2075	Switch	\N	\N	305	1	2017-05-31	2017-10-24		\N		12	3	2		1825	\N	\N
2076		\N	\N	1205	1	2017-06-06	\N		\N		5	3	2		1826	\N	\N
2077	Switch	\N	\N	269	1	2017-05-31	\N		\N		12	3	2		1827	\N	\N
2078		\N	\N	1205	1	2017-06-11	2017-11-14		\N		5	3	2		1828	\N	\N
2079	Switch	\N	\N	57	1	2017-05-31	\N		\N		12	3	2		1829	\N	\N
2080		\N	\N	84	1	2017-07-09	\N		\N		5	3	2		1830	\N	\N
2081		\N	\N	84	1	2017-07-02	\N		\N		5	3	2		1831	\N	\N
2082		\N	\N	84	1	2017-07-18	\N		\N		5	3	2		1832	\N	\N
2083	Switch	\N	\N	25	1	2017-05-31	\N		\N		9	3	2		1833	\N	\N
2084		\N	\N	93	1	2017-07-10	\N		\N		5	3	2		1834	\N	\N
2085		\N	\N	93	1	2017-07-02	2018-04-06		\N		5	3	2		1835	\N	\N
2086		\N	\N	93	1	2017-07-11	2018-04-06		\N		5	3	2		1836	\N	\N
2087		\N	\N	94	1	2017-06-12	\N		\N		5	3	2		1837	\N	\N
2088		\N	\N	94	1	2017-06-12	2017-10-31		\N		5	3	2		1838	\N	\N
2089	Switch	\N	\N	1338	1	2017-05-31	\N		\N		18	3	2		1839	\N	\N
2090		\N	\N	94	1	2017-06-11	\N		\N		5	3	2		1840	\N	\N
2091		\N	\N	85	1	2017-06-20	2018-03-30		\N		5	3	2		1841	\N	\N
2092		\N	\N	85	1	2017-06-13	\N		\N		5	3	2		1842	\N	\N
2093	Switch	\N	\N	107	1	2017-05-31	\N		\N		18	3	2		1843	\N	\N
2094		\N	\N	85	1	2017-06-21	\N		\N		5	3	2		1844	\N	\N
2095		\N	\N	85	1	2017-06-12	2018-04-11		\N		5	3	2		1845	\N	\N
2096		\N	\N	85	1	2017-06-20	\N		\N		5	3	2		1846	\N	\N
2097		\N	\N	85	1	2017-07-11	\N		\N		5	3	2		1847	\N	\N
2098		\N	\N	85	1	2017-06-13	\N		\N		5	3	2		1848	\N	\N
2099	Switch	\N	\N	1354	1	2017-05-31	\N		\N		18	3	2		1849	\N	\N
2100		\N	\N	85	1	2017-06-12	2018-03-30		\N		5	3	2		1850	\N	\N
2101		\N	\N	85	1	2017-06-14	2018-03-30		\N		5	3	2		1851	\N	\N
2102	Switch	\N	\N	1351	1	2017-05-31	\N		\N		18	3	2		1852	\N	\N
2103		\N	\N	85	1	2017-06-13	2018-04-11		\N		5	3	2		1853	\N	\N
2104		\N	\N	1269	1	2017-05-15	\N		\N		5	3	2		1854	\N	\N
2105	Switch	\N	\N	519	1	2017-05-31	\N		\N		18	3	2		1855	\N	\N
2107	Switch	\N	\N	564	1	2017-05-31	\N		\N		18	3	2		1857	\N	\N
2108		\N	\N	1269	1	2017-05-16	\N		\N		5	3	2		1858	\N	\N
2109		\N	\N	68	1	2017-06-12	\N		\N		5	3	2		1859	\N	\N
2110		\N	\N	1269	1	2017-05-23	\N		\N		5	3	2		1860	\N	\N
2111	Switch	\N	\N	545	1	2017-05-31	\N		\N		18	3	2		1861	\N	\N
2112	Switch	\N	\N	27	1	2017-05-31	\N		\N		7	3	2		1862	\N	\N
2114	Switch	\N	\N	474	1	2017-05-31	\N		\N		9	3	2		1864	\N	\N
2115	Switch	\N	\N	16	1	2017-05-31	\N		\N		9	3	2		1865	\N	\N
2117	Switch	\N	\N	992	1	2017-05-28	\N		\N		9	3	2		1867	\N	\N
2118	Switch	\N	\N	355	1	2017-05-28	\N		\N		9	3	2		1868	\N	\N
2119		\N	\N	68	1	2017-06-19	\N		\N		5	3	2		1869	\N	\N
2120	Switch	\N	\N	6	1	2017-05-31	\N		\N		9	3	2		1870	\N	\N
2121	Switch	\N	\N	3	1	2017-05-28	\N		\N		9	3	2		1871	\N	\N
2122		\N	\N	68	1	2017-06-13	\N		\N		5	3	2		1872	\N	\N
2123	Switch	\N	\N	540	1	2017-05-31	\N		\N		18	3	2		1873	\N	\N
2124		\N	\N	68	1	2017-06-20	\N		\N		5	3	2		1874	\N	\N
2125	Switch	\N	\N	542	1	2017-05-31	\N		\N		18	3	2		1875	\N	\N
2126		\N	\N	1682	1	2017-06-20	\N		\N		5	3	2		1876	\N	\N
2127	Switch	\N	\N	1478	1	2017-05-31	\N		\N		22	3	2		1877	\N	\N
2128	Switch	\N	\N	61	1	2017-05-30	\N		\N		12	3	2		1878	\N	\N
2129		\N	\N	91	1	2017-06-20	\N		\N		5	3	2		1879	\N	\N
2130	Switch	\N	\N	1488	1	2017-05-31	\N		\N		22	3	2		1880	\N	\N
2131		\N	\N	91	1	2017-06-20	\N		\N		5	3	2		1881	\N	\N
2132	Switch	\N	\N	1676	1	2017-05-31	\N		\N		22	3	2		1882	\N	\N
2133	Switch	\N	\N	157	1	2017-05-31	\N		\N		22	3	2		1883	\N	\N
2134		\N	\N	91	1	2017-06-12	\N		\N		5	3	2		1884	\N	\N
2135	Switch	\N	\N	155	1	2017-05-31	\N		\N		22	3	2		1885	\N	\N
2136		\N	\N	70	1	2017-06-12	\N		\N		5	3	2		1886	\N	\N
2137	switch	\N	\N	77	1	2017-05-31	\N		\N		15	3	2		1887	\N	\N
2138		\N	\N	70	1	2017-06-13	\N		\N		5	3	2		1888	\N	\N
2140		\N	\N	70	1	2017-06-13	\N		\N		5	3	2		1890	\N	\N
2143		\N	\N	416	1	2017-06-13	\N		\N		5	3	2		1893	\N	\N
2145		\N	\N	1681	1	2017-06-12	\N		\N		5	3	2		1895	\N	\N
2146		\N	\N	67	1	2017-06-13	\N		\N		5	3	2		1896	\N	\N
2147		\N	\N	67	1	2017-06-20	\N		\N		5	3	2		1897	\N	\N
2148		\N	\N	67	1	2017-06-12	\N		\N		5	3	2		1898	\N	\N
2149		\N	\N	67	1	2017-06-12	\N		\N		5	3	2		1899	\N	\N
2150		\N	\N	66	1	2017-06-12	\N		\N		5	3	2		1900	\N	\N
2151		\N	\N	66	1	2017-06-12	\N		\N		5	3	2		1901	\N	\N
2152		\N	\N	66	1	2017-06-13	\N		\N		5	3	2		1902	\N	\N
2153		\N	\N	66	1	2017-06-12	\N		\N		5	3	2		1903	\N	\N
2154		\N	\N	66	1	2017-06-13	2018-04-18		\N		5	3	2		1904	\N	\N
2155		\N	\N	66	1	2017-06-13	2018-04-18		\N		5	3	2		1905	\N	\N
2156		\N	\N	65	1	2017-06-12	2018-04-18		\N		5	3	2		1906	\N	\N
2157		\N	\N	65	1	2017-06-12	2018-04-18		\N		5	3	2		1907	\N	\N
2158		\N	\N	65	1	2017-06-12	2018-04-18		\N		5	3	2		1908	\N	\N
2159		\N	\N	64	1	2017-06-13	\N		\N		5	3	2		1909	\N	\N
2160		\N	\N	64	1	2017-06-12	\N		\N		5	3	2		1910	\N	\N
2161		\N	\N	64	1	2017-06-13	\N		\N		5	3	2		1911	\N	\N
2162		\N	\N	72	1	2017-06-20	2018-04-19		\N		5	3	2		1912	\N	\N
2163		\N	\N	72	1	2017-05-15	2018-04-19		\N		5	3	2		1913	\N	\N
2164		\N	\N	72	1	2017-06-12	\N		\N		5	3	2		1914	\N	\N
2165		\N	\N	74	1	2017-06-11	\N		\N		5	3	2		1915	\N	\N
2166		\N	\N	74	1	2017-06-12	\N		\N		5	3	2		1916	\N	\N
2167		\N	\N	74	1	2017-06-12	\N		\N		5	3	2		1917	\N	\N
2168		\N	\N	404	1	2017-06-12	\N		\N		5	3	2		1918	\N	\N
2169		\N	\N	404	1	2017-06-13	\N		\N		5	3	2		1919	\N	\N
2170		\N	\N	404	1	2017-07-10	\N		\N		5	3	2		1920	\N	\N
2171		\N	\N	61	1	2017-05-31	\N		\N		12	3	2		1921	\N	\N
2172	Antena	\N	\N	61	1	2017-05-31	\N		\N		12	3	2		1922	\N	\N
2173	Cisco1230	\N	\N	51	1	2017-05-31	\N		\N		12	3	2		1923	\N	\N
2174	Cisco1242	\N	\N	28	1	2017-05-31	\N		\N		9	3	2		1924	\N	\N
2175		\N	\N	109	1	2017-05-31	\N		\N		18	3	2		1925	\N	\N
2176		\N	\N	1354	1	2017-05-31	2017-12-04		\N		18	3	2		1926	\N	\N
2177		\N	\N	269	1	2017-05-29	2018-04-06		\N		12	3	2		1927	\N	\N
2178		\N	\N	1354	1	2017-05-31	2017-12-04		\N		18	3	2		1928	\N	\N
2179		\N	\N	108	1	2017-05-31	2017-11-08		\N		18	3	2		1929	\N	\N
2180		\N	\N	269	1	2017-05-31	2018-04-06		\N		12	3	2		1930	\N	\N
2181		\N	1664	1664	4	2017-06-12	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	552	\N	vahram@hf.am
2182		\N	1664	139	1	2017-09-11	\N		\N		23	3	2		518	\N	\N
2183		\N	\N	434	1	2017-04-09	2017-10-24		\N		5	3	2		1931	\N	\N
2184		\N	\N	434	1	2017-05-21	2018-01-23		\N		5	3	2		1932	\N	\N
2185		\N	\N	89	1	2017-04-11	2017-11-16		\N		5	3	2		1933	\N	\N
2186		\N	1691	1664	1	2017-08-25	2018-04-19		\N		15	3	2		1276	\N	\N
2187		\N	1664	1269	1	2017-09-19	\N		\N		16	3	2		221	\N	\N
2188		\N	1664	1269	1	2017-09-19	\N		\N		16	3	2		758	\N	\N
2189		\N	1664	1680	1	2017-09-18	\N		\N		16	3	2		63	\N	\N
2190		\N	1664	1269	1	2017-09-19	\N		\N		16	3	2		345	\N	\N
2191		\N	1680	1664	2	2017-09-18	\N		\N		16	3	2	աշխատում է պրոբլեմներով	1304	\N	\N
2192		\N	146	140	1	2017-09-18	\N		\N		13	3	2		1493	\N	\N
2193		\N	\N	1664	7	2017-09-19	\N		\N		5	3	2	Dolphin 20.09.2017	1934	\N	\N
2194		\N	\N	1664	1	2017-09-19	\N		\N		5	3	2	Dolphin 20.09.2017	1935	\N	\N
2195		\N	\N	1664	1	2017-09-20	2017-09-22		\N		5	3	2	Dolphin 20.09.2017	1936	\N	\N
2196		\N	\N	1664	1	2017-09-19	\N		\N		5	3	2	Dolphin 20.09.2017	1937	\N	\N
2197		\N	\N	1664	1	2017-09-19	2018-04-16		\N		5	3	2	Dolphin 20.09.2017	1938	\N	\N
2198		\N	1664	1681	1	2017-09-20	\N		\N		15	3	2		496	\N	\N
2200		\N	\N	172	1	2017-06-30	\N		\N		7	3	2		1939	\N	\N
2203		\N	1664	1681	1	2017-09-22	\N		\N		15	3	2		1936	\N	vahram@hf.am
2204		\N	1681	1664	1	2017-09-20	2017-10-16		\N		15	3	2		485	\N	\N
2205		\N	\N	1681	1	2017-06-04	2017-09-20		\N		15	3	2		1940	\N	\N
2206		\N	1681	1664	4	2017-09-20	\N		\N		15	3	2	Դուրս գրման ա/թ 21/12/2017թ	1940	\N	vahram@hf.am
2207		\N	1664	1698	1	2017-09-20	\N		\N		23	3	2		1412	\N	\N
2208		\N	1664	1698	1	2017-09-20	\N		\N		23	3	2		1410	\N	\N
2209		\N	1664	1698	1	2017-09-20	\N		\N		23	3	2		468	\N	\N
2210		\N	\N	176	1	2017-05-14	\N		\N		23	3	2		1941	\N	\N
2211		\N	1664	1582	1	2017-09-21	\N		\N		20	3	2		355	\N	\N
2212		\N	1664	1314	1	2017-09-21	\N		\N		20	3	2		348	\N	\N
2213		\N	1664	1314	1	2017-09-21	\N		\N		20	3	2		88	\N	\N
2214		\N	1664	1021	1	2017-09-21	\N		\N		20	3	2		102	\N	\N
2215		\N	1664	1031	1	2017-09-21	\N		\N		20	3	2		100	\N	\N
2216		\N	1664	341	1	2017-09-21	2017-11-06		\N		20	3	2		97	\N	\N
2217	Lukashin	\N	\N	855	1	2017-05-31	\N		\N		7	3	2		1942	\N	\N
2218		\N	\N	204	1	2017-04-19	2017-10-09		\N		16	3	2		1943	\N	\N
2219	Khanjyan	\N	\N	856	1	2017-05-31	\N		\N		7	3	2		1944	\N	\N
2220	Haykavan	\N	\N	857	1	2017-05-31	\N		\N		7	3	2		1945	\N	\N
2221	Norapat	\N	\N	858	1	2017-05-31	\N		\N		7	3	2		1946	\N	\N
2222	Alashkert	\N	\N	859	1	2017-05-31	\N		\N		7	3	2		1947	\N	\N
2223	Aygeshat	\N	\N	872	1	2017-05-31	\N		\N		7	3	2		1948	\N	\N
2224	Arevik	\N	\N	874	1	2017-06-01	\N		\N		7	3	2		1949	\N	\N
2225	Eghegnut	\N	\N	877	1	2017-05-31	\N		\N		7	3	2		1950	\N	\N
2226	Zartonq	\N	\N	879	1	2017-05-31	\N		\N		7	3	2		1951	\N	\N
2227	Mayisyan	\N	\N	880	1	2017-05-31	\N		\N		7	3	2		1952	\N	\N
2228	Bambakashat	\N	\N	888	1	2017-05-31	\N		\N		7	3	2		1953	\N	\N
2229	Getashen	\N	\N	889	1	2017-05-31	\N		\N		7	3	2		1954	\N	\N
2230	Lenughi	\N	\N	890	1	2017-05-31	\N		\N		7	3	2		1955	\N	\N
2231	Mrgashat	\N	\N	891	1	2017-05-31	\N		\N		7	3	2		1956	\N	\N
2232	Mrgashat	\N	\N	892	1	2017-05-31	\N		\N		7	3	2		1957	\N	\N
2233	Nalbandyan	\N	\N	893	1	2017-05-31	\N		\N		7	3	2		1958	\N	\N
2234	Nor Armavir	\N	\N	895	1	2017-05-31	\N		\N		7	3	2		1959	\N	\N
2235	Nor Artagers	\N	\N	896	1	2017-05-31	\N		\N		7	3	2		1960	\N	\N
2236	Nor Kesaria	\N	\N	897	1	2017-05-31	\N		\N		7	3	2		1961	\N	\N
2237	Shenavan	\N	\N	898	1	2017-05-31	\N		\N		7	3	2		1962	\N	\N
2238	Janfida	\N	\N	899	1	2017-05-31	\N		\N		7	3	2		1963	\N	\N
2239	Jrashen	\N	\N	900	1	2017-05-31	\N		\N		7	3	2		1964	\N	\N
2240	Sardarapat	\N	\N	901	1	2017-05-31	\N		\N		7	3	2		1965	\N	\N
2241	Tandzut	\N	\N	902	1	2017-05-31	\N		\N		7	3	2		1966	\N	\N
2242	Pshatavan	\N	\N	903	1	2017-05-31	\N		\N		7	3	2		1967	\N	\N
2243	Artamet	\N	\N	905	1	2017-05-31	\N		\N		7	3	2		1968	\N	\N
2244	Myasnikyan	\N	\N	906	1	2017-05-31	\N		\N		7	3	2		1969	\N	\N
2245	Shenik	\N	\N	907	1	2017-05-31	\N		\N		7	3	2		1970	\N	\N
2246	Lernagog	\N	\N	908	1	2017-05-31	\N		\N		7	3	2		1971	\N	\N
2247	Qarakert	\N	\N	909	1	2017-05-31	\N		\N		7	3	2		1972	\N	\N
2248	Arevadasht	\N	\N	910	1	2017-05-31	\N		\N		7	3	2		1973	\N	\N
2249	Hushakert	\N	\N	912	1	2017-05-31	\N		\N		7	3	2		1974	\N	\N
2250	Vanand	\N	\N	913	1	2017-05-31	\N		\N		7	3	2		1975	\N	\N
2251	Talvorik	\N	\N	914	1	2017-05-31	\N		\N		7	3	2		1976	\N	\N
2252	Dalarik	\N	\N	915	1	2017-05-31	2018-01-30		\N		7	3	2		1977	\N	\N
2253	Aknashen	\N	\N	917	1	2017-05-31	\N		\N		7	3	2		1978	\N	\N
2254	Aygek	\N	\N	918	1	2017-05-31	\N		\N		7	3	2		1979	\N	\N
2255	Aygeshat	\N	\N	919	1	2017-05-31	\N		\N		8	3	2		1980	\N	\N
2256	Aratashen	\N	\N	920	1	2017-05-31	\N		\N		8	3	2		1981	\N	\N
2257	Aragats	\N	\N	921	1	2017-05-31	\N		\N		7	3	2		1982	\N	\N
2258	Araqs	\N	\N	922	1	2017-05-31	2017-10-30		\N		8	3	2		1983	\N	\N
2259	Arevashat	\N	\N	923	1	2017-05-31	\N		\N		8	3	2		1984	\N	\N
2260	Baghramyan	\N	\N	924	1	2017-05-31	\N		\N		8	3	2		1985	\N	\N
2261	Gay	\N	\N	925	1	2017-05-31	\N		\N		8	3	2		1986	\N	\N
2262	Doghs	\N	\N	928	1	2017-05-30	\N		\N		8	3	2		1987	\N	\N
2263	Lernamerdz	\N	\N	930	1	2017-05-31	\N		\N		8	3	2		1988	\N	\N
2264		\N	\N	259	1	2017-07-09	2017-09-22		\N		12	3	2		1989	\N	\N
2265		\N	259	1664	4	2017-09-22	\N		\N		12	3	2	Դուրս գրման ա/թ 21/12/2017թ	1989	\N	vahram@hf.am
2266		\N	1664	259	1	2017-07-08	2017-09-23		\N		12	3	2		1990	\N	\N
2267		\N	259	1664	1	2017-09-22	2017-07-08		\N		12	3	2		1990	\N	\N
2268		\N	\N	1664	1	2017-06-12	2017-10-09		\N		17	3	2		1991	\N	\N
2269		\N	\N	1664	1	2017-07-09	2017-10-11		\N		17	3	2		1992	\N	\N
2271		\N	\N	1664	4	2017-06-19	\N		\N		17	3	2	Դուրս գրման ա/թ 16/01/2018	1994	\N	jass.manasyan@gmail.com
2272	Xoronq	\N	\N	931	1	2017-05-31	\N		\N		8	3	2		1995	\N	\N
2273	Tsaxkalanj	\N	\N	932	1	2017-05-31	\N		\N		8	3	2		1996	\N	\N
2274	Tsiatsan	\N	\N	933	1	2017-05-31	\N		\N		8	3	2		1997	\N	\N
2275	Haykashen	\N	\N	934	1	2017-05-31	\N		\N		8	3	2		1998	\N	\N
2276	Hovtamej	\N	\N	935	1	2017-05-31	\N		\N		8	3	2		1999	\N	\N
2277	Musaler	\N	\N	937	1	2017-05-31	\N		\N		8	3	2		2000	\N	\N
2278	Mrgastan	\N	\N	938	1	2017-05-31	\N		\N		8	3	2		2001	\N	\N
2279	Norakert	\N	\N	326	1	2017-05-31	\N		\N		8	3	2		2002	\N	\N
2280	Voskehat	\N	\N	940	1	2017-05-31	\N		\N		8	3	2		2003	\N	\N
2281	Amberd	\N	\N	960	1	2017-05-31	\N		\N		8	3	2		2004	\N	\N
2282	Apaga	\N	\N	961	1	2017-05-31	\N		\N		8	3	2		2005	\N	\N
2283	Arshaluys	\N	\N	962	1	2017-05-31	\N		\N		8	3	2		2006	\N	\N
2284	Lusagyugh	\N	\N	963	1	2017-05-30	\N		\N		8	3	2		2007	\N	\N
2285	Haytagh	\N	\N	964	1	2017-05-31	\N		\N		8	3	2		2008	\N	\N
2286	Jrarbi	\N	\N	965	1	2017-05-31	\N		\N		8	3	2		2009	\N	\N
2287	Taronik	\N	\N	966	1	2017-05-31	2017-12-06		\N		8	3	2		2010	\N	\N
2288	Ferik	\N	\N	967	1	2017-05-31	\N		\N		8	3	2		2011	\N	\N
2289	Berqashat	\N	\N	325	1	2017-05-31	\N		\N		8	3	2		2012	\N	\N
2290	Noravan	\N	\N	939	1	2017-05-31	\N		\N		8	3	2		2013	\N	\N
2291	Argina	\N	\N	329	1	2017-05-31	2017-10-12		\N		8	3	2		2014	\N	\N
2292	Qarakert	\N	\N	330	1	2017-05-31	\N		\N		8	3	2		2015	\N	\N
2293	Shahumyan	\N	\N	331	1	2017-05-31	\N		\N		8	3	2		2016	\N	\N
2294	Dasht	\N	\N	333	1	2017-05-31	\N		\N		8	3	2		2017	\N	\N
2295	Hacik	\N	\N	865	1	2017-05-31	\N		\N		8	3	2		2018	\N	\N
2296	Merdzavan	\N	\N	334	1	2017-05-31	\N		\N		8	3	2		2019	\N	\N
2297	Armavir	\N	\N	875	1	2017-05-30	\N		\N		7	3	2		2020	\N	\N
2298		\N	\N	592	1	2017-04-12	2017-09-25		\N		23	3	2		2021	\N	\N
2299		\N	592	1664	4	2017-09-25	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017թ	2021	\N	vahram@hf.am
2300		\N	592	1664	4	2017-09-25	\N		\N		23	3	2	Դուրս գրման ա/թ 16/01/2018	1535	\N	jass.manasyan@gmail.com
2301		\N	\N	129	1	2017-05-15	2017-09-25		\N		23	3	2		2022	\N	\N
2302		\N	129	1664	1	2017-09-25	2017-09-27		\N		23	3	2		2022	\N	\N
2303		\N	129	1664	1	2017-09-25	\N		\N		23	3	2		1549	\N	\N
2304		\N	129	1664	4	2017-09-25	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017	1544	\N	vahram@hf.am
2305		\N	129	1664	4	2017-09-25	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017	1542	\N	vahram@hf.am
2306		\N	129	1664	1	2017-09-25	2017-09-27		\N		23	3	2		1551	\N	\N
2307		\N	129	1664	4	2017-09-25	\N		\N		23	3	2	Դուրս գրման ա/թ 16/01/2018	1545	\N	jass.manasyan@gmail.com
2308		\N	129	1664	4	2017-09-25	\N		\N		23	3	2	Դուրս գրման ա/թ 16/01/2018	1543	\N	jass.manasyan@gmail.com
2309		\N	129	1664	4	2017-09-25	\N		\N		23	3	2	դուրս գրման ամսաթիվ 21/12/2017	1553	\N	jass.manasyan@gmail.com
2310		\N	\N	129	1	2017-06-12	2017-09-25		\N		23	3	2		2023	\N	\N
2311		\N	129	1664	4	2017-09-25	\N		\N		23	3	2	դուրս գրման ամսաթիվ 21/12/2017	2023	\N	jass.manasyan@gmail.com
2312		\N	\N	129	1	2017-05-23	2017-09-25		\N		23	3	2		2024	\N	\N
2313		\N	129	1664	4	2017-09-25	\N		\N		23	3	2	դուրս գրման ամսաթիվ 21/12/2017	2024	\N	jass.manasyan@gmail.com
2314		\N	1664	42	1	2017-09-24	\N		\N		7	3	2		297	\N	\N
2315		\N	1664	39	1	2017-09-24	\N		\N		7	3	2		298	\N	\N
2316		\N	1664	39	1	2017-09-24	\N		\N		7	3	2		137	\N	\N
2317		\N	42	1664	1	2017-09-24	\N		\N		7	3	2		849	\N	\N
2318		\N	39	1664	1	2017-09-23	2018-01-12		\N		8	3	2		974	\N	\N
2319		\N	42	1664	1	2017-09-24	\N		\N		7	3	2		855	\N	\N
2320		\N	39	1664	1	2017-09-23	\N		\N		8	3	2		977	\N	\N
2321		\N	39	1664	1	2017-09-24	2017-09-27		\N		7	3	2		1811	\N	\N
2322		\N	140	1664	4	2017-09-25	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017	1517	\N	vahram@hf.am
2323		\N	148	1664	4	2017-09-25	\N		\N		21	3	2	Դուրս գրման ա/թ 21/12/2017թ	1524	\N	vahram@hf.am
2324		\N	148	1664	4	2017-09-25	\N		\N		21	3	2	Դուրս գրման ա/թ 21/12/2017	1530	\N	vahram@hf.am
2325		\N	148	1664	4	2017-09-25	\N		\N		21	3	2	դուրս գրման ամսաթիվ 21/12/2017	1532	\N	jass.manasyan@gmail.com
2326		\N	148	1664	4	2017-09-25	\N		\N		21	3	2	դուրս գրման ամսաթիվ 21/12/2017	1527	\N	jass.manasyan@gmail.com
2327		\N	1424	1664	1	2017-09-25	2017-10-11		\N		23	3	2		1566	\N	\N
2328		\N	1424	1664	4	2017-09-25	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017թ	1569	\N	vahram@hf.am
2329		\N	1424	1664	4	2017-09-25	\N		\N		23	3	2	դուրս գրման ամսաթիվ 21/12/2017	1568	\N	jass.manasyan@gmail.com
2330		\N	147	1664	4	2017-09-25	\N		\N		21	3	2	Դուրս գրման ա/թ 21/12/2017	1511	\N	vahram@hf.am
2335		\N	1664	1460	1	2017-09-10	\N		\N		23	3	2		142	\N	\N
2336		\N	147	1664	4	2017-09-25	\N		\N		21	3	2	Դուրս գրման ա/թ 21/12/2017	1507	\N	vahram@hf.am
2337		\N	1460	1664	4	2017-09-25	\N		\N		13	3	2	Դուրս գրման ա/թ 21/12/2017թ	1526	\N	vahram@hf.am
2338		\N	1460	1664	4	2017-09-25	\N		\N		13	3	2	Դուրս գրման ա/թ 21/12/2017թ	1523	\N	vahram@hf.am
2339		\N	1460	1664	4	2017-09-25	\N		\N		13	3	2	դուրս գրման ամսաթիվ 21/12/2017	1528	\N	jass.manasyan@gmail.com
2340		\N	1460	1664	4	2017-09-25	\N		\N		13	3	2	դուրս գրման ամսաթիվ 21/12/2017	1525	\N	jass.manasyan@gmail.com
2341		\N	147	1664	4	2017-09-25	\N		\N		21	3	2	Դուրս գրման ա/թ 15/01/2018թ	1512	\N	vahram@hf.am
2342		\N	147	1664	4	2017-09-25	\N		\N		21	3	2	դուրս գրման ամսաթիվ 21/12/2017	1510	\N	jass.manasyan@gmail.com
2343		\N	147	1664	4	2017-09-25	\N		\N		21	3	2	դուրս գրման ամսաթիվ 21/12/2017	1509	\N	jass.manasyan@gmail.com
2344		\N	145	1664	1	2017-09-25	2017-11-16		\N		13	3	2		1492	\N	\N
2345		\N	145	1664	1	2017-09-25	\N		\N		13	3	2		1501	\N	\N
2346		\N	139	1664	4	2017-09-25	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017	1519	\N	vahram@hf.am
2347		\N	139	1664	4	2017-09-25	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017	1521	\N	vahram@hf.am
2348		\N	139	1664	4	2017-09-25	\N		\N		23	3	2	դուրս գրման ամսաթիվ 21/12/2017	1520	\N	jass.manasyan@gmail.com
2349		\N	153	1664	4	2017-09-25	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017թ	1559	\N	vahram@hf.am
2350		\N	153	1664	4	2017-09-25	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017	1562	\N	vahram@hf.am
2351		\N	143	1664	4	2017-09-25	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017	1552	\N	vahram@hf.am
2352		\N	143	1664	4	2017-09-25	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017	1555	\N	vahram@hf.am
2353		\N	143	1664	1	2017-09-25	2017-09-27		\N		23	3	2		1546	\N	\N
2354		\N	143	1664	4	2017-09-25	\N		\N		23	3	2	դուրս գրման ամսաթիվ 21/12/2017	1557	\N	jass.manasyan@gmail.com
2355		\N	143	1664	4	2017-09-25	\N		\N		23	3	2	դուրս գրման ամսաթիվ 21/12/2017	1547	\N	jass.manasyan@gmail.com
2356		\N	143	1664	1	2017-09-25	2017-11-15		\N		23	3	2		1558	\N	\N
2357		\N	149	1664	4	2017-09-25	\N		\N		21	3	2	Դուրս գրման ա/թ 21/12/2017	1513	\N	vahram@hf.am
2358		\N	149	1664	4	2017-09-25	\N		\N		21	3	2	Դուրս գրման ա/թ 16/01/2018	1514	\N	jass.manasyan@gmail.com
2359		\N	1693	1664	4	2017-09-25	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017	1503	\N	vahram@hf.am
2360		\N	1693	1664	4	2017-09-25	\N		\N		23	3	2	դուրս գրման ամսաթիվ 21/12/2017	1508	\N	jass.manasyan@gmail.com
2361		\N	151	1664	4	2017-09-25	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017	1504	\N	vahram@hf.am
2362		\N	151	1664	1	2017-09-25	2017-11-06		\N		23	3	2		1500	\N	\N
2363		\N	151	1664	1	2017-09-25	2017-10-09		\N		23	3	2		1505	\N	\N
2364		\N	151	1664	1	2017-09-25	2017-10-09		\N		23	3	2		1502	\N	\N
2365		\N	\N	149	1	2017-06-13	2017-09-25		\N		21	3	2		2027	\N	\N
2366		\N	\N	575	1	2017-06-04	2017-09-25		\N		23	3	2		2028	\N	\N
2369		\N	1664	18	1	2017-09-25	\N		\N		20	3	2		129	\N	\N
2373		\N	149	1664	1	2017-09-25	2017-10-11		\N		21	3	2		2027	\N	\N
2374		\N	\N	1031	1	2017-07-02	2017-09-26		\N		20	3	2		2030	\N	\N
2375		\N	1031	1664	4	2017-09-26	\N		\N		20	3	2	Դուրս գրման ա/թ 21/12/2017թ	2030	\N	vahram@hf.am
2376		\N	\N	1031	1	2017-06-11	2017-09-26		\N		20	3	2		2031	\N	\N
2377		\N	1031	1664	1	2017-09-26	2017-10-09		\N		20	3	2		2031	\N	\N
2378		\N	\N	1021	1	2017-06-04	2017-09-26		\N		20	3	2		2032	\N	\N
2379		\N	\N	1021	1	2017-07-10	2017-09-26		\N		20	3	2		2033	\N	\N
2380		\N	1021	1664	1	2017-09-26	2017-10-09		\N		20	3	2		2033	\N	\N
2381		\N	1021	1664	4	2017-09-26	\N		\N		20	3	2	Դուրս գրման ա/թ 21/12/2017թ	2032	\N	vahram@hf.am
2382		\N	\N	1314	1	2017-07-02	2017-09-26		\N		20	3	2		2034	\N	\N
2383		\N	1314	1664	4	2017-09-26	\N		\N		20	3	2	Դուրս գրման ա/թ 21/12/2017թ	2034	\N	vahram@hf.am
2384		\N	\N	1314	1	2017-06-11	2017-09-26		\N		20	3	2		2035	\N	\N
2385		\N	1314	1664	4	2017-09-26	\N		\N		20	3	2	դուրս գրման ամսաթիվ 21/12/2017	2035	\N	jass.manasyan@gmail.com
2386		\N	\N	341	1	2017-06-12	2017-09-26		\N		20	3	2		2036	\N	\N
2387		\N	341	1664	4	2017-09-26	\N		\N		20	3	2	Դուրս գրման ա/թ 21/12/2017թ	2036	\N	vahram@hf.am
2388		\N	\N	341	1	2017-06-14	2017-09-26		\N		20	3	2		2037	\N	\N
2389		\N	341	1664	1	2017-09-26	2017-10-09		\N		20	3	2		2037	\N	\N
2390		\N	575	1664	4	2017-09-25	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017թ	2028	\N	vahram@hf.am
2391		\N	\N	575	1	2017-06-11	2017-09-25		\N		23	3	2		2038	\N	\N
2392		\N	575	1664	4	2017-09-25	\N		\N		23	3	2	դուրս գրման ամսաթիվ 21/12/2017	2038	\N	jass.manasyan@gmail.com
2393		\N	137	1664	4	2017-09-25	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017թ	1537	\N	vahram@hf.am
2394		\N	137	1664	4	2017-09-25	\N		\N		23	3	2	դուրս գրման ամսաթիվ 21/12/2017	1538	\N	jass.manasyan@gmail.com
2395		\N	130	1664	2	2017-09-25	\N		\N		13	3	2		1586	\N	\N
2396		\N	138	130	1	2017-09-25	\N		\N		13	3	2		1479	\N	\N
2397		\N	138	130	1	2017-09-25	2018-03-27		\N		13	3	2		1468	\N	\N
2398		\N	130	1664	1	2017-09-25	2017-10-23		\N		13	3	2		1588	\N	\N
2399		\N	1664	130	1	2017-09-14	\N		\N		23	3	2		1579	\N	\N
2400		\N	\N	130	1	2017-06-12	2017-09-25		\N		13	3	2		2039	\N	\N
2401		\N	130	1664	1	2017-09-25	\N		\N		13	3	2		2039	\N	\N
2403		\N	1664	146	1	2017-09-14	\N		\N		23	3	2		146	\N	\N
2404		\N	1685	1664	1	2017-09-27	2017-10-10		\N		9	3	2		970	\N	\N
2405		\N	\N	826	1	2017-06-12	2017-09-27		\N		9	3	2		2040	\N	\N
2406		\N	826	1664	4	2017-09-27	\N		\N		9	3	2	Դուրս գրման ա/թ 21/12/2017թ	2040	\N	vahram@hf.am
2407		\N	\N	826	1	2017-07-09	2017-09-27		\N		9	3	2		2041	\N	\N
2408		\N	826	1664	1	2017-09-27	2017-10-09		\N		9	3	2		2041	\N	\N
2409		\N	1664	839	1	2017-09-25	\N		\N		9	3	2		340	\N	\N
2410		\N	1664	1063	1	2017-09-24	\N		\N		9	3	2		344	\N	\N
2411		\N	1664	826	1	2017-09-25	\N		\N		9	3	2		341	\N	\N
2412		\N	1664	162	1	2017-09-27	\N		\N		15	3	2		134	\N	\N
2413		\N	1664	408	1	2017-11-21	\N		\N		25	3	2		354	\N	\N
2414		\N	\N	765	1	2017-06-12	\N		\N		24	3	2		2042	\N	\N
2415		\N	\N	766	1	2017-07-09	\N		\N		24	3	2		2043	\N	\N
2416		\N	\N	767	1	2017-07-09	2017-10-17		\N		24	3	2		2044	\N	\N
2417		\N	\N	768	1	2017-07-10	\N		\N		24	3	2		2045	\N	\N
2418		\N	\N	769	1	2017-07-09	\N		\N		24	3	2		2046	\N	\N
2419		\N	\N	771	1	2017-07-09	\N		\N		24	3	2		2047	\N	\N
2420		\N	\N	774	1	2017-06-19	\N		\N		24	3	2		2048	\N	\N
2421		\N	\N	777	1	2017-06-11	\N		\N		24	3	2		2049	\N	\N
2422		\N	\N	779	1	2017-06-11	\N		\N		24	3	2		2050	\N	\N
2423		\N	\N	789	1	2017-06-11	\N		\N		24	3	2		2051	\N	\N
2424		\N	\N	790	1	2017-07-11	\N		\N		24	3	2		2052	\N	\N
2425		\N	\N	794	1	2017-06-14	\N		\N		24	3	2		2053	\N	\N
2426		\N	\N	796	1	2017-07-12	\N		\N		24	3	2		2054	\N	\N
2427		\N	\N	797	1	2017-06-15	\N		\N		24	3	2		2055	\N	\N
2428		\N	\N	799	1	2017-06-15	\N		\N		24	3	2		2056	\N	\N
2429		\N	\N	800	1	2017-07-09	\N		\N		24	3	2		2057	\N	\N
2430		\N	\N	801	1	2017-07-02	\N		\N		24	3	2		2058	\N	\N
2431		\N	\N	809	1	2017-07-10	\N		\N		24	3	2		2059	\N	\N
2432		\N	\N	810	1	2017-06-12	\N		\N		24	3	2		2060	\N	\N
2433		\N	\N	811	1	2017-06-04	\N		\N		24	3	2		2061	\N	\N
2434		\N	\N	815	1	2017-06-14	\N		\N		24	3	2		2062	\N	\N
2435		\N	\N	816	1	2017-06-08	\N		\N		24	3	2		2063	\N	\N
2436		\N	\N	817	1	2017-06-12	\N		\N		24	3	2		2064	\N	\N
2437		\N	\N	818	1	2017-06-11	\N		\N		24	3	2		2065	\N	\N
2438		\N	\N	820	1	2017-06-07	\N		\N		24	3	2		2066	\N	\N
2439		\N	\N	821	1	2017-07-11	\N		\N		24	3	2		2067	\N	\N
2440		\N	\N	823	1	2017-06-06	\N		\N		24	3	2		2068	\N	\N
2441		\N	\N	824	1	2017-07-04	\N		\N		24	3	2		2069	\N	\N
2442		\N	\N	825	1	2017-06-12	\N		\N		24	3	2		2070	\N	\N
2443		\N	\N	316	1	2017-06-14	\N		\N		24	3	2		2071	\N	\N
2444		\N	\N	317	1	2017-06-07	2018-04-19		\N		24	3	2		2072	\N	\N
2445		\N	\N	318	1	2017-06-05	\N		\N		24	3	2		2073	\N	\N
2446		\N	\N	319	1	2017-06-07	\N		\N		24	3	2		2074	\N	\N
2447	Byurakan	\N	\N	702	1	2017-07-04	\N		\N		12	3	2		2075	\N	\N
2448		\N	\N	828	1	2017-06-05	\N		\N		24	3	2		2076	\N	\N
2449		\N	\N	832	1	2017-06-08	\N		\N		24	24	2		2077	\N	\N
2450	Karin	\N	\N	704	1	2017-07-04	\N		\N		12	3	2		2078	\N	\N
2451		\N	\N	320	1	2017-07-10	\N		\N		24	3	2		2079	\N	\N
2452		\N	\N	321	1	2017-06-04	\N		\N		24	3	2		2080	\N	\N
2453	Ghazaravan	\N	\N	705	1	2017-07-04	\N		\N		12	3	2		2081	\N	\N
2454		\N	\N	1640	1	2017-07-09	\N		\N		24	3	2		2082	\N	\N
2455	Voskehat	\N	\N	706	1	2017-07-04	\N		\N		12	3	2		2083	\N	\N
2456	Sasunik	\N	\N	708	1	2017-07-04	\N		\N		12	3	2		2084	\N	\N
2457	Parpi	\N	\N	709	1	2017-07-04	\N		\N		12	3	2		2085	\N	\N
2458	Oshakan	\N	\N	710	1	2017-07-04	\N		\N		12	3	2		2086	\N	\N
2459	Orgov	\N	\N	711	1	2017-07-04	\N		\N		12	3	2		2087	\N	\N
2460	Aghdziq	\N	\N	718	1	2017-07-04	\N		\N		12	3	2		2088	\N	\N
2461	Aragats	\N	\N	296	1	2017-07-04	\N		\N		12	3	2		2089	\N	\N
2462	Eghipatrush	\N	\N	721	1	2017-07-04	\N		\N		12	3	2		2090	\N	\N
2463	Tsaghkashen	\N	\N	722	1	2017-07-04	\N		\N		12	3	2		2091	\N	\N
2464	Quchak	\N	\N	724	1	2017-07-04	\N		\N		12	3	2		2092	\N	\N
2465	Shenavan	\N	\N	727	1	2017-07-04	\N		\N		12	3	2		2093	\N	\N
2466	Verin Bazmaberd	\N	\N	728	1	2017-07-04	\N		\N		12	3	2		2094	\N	\N
2467	V. Agarak	\N	\N	729	1	2017-07-04	\N		\N		12	3	2		2095	\N	\N
2468	Kanch	\N	\N	739	1	2017-07-04	2017-11-21		\N		12	3	2		2096	\N	\N
2469	Mastara	\N	\N	743	1	2017-07-04	\N		\N		12	3	2		2097	\N	\N
2470	Suser	\N	\N	745	1	2017-07-04	\N		\N		12	3	2		2098	\N	\N
2471	Avtona	\N	\N	748	1	2017-07-04	\N		\N		12	3	2		2099	\N	\N
2472	Aragatsavan	\N	\N	749	1	2017-07-04	\N		\N		12	3	2		2100	\N	\N
2473	Aragatsavan	\N	\N	750	1	2017-07-05	\N		\N		12	3	2		2101	\N	\N
2474	Arteni	\N	\N	752	1	2017-07-04	\N		\N		12	3	2		2102	\N	\N
2475		\N	\N	788	1	2017-06-06	\N		\N		24	3	2		2103	\N	\N
2476		\N	\N	791	1	2017-06-15	\N		\N		24	3	2		2104	\N	\N
2477	Aragatsavan	\N	\N	258	1	2017-07-04	\N		\N		12	3	2		2105	\N	\N
2478		\N	\N	830	1	2017-07-05	\N		\N		24	3	2		2106	\N	\N
2479	Katnaghbyur	\N	\N	754	1	2017-07-04	\N		\N		12	3	2		2107	\N	\N
2480	Nor Artik	\N	\N	755	1	2017-07-04	\N		\N		12	3	2		2108	\N	\N
2481	Sorik	\N	\N	756	1	2017-07-04	\N		\N		12	3	2		2109	\N	\N
2482	Tsaghkahovit	\N	\N	1497	1	2017-07-04	\N		\N		12	3	2		2110	\N	\N
2483	Tsaghkahovit	\N	\N	270	1	2017-07-04	\N		\N		12	3	2		2111	\N	\N
2484	Norashen	\N	\N	1498	1	2017-07-04	\N		\N		12	3	2		2112	\N	\N
2486	Nerqin Sasnashen	\N	\N	1500	1	2017-07-04	\N		\N		12	3	2		2114	\N	\N
2487	Garnahovit	\N	\N	249	1	2017-07-04	\N		\N		12	3	2		2115	\N	\N
2488	Getap	\N	\N	250	1	2017-07-04	\N		\N		12	3	2		2116	\N	\N
2489	Charinja	\N	\N	251	1	2017-07-04	\N		\N		12	3	2		2117	\N	\N
2490	Kaqavadzor	\N	\N	252	1	2017-07-04	\N		\N		12	3	2		2118	\N	\N
2491	Nerqin Bazmaberd	\N	\N	253	1	2017-07-04	\N		\N		12	3	2		2119	\N	\N
2492	Dian	\N	\N	255	1	2017-07-04	2017-10-03		\N		12	12	2		2120	\N	\N
2493	Vosketas	\N	\N	257	1	2017-07-04	\N		\N		12	3	2		2121	\N	\N
2494	Amre Taza	\N	\N	260	1	2017-07-04	\N		\N		12	3	2		2122	\N	\N
2495		\N	1664	738	1	2017-09-27	\N		\N		12	3	2		130	\N	\N
2496	Geghadir	\N	\N	262	1	2017-07-04	\N		\N		12	3	2		2123	\N	\N
2497	Geghadzor	\N	\N	263	1	2017-07-04	\N		\N		12	3	2		2124	\N	\N
2498		\N	1664	746	1	2017-09-27	\N		\N		12	3	2		101	\N	\N
2499		\N	1664	735	1	2017-09-27	\N		\N		12	3	2		92	\N	\N
2500		\N	1664	741	1	2017-09-27	\N		\N		12	3	2		95	\N	\N
2501		\N	1664	740	1	2017-09-27	\N		\N		12	3	2		99	\N	\N
2502		\N	1664	753	1	2017-09-27	2018-03-19		\N		12	3	2		2022	\N	\N
2503		\N	1664	57	1	2017-09-27	\N		\N		12	3	2		1811	\N	\N
2504		\N	1664	259	1	2017-09-27	\N		\N		12	3	2		128	\N	\N
2505		\N	1664	259	1	2017-09-27	\N		\N		12	3	2		352	\N	\N
2506		\N	1664	256	1	2017-09-27	2018-03-19		\N		12	3	2		1551	\N	\N
2507		\N	1664	57	1	2017-09-27	\N		\N		12	3	2		1546	\N	\N
2508		\N	1664	747	1	2017-09-27	\N		\N		12	3	2		133	\N	\N
2509		\N	1664	254	1	2017-09-27	\N		\N		12	3	2		1272	\N	\N
2510		\N	1664	744	1	2017-09-27	\N		\N		12	3	2		127	\N	\N
2511		\N	1664	742	1	2017-09-27	\N		\N		12	3	2		103	\N	\N
2512		\N	1664	733	1	2017-09-27	\N		\N		12	3	2		968	\N	\N
2513		\N	\N	42	1	2017-06-12	2017-09-27		\N		7	3	2		2125	\N	\N
2514		\N	42	1664	4	2017-09-27	\N		\N		7	3	2	Դուրս գրման ա/թ 21/12/2017թ	2125	\N	vahram@hf.am
2515		\N	\N	42	1	2017-06-07	2017-09-27		\N		7	3	2		2126	\N	\N
2516		\N	42	1664	1	2017-09-27	2017-11-06		\N		7	3	2		2126	\N	\N
2517		\N	\N	833	1	2017-06-05	\N		\N		24	3	2		2127	\N	\N
2518		\N	\N	835	1	2017-06-14	\N		\N		24	3	2		2128	\N	\N
2519		\N	\N	838	1	2017-06-05	\N		\N		24	3	2		2129	\N	\N
2520		\N	\N	61	1	2017-06-12	\N		\N		12	3	2		2130	\N	\N
2521		\N	\N	61	1	2017-06-05	\N		\N		12	3	2		2131	\N	\N
2522		\N	\N	291	1	2017-06-06	\N		\N		12	3	2		2132	\N	\N
2523		\N	\N	841	1	2017-06-05	\N		\N		24	3	2		2133	\N	\N
2524		\N	\N	842	1	2017-05-31	\N		\N		24	3	2		2134	\N	\N
2525		\N	\N	844	1	2017-07-05	\N		\N		24	3	2		2135	\N	\N
2526		\N	\N	845	1	2017-06-07	\N		\N		24	3	2		2136	\N	\N
2527		\N	\N	846	1	2017-06-12	\N		\N		24	3	2		2137	\N	\N
2528		\N	\N	310	1	2017-06-19	\N		\N		24	3	2		2138	\N	\N
2529		\N	\N	314	1	2017-06-18	2017-10-17		\N		24	3	2		2139	\N	\N
2530		\N	\N	315	1	2017-06-26	\N		\N		24	3	2		2140	\N	\N
2531		\N	\N	322	1	2017-06-14	\N		\N		24	3	2		2141	\N	\N
2532		\N	\N	324	1	2017-06-19	\N		\N		24	3	2		2142	\N	\N
2533		\N	\N	1699	1	2017-06-05	2018-01-12		\N		20	3	2		2143	\N	jass.manasyan@gmail.com
2534		\N	\N	1002	1	2017-06-12	\N		\N		9	3	2		2144	\N	\N
2535		\N	\N	968	1	2017-06-13	\N		\N		9	3	2		2145	\N	\N
2536		\N	\N	969	1	2017-06-20	\N		\N		9	3	2		2146	\N	\N
2537		\N	\N	971	1	2017-06-19	\N		\N		9	3	2		2147	\N	\N
2538		\N	\N	972	1	2017-06-21	\N		\N		9	3	2		2148	\N	\N
2539		\N	\N	973	1	2017-06-23	\N		\N		9	3	2		2149	\N	\N
2540		\N	\N	974	1	2017-06-09	\N		\N		9	3	2		2150	\N	\N
2541		\N	\N	975	1	2017-06-08	2017-12-04		\N		9	3	2		2151	\N	\N
2542		\N	\N	976	1	2017-06-14	\N		\N		9	3	2		2152	\N	\N
2543		\N	\N	977	1	2017-06-12	\N		\N		9	3	2		2153	\N	\N
2544		\N	\N	1019	1	2017-06-08	\N		\N		9	3	2		2154	\N	\N
2545		\N	\N	1022	1	2017-06-09	\N		\N		9	3	2		2155	\N	\N
2546		\N	\N	1023	1	2017-06-20	2017-11-06		\N		9	3	2		2156	\N	\N
2547		\N	\N	995	1	2017-06-07	\N		\N		9	3	2		2157	\N	\N
2548		\N	\N	997	1	2017-08-09	\N		\N		9	3	2		2158	\N	\N
2549		\N	\N	998	1	2017-06-09	\N		\N		9	3	2		2159	\N	\N
2550		\N	\N	1005	1	2017-06-19	\N		\N		20	3	2		2160	\N	\N
2551		\N	\N	1007	1	2017-06-20	\N		\N		20	3	2		2161	\N	\N
2552		\N	\N	1017	1	2017-06-14	\N		\N		9	3	2		2162	\N	\N
2553		\N	\N	335	1	2017-07-10	\N		\N		9	3	2		2163	\N	\N
2554		\N	\N	337	1	2017-06-21	\N		\N		9	3	2		2164	\N	\N
2555		\N	\N	339	1	2017-06-11	\N		\N		9	3	2		2165	\N	\N
2556		\N	\N	350	1	2017-06-12	\N		\N		9	3	2		2166	\N	\N
2557		\N	\N	351	1	2017-07-24	\N		\N		9	3	2		2167	\N	\N
2558		\N	\N	352	1	2017-07-04	\N		\N		20	3	2		2168	\N	\N
2559		\N	\N	354	1	2017-06-19	\N		\N		20	3	2		2169	\N	\N
2560		\N	\N	360	1	2017-07-11	\N		\N		20	3	2		2170	\N	\N
2561		\N	\N	361	1	2017-06-21	\N		\N		20	3	2		2171	\N	\N
2562		\N	\N	362	1	2017-05-31	\N		\N		20	3	2		2172	\N	\N
2563		\N	\N	363	1	2017-07-10	\N		\N		20	3	2		2173	\N	\N
2564		\N	\N	364	1	2017-06-07	2018-02-15		\N		20	3	2		2174	\N	\N
2565		\N	\N	369	1	2017-06-08	\N		\N		20	3	2		2175	\N	\N
2566		\N	\N	370	1	2017-06-20	\N		\N		20	3	2		2176	\N	\N
2567		\N	\N	372	1	2017-06-07	\N		\N		20	3	2		2177	\N	\N
2568		\N	\N	373	1	2017-05-29	\N		\N		20	3	2		2178	\N	\N
2569		\N	\N	8	1	2017-07-10	\N		\N		20	3	2		2179	\N	\N
2570		\N	\N	978	1	2017-07-19	\N		\N		20	3	2		2180	\N	\N
2571		\N	\N	1003	1	2017-07-10	2018-05-04		\N		20	3	2		2181	\N	\N
2572		\N	\N	1018	1	2017-07-05	2017-11-20		\N		20	3	2		2182	\N	\N
2573		\N	\N	1028	1	2017-07-10	\N		\N		20	3	2		2183	\N	\N
2574		\N	\N	338	1	2017-07-16	2017-11-21		\N		20	3	2		2184	\N	\N
2575		\N	\N	374	1	2017-07-17	\N		\N		20	3	2		2185	\N	\N
2576		\N	\N	376	1	2017-07-17	\N		\N		20	3	2		2186	\N	\N
2577		\N	\N	381	1	2017-07-09	\N		\N		9	3	2		2187	\N	\N
2578		\N	\N	382	1	2017-07-09	\N		\N		20	3	2		2188	\N	\N
2579		\N	\N	383	1	2017-07-10	\N		\N		20	3	2		2189	\N	\N
2580		\N	\N	384	1	2017-07-09	\N		\N		20	3	2		2190	\N	\N
2581		\N	\N	386	1	2017-07-17	\N		\N		20	3	2		2191	\N	\N
2582		\N	\N	349	1	2017-07-11	\N		\N		20	3	2		2192	\N	\N
2583		\N	\N	340	1	2017-06-20	\N		\N		20	3	2		2193	\N	\N
2584		\N	\N	1501	1	2017-06-13	\N		\N		20	3	2		2194	\N	\N
2585		\N	\N	1026	1	2017-06-19	\N		\N		20	3	2		2195	\N	\N
2586		\N	\N	1004	1	2017-07-03	\N		\N		20	3	2		2196	\N	\N
2587		\N	\N	1006	1	2017-07-04	\N		\N		20	3	2		2197	\N	\N
2588		\N	\N	1014	1	2017-07-10	\N		\N		20	3	2		2198	\N	\N
2589		\N	\N	1202	1	2017-06-12	\N		\N		15	3	2		2199	\N	\N
2590		\N	\N	1216	1	2017-06-19	\N		\N		15	3	2		2200	\N	\N
2591		\N	\N	1223	1	2017-07-17	\N		\N		15	3	2		2201	\N	\N
2592		\N	\N	1228	1	2017-07-10	\N		\N		15	3	2		2202	\N	\N
2593		\N	\N	1270	1	2017-06-18	\N		\N		15	3	2		2203	\N	\N
2594		\N	\N	1274	1	2017-06-20	2017-10-18		\N		15	3	2		2204	\N	\N
2595		\N	\N	1275	1	2017-06-13	\N		\N		15	3	2		2205	\N	\N
2596		\N	\N	389	1	2017-06-06	\N		\N		15	3	2		2206	\N	\N
2597		\N	\N	391	1	2017-06-05	\N		\N		15	3	2		2207	\N	\N
2598		\N	\N	401	1	2017-07-09	\N		\N		15	3	2		2208	\N	\N
2599		\N	\N	402	1	2017-06-14	\N		\N		15	3	2		2209	\N	\N
2600		\N	\N	408	1	2017-07-10	\N		\N		15	3	2		2210	\N	\N
2601		\N	\N	409	1	2017-06-08	\N		\N		15	3	2		2211	\N	\N
2602		\N	\N	410	1	2017-06-06	\N		\N		15	3	2		2212	\N	\N
2603		\N	\N	414	1	2017-07-17	\N		\N		15	3	2		2213	\N	\N
2604		\N	\N	416	1	2017-06-20	\N		\N		15	3	2		2214	\N	\N
2605		\N	\N	428	1	2017-07-10	\N		\N		15	3	2		2215	\N	\N
2606		\N	\N	429	1	2017-06-12	\N		\N		15	3	2		2216	\N	\N
2607		\N	\N	430	1	2017-06-13	\N		\N		15	3	2		2217	\N	\N
2608		\N	\N	431	1	2017-07-03	\N		\N		15	3	2		2218	\N	\N
2609		\N	\N	432	1	2017-06-12	\N		\N		15	3	2		2219	\N	\N
2610		\N	\N	435	1	2017-07-09	\N		\N		15	3	2		2220	\N	\N
2611		\N	\N	436	1	2017-07-03	\N		\N		15	3	2		2221	\N	\N
2612		\N	\N	446	1	2017-06-04	\N		\N		15	3	2		2222	\N	\N
2613		\N	\N	447	1	2017-06-09	\N		\N		15	3	2		2223	\N	\N
2614		\N	\N	1196	1	2017-06-07	\N		\N		15	3	2		2224	\N	\N
2615		\N	\N	1206	1	2017-06-05	\N		\N		15	3	2		2225	\N	\N
2616		\N	\N	1207	1	2017-06-08	\N		\N		15	3	2		2226	\N	\N
2617		\N	\N	1218	1	2017-06-11	\N		\N		15	15	2		2227	\N	\N
2618		\N	\N	1220	1	2017-06-20	\N		\N		15	3	2		2228	\N	\N
2619		\N	\N	1015	1	2017-07-04	2017-11-06		\N		15	3	2		2229	\N	\N
2620		\N	\N	1225	1	2017-06-07	\N		\N		15	3	2		2230	\N	\N
2621		\N	\N	1273	1	2017-06-14	\N		\N		15	3	2		2231	\N	\N
2622		\N	\N	1567	1	2017-07-10	\N		\N		15	3	2		2232	\N	\N
2623		\N	\N	1568	1	2017-07-12	\N		\N		15	3	2		2233	\N	\N
2624		\N	\N	1570	1	2017-07-10	\N		\N		15	3	2		2234	\N	\N
2625		\N	\N	1571	1	2017-06-19	\N		\N		15	3	2		2235	\N	\N
2626		\N	\N	387	1	2017-07-12	\N		\N		15	3	2		2236	\N	\N
2627		\N	\N	388	1	2017-07-14	\N		\N		15	3	2		2237	\N	\N
2628		\N	\N	395	1	2017-07-11	\N		\N		15	3	2		2238	\N	\N
2629		\N	\N	396	1	2017-06-19	\N		\N		15	3	2		2239	\N	\N
2630		\N	\N	398	1	2017-07-12	\N		\N		15	3	2		2240	\N	\N
2631		\N	\N	420	1	2017-07-10	\N		\N		15	3	2		2241	\N	\N
2632		\N	\N	427	1	2017-07-12	2017-12-15		\N		15	3	2		2242	\N	\N
2633		\N	\N	438	1	2017-07-02	\N		\N		15	3	2		2243	\N	\N
2634		\N	\N	442	1	2017-06-18	\N		\N		15	3	2		2244	\N	\N
2635		\N	\N	449	1	2017-07-17	2017-11-01		\N		15	3	2		2245	\N	\N
2636		\N	\N	450	1	2017-07-14	\N		\N		15	3	2		2246	\N	\N
2637		\N	\N	1644	1	2017-06-27	\N		\N		15	3	2		2247	\N	\N
2638		\N	\N	1215	1	2017-07-05	\N		\N		15	3	2		2248	\N	\N
2639		\N	\N	407	1	2017-06-18	\N		\N		15	3	2		2249	\N	\N
2640		\N	\N	1219	1	2017-06-09	2017-10-19		\N		15	3	2		2250	\N	\N
2641		\N	\N	1222	1	2017-07-16	2017-10-20		\N		15	3	2		2251	\N	\N
2642		\N	\N	1268	1	2017-06-18	2017-10-11		\N		15	3	2		2252	\N	\N
2643		\N	\N	1272	1	2017-07-06	2017-10-11		\N		15	3	2		2253	\N	\N
2644		\N	\N	418	1	2017-07-16	\N		\N		15	3	2		2254	\N	\N
2645		\N	\N	1217	1	2017-06-15	2017-10-11		\N		15	3	2		2255	\N	\N
2646		\N	\N	1565	1	2017-06-15	\N		\N		15	3	2		2256	\N	\N
2647		\N	\N	1221	1	2017-06-21	\N		\N		15	3	2		2257	\N	\N
2648		\N	\N	1226	1	2017-07-12	\N		\N		15	3	2		2258	\N	\N
2649		\N	\N	1279	1	2017-06-23	\N		\N		15	3	2		2259	\N	\N
2650		\N	\N	393	1	2017-06-19	\N		\N		15	3	2		2260	\N	\N
2651		\N	\N	394	1	2017-06-20	\N		\N		15	3	2		2261	\N	\N
2652		\N	\N	397	1	2017-07-10	\N		\N		15	3	2		2262	\N	\N
2653		\N	\N	419	1	2017-07-10	\N		\N		15	3	2		2263	\N	\N
2654		\N	\N	421	1	2017-07-11	\N		\N		15	3	2		2264	\N	\N
2655		\N	\N	424	1	2017-07-16	\N		\N		15	3	2		2265	\N	\N
2656		\N	\N	445	1	2017-07-10	\N		\N		15	3	2		2266	\N	\N
2657		\N	\N	1641	1	2017-07-10	\N		\N		15	3	2		2267	\N	\N
2658		\N	\N	1646	1	2017-07-10	\N		\N		15	3	2		2268	\N	\N
2659		\N	\N	1621	1	2017-07-09	2018-01-12		\N		15	3	2		2269	\N	\N
2660		\N	\N	1610	1	2017-07-09	\N		\N		15	3	2		2270	\N	\N
2661		\N	\N	1611	1	2017-07-10	\N		\N		15	3	2		2271	\N	\N
2662		\N	\N	1613	1	2017-06-04	\N		\N		23	3	2		2272	\N	\N
2663		\N	\N	1614	1	2017-06-08	\N		\N		23	3	2		2273	\N	\N
2664		\N	\N	1618	1	2017-07-11	\N		\N		23	3	2		2274	\N	\N
2665		\N	\N	1619	1	2017-07-09	\N		\N		23	3	2		2275	\N	\N
2666		\N	\N	1656	1	2017-06-11	\N		\N		23	23	2		2276	\N	\N
2667		\N	\N	1657	1	2017-07-11	\N		\N		23	3	2		2277	\N	\N
2668		\N	\N	1663	1	2017-07-10	\N		\N		23	3	2		2278	\N	\N
2669		\N	\N	1609	1	2017-07-10	\N		\N		23	3	2		2279	\N	\N
2670		\N	\N	1615	1	2017-06-11	\N		\N		23	3	2		2280	\N	\N
2671		\N	\N	628	1	2017-07-12	\N		\N		23	3	2		2281	\N	\N
2672		\N	\N	629	1	2017-07-11	\N		\N		23	3	2		2282	\N	\N
2673		\N	\N	630	1	2017-07-12	\N		\N		23	3	2		2283	\N	\N
2674		\N	\N	632	1	2017-07-10	\N		\N		23	3	2		2284	\N	\N
2675		\N	\N	633	1	2017-07-12	\N		\N		23	3	2		2285	\N	\N
2676		\N	\N	634	1	2017-06-13	\N		\N		23	3	2		2286	\N	\N
2677		\N	\N	635	1	2017-07-03	\N		\N		23	3	2		2287	\N	\N
2678		\N	\N	636	1	2017-06-13	\N		\N		23	3	2		2288	\N	\N
2679	Gegharot	\N	\N	264	1	2017-07-04	\N		\N		12	3	2		2289	\N	\N
2680	Lernapar	\N	\N	266	1	2017-07-04	\N		\N		12	3	2		2290	\N	\N
2681	Jamshlu	\N	\N	267	1	2017-07-04	\N		\N		12	3	2		2291	\N	\N
2682	Sangyar	\N	\N	268	1	2017-07-04	\N		\N		12	3	2		2292	\N	\N
2683	Sipan	\N	\N	269	1	2017-07-04	2018-04-06		\N		12	3	2		2293	\N	\N
2684	Tsilqar	\N	\N	271	1	2017-07-04	\N		\N		12	3	2		2294	\N	\N
2685	Meliqgyugh	\N	\N	273	1	2017-07-04	\N		\N		12	3	2		2295	\N	\N
2686	Shenkan	\N	\N	274	1	2017-07-04	\N		\N		12	3	2		2296	\N	\N
2687	Vardablur	\N	\N	275	1	2017-07-04	\N		\N		12	3	2		2297	\N	\N
2688	Berqarat	\N	\N	277	1	2017-07-04	2017-11-21		\N		12	3	2		2298	\N	\N
2689	Antarut	\N	\N	279	1	2017-07-04	\N		\N		12	3	2		2299	\N	\N
2690	Avan	\N	\N	280	1	2017-07-04	\N		\N		12	3	2		2300	\N	\N
2691	Artashavan	\N	\N	282	1	2017-07-04	\N		\N		12	3	2		2301	\N	\N
2692	Bazmaghbyur	\N	\N	284	1	2017-07-04	\N		\N		12	3	2		2302	\N	\N
2693	Lernarot	\N	\N	285	1	2017-07-04	\N		\N		12	3	2		2303	\N	\N
2694	Kosh	\N	\N	286	1	2017-07-04	\N		\N		12	3	2		2304	\N	\N
2695	Nor Amanos	\N	\N	287	1	2017-07-04	\N		\N		12	3	2		2305	\N	\N
2696		\N	\N	254	1	2017-07-10	\N		\N		12	3	2		2306	\N	\N
2697		\N	\N	915	1	2017-07-11	\N		\N		7	3	2		2307	\N	\N
2698		\N	\N	637	1	2017-07-10	\N		\N		23	3	2		2308	\N	\N
2699		\N	\N	639	1	2017-06-12	\N		\N		23	3	2		2309	\N	\N
2700		\N	\N	640	1	2017-07-17	\N		\N		23	3	2		2310	\N	\N
2701		\N	\N	641	1	2017-06-19	2017-12-28		\N		23	3	2		2311	\N	\N
2702		\N	\N	642	1	2017-07-17	\N		\N		23	3	2		2312	\N	\N
2703		\N	\N	643	1	2017-07-11	\N		\N		23	3	2		2313	\N	\N
2704		\N	\N	644	1	2017-07-10	\N		\N		23	3	2		2314	\N	\N
2705		\N	\N	645	1	2017-07-17	\N		\N		23	3	2		2315	\N	\N
2706		\N	\N	909	1	2017-06-20	\N		\N		7	3	2		2316	\N	\N
2707		\N	\N	908	1	2017-06-19	2017-10-11		\N		7	3	2		2317	\N	\N
2708		\N	\N	330	1	2017-07-18	\N		\N		7	3	2		2318	\N	\N
2709		\N	\N	646	1	2017-07-17	\N		\N		23	3	2		2319	\N	\N
2710		\N	\N	647	1	2017-07-12	\N		\N		23	3	2		2320	\N	\N
2711		\N	\N	649	1	2017-07-11	\N		\N		23	3	2		2321	\N	\N
2712		\N	\N	650	1	2017-06-22	\N		\N		23	3	2		2322	\N	\N
2713		\N	\N	651	1	2017-06-19	\N		\N		23	3	2		2323	\N	\N
2714		\N	\N	652	1	2017-07-12	\N		\N		23	3	2		2324	\N	\N
2715		\N	\N	653	1	2017-06-14	\N		\N		23	3	2		2325	\N	\N
2716		\N	\N	654	1	2017-07-10	\N		\N		23	3	2		2326	\N	\N
2717		\N	\N	329	1	2017-06-13	2017-10-12		\N		23	3	2		2327	\N	\N
2718		\N	\N	1612	1	2017-06-15	\N		\N		23	3	2		2328	\N	\N
2719		\N	\N	1286	1	2017-07-10	\N		\N		20	3	2		2329	\N	\N
2720		\N	\N	1287	1	2017-06-05	\N		\N		20	3	2		2330	\N	\N
2721		\N	\N	1296	1	2017-06-06	\N		\N		20	3	2		2331	\N	\N
2723		\N	\N	1321	1	2017-06-14	\N		\N		20	3	2		2333	\N	\N
2724		\N	\N	1324	1	2017-06-13	\N		\N		20	3	2		2334	\N	\N
2725		\N	\N	1585	1	2017-07-12	\N		\N		20	3	2		2335	\N	\N
2726	Nor edesia	\N	\N	288	1	2017-07-04	\N		\N		12	3	2		2336	\N	\N
2727	Shamiram	\N	\N	289	1	2017-07-04	\N		\N		12	3	2		2337	\N	\N
2728		\N	\N	744	1	2017-06-07	\N		\N		12	3	2		2338	\N	\N
2729		\N	\N	290	1	2017-07-04	\N		\N		12	3	2		2339	\N	\N
2730		\N	\N	466	1	2017-06-12	2018-03-14		\N		20	3	2		2340	\N	\N
2731		\N	\N	293	1	2017-07-04	\N		\N		12	3	2		2341	\N	\N
2732		\N	\N	1575	1	2017-06-07	2018-03-21		\N		20	3	2		2342	\N	\N
2733		\N	\N	1578	1	2017-06-12	\N		\N		20	3	2		2343	\N	\N
2734		\N	\N	295	1	2017-07-04	\N		\N		12	3	2		2344	\N	\N
2735		\N	\N	454	1	2017-07-11	\N		\N		20	3	2		2345	\N	\N
2736		\N	\N	456	1	2017-06-20	\N		\N		20	3	2		2346	\N	\N
2737		\N	\N	457	1	2017-07-11	\N		\N		20	3	2		2347	\N	\N
2738		\N	\N	297	1	2017-07-04	\N		\N		12	3	2		2348	\N	\N
2739		\N	\N	458	1	2017-07-09	\N		\N		20	3	2		2349	\N	\N
2740	Apna	\N	\N	298	1	2017-07-04	\N		\N		12	3	2		2350	\N	\N
2741		\N	\N	459	1	2017-07-02	\N		\N		20	3	2		2351	\N	\N
2742	Ernjatap	\N	\N	299	1	2017-07-04	\N		\N		12	3	2		2352	\N	\N
2745	TTUJUR	\N	\N	300	1	2017-07-04	\N		\N		12	3	2		2355	\N	\N
2746		\N	\N	467	1	2017-06-13	\N		\N		20	3	2		2356	\N	\N
2748	Lusagyugh	\N	\N	301	1	2017-07-04	\N		\N		12	3	2		2358	\N	\N
2750	Dzoraglux	\N	\N	302	1	2017-07-04	\N		\N		12	3	2		2360	\N	\N
2751		\N	\N	473	1	2017-06-13	\N		\N		20	3	2		2361	\N	\N
2752		\N	\N	475	1	2017-06-21	\N		\N		20	3	2		2362	\N	\N
2753		\N	\N	476	1	2017-07-05	\N		\N		20	3	2		2363	\N	\N
2754	Mulq ( Kayq)	\N	\N	303	1	2017-07-04	\N		\N		12	3	2		2364	\N	\N
2755		\N	\N	480	1	2017-07-04	\N		\N		20	3	2		2365	\N	\N
2756		\N	\N	484	1	2017-07-10	\N		\N		20	3	2		2366	\N	\N
2757	Nigavan	\N	\N	304	1	2017-07-04	\N		\N		12	3	2		2367	\N	\N
2758		\N	\N	487	1	2017-06-13	\N		\N		20	3	2		2368	\N	\N
2759		\N	\N	488	1	2017-07-02	\N		\N		20	3	2		2369	\N	\N
2760		\N	\N	491	1	2017-07-10	\N		\N		20	3	2		2370	\N	\N
2761	Chqnagh	\N	\N	305	1	2017-07-04	\N		\N		12	3	2		2371	\N	\N
2762		\N	\N	1288	1	2017-07-12	\N		\N		20	3	2		2372	\N	\N
2763	Saralanj	\N	\N	306	1	2017-07-04	\N		\N		12	3	2		2373	\N	\N
2764	Vardenis	\N	\N	307	1	2017-07-04	\N		\N		12	3	2		2374	\N	\N
2765	Vardenut	\N	\N	308	1	2017-07-04	\N		\N		12	12	2		2375	\N	\N
2766	Hnaberd	\N	\N	272	1	2017-07-04	\N		\N		12	3	2		2376	\N	\N
2767	Miraq	\N	\N	278	1	2017-07-04	\N		\N		12	3	2		2377	\N	\N
2768		\N	\N	1295	1	2017-07-11	\N		\N		20	3	2		2378	\N	\N
2769		\N	\N	1301	1	2017-07-11	\N		\N		20	3	2		2379	\N	\N
2770	Akner	\N	\N	1415	1	2017-07-04	\N		\N		23	3	2		2380	\N	\N
2771		\N	\N	1302	1	2017-07-10	\N		\N		20	3	2		2381	\N	\N
2772		\N	\N	1323	1	2017-06-13	\N		\N		20	3	2		2382	\N	\N
2773	Hartashen	\N	\N	1416	1	2017-07-04	\N		\N		23	3	2		2383	\N	\N
2774		\N	\N	492	1	2017-06-07	\N		\N		20	3	2		2384	\N	\N
2775	Bardzravan	\N	\N	1694	1	2017-07-04	\N		\N		23	3	2		2385	\N	\N
2776		\N	\N	485	1	2017-07-06	\N		\N		20	3	2		2386	\N	\N
2777		\N	\N	482	1	2017-07-04	2018-01-24		\N		20	3	2		2387	\N	\N
2778	Xot	\N	\N	1425	1	2017-07-04	\N		\N		23	3	2		2388	\N	\N
2779		\N	\N	455	1	2017-07-05	\N		\N		20	3	2		2389	\N	\N
2780	Shinuhayr	\N	\N	1427	1	2017-07-04	\N		\N		23	3	2		2390	\N	\N
2782	Artsvanik	\N	\N	1443	1	2017-07-04	\N		\N		23	3	2		2392	\N	\N
2783		\N	\N	1586	1	2017-07-03	2018-04-12		\N		20	3	2		2393	\N	\N
2784		\N	\N	1579	1	2017-07-11	\N		\N		20	3	2		2394	\N	\N
2785	Syuniq	\N	\N	1444	1	2017-07-04	\N		\N		23	3	2		2395	\N	\N
2786		\N	\N	1574	1	2017-07-04	\N		\N		20	3	2		2396	\N	\N
2787		\N	\N	1300	1	2017-07-11	\N		\N		20	3	2		2397	\N	\N
2788	Gorayq	\N	\N	1449	1	2017-07-04	\N		\N		23	3	2		2398	\N	\N
2789		\N	\N	464	1	2017-07-11	\N		\N		20	3	2		2399	\N	\N
2790	Akhlatyan	\N	\N	1451	1	2017-07-04	\N		\N		23	3	2		2400	\N	\N
2791	Angeghakot	\N	\N	1452	1	2017-07-04	\N		\N		23	3	2		2401	\N	\N
2792	Bnunis	\N	\N	1453	1	2017-07-04	\N		\N		21	3	2		2402	\N	\N
2793	Brnakot	\N	\N	1454	1	2017-07-04	\N		\N		21	3	2		2403	\N	\N
2794		\N	\N	735	1	2017-06-11	\N		\N		12	3	2		2404	\N	\N
2795	Ishxanasar	\N	\N	1455	1	2017-07-04	\N		\N		21	3	2		2405	\N	\N
2796		\N	\N	481	1	2017-07-12	\N		\N		20	3	2		2406	\N	\N
2797	Uyts	\N	\N	1457	1	2017-07-04	\N		\N		21	3	2		2407	\N	\N
2798	Sarnakunq	\N	\N	1458	1	2017-07-04	2017-10-05		\N		21	3	2		2408	\N	\N
2799		\N	\N	489	1	2017-07-11	\N		\N		20	3	2		2409	\N	\N
2800	Kxndzoresk	\N	\N	1598	1	2017-07-04	\N		\N		23	3	2		2410	\N	\N
2801	Kornidzor	\N	\N	1599	1	2017-07-04	\N		\N		21	3	2		2411	\N	\N
2802	Tatev	\N	\N	1601	1	2017-07-04	\N		\N		21	3	2		2412	\N	\N
2803	Շաղաթ	\N	\N	1606	1	2017-07-04	\N		\N		21	3	2		2413	\N	\N
2804	Noravan	\N	\N	1605	1	2017-07-04	\N		\N		23	3	2		2414	\N	\N
2805	Spandaryan	\N	\N	573	1	2017-07-04	2017-10-05		\N		21	3	2		2415	\N	\N
2806	Qarashen	\N	\N	576	1	2017-07-04	\N		\N		23	3	2		2416	\N	\N
2807		\N	\N	1473	1	2017-06-08	\N		\N		22	3	2		2417	\N	\N
2808		\N	\N	1474	1	2017-07-04	\N		\N		22	3	2		2418	\N	\N
2809	Vorotan (Goris)	\N	\N	580	1	2017-07-04	\N		\N		23	3	2		2419	\N	\N
2810		\N	\N	1475	1	2017-07-11	\N		\N		22	3	2		2420	\N	\N
2811		\N	\N	1476	1	2017-07-12	\N		\N		22	3	2		2421	\N	\N
2812	Shenatagh	\N	\N	586	1	2017-07-04	\N		\N		23	3	2		2422	\N	\N
2813		\N	\N	1477	1	2017-07-18	\N		\N		22	3	2		2423	\N	\N
2814	Svaranc	\N	\N	587	1	2017-07-04	\N		\N		23	3	2		2424	\N	\N
2815		\N	\N	1479	1	2017-06-13	\N		\N		22	3	2		2425	\N	\N
2816		\N	\N	1489	1	2017-06-12	\N		\N		22	3	2		2426	\N	\N
2817	Tandztap	\N	\N	588	1	2017-07-04	\N		\N		21	3	2		2427	\N	\N
2818		\N	\N	1490	1	2017-06-06	\N		\N		22	3	2		2428	\N	\N
2819		\N	\N	1491	1	2017-06-05	\N		\N		22	3	2		2429	\N	\N
2820		\N	\N	1492	1	2017-07-04	\N		\N		22	3	2		2430	\N	\N
2821		\N	\N	1629	1	2017-06-07	\N		\N		15	3	2		2431	\N	\N
2822	Hacavan	\N	\N	593	1	2017-07-04	\N		\N		21	3	2		2432	\N	\N
2823	Vardavanq	\N	\N	604	1	2017-07-04	2018-04-05		\N		21	3	2		2433	\N	\N
2824	Verin Xotanan	\N	\N	612	1	2017-07-04	\N		\N		23	3	2		2434	\N	\N
2825		\N	\N	1631	1	2017-06-08	\N		\N		15	3	2		2435	\N	\N
2826		\N	\N	1632	1	2017-06-12	\N		\N		15	3	2		2436	\N	\N
2827		\N	\N	1633	1	2017-06-14	\N		\N		15	3	2		2437	\N	\N
2828	Azatan	\N	\N	1328	1	2017-07-04	\N		\N		19	3	2		2438	\N	\N
2829	Akhurik	\N	\N	1329	1	2017-07-04	\N		\N		19	3	2		2439	\N	\N
2830	Aygabac	\N	\N	1333	1	2017-07-04	\N		\N		19	3	2		2440	\N	\N
2831	Arevik	\N	\N	1335	1	2017-07-04	\N		\N		19	3	2		2441	\N	\N
2832	Getq	\N	\N	1337	1	2017-07-04	\N		\N		19	3	2		2442	\N	\N
2833	Kamo	\N	\N	1339	1	2017-07-04	\N		\N		19	3	2		2443	\N	\N
2834	Kaps	\N	\N	1340	1	2017-07-04	\N		\N		19	3	2		2444	\N	\N
2749		\N	\N	471	1	2017-05-15	2018-05-14		\N		20	3	2		2359	\N	\N
2747		\N	\N	470	1	2017-07-10	2018-05-14		\N		20	3	2		2357	\N	\N
2743		\N	\N	462	1	2017-06-12	2018-05-14		\N		20	3	2		2353	\N	\N
2781		\N	\N	1327	1	2017-07-05	2018-05-14		\N		20	3	2		2391	\N	\N
2835		\N	\N	1637	1	2017-06-06	\N		\N		15	3	2		2445	\N	\N
2836	Haykavan	\N	\N	1342	1	2017-07-04	\N		\N		19	3	2		2446	\N	\N
2837		\N	\N	679	1	2017-07-13	\N		\N		15	3	2		2447	\N	\N
2838	Hacik	\N	\N	1343	1	2017-07-04	\N		\N		19	3	2		2448	\N	\N
2839		\N	\N	1625	1	2017-07-10	\N		\N		22	3	2		2449	\N	\N
2840		\N	\N	1628	1	2017-07-10	\N		\N		15	3	2		2450	\N	\N
2841	Hovit	\N	\N	1344	1	2017-07-04	\N		\N		19	3	2		2451	\N	\N
2842		\N	\N	656	1	2017-07-09	\N		\N		22	3	2		2452	\N	\N
2843		\N	\N	657	1	2017-07-12	\N		\N		22	3	2		2453	\N	\N
2844	Hovuni	\N	\N	1345	1	2017-07-04	\N		\N		19	3	2		2454	\N	\N
2845		\N	\N	658	1	2017-06-14	\N		\N		22	3	2		2455	\N	\N
2846		\N	\N	659	1	2017-07-10	\N		\N		22	3	2		2456	\N	\N
2847	Gharibjanyan	\N	\N	1346	1	2017-07-04	\N		\N		19	3	2		2457	\N	\N
2848		\N	\N	660	1	2017-07-06	\N		\N		22	3	2		2458	\N	\N
2849	Marmarashen	\N	\N	1348	1	2017-07-04	\N		\N		19	3	2		2459	\N	\N
2850		\N	\N	661	1	2017-06-15	\N		\N		22	3	2		2460	\N	\N
2851		\N	\N	662	1	2017-06-12	2018-01-22		\N		22	3	2		2461	\N	\N
2852		\N	\N	664	1	2017-07-04	\N		\N		22	3	2		2462	\N	\N
2853	Nor Akhuryan	\N	\N	1349	1	2017-07-04	\N		\N		19	3	2		2463	\N	\N
2854	Shirak	\N	\N	1350	1	2017-07-04	\N		\N		19	3	2		2464	\N	\N
2855		\N	\N	667	1	2017-07-10	\N		\N		15	3	2		2465	\N	\N
2856	Jajur	\N	\N	512	1	2017-07-04	\N		\N		19	3	2		2466	\N	\N
2857		\N	\N	668	1	2017-07-12	\N		\N		15	3	2		2467	\N	\N
2858		\N	\N	669	1	2017-07-27	\N		\N		15	3	2		2468	\N	\N
2859		\N	\N	670	1	2017-07-06	\N		\N		15	3	2		2469	\N	\N
2860	Jrarat	\N	\N	1352	1	2017-07-04	\N		\N		19	3	2		2470	\N	\N
2861		\N	\N	671	1	2017-07-26	\N		\N		15	3	2		2471	\N	\N
2862	Vahramaberd	\N	\N	1353	1	2017-07-04	\N		\N		19	3	2		2472	\N	\N
2863		\N	\N	672	1	2017-07-11	\N		\N		15	3	2		2473	\N	\N
2864	Qeti	\N	\N	1354	1	2017-07-04	\N		\N		19	3	2		2474	\N	\N
2865	Byurakn	\N	\N	1355	1	2017-07-04	\N		\N		19	3	2		2475	\N	\N
2866	Meghrashat	\N	\N	1356	1	2017-07-04	\N		\N		19	3	2		2476	\N	\N
2867		\N	\N	673	1	2017-07-11	\N		\N		15	3	2		2477	\N	\N
2868	Anipemza	\N	\N	1358	1	2017-07-04	\N		\N		19	3	2		2478	\N	\N
2869		\N	\N	675	1	2017-07-16	\N		\N		15	3	2		2479	\N	\N
2870	Isahakyan	\N	\N	1360	1	2017-07-04	\N		\N		19	3	2		2480	\N	\N
2871		\N	\N	676	1	2017-06-11	\N		\N		15	3	2		2481	\N	\N
2872		\N	\N	677	1	2017-07-17	\N		\N		15	3	2		2482	\N	\N
2873		\N	\N	678	1	2017-07-05	\N		\N		15	3	2		2483	\N	\N
2874		\N	\N	680	1	2017-07-25	\N		\N		15	3	2		2484	\N	\N
2875		\N	\N	681	1	2017-07-19	\N		\N		15	3	2		2485	\N	\N
2876		\N	\N	683	1	2017-07-14	\N		\N		15	3	2		2486	\N	\N
2877		\N	\N	684	1	2017-07-16	\N		\N		15	3	2		2487	\N	\N
2878		\N	\N	685	1	2017-07-07	\N		\N		15	3	2		2488	\N	\N
2879		\N	\N	686	1	2017-07-07	\N		\N		15	3	2		2489	\N	\N
2880		\N	\N	687	1	2017-07-18	\N		\N		15	3	2		2490	\N	\N
2881		\N	\N	250	1	2017-06-18	\N		\N		12	3	2		2491	\N	\N
2882		\N	\N	688	1	2017-07-14	\N		\N		15	3	2		2492	\N	\N
2883		\N	\N	1658	1	2017-07-15	\N		\N		22	3	2		2493	\N	\N
2884		\N	\N	1361	1	2017-07-23	\N		\N		19	3	2		2494	\N	\N
2885		\N	\N	1363	1	2017-07-18	\N		\N		19	3	2		2495	\N	\N
2886		\N	\N	1364	1	2017-07-21	\N		\N		19	3	2		2496	\N	\N
2887		\N	\N	1593	1	2017-07-23	\N		\N		18	3	2		2497	\N	\N
2888		\N	\N	498	1	2017-07-23	\N		\N		16	3	2		2498	\N	\N
2889		\N	\N	499	1	2017-07-23	\N		\N		19	3	2		2499	\N	\N
2890		\N	\N	500	1	2017-07-26	\N		\N		19	3	2		2500	\N	\N
2891		\N	\N	501	1	2017-07-07	\N		\N		19	3	2		2501	\N	\N
2892		\N	\N	502	1	2017-07-06	2018-02-12		\N		19	3	2		2502	\N	\N
2893		\N	\N	503	1	2017-07-07	\N		\N		16	3	2		2503	\N	\N
2894		\N	\N	504	1	2017-07-14	\N		\N		19	3	2		2504	\N	\N
2895		\N	\N	506	1	2017-07-07	\N		\N		16	3	2		2505	\N	\N
2896		\N	\N	507	1	2017-07-19	\N		\N		19	3	2		2506	\N	\N
2897		\N	\N	508	1	2017-07-18	\N		\N		16	3	2		2507	\N	\N
2898		\N	\N	509	1	2017-07-07	\N		\N		16	3	2		2508	\N	\N
2899		\N	\N	529	1	2017-07-25	\N		\N		18	3	2		2509	\N	\N
2900		\N	\N	531	1	2017-07-27	\N		\N		19	3	2		2510	\N	\N
2901		\N	\N	532	1	2017-07-27	\N		\N		19	3	2		2511	\N	\N
2902		\N	\N	533	1	2017-07-25	\N		\N		19	3	2		2512	\N	\N
2903		\N	\N	534	1	2017-07-25	\N		\N		19	3	2		2513	\N	\N
2904		\N	\N	535	1	2017-07-19	\N		\N		19	3	2		2514	\N	\N
2905		\N	\N	536	1	2017-07-18	\N		\N		19	3	2		2515	\N	\N
2906		\N	\N	537	1	2017-07-28	\N		\N		19	3	2		2516	\N	\N
2907		\N	\N	538	1	2017-07-27	2018-04-09		\N		19	3	2		2517	\N	\N
2908		\N	\N	539	1	2017-07-28	\N		\N		19	3	2		2518	\N	\N
2909		\N	\N	541	1	2017-07-27	\N		\N		19	3	2		2519	\N	\N
2910		\N	\N	543	1	2017-07-27	\N		\N		19	3	2		2520	\N	\N
2911		\N	\N	544	1	2017-07-23	\N		\N		19	3	2		2521	\N	\N
2912		\N	\N	547	1	2017-07-24	\N		\N		19	3	2		2522	\N	\N
2913		\N	\N	548	1	2017-07-23	\N		\N		19	3	2		2523	\N	\N
2914		\N	\N	550	1	2017-07-26	\N		\N		19	3	2		2524	\N	\N
2915		\N	\N	563	1	2017-07-24	\N		\N		18	3	2		2525	\N	\N
2916		\N	1664	453	1	2017-10-02	2017-10-05		\N		20	3	2		426	\N	\N
2917		\N	\N	564	1	2017-07-27	\N		\N		18	3	2		2526	\N	\N
2918		\N	\N	939	1	2017-06-26	\N		\N		7	3	2		2527	\N	\N
2919		\N	\N	565	1	2017-07-25	\N		\N		18	3	2		2528	\N	\N
2920		\N	\N	566	1	2017-06-29	\N		\N		18	3	2		2529	\N	\N
2921		\N	\N	1594	1	2017-07-16	\N		\N		19	3	2		2530	\N	\N
2922		\N	\N	523	1	2017-07-17	\N		\N		18	3	2		2531	\N	\N
2923		\N	\N	524	1	2017-07-23	\N		\N		18	3	2		2532	\N	\N
2924		\N	\N	525	1	2017-06-30	2017-11-22		\N		18	3	2		2533	\N	\N
2925		\N	\N	510	1	2017-07-11	\N		\N		16	3	2		2534	\N	\N
2926		\N	\N	520	1	2017-07-21	2018-02-27		\N		18	3	2		2535	\N	\N
2927		\N	\N	521	1	2017-07-03	\N		\N		18	3	2		2536	\N	\N
2928		\N	\N	522	1	2017-07-21	2018-05-04		\N		18	3	2		2537	\N	\N
2929		\N	\N	527	1	2017-07-07	\N		\N		18	3	2		2538	\N	\N
2930		\N	\N	552	1	2017-07-24	\N		\N		18	3	2		2539	\N	\N
2931		\N	\N	553	1	2017-07-20	\N		\N		18	3	2		2540	\N	\N
2932		\N	\N	555	1	2017-07-04	2018-01-30		\N		18	3	2		2541	\N	\N
2933		\N	\N	557	1	2017-07-18	\N		\N		18	3	2		2542	\N	\N
2934		\N	\N	855	1	2017-07-13	\N		\N		7	3	2		2543	\N	\N
2935		\N	\N	558	1	2017-07-06	\N		\N		18	3	2		2544	\N	\N
2936		\N	\N	559	1	2017-07-21	\N		\N		18	3	2		2545	\N	\N
2937		\N	\N	511	1	2017-07-07	\N		\N		16	3	2		2546	\N	\N
2938		\N	\N	514	1	2017-07-19	\N		\N		16	3	2		2547	\N	\N
2939		\N	\N	515	1	2017-07-18	\N		\N		18	3	2		2548	\N	\N
2940		\N	\N	517	1	2017-07-09	\N		\N		18	3	2		2549	\N	\N
2941		\N	\N	526	1	2017-07-09	\N		\N		18	3	2		2550	\N	\N
2942		\N	\N	528	1	2017-07-24	\N		\N		18	3	2		2551	\N	\N
2943		\N	\N	554	1	2017-07-12	\N		\N		18	3	2		2552	\N	\N
2944		\N	\N	556	1	2017-07-27	\N		\N		18	3	2		2553	\N	\N
2945		\N	\N	561	1	2017-07-19	\N		\N		18	3	2		2554	\N	\N
2946		\N	\N	562	1	2017-07-14	\N		\N		18	3	2		2555	\N	\N
2947		\N	\N	567	1	2017-07-02	\N		\N		18	3	2		2556	\N	\N
2948		\N	\N	568	1	2017-07-19	\N		\N		18	3	2		2557	\N	\N
2949		\N	\N	571	1	2017-06-30	\N		\N		16	3	2		2558	\N	\N
2950		\N	\N	1591	1	2017-07-07	\N		\N		16	3	2		2559	\N	\N
2951		\N	\N	1649	1	2017-07-09	\N		\N		19	3	2		2560	\N	\N
2952		\N	\N	940	1	2017-07-11	\N		\N		8	3	2		2561	\N	\N
2953		\N	\N	856	1	2017-07-13	\N		\N		7	3	2		2562	\N	\N
2954		\N	\N	729	1	2017-07-20	\N		\N		12	3	2		2563	\N	\N
2955		\N	255	1664	4	2017-10-03	\N		\N		12	3	2	Դուրս գրման ա/թ 21/12/2017թ	2120	\N	vahram@hf.am
2956		\N	\N	255	1	2017-07-06	2017-10-03		\N		12	3	2		2564	\N	\N
2957		\N	255	1664	2	2017-10-03	\N		\N		12	3	2		2564	\N	\N
2959		\N	1664	255	1	2017-07-06	\N		\N		12	3	2		2565	\N	\N
2961		\N	\N	741	1	2017-07-14	\N		\N		12	3	2		2566	\N	\N
2962		\N	\N	865	1	2017-07-11	\N		\N		7	3	2		2567	\N	\N
2963		\N	\N	906	1	2017-07-13	\N		\N		7	3	2		2568	\N	\N
2964		\N	\N	880	1	2017-07-21	\N		\N		7	3	2		2569	\N	\N
2965		\N	1664	1664	1	2017-01-04	\N		\N		17	3	2		356	\N	\N
2966		\N	\N	879	1	2017-07-04	\N		\N		7	3	2		2570	\N	\N
2967		\N	\N	892	1	2017-07-18	\N		\N		7	3	2		2571	\N	\N
2968		\N	\N	891	1	2017-07-17	\N		\N		7	3	2		2572	\N	\N
2969		\N	1664	453	1	2017-10-05	\N		\N		20	3	2		342	\N	\N
2970		\N	1664	1416	1	2017-10-05	\N		\N		23	3	2		347	\N	\N
2971		\N	\N	859	1	2017-07-10	\N		\N		7	3	2		2573	\N	\N
2972		\N	453	1664	2	2017-10-05	\N		\N		20	3	2		426	\N	\N
2973		\N	1664	19	1	2017-10-05	\N		\N		20	3	2		136	\N	\N
2974		\N	1459	1664	4	2017-10-05	\N		\N		23	3	2		336	\N	\N
2975		\N	\N	1459	1	2017-07-04	2017-10-05		\N		23	3	2		2574	\N	\N
2976		\N	1459	1664	4	2017-10-05	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017թ	2574	\N	vahram@hf.am
2979		\N	\N	581	1	2017-07-14	2017-10-05		\N		23	3	2		2576	\N	\N
2980		\N	581	1664	4	2017-10-05	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017թ	2576	\N	vahram@hf.am
2981		\N	\N	581	1	2017-07-03	\N		\N		23	3	2		2577	\N	\N
2983		\N	\N	1450	1	2017-07-19	2017-10-05		\N		23	3	2		2578	\N	\N
2984		\N	1450	1664	4	2017-10-05	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017թ	2578	\N	vahram@hf.am
2985		\N	1450	1664	4	2017-10-05	\N		\N		23	3	2	դուրս գրման ամսաթիվ 21/12/2017	2579	\N	jass.manasyan@gmail.com
2986		\N	\N	1450	1	2017-07-12	2017-10-05		\N		23	3	2		2579	\N	\N
2987		\N	\N	1664	2	2017-10-05	\N		\N		23	3	2		2580	\N	\N
2988		\N	\N	595	1	2017-07-10	2017-10-05		\N		23	3	2		2581	\N	\N
2989		\N	595	1664	4	2017-10-05	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017թ	2581	\N	vahram@hf.am
2991		\N	\N	595	1	2017-07-11	\N		\N		23	3	2		2582	\N	\N
2992		\N	1458	1664	1	2017-10-05	\N		\N		23	3	2		2408	\N	\N
2993		\N	573	1664	1	2017-10-05	\N		\N		23	3	2		2415	\N	\N
2994		\N	\N	583	1	2017-08-10	2017-10-05		\N		23	3	2		2583	\N	\N
2995		\N	583	1664	4	2017-10-05	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017թ	2583	\N	vahram@hf.am
2997		\N	\N	583	1	2017-08-10	\N		\N		23	3	2		2584	\N	\N
2999		\N	\N	584	1	2017-07-06	2017-10-05		\N		23	3	2		2585	\N	\N
3000		\N	584	1664	4	2017-10-05	\N		\N		23	3	2	դուրս գրման ամսաթիվ 21/12/2017	2586	\N	jass.manasyan@gmail.com
3001		\N	\N	584	1	2017-08-10	2017-10-05		\N		23	3	2		2586	\N	\N
3002		\N	584	1664	4	2017-10-05	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017թ	2585	\N	vahram@hf.am
3003		\N	\N	574	1	2017-08-10	2017-10-05		\N		23	3	2		2587	\N	\N
3004		\N	574	1664	4	2017-10-05	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017թ	2587	\N	vahram@hf.am
3005		\N	\N	574	1	2017-08-10	\N		\N		23	3	2		2588	\N	\N
3007		\N	\N	585	1	2017-08-10	2017-10-05		\N		23	3	2		2589	\N	\N
3008		\N	585	1664	4	2017-10-05	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017թ	2589	\N	vahram@hf.am
3009		\N	\N	585	1	2017-08-10	2017-10-05		\N		23	3	2		2590	\N	\N
3010		\N	585	1664	4	2017-10-05	\N		\N		23	3	2	դուրս գրման ամսաթիվ 21/12/2017	2590	\N	jass.manasyan@gmail.com
3011		\N	\N	1692	1	2017-08-10	2017-10-05		\N		23	3	2		2591	\N	\N
3012		\N	1692	1664	4	2017-10-05	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017թ	2591	\N	vahram@hf.am
3013		\N	\N	1692	1	2017-08-10	2017-10-05		\N		23	3	2		2592	\N	\N
3014		\N	1692	1664	4	2017-10-05	\N		\N		23	3	2	դուրս գրման ամսաթիվ 21/12/2017	2592	\N	jass.manasyan@gmail.com
3015		\N	\N	597	1	2017-08-10	2017-10-05		\N		23	3	2		2593	\N	\N
3016		\N	597	1664	4	2017-10-05	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017թ	2593	\N	vahram@hf.am
3017		\N	\N	597	1	2017-08-10	\N		\N		23	3	2		2594	\N	\N
3019		\N	\N	625	1	2017-08-10	2017-10-05		\N		23	3	2		2595	\N	\N
3020		\N	625	1664	4	2017-10-05	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017թ	2595	\N	vahram@hf.am
3021		\N	\N	625	1	2017-08-10	2017-10-05		\N		23	3	2		2596	\N	\N
3022		\N	625	1664	4	2017-10-05	\N		\N		23	3	2	դուրս գրման ամսաթիվ 21/12/2017	2596	\N	jass.manasyan@gmail.com
3023		\N	\N	582	1	2017-08-10	2017-10-05		\N		23	3	2		2597	\N	\N
3024		\N	582	1664	4	2017-10-05	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017թ	2597	\N	vahram@hf.am
3025		\N	\N	582	1	2017-08-10	\N		\N		23	3	2		2598	\N	\N
3027		\N	\N	326	1	2017-08-10	\N		\N		8	3	2		2599	\N	\N
3028		\N	\N	1416	1	2017-07-11	2017-10-06		\N		23	3	2		2600	\N	\N
3029		\N	1416	1664	1	2017-10-06	2018-03-29		\N		23	3	2		2600	\N	jass.manasyan@gmail.com
3031		\N	\N	256	1	2017-07-11	\N		\N		12	3	2		2601	\N	\N
3032		\N	\N	498	1	2017-05-16	\N		\N		16	3	2		2602	\N	\N
3033		\N	\N	1360	1	2017-04-11	\N		\N		16	3	2		2603	\N	\N
3034		\N	\N	963	1	2017-07-13	\N		\N		8	3	2		2604	\N	\N
3035		\N	1664	314	1	2017-10-09	\N		\N		24	4	2		523	\N	\N
3038		\N	1664	1702	1	2017-10-09	\N		\N		24	4	2		474	\N	\N
3039		\N	1664	1702	1	2017-10-09	2017-11-10		\N		24	4	2		334	\N	\N
3040		\N	1664	1702	1	2017-10-09	\N		\N		24	3	2		2041	\N	\N
3041		\N	1664	776	1	2017-10-09	\N		\N		24	4	2		536	\N	\N
3042		\N	1664	776	1	2017-10-09	\N		\N		24	4	2		2033	\N	\N
3043		\N	1664	767	1	2017-10-09	\N		\N		24	4	2		520	\N	\N
3044		\N	1664	767	1	2017-10-09	\N		\N		24	4	2		2031	\N	\N
3045		\N	1664	1701	1	2017-10-09	2017-10-31		\N		24	4	2		562	\N	\N
3046		\N	1664	1701	1	2017-10-09	\N		\N		24	4	2		2037	\N	\N
3047		\N	1664	314	1	2017-10-09	\N		\N		24	4	2		1502	\N	\N
3048		\N	1664	220	1	2017-10-09	\N		\N		24	4	2		1991	\N	\N
3049		\N	1664	220	1	2017-10-09	\N		\N		24	4	2		1505	\N	\N
3050		\N	\N	961	1	2017-07-14	\N		\N		8	3	2		2606	\N	\N
3051		\N	\N	1356	1	2017-07-19	\N		\N		19	3	2		2607	\N	\N
3052		\N	204	1716	1	2017-10-09	\N		\N		16	4	2		1943	\N	vahram@hf.am
3053		\N	\N	776	1	2017-07-10	2017-10-17		\N		24	3	2		2608	\N	\N
3054		\N	1664	878	1	2017-10-10	\N		\N		8	3	2		970	\N	\N
3055		\N	\N	901	1	2017-07-17	\N		\N		7	3	2		2609	\N	\N
3056		\N	\N	874	1	2017-07-17	\N		\N		7	3	2		2610	\N	\N
3057		\N	\N	877	1	2017-07-19	\N		\N		7	3	2		2611	\N	\N
3058		\N	\N	878	1	2017-07-13	\N		\N		7	3	2		2612	\N	\N
3059		\N	\N	1295	1	2017-07-20	\N		\N		7	3	2		2613	\N	\N
3060		\N	\N	890	1	2017-07-19	\N		\N		7	3	2		2614	\N	\N
3061		\N	\N	1295	1	2017-07-17	\N		\N		9	3	2		2615	\N	\N
3062		\N	\N	474	1	2017-07-10	\N		\N		9	3	2		2616	\N	\N
3063		\N	\N	912	1	2017-07-11	\N		\N		7	3	2		2617	\N	\N
3064		\N	\N	897	1	2017-07-18	\N		\N		7	3	2		2618	\N	\N
3065		\N	\N	1341	1	2017-07-11	2017-10-10		\N		16	3	2		2619	\N	\N
3066		\N	1341	1664	4	2017-10-10	\N		\N		16	3	2		2619	\N	\N
3067		\N	1680	1664	1	2017-10-10	2017-11-21		\N		16	3	2		87	\N	\N
3068		\N	\N	464	1	2017-07-11	\N		\N		9	3	2		2620	\N	\N
3069		\N	\N	471	1	2017-07-17	\N		\N		9	3	2		2621	\N	\N
3070		\N	\N	463	1	2017-07-12	\N		\N		9	3	2		2622	\N	\N
3071		\N	\N	325	1	2017-07-07	\N		\N		7	3	2		2623	\N	\N
3072		\N	\N	325	1	2017-07-07	\N		\N		7	3	2		2624	\N	\N
3073		\N	\N	898	1	2017-07-10	\N		\N		7	3	2		2625	\N	\N
3074		\N	\N	1284	1	2017-07-20	\N		\N		9	3	2		2626	\N	\N
3075		\N	\N	889	1	2017-07-18	\N		\N		7	3	2		2627	\N	\N
3076		\N	1664	1224	1	2017-10-11	2017-10-24		\N		25	3	2		487	\N	\N
3077		\N	1664	1224	1	2017-10-11	2017-10-18		\N		25	3	2		2027	\N	\N
3078		\N	1664	602	1	2017-10-11	\N		\N		23	3	2		554	\N	\N
3079		\N	1664	601	1	2017-10-11	\N		\N		23	3	2		1992	\N	\N
3080		\N	1664	1219	1	2017-10-11	\N		\N		25	3	2		484	\N	\N
3081		\N	1664	1214	1	2017-10-11	\N		\N		25	3	2		467	\N	\N
3082		\N	1664	1227	1	2017-10-11	\N		\N		25	3	2		479	\N	\N
3083		\N	1664	1222	1	2017-10-11	\N		\N		25	3	2		1436	\N	\N
3084		\N	1664	1268	1	2017-10-11	\N		\N		25	3	2		472	\N	\N
3086		\N	1664	1272	1	2017-10-11	\N		\N		25	3	2		494	\N	\N
3087		\N	1664	120	1	2017-10-11	\N		\N		23	3	2		461	\N	\N
3088		\N	1664	120	1	2017-10-11	\N		\N		23	3	2		549	\N	\N
3089		\N	1664	120	1	2017-10-11	\N		\N		23	3	2		149	\N	\N
3090		\N	1664	140	1	2017-10-11	\N		\N		23	3	2		1566	\N	\N
3091		\N	140	1664	1	2017-10-11	2018-03-16		\N		23	3	2		539	\N	\N
3092		\N	\N	948	1	2017-07-04	\N		\N		8	3	2		2628	\N	\N
3093		\N	\N	1589	1	2017-07-17	\N		\N		9	3	2		2629	\N	\N
3094		\N	\N	1283	1	2017-07-19	\N		\N		9	3	2		2630	\N	\N
3095		\N	\N	1357	1	2017-07-13	\N		\N		16	3	2		2631	\N	\N
3096		\N	1664	1217	1	2017-10-11	\N		\N		25	3	2		495	\N	\N
3097		\N	1664	908	1	2017-10-11	\N		\N		7	3	2		349	\N	\N
3099		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	2633	\N	vahram@hf.am
3100		\N	1664	329	1	2017-10-12	\N		\N		7	3	2		90	\N	\N
3101		\N	329	1664	2	2017-10-12	\N		\N		7	3	2		2014	\N	\N
3102		\N	1664	329	1	2017-10-12	\N		\N		7	3	2		364	\N	\N
3103		\N	329	1664	2	2017-10-12	\N		\N		7	3	2		2327	\N	\N
3104		\N	1664	1664	1	2017-10-31	\N		\N		16	3	2		533	\N	\N
3105		\N	1664	1664	1	2017-10-12	2017-11-15		\N		15	3	2		23	\N	\N
3106		\N	1664	1664	1	2017-10-12	2017-10-17		\N		15	3	2		20	\N	\N
3107		\N	1664	1712	1	2017-10-12	2017-12-21		\N		22	3	2		21	\N	\N
3108		\N	1664	1712	1	2017-10-12	2018-01-22		\N		22	3	2		19	\N	\N
3109		\N	1664	1712	1	2017-10-12	\N		\N		22	3	2		362	\N	\N
3110		\N	1664	1712	1	2017-10-12	\N		\N		22	3	2		351	\N	\N
3111		\N	1664	1664	1	2017-10-12	\N		\N		15	3	2		365	\N	\N
3112		\N	1664	425	1	2017-10-12	\N		\N		15	3	2		360	\N	\N
3113		\N	1664	1716	1	2017-10-12	2018-02-08		\N		16	3	2		22	\N	\N
3114		\N	1664	1716	1	2017-10-12	\N		\N		16	3	2		363	\N	\N
3115		\N	1664	1716	1	2017-10-12	2018-01-24		\N		16	3	2		350	\N	\N
3116		\N	1341	1664	1	2017-10-31	2017-11-10		\N		16	3	2		29	\N	\N
3117		\N	\N	485	1	2017-07-10	\N		\N		9	3	2		2634	\N	\N
3118		\N	\N	487	1	2017-07-19	\N		\N		9	3	2		2635	\N	\N
3119		\N	\N	1648	1	2017-07-10	\N		\N		9	3	2		2636	\N	\N
3120		\N	\N	1648	1	2017-07-18	\N		\N		9	3	2		2637	\N	\N
3121		\N	\N	764	1	2017-07-04	\N		\N		24	3	2		2638	\N	\N
3122		\N	\N	1647	1	2017-05-24	\N		\N		15	3	2		2639	\N	\N
3123		\N	\N	1648	1	2017-05-24	\N		\N		20	3	2		2640	\N	\N
3124		\N	\N	1655	1	2017-05-24	\N		\N		23	3	2		2641	\N	\N
3125		\N	\N	1650	1	2017-05-24	\N		\N		21	3	2		2642	\N	\N
3126		\N	\N	1651	1	2017-05-24	\N		\N		23	3	2		2643	\N	\N
3127		\N	\N	1659	1	2017-05-24	\N		\N		15	3	2		2644	\N	\N
3128		\N	\N	1643	1	2017-05-24	\N		\N		15	3	2		2645	\N	\N
3129		\N	\N	1642	1	2017-05-24	\N		\N		15	3	2		2646	\N	\N
3130		\N	\N	618	1	2017-06-05	\N		\N		4	3	2		2647	\N	\N
3131		\N	\N	327	1	2017-05-18	\N		\N		7	3	2		2648	\N	\N
3132		\N	\N	591	1	2017-05-18	\N		\N		7	3	2		2649	\N	\N
3133		\N	\N	988	1	2017-05-18	\N		\N		20	3	2		2650	\N	\N
3134		\N	\N	412	1	2017-05-18	\N		\N		15	3	2		2651	\N	\N
3135		\N	\N	451	1	2017-05-18	\N		\N		15	3	2		2652	\N	\N
3136		\N	\N	406	1	2017-05-18	\N		\N		15	3	2		2653	\N	\N
3137		\N	\N	691	1	2017-05-18	\N		\N		22	3	2		2654	\N	\N
3138		\N	\N	689	1	2017-05-18	\N		\N		22	3	2		2655	\N	\N
3139		\N	\N	617	1	2017-05-18	\N		\N		23	3	2		2656	\N	\N
3140		\N	\N	1653	1	2017-05-18	\N		\N		23	3	2		2657	\N	\N
3141		\N	\N	385	1	2017-05-18	\N		\N		20	3	2		2658	\N	\N
3142		\N	\N	1660	1	2017-05-18	\N		\N		20	3	2		2659	\N	\N
3143		\N	\N	1636	1	2017-05-18	\N		\N		15	3	2		2660	\N	\N
3144		\N	\N	690	1	2017-05-18	\N		\N		22	3	2		2661	\N	\N
3145		\N	\N	1645	1	2017-05-18	\N		\N		15	3	2		2662	\N	\N
3146		\N	\N	1334	1	2017-07-11	\N		\N		16	3	2		2663	\N	\N
3147		\N	\N	1341	1	2017-07-19	2017-11-07		\N		16	3	2		2664	\N	\N
3148		\N	\N	1347	1	2017-06-14	\N		\N		18	3	2		2665	\N	\N
3149		\N	\N	1359	1	2017-07-20	\N		\N		16	3	2		2666	\N	\N
3150		\N	\N	505	1	2017-07-07	\N		\N		16	3	2		2667	\N	\N
3151		\N	\N	1214	1	2017-07-20	2017-10-11		\N		15	3	2		2668	\N	\N
3152		\N	1214	1664	1	2017-10-11	2017-11-06		\N		25	3	2		2668	\N	\N
3153		\N	\N	1271	1	2017-07-21	\N		\N		15	3	2		2669	\N	\N
3154		\N	\N	483	1	2017-07-19	\N		\N		20	3	2		2670	\N	\N
3155		\N	\N	1602	1	2017-07-28	\N		\N		23	3	2		2671	\N	\N
3156		\N	\N	578	1	2017-07-18	\N		\N		23	3	2		2672	\N	\N
3157		\N	\N	579	1	2017-07-18	\N		\N		23	3	2		2673	\N	\N
3158		\N	\N	589	1	2017-07-20	\N		\N		23	3	2		2674	\N	\N
3159		\N	\N	596	1	2017-07-21	\N		\N		21	3	2		2675	\N	\N
3160		\N	\N	1336	1	2017-07-14	\N		\N		16	3	2		2676	\N	\N
3161		\N	\N	549	1	2017-07-12	\N		\N		19	3	2		2677	\N	\N
3162		\N	\N	723	1	2017-07-19	\N		\N		8	3	2		2678	\N	\N
3163		\N	\N	437	1	2017-07-12	\N		\N		15	3	2		2679	\N	\N
3164		\N	\N	893	1	2017-07-13	\N		\N		7	3	2		2680	\N	\N
3165		\N	\N	896	1	2017-07-20	\N		\N		7	3	2		2681	\N	\N
3166		\N	\N	1426	1	2017-07-12	\N		\N		23	3	2		2682	\N	\N
3167		\N	\N	682	1	2017-07-13	2017-12-21		\N		22	3	2		2683	\N	\N
3168		\N	\N	1357	1	2017-07-20	\N		\N		16	3	2		2684	\N	\N
3169		\N	\N	895	1	2017-07-20	\N		\N		7	3	2		2685	\N	\N
3170		\N	\N	900	1	2017-07-19	\N		\N		7	3	2		2686	\N	\N
3171		\N	\N	481	1	2017-07-05	\N		\N		9	3	2		2687	\N	\N
3172		\N	\N	492	1	2017-07-11	2017-10-13		\N		9	3	2		2688	\N	\N
3173		\N	492	1664	2	2017-10-13	\N		\N		9	3	2		2688	\N	\N
3174		\N	1664	492	1	2017-10-13	2017-11-29		\N		9	3	2		346	\N	\N
3175		\N	\N	782	1	2017-05-18	\N		\N		24	3	2		2689	\N	\N
3176		\N	\N	781	1	2017-07-12	\N		\N		24	3	2		2690	\N	\N
3177		\N	\N	760	1	2017-07-21	\N		\N		24	3	2		2691	\N	\N
3178		\N	\N	313	1	2017-07-20	\N		\N		24	3	2		2692	\N	\N
3179		\N	\N	787	1	2017-07-15	\N		\N		24	3	2		2693	\N	\N
3180		\N	\N	786	1	2017-07-20	\N		\N		24	3	2		2694	\N	\N
3181		\N	908	1664	2	2017-10-11	\N		\N		7	3	2		2317	\N	\N
3182		\N	\N	1634	1	2017-07-20	\N		\N		15	3	2		2695	\N	\N
3183		\N	\N	1635	1	2017-07-07	\N		\N		15	3	2		2696	\N	\N
3184		\N	\N	1631	1	2017-07-07	\N		\N		15	3	2		2697	\N	\N
3185		\N	\N	1301	1	2017-07-14	\N		\N		20	3	2		2698	\N	\N
3186		\N	\N	1301	1	2017-07-20	\N		\N		20	3	2		2699	\N	\N
3187		\N	\N	1630	1	2017-07-12	\N		\N		15	3	2		2700	\N	\N
3188		\N	\N	1302	1	2017-07-13	\N		\N		20	3	2		2701	\N	\N
3189		\N	\N	1302	1	2017-07-13	\N		\N		20	3	2		2702	\N	\N
3190		\N	\N	1629	1	2017-07-14	\N		\N		15	3	2		2703	\N	\N
3191		\N	\N	1305	1	2017-07-13	\N		\N		20	3	2		2704	\N	\N
3192		\N	\N	1306	1	2017-07-12	\N		\N		20	3	2		2705	\N	\N
3193		\N	\N	670	1	2017-07-12	\N		\N		15	3	2		2706	\N	\N
3194		\N	\N	1505	1	2017-07-14	\N		\N		9	3	2		2707	\N	\N
3195		\N	\N	1309	1	2017-06-20	\N		\N		20	3	2		2708	\N	\N
3196		\N	\N	1633	1	2017-07-06	\N		\N		15	3	2		2709	\N	\N
3197		\N	\N	1633	1	2017-07-20	\N		\N		15	3	2		2710	\N	\N
3198		\N	\N	1527	1	2017-07-19	\N		\N		9	3	2		2711	\N	\N
3199		\N	\N	1304	1	2017-06-14	\N		\N		20	3	2		2712	\N	\N
3200		\N	\N	1312	1	2017-07-20	\N		\N		20	3	2		2713	\N	\N
3201		\N	\N	677	1	2017-07-19	\N		\N		15	3	2		2714	\N	\N
3202		\N	\N	1042	1	2017-06-27	\N		\N		9	3	2		2715	\N	\N
3203		\N	1664	255	1	2017-10-16	\N		\N		12	3	2		485	\N	\N
3204		\N	1664	255	1	2017-10-16	\N		\N		12	3	2		358	\N	\N
3205		\N	\N	905	1	2017-07-12	\N		\N		7	3	2		2716	\N	\N
3206		\N	\N	914	1	2017-07-13	\N		\N		12	3	2		2717	\N	\N
3207		\N	\N	913	1	2017-06-20	\N		\N		7	3	2		2718	\N	\N
3208		\N	\N	327	1	2017-07-20	\N		\N		7	3	2		2719	\N	\N
3209		\N	\N	328	1	2017-06-12	\N		\N		7	3	2		2720	\N	\N
3210		\N	\N	328	1	2017-06-06	\N		\N		7	3	2		2721	\N	\N
3211		\N	\N	1227	1	2017-07-06	\N		\N		25	3	2		2722	\N	\N
3212		\N	\N	1305	1	2017-06-13	2017-10-16		\N		20	3	2		2723	\N	\N
3213		\N	1305	1664	4	2017-10-16	\N		\N		20	3	2	Դուրս գրման ա/թ 21/12/2017թ	2723	\N	jass.manasyan@gmail.com
3214		\N	\N	1305	1	2017-06-13	2017-10-16		\N		20	3	2		2724	\N	\N
3215		\N	1305	1664	4	2017-10-16	\N		\N		20	3	2	դուրս գրման ամսաթիվ 21/12/2017	2724	\N	jass.manasyan@gmail.com
3216		\N	\N	1309	1	2017-07-12	2017-10-16		\N		20	3	2		2725	\N	\N
3217		\N	1309	1708	1	2017-10-16	\N		\N		20	3	2		2725	\N	vahram@hf.am
3218		\N	\N	1309	1	2017-07-12	2017-10-16		\N		20	3	2		2726	\N	\N
3395		\N	1664	736	1	2017-10-26	\N		\N		12	3	2		471	\N	\N
3219		\N	1309	1664	4	2017-10-16	\N		\N		20	3	2	դուրս գրման ամսաթիվ 21/12/2017	2726	\N	jass.manasyan@gmail.com
3220		\N	1664	674	1	2017-10-17	\N		\N		15	3	2		20	\N	\N
3221		\N	581	1664	4	2017-10-17	\N		\N		21	3	2	Դուրս գրման ա/թ 21/12/2017թ	530	\N	vahram@hf.am
3222		\N	314	1664	1	2017-10-17	2017-10-30		\N		17	3	2		2139	\N	\N
3223		\N	776	1664	1	2017-10-17	2017-11-03		\N		17	3	2		2608	\N	\N
3224		\N	767	1664	1	2017-10-17	2017-11-03		\N		17	3	2		2044	\N	\N
3225		\N	\N	666	1	2017-07-19	\N		\N		15	3	2		2727	\N	\N
3226		\N	\N	480	1	2017-07-11	\N		\N		9	3	2		2728	\N	\N
3227		\N	\N	676	1	2017-07-11	\N		\N		15	3	2		2729	\N	\N
3228		\N	1664	1459	1	2017-10-18	\N		\N		23	3	2		332	\N	\N
3230		\N	\N	1174	1	2017-07-05	\N		\N		9	3	2		2730	\N	\N
3231		\N	\N	667	1	2017-07-19	\N		\N		15	3	2		2731	\N	\N
3232		\N	\N	475	1	2017-07-18	\N		\N		9	3	2		2732	\N	\N
3233		\N	\N	479	1	2017-06-13	\N		\N		9	3	2		2733	\N	\N
3234		\N	\N	668	1	2017-07-11	\N		\N		15	3	2		2734	\N	\N
3236		\N	\N	455	1	2017-07-11	\N		\N		20	3	2		2735	\N	\N
3237		\N	\N	477	1	2017-07-11	\N		\N		9	3	2		2736	\N	\N
3238		\N	\N	476	1	2017-07-12	\N		\N		9	3	2		2737	\N	\N
3239		\N	\N	459	1	2017-06-07	\N		\N		20	3	2		2738	\N	\N
3240		\N	\N	457	1	2017-07-12	\N		\N		20	3	2		2739	\N	\N
3241		\N	\N	678	1	2017-06-14	\N		\N		15	3	2		2740	\N	\N
3242		\N	\N	1664	4	2017-07-17	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	548	\N	vahram@hf.am
3243		\N	1664	581	1	2017-10-18	\N		\N		23	3	2		547	\N	\N
3244		\N	\N	489	1	2017-07-13	2018-01-24		\N		9	3	2		2741	\N	\N
3245		\N	\N	1579	1	2017-07-13	\N		\N		20	3	2		2742	\N	\N
3246		\N	1224	1664	4	2017-10-18	\N		\N		25	3	2	դուրս գրման ամսաթիվ 21/12/2017	2027	\N	jass.manasyan@gmail.com
3248		\N	\N	1224	1	2017-07-06	2017-10-18		\N		15	3	2		2743	\N	\N
3249		\N	1224	1664	4	2017-10-18	\N		\N		25	3	2	Դուրս գրման ա/թ 21/12/2017թ	2743	\N	vahram@hf.am
3250		\N	\N	1224	1	2017-06-14	2017-10-18		\N		15	3	2		2744	\N	\N
3251		\N	1224	1664	1	2017-10-18	2017-11-03		\N		25	3	2		2744	\N	\N
3252		\N	1274	1224	1	2017-10-18	\N		\N		25	3	2		2204	\N	\N
3253		\N	\N	1579	1	2017-07-11	\N		\N		20	3	2		2745	\N	\N
3254		\N	\N	455	1	2017-06-13	\N		\N		20	3	2		2746	\N	\N
3255		\N	\N	1325	1	2017-07-12	\N		\N		9	3	2		2747	\N	\N
3256		\N	\N	1215	1	2017-07-13	\N		\N		15	3	2		2748	\N	\N
3257		\N	1664	1322	1	2017-10-19	\N		\N		9	3	2		353	\N	\N
3258		\N	\N	1659	1	2017-07-12	\N		\N		15	3	2		2749	\N	\N
3259		\N	\N	669	1	2017-07-04	\N		\N		15	3	2		2750	\N	\N
3260		\N	\N	1326	1	2017-07-13	\N		\N		9	3	2		2751	\N	\N
3261		\N	\N	1216	1	2017-07-12	\N		\N		25	3	2		2752	\N	\N
3262		\N	\N	1632	1	2017-07-12	\N		\N		15	3	2		2753	\N	\N
3263		\N	\N	1590	1	2017-07-13	\N		\N		9	3	2		2754	\N	\N
3264		\N	\N	466	1	2017-06-14	\N		\N		9	3	2		2755	\N	\N
3265		\N	\N	1586	1	2017-07-04	\N		\N		9	3	2		2756	\N	\N
3266		\N	\N	672	1	2017-07-05	\N		\N		15	3	2		2757	\N	\N
3267		\N	\N	1219	1	2017-07-12	\N		\N		25	3	2		2758	\N	\N
3268		\N	1219	1664	1	2017-10-19	2017-11-06		\N		25	3	2		2250	\N	\N
3269		\N	\N	1571	1	2017-07-12	\N		\N		15	3	2		2759	\N	\N
3270		\N	1664	1049	1	2017-10-27	\N		\N		9	3	2		359	\N	\N
3271		\N	\N	673	1	2017-07-12	\N		\N		15	3	2		2760	\N	\N
3272		\N	1664	1187	1	2017-10-20	\N		\N		6	3	2		385	\N	\N
3273		\N	\N	675	1	2017-07-12	\N		\N		15	3	2		2761	\N	\N
3274		\N	\N	458	1	2017-07-12	\N		\N		20	3	2		2762	\N	\N
3275		\N	\N	1300	1	2017-07-18	\N		\N		20	3	2		2763	\N	\N
3276		\N	\N	1664	1	2017-06-13	2017-10-23		\N		16	3	2		2764	\N	\N
3277		\N	\N	1313	1	2017-07-13	\N		\N		20	3	2		2765	\N	\N
3278		\N	1222	1664	1	2017-10-20	2017-11-06		\N		25	3	2		2251	\N	\N
3279		\N	\N	1222	1	2017-07-13	\N		\N		15	3	2		2766	\N	\N
3280		\N	\N	1664	1	2017-07-13	2017-10-23		\N		16	3	2		2767	\N	\N
3281		\N	\N	738	1	2017-07-20	2017-10-20		\N		12	3	2		2768	\N	\N
3282		\N	738	1664	4	2017-10-20	\N		\N		12	3	2	Դուրս գրման ա/թ 21/12/2017թ	2768	\N	vahram@hf.am
3283		\N	\N	738	1	2017-07-12	2017-10-20		\N		12	3	2		2769	\N	\N
3284		\N	738	1664	4	2017-10-20	\N		\N		12	3	2	դուրս գրման ամսաթիվ 21/12/2017	2769	\N	jass.manasyan@gmail.com
3285		\N	\N	735	1	2017-06-07	2017-10-20		\N		12	3	2		2770	\N	\N
3286		\N	735	1664	4	2017-10-20	\N		\N		12	3	2	Դուրս գրման ա/թ 21/12/2017թ	2770	\N	vahram@hf.am
3287		\N	\N	735	1	2017-07-13	2017-10-20		\N		12	3	2		2771	\N	\N
3288		\N	735	1664	4	2017-10-20	\N		\N		12	3	2	դուրս գրման ամսաթիվ 21/12/2017	2771	\N	jass.manasyan@gmail.com
3289		\N	\N	740	1	2017-07-14	2017-10-20		\N		12	3	2		2772	\N	\N
3290		\N	740	1664	4	2017-10-20	\N		\N		12	3	2	Դուրս գրման ա/թ 21/12/2017թ	2772	\N	vahram@hf.am
3291		\N	\N	740	1	2017-06-14	2017-10-20		\N		12	3	2		2773	\N	\N
3292		\N	740	1664	4	2017-10-20	\N		\N		12	3	2	դուրս գրման ամսաթիվ 21/12/2017	2773	\N	jass.manasyan@gmail.com
3293		\N	\N	741	1	2017-05-17	2017-10-20		\N		12	3	2		2774	\N	\N
3294		\N	741	1664	4	2017-10-20	\N		\N		12	3	2	Դուրս գրման ա/թ 21/12/2017թ	2774	\N	vahram@hf.am
3295		\N	\N	741	1	2017-07-12	2017-10-20		\N		12	3	2		2775	\N	\N
3296		\N	741	1664	4	2017-10-20	\N		\N		12	3	2	դուրս գրման ամսաթիվ 21/12/2017	2775	\N	jass.manasyan@gmail.com
3297		\N	\N	744	1	2017-07-13	2017-10-20		\N		12	3	2		2776	\N	\N
3298		\N	744	1664	4	2017-10-20	\N		\N		12	3	2	Դուրս գրման ա/թ 21/12/2017թ	2776	\N	vahram@hf.am
3299		\N	\N	744	1	2017-06-16	2017-10-20		\N		12	3	2		2777	\N	\N
3300		\N	744	1664	4	2017-10-20	\N		\N		12	3	2	դուրս գրման ամսաթիվ 21/12/2017	2777	\N	jass.manasyan@gmail.com
3301		\N	\N	1270	1	2017-06-15	\N		\N		25	3	2		2778	\N	\N
3304		\N	\N	747	1	2017-07-12	2017-10-20		\N		12	3	2		2780	\N	\N
3305		\N	747	1664	4	2017-10-20	\N		\N		12	3	2	Դուրս գրման ա/թ 21/12/2017թ	2780	\N	vahram@hf.am
3306		\N	\N	747	1	2017-06-13	2017-10-20		\N		12	3	2		2781	\N	\N
3396		\N	1664	736	1	2017-10-26	\N		\N		12	3	2		2794	\N	hasmik@hf.am
3307		\N	747	1664	4	2017-10-20	\N		\N		12	3	2	դուրս գրման ամսաթիվ 21/12/2017	2781	\N	jass.manasyan@gmail.com
3308		\N	\N	733	1	2017-07-13	2017-10-20		\N		12	3	2		2782	\N	\N
3309		\N	733	1664	4	2017-10-20	\N		\N		12	3	2	Դուրս գրման ա/թ 21/12/2017թ	2782	\N	vahram@hf.am
3310		\N	\N	733	1	2017-07-14	2017-10-20		\N		12	3	2		2783	\N	\N
3311		\N	733	1664	4	2017-10-20	\N		\N		12	3	2	դուրս գրման ամսաթիվ 21/12/2017	2783	\N	jass.manasyan@gmail.com
3312		\N	\N	57	1	2017-07-20	2017-10-20		\N		12	3	2		2784	\N	\N
3313		\N	57	1664	4	2017-10-20	\N		\N		12	3	2	Դուրս գրման ա/թ 21/12/2017թ	2784	\N	vahram@hf.am
3314		\N	\N	256	1	2017-06-08	2017-10-20		\N		12	3	2		2785	\N	\N
3315		\N	256	1664	4	2017-10-20	\N		\N		12	3	2	Դուրս գրման ա/թ 21/12/2017թ	2785	\N	vahram@hf.am
3316		\N	\N	742	1	2017-07-10	2017-10-20		\N		12	3	2		2786	\N	\N
3317		\N	742	1664	4	2017-10-20	\N		\N		12	3	2	Դուրս գրման ա/թ 21/12/2017թ	2786	\N	vahram@hf.am
3318		\N	\N	742	1	2017-07-14	2017-10-20		\N		12	3	2		2787	\N	\N
3320		\N	742	1664	4	2017-10-20	\N		\N		12	3	2	դուրս գրման ամսաթիվ 21/12/2017	2787	\N	jass.manasyan@gmail.com
3321		\N	\N	746	1	2017-07-12	2017-10-20		\N		12	3	2		2788	\N	\N
3322		\N	746	1664	4	2017-10-20	\N		\N		12	3	2	Դուրս գրման ա/թ 21/12/2017թ	2788	\N	vahram@hf.am
3323		\N	\N	746	1	2017-05-20	2017-10-20		\N		12	3	2		2789	\N	\N
3324		\N	746	1664	1	2017-10-20	2017-11-06		\N		12	3	2		2789	\N	\N
3325		\N	\N	753	1	2017-07-14	2017-10-20		\N		12	3	2		2790	\N	\N
3326		\N	753	1664	4	2017-10-20	\N		\N		12	3	2	Դուրս գրման ա/թ 21/12/2017թ	2790	\N	vahram@hf.am
3327		\N	\N	305	1	2017-06-13	2017-10-20		\N		12	3	2		2791	\N	\N
3328		\N	305	1664	4	2017-10-20	\N		\N		12	3	2	Դուրս գրման ա/թ 21/12/2017թ	2791	\N	vahram@hf.am
3329		\N	\N	305	1	2017-07-19	2017-10-20		\N		12	3	2		2792	\N	\N
3330		\N	305	1664	1	2017-10-20	2017-10-26		\N		12	3	2		2792	\N	\N
3331		\N	\N	254	1	2017-07-12	2017-10-20		\N		12	3	2		2793	\N	\N
3332		\N	254	1664	4	2017-10-20	\N		\N		12	3	2	Դուրս գրման ա/թ 21/12/2017թ	2793	\N	vahram@hf.am
3333		\N	\N	254	1	2017-06-23	2017-10-20		\N		12	3	2		2794	\N	\N
3334		\N	254	1664	1	2017-10-20	2017-10-26		\N		12	3	2		2794	\N	\N
3335		\N	\N	39	1	2017-07-20	2017-10-20		\N		12	3	2		2795	\N	\N
3336		\N	39	1664	4	2017-10-20	\N		\N		12	3	2	Դուրս գրման ա/թ 21/12/2017	2795	\N	vahram@hf.am
3337		\N	1664	560	1	2017-10-23	2018-04-18		\N		16	3	2		2767	\N	\N
3338		\N	1664	570	1	2017-10-23	2018-05-08		\N		16	3	2		2764	\N	\N
3339		\N	1664	108	1	2017-10-23	2018-04-26		\N		16	3	2		537	\N	\N
3340		\N	1664	606	1	2017-10-23	\N		\N		23	3	2		1411	\N	\N
3341		\N	1664	607	1	2017-10-23	\N		\N		23	3	2		492	\N	\N
3342		\N	1664	130	1	2017-10-23	\N		\N		23	3	2		24	\N	\N
3343		\N	1664	609	1	2017-10-23	\N		\N		23	3	2		25	\N	\N
3344		\N	1664	610	1	2017-10-23	\N		\N		23	3	2		126	\N	\N
3345		\N	1664	1695	1	2017-10-23	\N		\N		23	3	2		125	\N	\N
3346		\N	1664	1695	1	2017-10-23	\N		\N		23	3	2		252	\N	\N
3347		\N	1664	1695	1	2017-10-23	\N		\N		23	3	2		148	\N	\N
3348		\N	1664	603	1	2017-10-23	\N		\N		23	3	2		251	\N	\N
3349		\N	1664	619	1	2017-10-23	\N		\N		23	3	2		31	\N	\N
3350		\N	1664	590	1	2017-10-23	\N		\N		23	3	2		28	\N	\N
3351		\N	1664	614	1	2017-10-23	\N		\N		23	3	2		98	\N	\N
3352		\N	1664	613	1	2017-10-23	2018-03-30		\N		23	3	2		26	\N	\N
3353		\N	1664	119	1	2017-10-23	\N		\N		23	3	2		209	\N	\N
3354		\N	1664	119	1	2017-10-23	\N		\N		23	3	2		1588	\N	\N
3355		\N	1664	119	1	2017-10-23	2017-11-27		\N		23	3	2		150	\N	\N
3356		\N	1664	118	1	2017-10-23	\N		\N		23	3	2		208	\N	\N
3357		\N	1664	118	1	2017-10-23	\N		\N		23	3	2		636	\N	\N
3358		\N	\N	1358	1	2017-07-13	\N		\N		16	3	2		2796	\N	\N
3359		\N	\N	1358	1	2017-07-20	\N		\N		16	3	2		2797	\N	\N
3360		\N	\N	581	1	2017-07-12	\N		\N		21	3	2		2798	\N	\N
3361		\N	\N	1459	1	2017-07-13	\N		\N		21	3	2		2799	\N	\N
3362		\N	\N	1605	1	2017-06-09	\N		\N		21	3	2		2800	\N	\N
3363		\N	\N	473	1	2017-06-09	\N		\N		9	3	2		2801	\N	\N
3364		\N	\N	1286	1	2017-06-08	\N		\N		9	3	2		2802	\N	\N
3365		\N	\N	947	1	2017-07-06	\N		\N		8	3	2		2803	\N	\N
3366		\N	\N	951	1	2017-07-13	\N		\N		8	3	2		2804	\N	\N
3367		\N	\N	955	1	2017-06-15	\N		\N		8	3	2		2805	\N	\N
3368		\N	\N	958	1	2017-07-07	\N		\N		8	3	2		2806	\N	\N
3369		\N	\N	933	1	2017-07-14	\N		\N		8	3	2		2807	\N	\N
3370		\N	\N	1271	1	2017-07-14	\N		\N		25	3	2		2808	\N	\N
3371		\N	\N	445	1	2017-07-07	\N		\N		25	3	2		2809	\N	\N
3372		\N	\N	1271	1	2017-07-05	\N		\N		15	3	2		2810	\N	\N
3373		\N	1224	434	1	2017-10-24	\N		\N		25	3	2		487	\N	\N
3374		\N	\N	1651	1	2017-07-06	\N		\N		23	3	2		2811	\N	\N
3375		\N	\N	954	1	2017-08-15	\N		\N		8	3	2		2812	\N	\N
3376		\N	\N	404	1	2017-07-06	\N		\N		15	3	2		2813	\N	\N
3377		\N	\N	423	1	2017-07-05	\N		\N		15	3	2		2814	\N	\N
3378		\N	\N	420	1	2017-06-15	\N		\N		15	3	2		2815	\N	\N
3379		\N	\N	420	1	2017-07-06	\N		\N		15	3	2		2816	\N	\N
3380		\N	\N	1203	1	2017-07-07	\N		\N		15	3	2		2817	\N	\N
3381		\N	\N	1195	1	2017-07-06	\N		\N		15	3	2		2818	\N	\N
3382		\N	\N	289	1	2017-07-06	\N		\N		12	3	2		2819	\N	\N
3383		\N	\N	1052	1	2017-07-05	\N		\N		9	3	2		2820	\N	\N
3384		\N	\N	1329	1	2017-07-06	\N		\N		16	3	2		2821	\N	\N
3385		\N	\N	1329	1	2017-07-06	\N		\N		16	3	2		2822	\N	\N
3386		\N	\N	1336	1	2017-06-08	\N		\N		16	3	2		2823	\N	\N
3387		\N	\N	419	1	2017-07-13	\N		\N		15	3	2		2824	\N	\N
3389		\N	\N	576	1	2017-06-20	\N		\N		23	3	2		2825	\N	\N
3390		\N	\N	1598	1	2017-06-14	\N		\N		23	3	2		2826	\N	\N
3391		\N	434	1707	1	2017-10-24	\N		\N		25	3	2	գողացված է, տնօրենը խոստացել է գտնել	1931	\N	vahram@hf.am
3392		\N	1664	751	1	2017-10-26	\N		\N		12	3	2		14	\N	\N
3393		\N	1664	732	1	2017-10-26	\N		\N		12	3	2		17	\N	\N
3394		\N	1664	55	1	2017-10-26	\N		\N		12	3	2		15	\N	\N
3397		\N	1664	730	1	2017-10-26	2018-03-19		\N		12	3	2		478	\N	\N
3398		\N	1664	730	1	2017-10-26	\N		\N		12	3	2		2792	\N	\N
3399		\N	\N	750	1	2017-07-06	\N		\N		12	3	2		2827	\N	\N
3400		\N	\N	749	1	2017-07-06	\N		\N		12	3	2		2828	\N	\N
3401		\N	\N	405	1	2017-07-07	\N		\N		15	3	2		2829	\N	\N
3402		\N	\N	409	1	2017-07-12	\N		\N		15	3	2		2830	\N	\N
3403		\N	\N	805	1	2017-07-06	\N		\N		24	3	2		2831	\N	\N
3404		\N	\N	815	1	2017-06-08	\N		\N		17	3	2		2832	\N	\N
3405		\N	\N	801	1	2017-07-05	\N		\N		17	3	2		2833	\N	\N
3406		\N	\N	788	1	2017-06-08	\N		\N		17	3	2		2834	\N	\N
3407		\N	\N	789	1	2017-06-07	\N		\N		17	3	2		2835	\N	\N
3408		\N	\N	315	1	2017-07-07	\N		\N		17	3	2		2836	\N	\N
3409		\N	\N	817	1	2017-07-06	\N		\N		17	3	2		2837	\N	\N
3410		\N	\N	821	1	2017-06-15	\N		\N		17	3	2		2838	\N	\N
3411		\N	1664	80	1	2017-10-27	\N		\N		7	3	2		151	\N	\N
3412		\N	\N	897	1	2017-06-07	2017-10-27		\N		7	3	2		2839	\N	\N
3413		\N	897	1664	1	2017-10-27	2017-11-06		\N		7	3	2		2839	\N	\N
3414		\N	\N	885	1	2017-06-07	2017-10-27		\N		7	3	2		2840	\N	\N
3415		\N	885	1664	1	2017-10-27	2017-11-06		\N		7	3	2		2840	\N	\N
3416		\N	\N	946	1	2017-07-20	\N		\N		8	3	2		2841	\N	\N
3417		\N	\N	1580	1	2017-07-13	\N		\N		20	3	2		2842	\N	\N
3418		\N	\N	705	1	2017-10-27	\N		\N		12	3	2		2843	\N	\N
3419		\N	\N	707	1	2017-07-06	\N		\N		12	3	2		2844	\N	\N
3420		\N	\N	710	1	2017-07-11	\N		\N		12	3	2		2845	\N	\N
3421		\N	\N	293	1	2017-06-13	\N		\N		12	3	2		2846	\N	\N
3422		\N	220	1664	4	2017-10-27	\N		\N		17	3	2	Դուրս գրման ա/թ 21/12/2017թ	1102	\N	vahram@hf.am
3423		\N	\N	220	1	2017-06-15	2017-10-27		\N		24	3	2		2847	\N	\N
3424		\N	220	1664	4	2017-10-27	\N		\N		24	3	2	Դուրս գրման ա/թ 16/01/2018	2847	\N	jass.manasyan@gmail.com
3425		\N	305	61	1	2017-10-24	\N		\N		12	3	2		1825	\N	jass.manasyan@gmail.com
3426		\N	1217	1664	1	2017-10-11	2017-11-06		\N		25	3	2		2255	\N	\N
3427		\N	1272	1664	4	2017-10-11	\N		\N		25	3	2	Դուրս գրման ա/թ 21/12/2017թ	2253	\N	vahram@hf.am
3428		\N	1268	1664	1	2017-10-11	\N		\N		25	3	2		2252	\N	\N
3429		\N	\N	1200	1	2017-07-07	\N		\N		15	3	2		2848	\N	\N
3430		\N	\N	1201	1	2017-07-08	\N		\N		15	3	2		2849	\N	\N
3431		\N	\N	1199	1	2017-06-08	\N		\N		15	3	2		2850	\N	\N
3432		\N	\N	1194	1	2017-07-06	\N		\N		15	3	2		2851	\N	\N
3433		\N	\N	1198	1	2017-06-29	\N		\N		15	3	2		2852	\N	\N
3434		\N	\N	1535	1	2017-07-13	\N		\N		9	3	2		2853	\N	\N
3435		\N	\N	1161	1	2017-07-06	\N		\N		9	3	2		2854	\N	\N
3436		\N	\N	1099	1	2017-07-13	\N		\N		9	3	2		2855	\N	\N
3438		\N	\N	1504	1	2017-06-14	\N		\N		9	3	2		2857	\N	\N
3439		\N	\N	819	1	2017-07-13	\N		\N		17	3	2		2858	\N	\N
3440		\N	\N	811	1	2017-07-05	\N		\N		17	3	2		2859	\N	\N
3441		\N	\N	802	1	2017-06-29	\N		\N		17	3	2		2860	\N	\N
3442		\N	\N	822	1	2017-07-13	\N		\N		17	3	2		2861	\N	\N
3443		\N	\N	1640	1	2017-07-14	\N		\N		17	3	2		2862	\N	\N
3444		\N	\N	318	1	2017-07-13	\N		\N		17	3	2		2863	\N	\N
3445		\N	\N	767	1	2017-07-13	\N		\N		17	3	2		2864	\N	\N
3446		\N	\N	314	1	2017-10-30	\N		\N		17	3	2		2865	\N	\N
3447		\N	\N	776	1	2017-07-14	\N		\N		17	3	2		2866	\N	\N
3448		\N	922	1664	2	2017-10-30	\N		\N		8	3	2		1983	\N	\N
3449		\N	1664	922	1	2017-10-30	\N		\N		8	3	2		2139	\N	\N
3450		\N	\N	1221	1	2017-07-13	\N		\N		25	3	2		2867	\N	\N
3451		\N	\N	1275	1	2017-07-12	\N		\N		25	3	2		2868	\N	\N
3452		\N	\N	1272	1	2017-07-12	\N		\N		25	3	2		2869	\N	\N
3453		\N	\N	1600	1	2017-07-14	\N		\N		23	3	2		2870	\N	\N
3454		\N	\N	1425	1	2017-07-05	\N		\N		23	3	2		2871	\N	\N
3455		\N	\N	588	1	2017-07-13	\N		\N		23	3	2		2872	\N	\N
3456		\N	\N	587	1	2017-07-21	\N		\N		23	3	2		2873	\N	\N
3457		\N	\N	1601	1	2017-07-21	\N		\N		23	3	2		2874	\N	\N
3458		\N	\N	589	1	2017-07-20	\N		\N		23	3	2		2875	\N	\N
3459		\N	\N	1427	1	2017-07-19	\N		\N		23	3	2		2876	\N	\N
3460		\N	\N	1418	1	2017-07-13	\N		\N		23	3	2		2877	\N	\N
3461		\N	\N	1603	1	2017-07-13	\N		\N		23	3	2		2878	\N	\N
3462		\N	\N	1419	1	2017-07-13	\N		\N		23	3	2		2879	\N	\N
3464		\N	\N	1422	1	2017-07-14	\N		\N		23	3	2		2881	\N	\N
3465		\N	\N	1423	1	2017-07-12	\N		\N		23	3	2		2882	\N	\N
3466		\N	\N	1421	1	2017-07-12	\N		\N		23	3	2		2883	\N	\N
3467		\N	\N	1417	1	2017-06-06	\N		\N		23	3	2		2884	\N	\N
3468		\N	\N	1426	1	2017-07-12	\N		\N		23	3	2		2885	\N	\N
3469		\N	\N	580	1	2017-07-12	\N		\N		23	3	2		2886	\N	\N
3470		\N	\N	603	1	2017-07-12	\N		\N		23	3	2		2887	\N	\N
3471		\N	\N	619	1	2017-07-13	\N		\N		23	3	2		2888	\N	\N
3472		\N	\N	1338	1	2017-07-12	\N		\N		16	3	2		2889	\N	\N
3473		\N	1664	94	1	2017-10-31	\N		\N		25	3	2		211	\N	\N
3474		\N	94	1664	2	2017-10-31	\N		\N		25	3	2		1838	\N	\N
3475		\N	1664	1701	1	2017-10-31	\N		\N		17	3	2		529	\N	\N
3476		\N	\N	761	1	2017-06-20	2017-10-04		\N		17	3	2		2890	\N	\N
3477		\N	761	1664	1	2017-10-04	2018-04-06		\N		17	3	2		2890	\N	\N
3479		\N	1701	1664	4	2017-10-31	\N		\N		17	3	2	Դուրս գրման ա/թ 21/12/2017թ	562	\N	vahram@hf.am
3480		\N	1664	1665	1	2017-10-27	\N		\N		6	3	2		773	\N	\N
3481		\N	\N	885	1	2017-06-07	2017-10-27		\N		7	3	2		2891	\N	\N
3482		\N	885	1664	1	2017-10-27	2017-11-06		\N		7	3	2		2891	\N	\N
3483		\N	143	137	1	2017-09-12	\N		\N		23	3	2		1554	\N	\N
3484		\N	\N	1268	1	2017-07-12	\N		\N		25	3	2		2892	\N	\N
3485		\N	\N	447	1	2017-08-23	2018-01-30		\N		25	3	2		2893	\N	\N
3486		\N	\N	414	1	2017-08-25	\N		\N		25	3	2		2894	\N	\N
3487		\N	\N	1578	1	2017-07-12	\N		\N		20	3	2		2895	\N	\N
3488		\N	\N	454	1	2017-08-24	\N		\N		20	3	2		2896	\N	\N
3489		\N	\N	456	1	2017-08-15	\N		\N		20	3	2		2897	\N	\N
3490		\N	448	449	1	2017-11-01	\N		\N		25	3	2		1487	\N	\N
3491		\N	448	1664	4	2017-11-01	\N		\N		25	3	2	դուրս գրման ամսաթիվ 21/12/2017	1488	\N	jass.manasyan@gmail.com
3492		\N	\N	422	1	2017-07-13	2018-04-19		\N		15	3	2		2898	\N	\N
3493		\N	\N	422	1	2017-07-12	\N		\N		15	3	2		2899	\N	\N
3494		\N	\N	422	1	2017-07-13	2018-04-19		\N		15	3	2		2900	\N	\N
3495		\N	\N	1227	1	2017-07-12	2017-11-01		\N		15	3	2		2901	\N	\N
3496		\N	1227	1664	4	2017-11-01	\N		\N		25	3	2	Դուրս գրման ա/թ 21/12/2017թ	2901	\N	vahram@hf.am
3497		\N	\N	1227	1	2017-08-15	\N		\N		15	3	2		2902	\N	\N
3499		\N	449	1664	4	2017-11-01	\N		\N		25	3	2	Դուրս գրման ա/թ 21/12/2017թ	2245	\N	vahram@hf.am
3500		\N	\N	1197	1	2017-07-19	\N		\N		15	3	2		2903	\N	\N
3501		\N	\N	671	1	2017-08-17	\N		\N		15	3	2		2904	\N	\N
3502		\N	\N	1628	1	2017-08-15	\N		\N		15	3	2		2905	\N	\N
3503		\N	\N	1196	1	2017-07-13	\N		\N		15	3	2		2906	\N	\N
3504		\N	\N	1196	1	2017-08-16	\N		\N		15	3	2		2907	\N	\N
3505		\N	\N	1335	1	2017-08-16	\N		\N		16	3	2		2908	\N	\N
3506		\N	\N	1346	1	2017-07-19	\N		\N		16	3	2		2909	\N	\N
3507		\N	\N	1337	1	2017-08-16	\N		\N		16	3	2		2910	\N	\N
3508		\N	\N	625	1	2017-08-23	\N		\N		16	3	2		2911	\N	\N
3509		\N	\N	583	1	2017-07-12	\N		\N		21	3	2		2912	\N	\N
3510		\N	\N	584	1	2017-08-16	\N		\N		21	3	2		2913	\N	\N
3511		\N	\N	585	1	2017-08-16	\N		\N		21	3	2		2914	\N	\N
3512		\N	\N	586	1	2017-08-17	\N		\N		21	3	2		2915	\N	\N
3513		\N	\N	1449	1	2017-08-16	\N		\N		21	3	2		2916	\N	\N
3514		\N	\N	1458	1	2017-08-15	\N		\N		21	3	2		2917	\N	\N
3515		\N	\N	573	1	2017-07-13	\N		\N		21	3	2		2918	\N	\N
3516		\N	\N	573	1	2017-07-13	\N		\N		21	3	2		2919	\N	\N
3517		\N	\N	575	1	2017-08-17	\N		\N		21	3	2		2920	\N	\N
3518		\N	\N	574	1	2017-08-16	\N		\N		21	3	2		2921	\N	\N
3519		\N	\N	1606	1	2017-04-13	\N		\N		21	3	2		2922	\N	\N
3520		\N	\N	1606	1	2017-08-18	\N		\N		21	3	2		2923	\N	\N
3521		\N	\N	1455	1	2017-08-24	\N		\N		21	3	2		2924	\N	\N
3522		\N	\N	1456	1	2017-07-14	2017-11-28		\N		21	3	2		2925	\N	\N
3523		\N	\N	1460	1	2017-07-13	\N		\N		21	3	2		2926	\N	\N
3524		\N	\N	1453	1	2017-07-19	\N		\N		21	3	2		2927	\N	\N
3525		\N	\N	1453	1	2017-07-18	\N		\N		21	3	2		2928	\N	\N
3526		\N	\N	597	1	2017-07-12	\N		\N		21	3	2		2929	\N	\N
3527		\N	\N	1451	1	2017-08-15	\N		\N		21	3	2		2930	\N	\N
3528		\N	\N	1451	1	2017-07-12	\N		\N		21	3	2		2931	\N	\N
3529		\N	\N	591	1	2017-07-12	2017-11-09		\N		21	3	2		2932	\N	\N
3530		\N	\N	591	1	2017-08-16	2017-11-09		\N		21	3	2		2933	\N	\N
3531		\N	\N	591	1	2017-06-07	\N		\N		21	3	2		2934	\N	\N
3532		\N	\N	418	1	2017-06-14	\N		\N		15	3	2		2935	\N	\N
3533		\N	\N	1650	1	2017-07-19	\N		\N		21	3	2		2936	\N	\N
3534		\N	\N	594	1	2017-07-12	\N		\N		21	3	2		2937	\N	\N
3535		\N	\N	1692	1	2017-07-19	\N		\N		21	3	2		2938	\N	\N
3537		\N	\N	1297	1	2017-07-13	\N		\N		9	3	2		2940	\N	\N
3538		\N	\N	1311	1	2017-06-14	\N		\N		20	3	2		2941	\N	\N
3539		\N	\N	932	1	2017-07-03	\N		\N		8	3	2		2942	\N	\N
3540		\N	\N	921	1	2017-09-11	\N		\N		8	3	2		2943	\N	\N
3541		\N	\N	917	1	2017-07-20	\N		\N		8	3	2		2944	\N	\N
3542		\N	\N	1095	1	2017-07-19	\N		\N		9	3	2		2945	\N	\N
3543		\N	\N	1081	1	2017-07-19	\N		\N		9	3	2		2946	\N	\N
3544		\N	\N	1506	1	2017-07-19	\N		\N		9	3	2		2947	\N	jass.manasyan@gmail.com
3545		\N	\N	1073	1	2017-07-19	\N		\N		9	3	2		2948	\N	\N
3546		\N	\N	1167	1	2017-07-12	\N		\N		9	3	2		2949	\N	\N
3547		\N	\N	1057	1	2017-07-06	\N		\N		9	3	2		2950	\N	\N
3548		\N	\N	1532	1	2017-08-16	\N		\N		9	3	2		2951	\N	\N
3549		\N	1664	1707	1	2017-11-03	2017-12-25		\N		25	3	2		2044	\N	\N
3550		\N	1664	1707	1	2017-11-03	2017-12-13		\N		25	3	2		2608	\N	\N
3551		\N	1664	1707	1	2017-11-03	2017-12-15		\N		25	3	2		459	\N	\N
3552		\N	1664	1707	1	2017-11-03	\N		\N		25	3	2		458	\N	\N
3553		\N	1664	1572	1	2017-11-10	\N		\N		25	3	2		376	\N	\N
3555		\N	1664	387	1	2017-11-06	\N		\N		25	3	2		384	\N	\N
3556		\N	1664	1263	1	2017-11-15	\N		\N		25	3	2		375	\N	\N
3557		\N	\N	967	1	2017-08-16	\N		\N		8	3	2		2952	\N	\N
3558		\N	\N	962	1	2017-08-09	\N		\N		8	3	2		2953	\N	\N
3559		\N	\N	956	1	2017-08-09	\N		\N		8	3	2		2954	\N	\N
3560		\N	\N	964	1	2017-09-13	\N		\N		8	3	2		2955	\N	\N
3561		\N	\N	927	1	2017-09-04	\N		\N		8	3	2		2956	\N	\N
3562		\N	\N	966	1	2017-09-12	\N		\N		8	3	2		2957	\N	\N
3563		\N	1664	1707	1	2017-11-03	\N		\N		25	3	2		2744	\N	\N
3564		\N	\N	920	1	2017-09-13	\N		\N		8	3	2		2958	\N	\N
3565		\N	\N	931	1	2017-09-12	\N		\N		8	3	2		2959	\N	\N
3566		\N	\N	943	1	2017-09-12	2018-04-05		\N		8	3	2		2960	\N	\N
3567		\N	\N	1703	1	2017-07-19	\N		\N		9	3	2		2961	\N	\N
3568		\N	\N	1530	1	2017-07-12	\N		\N		9	3	2		2962	\N	\N
3569		\N	\N	697	1	2017-07-13	\N		\N		9	3	2		2963	\N	\N
3570		\N	\N	929	1	2017-09-12	\N		\N		8	3	2		2964	\N	\N
3571		\N	\N	785	1	2017-09-12	\N		\N		17	3	2		2965	\N	\N
3572		\N	\N	768	1	2017-09-05	\N		\N		17	3	2		2966	\N	\N
3573		\N	\N	449	1	2017-08-15	\N		\N		25	3	2		2967	\N	\N
3574		\N	\N	446	1	2017-09-12	\N		\N		25	3	2		2968	\N	\N
3575		\N	\N	780	1	2017-07-12	\N		\N		17	3	2		2969	\N	\N
3576		\N	\N	1307	1	2017-09-12	\N		\N		20	3	2		2970	\N	\N
3577		\N	\N	1308	1	2017-08-09	\N		\N		20	3	2		2971	\N	\N
3578		\N	\N	1319	1	2017-09-12	\N		\N		20	3	2		2972	\N	\N
3579		\N	\N	1327	1	2017-09-19	\N		\N		20	3	2		2973	\N	\N
3580		\N	\N	470	1	2017-09-11	\N		\N		20	3	2		2974	\N	\N
3581		\N	\N	1315	1	2017-09-13	\N		\N		20	3	2		2975	\N	\N
3582		\N	\N	1318	1	2017-09-19	\N		\N		20	3	2		2976	\N	\N
3583		\N	1664	614	1	2017-11-06	\N		\N		23	3	2		369	\N	\N
3584		\N	\N	1318	1	2017-09-18	\N		\N		20	3	2		2977	\N	\N
3585		\N	\N	1316	1	2017-08-17	\N		\N		20	3	2		2978	\N	\N
3586		\N	1664	613	1	2017-11-06	\N		\N		23	3	2		370	\N	\N
3587		\N	\N	1317	1	2017-09-19	\N		\N		20	3	2		2979	\N	\N
3588		\N	\N	1317	1	2017-09-12	\N		\N		20	3	2		2980	\N	\N
3589		\N	\N	1664	1	2017-05-17	2017-10-13		\N		5	3	2		2981	\N	\N
3590		\N	1664	1664	4	2017-10-13	\N		\N		22	3	2	Դուրս գրման ա/թ 16/01/2018	2981	\N	jass.manasyan@gmail.com
3591		\N	\N	1664	1	2017-06-15	2017-10-13		\N		5	3	2		2982	\N	\N
3592		\N	1664	1664	4	2017-10-13	\N		\N		22	3	2	Դուրս գրման ա/թ 21/12/2017	2982	\N	vahram@hf.am
3593		\N	\N	1664	1	2017-06-15	2017-10-13		\N		5	3	2		2983	\N	\N
3594		\N	1664	1664	1	2017-10-13	\N		\N		22	3	2		2983	\N	\N
3595		\N	\N	1664	1	2017-06-15	2017-10-13		\N		5	3	2		2984	\N	\N
3596		\N	1664	1664	1	2017-10-13	2017-11-22		\N		22	3	2		2984	\N	\N
3597		\N	\N	1563	1	2017-07-12	\N		\N		9	3	2		2985	\N	\N
3598		\N	\N	1531	1	2017-07-19	\N		\N		9	3	2		2986	\N	\N
3599		\N	\N	1153	1	2017-07-12	\N		\N		9	3	2		2987	\N	\N
3600		\N	\N	1299	1	2017-06-14	\N		\N		9	3	2		2988	\N	\N
3601		\N	\N	1298	1	2017-07-12	\N		\N		9	3	2		2989	\N	\N
3602		\N	\N	1574	1	2017-07-12	\N		\N		9	3	2		2990	\N	\N
3603		\N	\N	1078	1	2017-07-13	\N		\N		9	3	2		2991	\N	\N
3604		\N	\N	467	1	2017-07-12	\N		\N		9	3	2		2992	\N	\N
3605		\N	\N	1587	1	2017-07-12	\N		\N		9	3	2		2993	\N	\N
3606		\N	1664	570	1	2017-11-06	2018-05-08		\N		16	3	2		2891	\N	\N
3607		\N	1664	611	1	2017-11-06	\N		\N		23	3	2		16	\N	\N
3608		\N	\N	1359	1	2017-09-11	\N		\N		16	3	2		2994	\N	\N
3609		\N	1664	5	1	2017-11-06	\N		\N		20	3	2		545	\N	\N
3610		\N	1664	5	1	2017-11-06	\N		\N		20	3	2		2126	\N	\N
3611		\N	1664	5	1	2017-11-06	2017-11-14		\N		20	3	2	Վարդենիսում չի տեղադրվել, տարել են Արջուտ	156	\N	\N
3612		\N	1664	341	1	2017-11-06	\N		\N		20	3	2		2251	\N	\N
3613		\N	1664	341	1	2017-11-06	\N		\N		20	3	2		2839	\N	\N
3614		\N	1664	1023	1	2017-11-06	\N		\N		20	3	2		528	\N	\N
3615		\N	1664	1023	1	2017-11-06	\N		\N		20	3	2		2789	\N	\N
3616		\N	1664	1018	1	2017-11-06	\N		\N		20	3	2		556	\N	\N
3617		\N	1664	1028	1	2017-11-06	2017-11-20		\N		20	3	2		1469	\N	\N
3618		\N	\N	791	1	2017-08-14	\N		\N		24	3	2		2995	\N	\N
3619		\N	1664	1015	1	2017-11-06	\N		\N		20	3	2		40	\N	\N
3620		\N	1664	336	1	2017-11-06	2018-04-06		\N		20	3	2		450	\N	\N
3621		\N	1664	1027	1	2017-11-06	\N		\N		20	3	2		535	\N	\N
3622		\N	1664	1020	1	2017-11-06	\N		\N		20	3	2		1500	\N	\N
3623		\N	1664	348	1	2017-11-06	\N		\N		20	3	2		2668	\N	\N
3624		\N	1664	1016	1	2017-11-06	\N		\N		20	3	2		2255	\N	\N
3625		\N	1664	1024	1	2017-11-06	\N		\N		20	3	2		2250	\N	\N
3626		\N	\N	808	1	2017-09-04	\N		\N		24	3	2		2996	\N	\N
3627		\N	1664	1029	1	2017-11-06	\N		\N		20	3	2		521	\N	\N
3628		\N	1664	1025	1	2017-11-06	\N		\N		20	3	2		2840	\N	\N
3629		\N	1664	347	1	2017-11-06	\N		\N		20	3	2		18	\N	\N
3630		\N	\N	804	1	2017-08-14	\N		\N		24	3	2		2997	\N	\N
3631		\N	1664	118	1	2017-11-07	\N		\N		23	3	2		36	\N	\N
3632		\N	\N	1664	1	2017-07-17	2017-11-06		\N		5	3	2		2998	\N	\N
3633		\N	1664	1664	1	2017-11-06	2017-11-27		\N		23	3	2	տվել ենք, որ Կատար Tv-ում տեղադրի, չի տեղադրել	2998	\N	\N
3634		\N	1664	1698	1	2017-11-07	\N		\N		23	3	2	Գոհար Սարգսյան 	446	\N	\N
3635		\N	1664	1341	1	2017-11-07	\N		\N		16	3	2		568	\N	\N
3636		\N	1341	1664	4	2017-11-07	\N		\N		16	3	2	Դուրս գրման ա/թ 21/12/2017թ	2664	\N	vahram@hf.am
3637		\N	\N	1664	1	2017-11-07	2017-11-08		\N		16	3	2		2999	\N	\N
3638		\N	\N	1664	1	2017-11-07	2017-11-08		\N		16	3	2		3000	\N	\N
3639		\N	\N	1664	1	2017-11-07	2017-11-08		\N		16	3	2		3001	\N	\N
3640		\N	\N	1664	1	2017-11-07	2017-11-08		\N		16	3	2		3002	\N	\N
3641		\N	\N	1664	2	2017-11-07	\N		\N		16	3	2		3003	\N	\N
3642		\N	\N	1643	1	2017-07-12	\N		\N		15	3	2		3004	\N	\N
3643		\N	\N	421	1	2017-08-16	\N		\N		15	3	2		3005	\N	\N
3644		\N	\N	407	1	2017-07-13	\N		\N		15	3	2		3006	\N	\N
3645		\N	\N	1015	1	2017-06-14	2017-11-06		\N		20	3	2		3007	\N	\N
3646		\N	1015	1664	1	2017-11-06	2017-11-22		\N		20	3	2		2229	\N	\N
3647		\N	1015	1664	4	2017-11-06	\N		\N		20	3	2	դուրս գրման ամսաթիվ 21/12/2017	3007	\N	jass.manasyan@gmail.com
3651		\N	1018	338	1	2017-11-20	\N		\N		20	3	2		2182	\N	\N
3652		\N	1023	1664	1	2017-11-06	2017-11-22		\N		20	3	2		2156	\N	\N
3653		\N	341	1664	1	2017-11-06	2017-11-22		\N		20	3	2		97	\N	\N
3654		\N	1664	1341	1	2017-10-30	2017-10-31		\N		16	3	2	պետք է տեղադրեր Կառնուտում, բայց պարզվել է չի աշխատում	29	\N	\N
3655		\N	1664	524	1	2017-11-08	\N		\N		16	3	2		2999	\N	\N
3656		\N	1664	530	1	2017-11-08	\N		\N		16	3	2		3000	\N	\N
3657		\N	1664	1354	1	2017-11-08	\N		\N		16	3	2		3001	\N	\N
3658		\N	1664	513	1	2017-11-08	\N		\N		16	3	2		3002	\N	\N
3659		\N	\N	674	1	2017-07-13	2017-11-08		\N		15	3	2		3009	\N	\N
3660		\N	674	1664	4	2017-11-08	\N		\N		15	3	2	Դուրս գրման ա/թ 21/12/2017թ	3009	\N	vahram@hf.am
3661		\N	\N	674	1	2017-07-12	2017-11-08		\N		15	3	2		3010	\N	\N
3662		\N	674	1664	4	2017-11-08	\N		\N		15	3	2	դուրս գրման ամսաթիվ 21/12/2017	3010	\N	jass.manasyan@gmail.com
3663		\N	\N	1287	1	2017-07-12	\N		\N		9	3	2		3011	\N	\N
3664		\N	\N	1294	1	2017-07-12	\N		\N		9	3	2		3012	\N	\N
3665		\N	\N	1293	1	2017-07-12	\N		\N		9	3	2		3013	\N	\N
3666		\N	\N	570	1	2017-06-14	2017-11-08		\N		16	3	2		3014	\N	\N
3667		\N	570	1664	4	2017-11-08	\N		\N		16	3	2	Դուրս գրման ա/թ 21/12/2017թ	3014	\N	vahram@hf.am
3668		\N	\N	560	1	2017-06-15	2017-11-08		\N		16	3	2		3015	\N	\N
3669		\N	560	1664	4	2017-11-08	\N		\N		16	3	2	Դուրս գրման ա/թ 21/12/2017թ	3015	\N	vahram@hf.am
3670		\N	\N	751	1	2017-07-12	2017-11-08		\N		12	3	2		3016	\N	\N
3671		\N	751	1664	4	2017-11-08	\N		\N		12	3	2	Դուրս գրման ա/թ 21/12/2017թ	3016	\N	vahram@hf.am
3672		\N	\N	751	1	2017-07-12	2017-11-08		\N		12	3	2		3017	\N	\N
3673		\N	751	1664	4	2017-11-08	\N		\N		12	3	2	դուրս գրման ամսաթիվ 21/12/2017	3017	\N	jass.manasyan@gmail.com
3674		\N	108	1664	4	2017-11-08	\N		\N		16	3	2	Դուրս գրման ա/թ 21/12/2017	1929	\N	vahram@hf.am
3675		\N	\N	736	1	2017-07-12	2017-11-08		\N		12	3	2		3018	\N	\N
3676		\N	736	1664	4	2017-11-08	\N		\N		12	3	2	Դուրս գրման ա/թ 21/12/2017թ	3018	\N	vahram@hf.am
3677		\N	\N	736	1	2017-06-15	2017-11-08		\N		12	3	2		3019	\N	\N
3678		\N	736	1664	4	2017-11-08	\N		\N		12	3	2	դուրս գրման ամսաթիվ 21/12/2017	3019	\N	jass.manasyan@gmail.com
3679		\N	\N	732	1	2017-07-12	2017-11-08		\N		12	3	2		3020	\N	\N
3680		\N	732	1664	4	2017-11-08	\N		\N		12	3	2	Դուրս գրման ա/թ 21/12/2017թ	3020	\N	vahram@hf.am
3681		\N	\N	732	1	2017-07-13	2017-11-08		\N		12	3	2		3021	\N	\N
3682		\N	732	1664	4	2017-11-08	\N		\N		12	3	2	դուրս գրման ամսաթիվ 21/12/2017	3021	\N	jass.manasyan@gmail.com
3683		\N	\N	730	1	2017-07-12	2017-11-08		\N		12	3	2		3022	\N	\N
3684		\N	730	1664	4	2017-11-08	\N		\N		12	3	2	Դուրս գրման ա/թ 21/12/2017թ	3022	\N	vahram@hf.am
3685		\N	\N	730	1	2017-06-15	2017-11-08		\N		12	3	2		3023	\N	\N
3686		\N	730	1664	4	2017-11-08	\N		\N		12	3	2	դուրս գրման ամսաթիվ 21/12/2017	3023	\N	jass.manasyan@gmail.com
3687		\N	119	1664	4	2017-11-09	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017	1605	\N	vahram@hf.am
3688		\N	119	1664	4	2017-11-09	\N		\N		23	3	2	Դուրս գրման ա/թ 16/01/2018	1609	\N	jass.manasyan@gmail.com
3689		\N	\N	613	1	2017-06-13	2017-11-09		\N		23	3	2		3024	\N	\N
3690		\N	613	1664	4	2017-11-09	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017թ	3024	\N	vahram@hf.am
3691		\N	\N	613	1	2017-07-12	2017-11-09		\N		23	3	2		3025	\N	\N
3692		\N	613	1664	4	2017-11-09	\N		\N		23	3	2	դուրս գրման ամսաթիվ 21/12/2017	3025	\N	jass.manasyan@gmail.com
3693		\N	\N	602	1	2017-07-12	2017-11-09		\N		23	3	2		3026	\N	\N
3694		\N	602	1664	4	2017-11-09	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017թ	3026	\N	vahram@hf.am
3697		\N	\N	607	1	2017-06-14	2017-11-09		\N		23	3	2		3028	\N	\N
3698		\N	607	1664	4	2017-11-09	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017թ	3028	\N	vahram@hf.am
3699		\N	118	1664	4	2017-11-09	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017	1600	\N	vahram@hf.am
3700		\N	\N	606	1	2017-07-13	2017-11-09		\N		23	3	2		3029	\N	\N
3701		\N	606	1664	4	2017-11-09	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017թ	3029	\N	vahram@hf.am
3702		\N	591	1664	4	2017-11-09	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017թ	2932	\N	vahram@hf.am
3703		\N	591	1664	4	2017-11-09	\N		\N		23	3	2	դուրս գրման ամսաթիվ 21/12/2017	2933	\N	jass.manasyan@gmail.com
3704		\N	120	1664	4	2017-11-09	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017	1564	\N	vahram@hf.am
3705		\N	120	1664	4	2017-11-09	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017	1567	\N	vahram@hf.am
3706		\N	1695	1664	4	2017-11-09	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017թ	1606	\N	vahram@hf.am
3707		\N	1695	1664	4	2017-11-09	\N		\N		23	3	2	դուրս գրման ամսաթիվ 21/12/2017	1607	\N	jass.manasyan@gmail.com
3708		\N	1695	1664	4	2017-11-09	\N		\N		23	3	2	դուրս գրման ամսաթիվ 21/12/2017	1608	\N	jass.manasyan@gmail.com
3709		\N	\N	601	1	2017-06-13	2017-11-09		\N		23	3	2		3030	\N	\N
3710		\N	601	1664	4	2017-11-09	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017թ	3030	\N	vahram@hf.am
3711		\N	\N	609	1	2017-07-13	2017-11-09		\N		23	3	2		3031	\N	\N
3712		\N	609	1664	4	2017-11-09	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017թ	3031	\N	vahram@hf.am
3713		\N	\N	609	1	2017-07-13	2017-11-09		\N		23	3	2		3032	\N	\N
3714		\N	609	1664	1	2017-11-09	2018-03-16		\N		23	3	2		3032	\N	vahram@hf.am
3715		\N	\N	610	1	2017-07-12	2017-11-09		\N		23	3	2		3033	\N	\N
3716		\N	\N	603	1	2017-06-13	2017-11-09		\N		23	3	2		3034	\N	\N
3717		\N	610	1664	4	2017-11-09	\N		\N		23	3	2	դուրս գրման ամսաթիվ 21/12/2017	3033	\N	jass.manasyan@gmail.com
3718		\N	603	1664	4	2017-11-09	\N		\N		23	3	2	դուրս գրման ամսաթիվ 21/12/2017	3034	\N	jass.manasyan@gmail.com
3719		\N	\N	610	1	2017-07-13	2017-11-09		\N		23	3	2		3035	\N	\N
3720		\N	610	1664	4	2017-11-09	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017թ	3035	\N	vahram@hf.am
3721		\N	\N	603	1	2017-07-26	2017-11-09		\N		23	3	2		3036	\N	\N
3722		\N	603	1664	4	2017-11-09	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017թ	3036	\N	vahram@hf.am
3723		\N	\N	614	1	2017-07-12	2017-11-09		\N		23	3	2		3037	\N	\N
3724		\N	614	1664	4	2017-11-09	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017թ	3037	\N	vahram@hf.am
3725		\N	\N	614	1	2017-07-13	2017-11-09		\N		23	3	2		3038	\N	\N
3726		\N	614	1664	4	2017-11-09	\N		\N		23	3	2	դուրս գրման ամսաթիվ 21/12/2017	3038	\N	jass.manasyan@gmail.com
3727		\N	\N	590	1	2017-07-11	2017-11-09		\N		23	3	2		3039	\N	\N
3728		\N	590	1664	4	2017-11-09	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017թ	3039	\N	vahram@hf.am
3729		\N	\N	590	1	2017-05-09	2017-11-09		\N		23	3	2		3040	\N	\N
3730		\N	\N	619	1	2017-07-14	2017-11-09		\N		23	3	2		3041	\N	\N
3731		\N	619	1664	4	2017-11-09	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017թ	3041	\N	vahram@hf.am
3732		\N	590	1664	1	2017-11-09	2018-01-23		\N		23	3	2		3040	\N	vahram@hf.am
3733		\N	\N	619	1	2017-07-13	2017-11-09		\N		23	3	2		3042	\N	\N
3734		\N	619	1664	4	2017-11-09	\N		\N		23	3	2	դուրս գրման ամսաթիվ 21/12/2017	3042	\N	jass.manasyan@gmail.com
3735		\N	1702	1664	1	2017-11-10	\N		\N		24	3	2		334	\N	\N
3738		\N	1664	1709	1	2017-11-10	\N		\N		24	3	2		29	\N	\N
3739		\N	1664	1113	1	2017-11-10	\N		\N		9	3	2		361	\N	\N
3740		\N	\N	1664	7	2017-11-10	\N		\N		5	4	2		3043	\N	\N
3741		\N	\N	1664	7	2017-11-10	2018-02-20		\N		5	4	2		3044	\N	\N
3742		\N	\N	1664	7	2017-11-10	\N		\N		5	4	2		3045	\N	\N
3743		\N	\N	1664	7	2017-11-10	2018-04-10		\N		5	4	2		3046	\N	\N
3744		\N	\N	1664	7	2017-11-10	\N		\N		5	4	2		3047	\N	\N
3745		\N	\N	1664	7	2017-11-10	2018-04-16		\N		5	4	2		3048	\N	\N
3746		\N	\N	1664	7	2017-11-10	\N		\N		5	4	2		3049	\N	\N
3747		\N	\N	1664	7	2017-11-10	\N		\N		5	4	2		3050	\N	\N
3748		\N	\N	1664	7	2017-11-10	\N		\N		5	4	2		3051	\N	\N
3749		\N	\N	1664	7	2017-11-10	2018-02-20		\N		5	4	2		3052	\N	\N
3750		\N	\N	1664	7	2017-11-10	2018-04-10		\N		5	4	2		3053	\N	\N
3751		\N	\N	1664	7	2017-11-10	2018-05-03		\N		5	4	2		3054	\N	\N
3752		\N	\N	1664	7	2017-11-10	2018-05-03		\N		5	4	2		3055	\N	\N
3753		\N	\N	1664	7	2017-11-10	2018-04-18		\N		5	4	2		3056	\N	\N
3754		\N	\N	1664	7	2017-11-10	2018-04-10		\N		5	4	2		3057	\N	\N
3755		\N	\N	1664	7	2017-11-10	2017-11-20		\N		5	4	2		3058	\N	\N
3756		\N	\N	1664	7	2017-11-10	2018-02-20		\N		5	4	2		3059	\N	\N
3757		\N	\N	1664	7	2017-11-10	2018-02-20		\N		5	4	2		3060	\N	\N
3758		\N	\N	1664	7	2017-11-10	2017-11-16		\N		5	4	2		3061	\N	\N
3759		\N	\N	1664	7	2017-11-10	2017-11-20		\N		5	4	2		3062	\N	\N
3760		\N	\N	1664	7	2017-11-10	\N		\N		5	4	2		3063	\N	\N
3761		\N	\N	1664	7	2017-11-10	\N		\N		5	4	2		3064	\N	\N
3762		\N	\N	1664	7	2017-11-10	\N		\N		5	4	2		3065	\N	\N
3763		\N	\N	1664	7	2017-11-10	\N		\N		5	4	2		3066	\N	\N
3764		\N	\N	1664	7	2017-11-10	\N		\N		5	4	2		3067	\N	\N
3765		\N	\N	1664	7	2017-11-10	\N		\N		5	4	2		3068	\N	\N
3766		\N	\N	1664	7	2017-11-10	\N		\N		5	4	2		3069	\N	\N
3767		\N	\N	1664	7	2017-11-10	\N		\N		5	4	2		3070	\N	\N
3768		\N	\N	1664	7	2017-11-10	\N		\N		5	4	2		3071	\N	\N
3769		\N	\N	1664	7	2017-11-10	\N		\N		5	4	2		3072	\N	\N
3770		\N	\N	1664	7	2017-11-10	\N		\N		5	4	2		3073	\N	\N
3771		\N	\N	1664	7	2017-11-10	\N		\N		5	4	2		3074	\N	\N
3772		\N	\N	1664	7	2017-11-10	\N		\N		5	4	2		3075	\N	\N
3773		\N	\N	1664	7	2017-11-10	\N		\N		5	4	2		3076	\N	\N
3774		\N	\N	1664	7	2017-11-10	2018-04-10		\N		5	4	2		3077	\N	\N
3775		\N	\N	1664	7	2017-11-10	2018-04-16		\N		5	4	2		3078	\N	\N
3776		\N	\N	1664	7	2017-11-10	2018-02-20		\N		5	4	2		3079	\N	\N
3777		\N	\N	1664	7	2017-11-10	2018-02-20		\N		5	4	2		3080	\N	\N
3778		\N	\N	1664	1	2017-11-12	2017-11-13		\N		25	3	2	սարքը Ֆիոլետովոյի դպրոցում է եղել	3081	\N	\N
3779		\N	\N	1707	1	2017-11-13	\N		\N		25	3	2		3082	\N	vahram@hf.am
3780		\N	1664	439	1	2017-11-13	\N		\N		25	3	2		3081	\N	\N
3781		\N	\N	439	1	2017-06-14	\N		\N		25	3	2		3083	\N	\N
3783		\N	\N	439	1	2017-06-15	2017-11-13		\N		25	3	2		3084	\N	\N
3784		\N	439	1707	1	2017-11-13	2017-12-25		\N		25	3	2		3084	\N	vahram@hf.am
3785		\N	\N	570	1	2017-07-06	2017-11-06		\N		16	3	2		3085	\N	\N
3786		\N	570	1716	1	2017-11-06	\N		\N		16	3	2		3085	\N	vahram@hf.am
3788		\N	1205	1664	1	2017-11-14	2018-01-10		\N		7	3	2		1828	\N	\N
3789		\N	\N	1290	1	2017-07-13	\N		\N		9	3	2		3086	\N	\N
3790		\N	\N	1281	1	2017-06-07	\N		\N		9	3	2		3087	\N	\N
3791		\N	\N	1577	1	2017-07-05	\N		\N		9	3	2		3088	\N	\N
3792		\N	\N	1280	1	2017-08-16	\N		\N		9	3	2		3089	\N	\N
3793		\N	\N	1502	1	2017-07-05	\N		\N		9	3	2		3090	\N	\N
3794		\N	\N	1043	1	2017-07-12	\N		\N		9	3	2		3091	\N	\N
3795		\N	\N	491	1	2017-07-12	\N		\N		9	3	2		3092	\N	\N
3796		\N	\N	462	1	2017-07-11	\N		\N		9	3	2		3093	\N	\N
3797		\N	\N	484	1	2017-08-16	\N		\N		9	3	2		3094	\N	\N
3798		\N	1664	239	1	2017-11-15	\N		\N		23	3	2		157	\N	\N
3799		\N	239	1664	4	2017-11-15	\N		\N		23	3	2	Դուրս գրման ա/թ 21/12/2017	1743	\N	vahram@hf.am
3800		\N	239	1664	1	2017-11-15	\N		\N		23	3	2		1740	\N	\N
3801		\N	1664	239	1	2017-11-15	\N		\N		23	3	2		23	\N	\N
3802		\N	1664	1672	1	2017-11-15	\N		\N		17	3	2		1558	\N	\N
3803		\N	\N	611	1	2017-07-11	\N		\N		21	3	2		3095	\N	\N
3804		\N	\N	1618	1	2017-07-13	\N		\N		21	3	2		3096	\N	\N
3805		\N	\N	649	1	2017-07-14	\N		\N		21	3	2		3097	\N	\N
3806		\N	\N	654	1	2017-07-13	\N		\N		21	3	2		3098	\N	\N
3807		\N	\N	652	1	2017-07-12	\N		\N		21	3	2		3099	\N	\N
3808		\N	\N	644	1	2017-07-12	\N		\N		21	3	2		3100	\N	\N
3809		\N	\N	1663	1	2017-07-13	\N		\N		21	3	2		3101	\N	\N
3810		\N	\N	1657	1	2017-08-16	\N		\N		21	3	2		3102	\N	\N
3811		\N	\N	638	1	2017-08-09	\N		\N		21	3	2		3103	\N	\N
3812		\N	\N	629	1	2017-07-05	\N		\N		21	3	2		3104	\N	\N
3813		\N	\N	634	1	2017-07-13	\N		\N		21	3	2		3105	\N	\N
3814		\N	\N	630	1	2017-07-13	\N		\N		21	3	2		3106	\N	\N
3815		\N	\N	641	1	2017-07-05	\N		\N		21	3	2		3107	\N	\N
3816		\N	1664	17	1	2017-11-16	\N		\N		7	3	2		3061	\N	\N
3817		\N	1664	17	1	2017-11-16	\N		\N		7	3	2		155	\N	\N
3818		\N	17	1664	2	2017-11-16	\N		\N		7	3	2		1158	\N	\N
3819		\N	5	1664	4	2017-11-16	\N		\N		7	3	2	Դուրս գրման ա/թ 21/12/2017	1166	\N	vahram@hf.am
3820		\N	5	1664	4	2017-11-16	\N		\N		7	3	2	Դուրս գրման ա/թ 16/01/2018	1167	\N	jass.manasyan@gmail.com
3821		\N	\N	5	1	2017-06-14	2017-11-16		\N		20	3	2		3108	\N	\N
3822		\N	5	1664	1	2017-11-16	\N		\N		7	3	2		3108	\N	\N
3823		\N	\N	5	1	2017-07-13	2017-11-16		\N		20	3	2		3109	\N	\N
3824		\N	5	1664	4	2017-11-16	\N		\N		7	3	2	Դուրս գրման ա/թ 21/12/2017	3109	\N	vahram@hf.am
3825		\N	\N	5	1	2017-08-16	2017-11-16		\N		20	3	2		3110	\N	\N
3826		\N	5	1664	4	2017-11-16	\N		\N		7	3	2	Դուրս գրման ա/թ 16/01/2018	3110	\N	jass.manasyan@gmail.com
3827		\N	89	1664	1	2017-11-16	2017-11-21		\N		7	3	2		1933	\N	\N
3828		\N	89	1664	4	2017-11-16	\N		\N		7	3	2	դուրս գրման ամսաթիվ 21/12/2017	1816	\N	jass.manasyan@gmail.com
3829		\N	1664	71	1	2017-11-16	\N		\N		7	3	2		978	\N	\N
3830		\N	71	1664	1	2017-11-16	2018-04-18		\N		7	3	2		1270	\N	\N
3833		\N	\N	628	1	2017-07-12	\N		\N		21	3	2		3111	\N	\N
3834		\N	\N	637	1	2017-07-05	\N		\N		21	3	2		3112	\N	\N
3835		\N	\N	642	1	2017-07-05	\N		\N		21	3	2		3113	\N	\N
3836		\N	\N	633	1	2017-06-07	\N		\N		21	3	2		3114	\N	\N
3837		\N	\N	639	1	2017-07-12	\N		\N		21	3	2		3115	\N	\N
3838		\N	\N	1610	1	2017-07-13	\N		\N		21	3	2		3116	\N	\N
3839		\N	\N	1609	1	2017-06-08	\N		\N		21	3	2		3117	\N	\N
3840		\N	\N	1612	1	2017-07-12	\N		\N		21	3	2		3118	\N	\N
3841		\N	\N	640	1	2017-07-12	\N		\N		21	3	2		3119	\N	\N
3842		\N	\N	1611	1	2017-08-09	\N		\N		21	3	2		3120	\N	\N
3843		\N	\N	627	1	2017-07-12	\N		\N		21	3	2		3121	\N	\N
3844		\N	\N	1656	1	2017-07-21	\N		\N		21	3	2		3122	\N	\N
3845		\N	\N	596	1	2017-07-12	\N		\N		21	3	2		3123	\N	\N
3846		\N	1664	1664	1	2017-11-16	2017-12-13		\N		7	3	2		1492	\N	\N
3847		\N	\N	1465	1	2017-07-12	\N		\N		21	3	2		3124	\N	\N
3848		\N	\N	636	1	2017-07-12	\N		\N		21	3	2		3125	\N	\N
3849		\N	\N	1616	1	2017-07-12	\N		\N		21	3	2		3126	\N	\N
3850		\N	\N	1466	1	2017-07-13	2018-02-27		\N		21	3	2		3127	\N	\N
3851		\N	\N	1617	1	2017-07-12	\N		\N		21	3	2		3128	\N	\N
3852		\N	\N	1662	1	2017-07-12	\N		\N		21	3	2		3129	\N	\N
3854		\N	\N	631	1	2017-06-15	\N		\N		21	3	2		3131	\N	\N
3855		\N	\N	1622	1	2017-07-13	\N		\N		21	3	2		3132	\N	\N
3856		\N	\N	1623	1	2017-06-08	\N		\N		21	3	2		3133	\N	\N
3857		\N	\N	1468	1	2017-06-15	\N		\N		21	3	2		3134	\N	\N
3858		\N	\N	488	1	2017-07-12	\N		\N		21	3	2		3135	\N	\N
3860		\N	\N	941	1	2017-09-12	\N		\N		8	3	2		3137	\N	\N
3861		\N	\N	1553	1	2017-07-12	\N		\N		21	3	2		3138	\N	\N
3862		\N	\N	937	1	2017-09-05	\N		\N		8	3	2		3139	\N	\N
3863		\N	\N	1323	1	2017-07-11	\N		\N		21	3	2		3140	\N	\N
3864		\N	\N	923	1	2017-11-17	\N		\N		8	3	2		3141	\N	\N
3865		\N	\N	334	1	2017-08-10	\N		\N		8	3	2		3142	\N	\N
3866		\N	\N	187	1	2017-07-12	2017-11-17		\N		17	3	2		3143	\N	\N
3867		\N	187	1664	4	2017-11-17	\N		\N		17	3	2	Դուրս գրման ա/թ 21/12/2017թ	3143	\N	vahram@hf.am
3868		\N	\N	187	1	2017-07-12	2017-11-17		\N		17	3	2		3144	\N	\N
3869		\N	187	1664	4	2017-11-17	\N		\N		17	3	2	Դուրս գրման ա/թ 21/12/2017թ	3144	\N	vahram@hf.am
3870		\N	\N	187	1	2017-07-13	2017-11-17		\N		17	3	2		3145	\N	\N
3871		\N	187	1664	4	2017-11-17	\N		\N		17	3	2	դուրս գրման ամսաթիվ 21/12/2017	3145	\N	jass.manasyan@gmail.com
3872		\N	\N	918	1	2017-09-13	\N		\N		8	3	2		3146	\N	\N
3873		\N	\N	187	1	2017-07-13	2017-11-17		\N		17	3	2		3147	\N	\N
3874		\N	187	1664	4	2017-11-17	\N		\N		17	3	2	Դուրս գրման ա/թ 16/01/2018	3147	\N	jass.manasyan@gmail.com
3875		\N	\N	925	1	2017-09-11	\N		\N		8	3	2		3148	\N	\N
3876		\N	\N	187	1	2017-07-12	2017-11-17		\N		17	3	2		3149	\N	\N
3877		\N	\N	965	1	2017-08-29	\N		\N		8	3	2		3150	\N	\N
3878		\N	187	1664	1	2017-11-17	2018-03-02		\N		17	3	2		3149	\N	\N
3879		\N	\N	934	1	2017-09-05	\N		\N		8	3	2		3151	\N	\N
3880		\N	\N	938	1	2017-11-17	\N		\N		8	3	2		3152	\N	\N
3881		\N	\N	331	1	2017-09-14	\N		\N		8	3	2		3153	\N	\N
3882		\N	\N	916	1	2017-09-13	\N		\N		8	3	2		3154	\N	\N
3883		\N	\N	960	1	2017-09-12	\N		\N		8	3	2		3155	\N	\N
3884		\N	\N	928	1	2017-09-12	\N		\N		8	3	2		3156	\N	\N
3885		\N	\N	1288	1	2017-07-12	\N		\N		9	3	2		3157	\N	\N
3886		\N	\N	872	1	2017-09-04	\N		\N		8	3	2		3158	\N	\N
3887		\N	\N	1538	1	2017-06-14	\N		\N		9	3	2		3159	\N	\N
3888		\N	\N	312	1	2017-09-11	\N		\N		17	3	2		3160	\N	\N
3889		\N	\N	783	1	2017-09-04	\N		\N		17	3	2		3161	\N	\N
3890		\N	\N	762	1	2017-08-15	\N		\N		17	3	2		3162	\N	\N
3891		\N	\N	1542	1	2017-07-12	\N		\N		9	3	2		3163	\N	\N
3892		\N	\N	784	1	2017-08-14	\N		\N		17	3	2		3164	\N	\N
3893		\N	\N	820	1	2017-09-19	\N		\N		17	3	2		3165	\N	\N
3894		\N	\N	797	1	2017-09-12	\N		\N		17	3	2		3166	\N	\N
3895		\N	\N	823	1	2017-09-11	\N		\N		17	3	2		3167	\N	\N
3896		\N	\N	790	1	2017-09-12	\N		\N		17	3	2		3168	\N	\N
3897		\N	\N	849	1	2017-09-19	\N		\N		17	3	2		3169	\N	\N
3898		\N	\N	847	1	2017-09-13	\N		\N		17	3	2		3170	\N	\N
3899		\N	\N	850	1	2017-11-20	\N		\N		17	3	2		3171	\N	\N
3900		\N	\N	814	1	2017-09-19	\N		\N		17	3	2		3172	\N	\N
3901		\N	\N	766	1	2017-09-12	\N		\N		17	3	2		3173	\N	\N
3902		\N	\N	769	1	2017-09-19	\N		\N		17	3	2		3174	\N	\N
3903		\N	\N	773	1	2017-09-20	\N		\N		17	3	2		3175	\N	\N
3904		\N	\N	772	1	2017-09-11	\N		\N		17	3	2		3176	\N	\N
3905		\N	\N	798	1	2017-09-19	\N		\N		17	3	2		3177	\N	\N
3906		\N	\N	323	1	2017-08-07	\N		\N		17	3	2		3178	\N	\N
3907		\N	1664	927	1	2017-11-20	\N		\N		8	3	2		152	\N	\N
3908		\N	1664	927	1	2017-11-20	\N		\N		8	3	2		3062	\N	\N
3909		\N	1664	40	1	2017-11-20	\N		\N		8	3	2		3058	\N	\N
3910		\N	1664	916	1	2017-11-20	\N		\N		8	3	2		153	\N	\N
3911		\N	927	1664	1	2017-11-20	\N		\N		8	3	2		876	\N	\N
3912		\N	927	1664	1	2017-11-20	\N		\N		8	3	2		1788	\N	\N
3913		\N	\N	71	1	2017-06-15	2017-11-20		\N		22	3	2		3179	\N	\N
3914		\N	71	1664	4	2017-11-20	\N		\N		7	3	2	Դուրս գրման ա/թ 21/12/2017	3179	\N	vahram@hf.am
3915		\N	\N	71	1	2017-06-15	2017-11-20		\N		22	3	2		3180	\N	\N
3916		\N	71	1664	4	2017-11-20	\N		\N		7	3	2	Դուրս գրման ա/թ 16/01/2018	3180	\N	jass.manasyan@gmail.com
3917		\N	1028	1664	1	2017-11-20	\N		\N		20	3	2		1469	\N	\N
3918		\N	\N	809	1	2017-09-12	\N		\N		17	3	2		3181	\N	\N
3919		\N	\N	810	1	2017-09-04	\N		\N		17	3	2		3182	\N	\N
3920		\N	\N	816	1	2017-09-11	\N		\N		17	3	2		3183	\N	\N
3921		\N	\N	827	1	2017-08-08	\N		\N		17	3	2		3184	\N	\N
3922		\N	\N	1225	1	2017-09-12	\N		\N		25	3	2		3185	\N	\N
3924		\N	\N	394	1	2017-08-17	\N		\N		25	3	2		3187	\N	\N
3925		\N	\N	396	1	2017-09-05	\N		\N		25	3	2		3188	\N	\N
3926		\N	\N	403	1	2017-09-12	\N		\N		25	3	2		3189	\N	\N
3927		\N	\N	406	1	2017-09-12	\N		\N		25	3	2		3190	\N	\N
3928		\N	\N	412	1	2017-09-11	\N		\N		25	3	2		3191	\N	\N
3929		\N	\N	451	1	2017-09-13	\N		\N		25	3	2		3192	\N	\N
3930		\N	\N	388	1	2017-11-20	\N		\N		25	3	2		3193	\N	\N
3931		\N	916	1664	1	2017-11-20	\N		\N		8	3	2		1783	\N	\N
3932		\N	\N	1260	1	2017-09-12	\N		\N		25	3	2		3194	\N	\N
3933		\N	\N	927	1	2017-07-12	2017-11-20		\N		8	3	2		3195	\N	\N
3934		\N	927	1664	1	2017-11-20	\N		\N		8	3	2		3195	\N	\N
3935		\N	\N	40	1	2017-07-12	2017-11-20		\N		8	3	2		3196	\N	\N
3936		\N	40	1664	1	2017-11-20	\N		\N		8	3	2		3196	\N	\N
3938		\N	40	1664	1	2017-11-20	\N		\N		8	3	2		874	\N	\N
3939		\N	\N	1256	1	2017-09-12	\N		\N		25	3	2		3198	\N	\N
3940		\N	\N	1258	1	2017-09-04	\N		\N		25	3	2		3199	\N	\N
3941		\N	\N	439	1	2017-09-12	\N		\N		25	3	2		3200	\N	\N
3859		\N	\N	493	1	2017-07-05	2018-05-14		\N		9	3	2		3136	\N	\N
3942		\N	\N	1266	1	2017-09-18	\N		\N		25	3	2		3201	\N	\N
3943		\N	338	1664	1	2017-11-21	2018-02-21		\N		20	3	2		2184	\N	\N
3946		\N	40	1664	1	2017-11-21	\N		\N		8	3	2		873	\N	\N
3947		\N	40	1664	4	2017-11-21	\N		\N		8	3	2	Դուրս գրման ա/թ 16/01/2018	875	\N	jass.manasyan@gmail.com
3948		\N	\N	40	1	2017-06-07	2017-11-21		\N		8	3	2		3204	\N	\N
3949		\N	40	1664	1	2017-11-21	2017-11-22		\N		8	3	2		3204	\N	\N
3950		\N	1664	277	1	2017-11-21	2017-12-01		\N		12	3	2		456	\N	\N
3951		\N	277	1664	4	2017-11-21	\N		\N		12	3	2	Դուրս գրման ա/թ 21/12/2017թ	2298	\N	vahram@hf.am
3952		\N	1664	739	1	2017-11-21	\N		\N		12	3	2		455	\N	\N
3953		\N	739	1715	1	2017-11-21	\N		\N		12	3	2		2096	\N	vahram@hf.am
3954		\N	1664	1715	1	2017-11-21	2017-11-30		\N		12	3	2		368	\N	\N
3955		\N	1664	1715	1	2017-11-21	2018-02-23		\N		12	3	2		374	\N	\N
3956		\N	1664	1664	1	2017-11-21	2017-11-24		\N		12	3	2		373	\N	\N
3958		\N	1664	1715	1	2017-11-21	2017-12-01		\N		12	3	2		108	\N	\N
3959		\N	1664	731	1	2017-11-27	2018-02-20		\N		12	3	2		73	\N	\N
3960		\N	\N	1279	1	2017-09-12	\N		\N		25	3	2		3205	\N	\N
3961		\N	\N	1273	1	2017-09-11	\N		\N		25	3	2		3206	\N	\N
3962		\N	\N	450	1	2017-09-19	\N		\N		25	3	2		3207	\N	\N
3963		\N	\N	1278	1	2017-08-15	\N		\N		25	3	2		3208	\N	\N
3964		\N	\N	1278	1	2017-09-12	\N		\N		25	3	2		3209	\N	\N
3965		\N	1664	1708	1	2017-11-22	2017-12-04		\N		20	3	2		97	\N	\N
3966		\N	1664	1708	1	2017-11-22	2018-02-15		\N		20	3	2		2156	\N	\N
3967		\N	1664	1708	1	2017-11-22	\N		\N		20	3	2		2229	\N	\N
3968		\N	1664	1708	1	2017-11-22	\N		\N		20	3	2		457	\N	\N
3969		\N	1664	1708	1	2017-11-22	2017-12-20		\N		20	3	2		380	\N	\N
3970		\N	1664	1708	1	2017-11-22	2017-11-29		\N		20	3	2		382	\N	\N
3971		\N	1664	1708	1	2017-11-22	2017-12-04		\N		20	3	2		367	\N	\N
3972		\N	336	1664	4	2017-11-22	\N		\N		20	3	2	Դուրս գրման ա/թ 21/12/2017թ	827	\N	vahram@hf.am
3973		\N	\N	1029	1	2017-07-12	2017-11-22		\N		20	3	2		3210	\N	\N
3974		\N	1029	1664	4	2017-11-22	\N		\N		20	3	2	Դուրս գրման ա/թ 21/12/2017թ	3210	\N	vahram@hf.am
3975		\N	\N	347	1	2017-07-12	2017-11-22		\N		20	3	2		3211	\N	\N
3976		\N	347	1664	4	2017-11-22	\N		\N		20	3	2	Դուրս գրման ա/թ 21/12/2017թ	3211	\N	vahram@hf.am
3977		\N	\N	347	1	2017-07-12	2017-11-22		\N		20	3	2		3212	\N	\N
3978		\N	347	1664	1	2017-11-22	2017-11-30		\N		20	3	2		3212	\N	\N
3979		\N	\N	611	1	2017-07-12	2017-11-22		\N		20	3	2		3213	\N	\N
3980		\N	611	1664	4	2017-11-22	\N		\N		20	3	2	դուրս գրման ամսաթիվ 21/12/2017	3213	\N	jass.manasyan@gmail.com
3981		\N	\N	611	1	2017-06-07	2017-11-22		\N		20	3	2		3214	\N	\N
3982		\N	611	1664	4	2017-11-22	\N		\N		20	3	2	Դուրս գրման ա/թ 21/12/2017թ	3214	\N	vahram@hf.am
3983		\N	\N	1027	1	2017-06-14	2017-11-22		\N		20	3	2		3215	\N	\N
3984		\N	1027	1664	4	2017-11-22	\N		\N		20	3	2	Դուրս գրման ա/թ 21/12/2017թ	3215	\N	vahram@hf.am
3987		\N	\N	1024	1	2017-07-12	2017-11-22		\N		20	3	2		3217	\N	\N
3988		\N	1024	1664	4	2017-11-22	\N		\N		20	3	2	Դուրս գրման ա/թ 21/12/2017թ	3217	\N	vahram@hf.am
3989		\N	1664	1706	1	2017-11-22	\N		\N		8	3	2		3204	\N	\N
3990		\N	\N	927	1	2017-07-12	2017-11-22		\N		8	3	2		3218	\N	\N
3991		\N	927	1664	4	2017-11-22	\N		\N		8	3	2	Դուրս գրման ա/թ 21/12/2017	3218	\N	vahram@hf.am
3992		\N	\N	1218	1	2017-09-12	\N		\N		25	3	2		3219	\N	\N
3993		\N	\N	1016	1	2017-07-12	2017-11-22		\N		8	3	2		3220	\N	\N
3994		\N	1016	1664	4	2017-11-22	\N		\N		8	3	2	Դուրս գրման ա/թ 21/12/2017թ	3220	\N	vahram@hf.am
3995		\N	1664	1706	1	2017-11-22	\N		\N		8	3	2		452	\N	\N
3996		\N	1664	1706	1	2017-11-22	\N		\N		8	3	2		451	\N	\N
3997		\N	1664	1706	1	2017-11-22	\N		\N		8	3	2		381	\N	\N
3998		\N	\N	1220	1	2017-09-19	\N		\N		25	3	2		3221	\N	\N
3999		\N	1664	1706	1	2017-11-22	2018-03-13		\N		8	3	2		383	\N	\N
4000		\N	1664	1706	1	2017-11-22	\N		\N		8	3	2		378	\N	\N
4001		\N	1664	1706	1	2017-11-22	2017-12-06		\N		8	3	2		1198	\N	\N
4002		\N	\N	1644	1	2017-09-20	\N		\N		25	3	2		3222	\N	\N
4003		\N	1664	1706	1	2017-11-22	2018-05-11		\N		8	3	2		2984	\N	\N
4004		\N	\N	415	1	2017-09-12	\N		\N		25	3	2		3223	\N	\N
4005		\N	\N	348	1	2017-07-12	2017-11-22		\N		20	3	2		3224	\N	\N
4006		\N	348	1664	4	2017-11-22	\N		\N		20	3	2	Դուրս գրման ա/թ 21/12/2017թ	3224	\N	vahram@hf.am
4007		\N	\N	1025	1	2017-06-07	2017-11-22		\N		20	3	2		3225	\N	\N
4008		\N	1025	1664	4	2017-11-22	\N		\N		20	3	2	Դուրս գրման ա/թ 21/12/2017թ	3225	\N	vahram@hf.am
4009		\N	\N	1570	1	2017-09-11	\N		\N		25	3	2		3226	\N	\N
4010		\N	525	1716	1	2017-11-22	2018-02-02		\N		16	3	2		2533	\N	vahram@hf.am
4011		\N	1664	525	1	2017-11-21	\N		\N		16	3	2		87	\N	\N
4012		\N	\N	1234	1	2017-09-05	\N		\N		25	3	2		3227	\N	\N
4013		\N	\N	1234	1	2017-08-08	\N		\N		25	3	2		3228	\N	\N
4014		\N	\N	1226	1	2017-09-05	\N		\N		25	3	2		3229	\N	\N
4015		\N	\N	1228	1	2017-10-08	\N		\N		25	3	2		3230	\N	\N
4016		\N	\N	1647	1	2017-08-28	\N		\N		25	3	2		3231	\N	\N
4017		\N	\N	413	1	2017-09-05	\N		\N		25	3	2		3232	\N	\N
4019		\N	\N	1003	1	2017-09-11	\N		\N		20	3	2		3234	\N	\N
4020		\N	1664	1261	1	2017-11-15	\N		\N		25	3	2		372	\N	\N
4021		\N	\N	1004	1	2017-09-11	\N		\N		20	3	2		3235	\N	\N
4022		\N	\N	1005	1	2017-09-04	\N		\N		20	3	2		3236	\N	\N
4023		\N	\N	369	1	2017-08-15	\N		\N		20	3	2		3237	\N	\N
4024		\N	\N	374	1	2017-08-30	\N		\N		20	3	2		3238	\N	\N
4025		\N	\N	1137	1	2017-06-21	\N		\N		9	3	2		3239	\N	\N
4026		\N	\N	1013	1	2017-09-18	\N		\N		20	3	2		3240	\N	\N
4027		\N	\N	1144	1	2017-07-12	\N		\N		9	3	2		3241	\N	\N
4028		\N	\N	1544	1	2017-07-12	\N		\N		9	3	2		3242	\N	\N
4029		\N	\N	1077	1	2017-07-11	\N		\N		9	3	2		3243	\N	\N
4030		\N	1664	1089	1	2017-11-22	\N		\N		9	3	2		357	\N	\N
4031		\N	\N	1135	1	2017-07-12	\N		\N		9	3	2		3244	\N	\N
4032		\N	\N	1533	1	2017-07-12	\N		\N		9	3	2		3245	\N	\N
4033		\N	\N	643	1	2017-06-07	\N		\N		21	3	2		3246	\N	\N
4034		\N	\N	646	1	2017-07-12	\N		\N		21	3	2		3247	\N	\N
4035		\N	\N	368	1	2017-09-13	\N		\N		20	3	2		3248	\N	\N
4036		\N	\N	607	1	2017-07-12	\N		\N		21	3	2		3249	\N	\N
4037		\N	\N	1029	1	2017-09-18	\N		\N		20	3	2		3250	\N	\N
4038		\N	\N	1016	1	2017-07-11	\N		\N		20	3	2		3251	\N	\N
4039		\N	\N	348	1	2017-09-04	\N		\N		20	3	2		3252	\N	\N
4040		\N	\N	1028	1	2017-09-12	\N		\N		20	3	2		3253	\N	\N
4041		\N	\N	1015	1	2017-09-04	\N		\N		20	3	2		3254	\N	\N
4042		\N	\N	645	1	2017-07-05	\N		\N		21	3	2		3255	\N	\N
4043		\N	\N	1614	1	2017-07-12	\N		\N		21	3	2		3256	\N	\N
4044		\N	\N	647	1	2017-08-09	\N		\N		21	3	2		3257	\N	\N
4045		\N	\N	347	1	2017-08-23	\N		\N		20	3	2		3258	\N	\N
4046		\N	\N	651	1	2017-07-12	\N		\N		21	3	2		3259	\N	\N
4047		\N	\N	653	1	2017-07-11	\N		\N		21	3	2		3260	\N	\N
4048		\N	\N	1022	1	2017-09-04	\N		\N		20	3	2		3261	\N	\N
4049		\N	\N	1620	1	2017-07-12	\N		\N		21	3	2		3262	\N	\N
4050		\N	\N	1621	1	2017-07-04	\N		\N		21	3	2		3263	\N	\N
4051		\N	\N	1020	1	2017-11-23	\N		\N		20	3	2		3264	\N	\N
4052		\N	\N	648	1	2017-07-05	2017-11-28		\N		21	3	2		3265	\N	\N
4053		\N	\N	1018	1	2017-08-15	\N		\N		20	3	2		3266	\N	\N
4054		\N	\N	1023	1	2017-09-04	\N		\N		20	3	2		3267	\N	\N
4055		\N	\N	1025	1	2017-09-12	\N		\N		20	3	2		3268	\N	\N
4056		\N	\N	1008	1	2017-09-05	\N		\N		20	3	2		3269	\N	\N
4057		\N	\N	1467	1	2017-07-12	\N		\N		21	3	2		3270	\N	\N
4058		\N	\N	1009	1	2017-08-22	\N		\N		20	3	2		3271	\N	\N
4059		\N	\N	370	1	2017-09-11	\N		\N		20	3	2		3272	\N	\N
4060		\N	\N	1011	1	2017-09-11	\N		\N		20	3	2		3273	\N	\N
4061		\N	\N	1012	1	2017-08-15	\N		\N		20	3	2		3274	\N	\N
4062		\N	\N	1331	1	2017-09-20	\N		\N		16	3	2		3275	\N	\N
4063		\N	\N	1352	1	2017-08-10	\N		\N		16	3	2		3276	\N	\N
4064		\N	\N	730	1	2017-06-15	\N		\N		12	3	2		3277	\N	\N
4065		\N	\N	732	1	2017-07-12	\N		\N		12	3	2		3278	\N	\N
4066		\N	\N	249	1	2017-07-12	\N		\N		12	3	2		3279	\N	\N
4067		\N	1664	277	1	2017-11-24	\N		\N		12	4	2		373	\N	\N
4068		\N	\N	277	1	2017-06-28	2017-11-24		\N		12	3	2		3280	\N	\N
4069		\N	277	1715	2	2017-11-24	\N		\N		12	3	2		3280	\N	vahram@hf.am
4070		\N	\N	1361	1	2017-09-19	\N		\N		16	3	2		3281	\N	\N
4071		\N	\N	1349	1	2017-07-05	\N		\N		16	3	2		3282	\N	\N
4072		\N	\N	1341	1	2017-08-14	\N		\N		16	3	2		3283	\N	\N
4073		\N	1664	1705	1	2017-11-27	2017-12-26		\N		9	3	2		377	\N	\N
4074		\N	1664	1705	1	2017-11-27	2017-12-05		\N		9	3	2		379	\N	\N
4075		\N	1664	1705	1	2017-11-27	2017-11-29		\N		9	3	2		366	\N	\N
4076		\N	731	1715	1	2017-11-27	\N		\N		12	3	2		994	\N	vahram@hf.am
4077		\N	731	1715	1	2017-11-27	\N		\N		12	3	2		995	\N	vahram@hf.am
4078		\N	1664	119	1	2017-11-27	\N		\N		23	3	2		2998	\N	\N
4079		\N	119	1664	2	2017-11-27	\N		\N		23	3	2		150	\N	\N
4080		\N	\N	257	1	2017-07-12	\N		\N		12	3	2		3284	\N	\N
4083		\N	1456	648	1	2017-11-28	\N		\N		21	3	2		2925	\N	\N
4084		\N	648	1664	2	2017-11-28	\N		\N		21	3	2		3265	\N	\N
4085		\N	\N	1497	1	2017-07-12	\N		\N		12	3	2		3285	\N	\N
4086		\N	\N	260	1	2017-07-12	\N		\N		12	3	2		3286	\N	\N
4087		\N	\N	262	1	2017-06-15	\N		\N		12	3	2		3287	\N	\N
4088		\N	\N	1498	1	2017-07-12	\N		\N		12	3	2		3288	\N	\N
4089		\N	\N	272	1	2017-07-12	\N		\N		12	3	2		3289	\N	\N
4090		\N	\N	295	1	2017-07-12	\N		\N		12	3	2		3290	\N	\N
4091		\N	\N	751	1	2017-07-13	\N		\N		12	3	2		3291	\N	\N
4092		\N	\N	736	1	2017-07-12	\N		\N		12	3	2		3292	\N	\N
4093		\N	\N	757	1	2017-07-12	\N		\N		12	3	2		3293	\N	\N
4094		\N	\N	268	1	2017-06-14	\N		\N		12	3	2		3294	\N	\N
4095		\N	\N	1664	4	2017-07-13	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	3295	\N	vahram@hf.am
4096		\N	\N	1664	4	2017-09-06	\N		\N		5	3	2	Դուրս գրման ա/թ 21/12/2017թ	3296	\N	vahram@hf.am
4097		\N	1705	492	1	2017-11-29	\N		\N		9	3	2		366	\N	\N
4098		\N	492	1664	1	2017-11-29	2018-01-11		\N		9	3	2		346	\N	jass.manasyan@gmail.com
4099		\N	\N	285	1	2017-06-15	\N		\N		12	3	2		3297	\N	\N
4100		\N	\N	264	1	2017-07-12	\N		\N		12	3	2		3298	\N	\N
4101		\N	\N	271	1	2017-07-06	\N		\N		12	3	2		3299	\N	\N
4102		\N	\N	261	1	2017-07-12	2018-04-06		\N		12	3	2		3300	\N	\N
4103		\N	\N	261	1	2017-07-13	2018-04-06		\N		12	3	2		3301	\N	\N
4104		\N	\N	290	1	2017-07-12	\N		\N		12	3	2		3302	\N	\N
4105		\N	\N	1499	1	2017-07-05	\N		\N		12	3	2		3303	\N	\N
4106		\N	\N	276	1	2017-07-12	\N		\N		12	3	2		3304	\N	\N
4107		\N	\N	276	1	2017-07-12	\N		\N		12	3	2		3305	\N	\N
4108		\N	\N	734	1	2017-07-13	\N		\N		12	3	2		3306	\N	\N
4109		\N	\N	251	1	2017-07-19	\N		\N		12	3	2		3307	\N	\N
4110		\N	\N	755	1	2017-06-15	\N		\N		12	3	2		3308	\N	\N
4111		\N	\N	286	1	2017-07-19	\N		\N		12	3	2		3309	\N	\N
4112		\N	\N	739	1	2017-07-13	\N		\N		12	3	2		3310	\N	\N
4113		\N	\N	756	1	2017-07-05	\N		\N		12	3	2		3311	\N	\N
4114		\N	\N	731	1	2017-07-13	\N		\N		12	3	2		3312	\N	\N
4115		\N	1664	1060	1	2017-11-30	\N		\N		9	3	2		388	\N	jass.manasyan@gmail.com
4117		\N	\N	277	1	2017-07-13	2017-11-30		\N		12	3	2		3313	\N	\N
4118		\N	277	1715	1	2017-11-30	\N		\N		12	3	2		3313	\N	vahram@hf.am
4119		\N	\N	1443	1	2017-07-12	\N		\N		23	3	2		3314	\N	\N
4120		\N	\N	1444	1	2017-06-15	\N		\N		23	3	2		3315	\N	\N
4121		\N	\N	1661	1	2017-07-19	\N		\N		23	3	2		3316	\N	\N
4122		\N	\N	1441	1	2017-07-12	\N		\N		23	3	2		3317	\N	\N
4123		\N	\N	602	1	2017-07-12	\N		\N		23	3	2		3318	\N	\N
4124		\N	1715	283	1	2017-11-30	\N		\N		12	3	2		368	\N	\N
4125		\N	\N	1433	1	2017-07-11	\N		\N		23	3	2		3319	\N	\N
4126		\N	\N	599	1	2017-08-17	\N		\N		23	3	2		3320	\N	\N
4127		\N	\N	1440	1	2017-07-12	\N		\N		23	3	2		3321	\N	\N
4128		\N	\N	1431	1	2017-07-13	\N		\N		23	3	2		3322	\N	\N
4129		\N	\N	1442	1	2017-07-12	\N		\N		23	3	2		3323	\N	\N
4130		\N	\N	1439	1	2017-07-12	\N		\N		23	3	2		3324	\N	\N
4131		\N	\N	1569	1	2017-08-16	\N		\N		25	3	2		3325	\N	\N
4132		\N	\N	426	1	2017-08-17	\N		\N		25	3	2		3326	\N	\N
4133		\N	\N	1210	1	2017-07-12	\N		\N		25	3	2		3327	\N	\N
4134		\N	\N	1212	1	2017-08-16	\N		\N		25	3	2		3328	\N	\N
4135		\N	\N	1209	1	2017-08-16	\N		\N		25	3	2		3329	\N	\N
4136		\N	\N	1208	1	2017-07-13	\N		\N		25	3	2		3330	\N	\N
4137		\N	\N	426	1	2017-08-17	\N		\N		25	3	2		3331	\N	\N
4138		\N	\N	1642	1	2017-08-09	\N		\N		25	3	2		3332	\N	\N
4139		\N	\N	410	1	2017-08-16	\N		\N		25	3	2		3333	\N	\N
4140		\N	\N	1231	1	2017-08-16	\N		\N		25	3	2		3334	\N	\N
4141		\N	\N	1231	1	2017-08-15	\N		\N		25	3	2		3335	\N	\N
4142		\N	\N	1231	1	2017-08-17	\N		\N		25	3	2		3336	\N	\N
4143		\N	\N	1232	1	2017-07-12	\N		\N		25	3	2		3337	\N	\N
4144		\N	\N	1232	1	2017-08-16	\N		\N		25	3	2		3338	\N	\N
4145		\N	\N	1204	1	2017-08-16	\N		\N		25	3	2		3339	\N	\N
4146		\N	\N	1233	1	2017-07-13	\N		\N		25	3	2		3340	\N	\N
4147		\N	\N	1235	1	2017-07-13	\N		\N		25	3	2		3341	\N	\N
4148		\N	\N	1230	1	2017-07-13	\N		\N		25	3	2		3342	\N	\N
4149		\N	\N	1277	1	2017-07-12	\N		\N		25	3	2		3343	\N	\N
4150		\N	\N	1276	1	2017-07-13	\N		\N		25	3	2		3344	\N	\N
4151		\N	\N	390	1	2017-07-05	2017-12-05		\N		25	3	2		3345	\N	\N
4152		\N	\N	1436	1	2017-08-16	\N		\N		23	3	2		3346	\N	\N
4153		\N	\N	1435	1	2017-08-10	\N		\N		23	3	2		3347	\N	\N
4154		\N	\N	617	1	2017-08-16	\N		\N		23	3	2		3348	\N	\N
4155		\N	\N	615	1	2017-08-10	\N		\N		23	3	2		3349	\N	\N
4156		\N	\N	1232	1	2017-08-09	\N		\N		25	3	2		3350	\N	\N
4157		\N	\N	1653	1	2017-07-12	\N		\N		23	3	2		3351	\N	\N
4158		\N	\N	1437	1	2017-07-12	\N		\N		23	3	2		3352	\N	\N
4159		\N	\N	632	1	2017-08-22	\N		\N		23	3	2		3353	\N	\N
4160		\N	\N	1438	1	2017-08-16	\N		\N		23	3	2		3354	\N	\N
4161		\N	\N	1445	1	2017-08-15	\N		\N		23	3	2		3355	\N	\N
4162		\N	\N	1432	1	2017-07-13	\N		\N		23	3	2		3356	\N	\N
4163		\N	\N	1434	1	2017-07-05	\N		\N		23	3	2		3357	\N	\N
4164		\N	1715	277	1	2017-12-01	\N		\N		12	3	2		108	\N	\N
4165		\N	277	1715	1	2017-12-01	\N		\N		12	3	2	Վահրամ	456	\N	\N
4166		\N	1664	1715	1	2017-11-30	\N		\N		12	3	2		3212	\N	\N
4167		\N	\N	1664	2	2017-12-01	2018-01-12		\N		5	4	2		3358	\N	jass.manasyan@gmail.com
4168		\N	\N	549	1	2017-08-16	\N		\N		19	3	2		3359	\N	\N
4169		\N	\N	541	1	2017-08-17	\N		\N		19	3	2		3360	\N	\N
4170		\N	\N	542	1	2017-07-12	\N		\N		19	3	2		3361	\N	\N
4171		\N	\N	440	1	2017-07-12	2017-12-14		\N		25	3	2		3362	\N	\N
4172		\N	\N	440	1	2017-07-11	2017-12-14		\N		25	3	2		3363	\N	\N
4173		\N	\N	275	1	2017-08-16	\N		\N		12	3	2		3364	\N	\N
4174		\N	\N	1211	1	2017-08-17	\N		\N		25	3	2		3365	\N	\N
4175		\N	\N	435	1	2017-08-16	\N		\N		25	3	2		3366	\N	\N
4176		\N	\N	273	1	2017-08-16	\N		\N		12	3	2		3367	\N	\N
4177		\N	1708	975	1	2017-12-04	\N		\N		20	3	2		97	\N	\N
4178		\N	975	1708	2	2017-12-04	2017-12-08		\N		20	3	2		2151	\N	\N
4179		\N	1708	975	1	2017-12-04	\N		\N		20	3	2		367	\N	\N
4180		\N	\N	975	1	2017-06-15	2017-12-04		\N		20	3	2		3368	\N	\N
4181		\N	975	1708	2	2017-12-04	2017-12-08		\N		20	3	2		3368	\N	\N
4182		\N	1354	1716	1	2017-12-04	\N		\N		16	3	2		1928	\N	\N
4183		\N	1354	1716	1	2017-12-04	\N		\N		16	3	2		1926	\N	vahram@hf.am
4184		\N	\N	1190	1	2017-08-15	\N		\N		9	3	2		3369	\N	\N
4185		\N	390	1664	2	2017-12-05	\N		\N		25	3	2		3345	\N	\N
4186		\N	1664	1707	1	2017-12-05	2017-12-14		\N		25	3	2		33	\N	\N
4187		\N	1664	1707	1	2017-12-05	2017-12-13		\N		25	3	2		32	\N	\N
4188		\N	1664	1707	1	2017-12-05	2017-12-18		\N		25	3	2		34	\N	\N
4189		\N	1664	1707	1	2017-12-05	2017-12-14		\N		25	3	2		27	\N	\N
4190		\N	1664	1707	1	2017-12-05	2017-12-19		\N		25	3	2		392	\N	\N
4191		\N	1664	1707	1	2017-12-05	2017-12-14		\N		25	3	2		395	\N	\N
4192		\N	1664	1707	1	2017-12-05	2017-12-13		\N		25	3	2		399	\N	\N
4193		\N	1664	1707	1	2017-12-05	2017-12-20		\N		25	3	2		403	\N	\N
4194		\N	1664	1707	1	2017-12-05	2017-12-14		\N		25	3	2		397	\N	\N
4195		\N	1664	1707	1	2017-12-05	2018-03-23		\N		25	3	2		390	\N	\N
4196		\N	1664	1707	1	2017-12-05	2018-01-30		\N		25	3	2		401	\N	\N
4197		\N	1705	1514	1	2017-12-05	\N		\N		9	3	2		379	\N	\N
4198		\N	\N	1213	1	2017-07-04	\N		\N		25	3	2		3370	\N	\N
4199		\N	\N	367	1	2017-07-12	\N		\N		20	3	2		3371	\N	\N
4200		\N	\N	399	1	2017-08-15	\N		\N		25	3	2		3372	\N	\N
4201		\N	\N	399	1	2017-08-23	\N		\N		25	3	2		3373	\N	\N
4202		\N	\N	399	1	2017-08-16	\N		\N		25	3	2		3374	\N	\N
4203		\N	\N	513	1	2017-07-11	\N		\N		16	3	2		3375	\N	\N
4204		\N	\N	838	1	2017-06-15	\N		\N		8	3	2		3376	\N	\N
4205		\N	\N	1565	1	2017-07-13	\N		\N		25	3	2		3377	\N	\N
4206		\N	\N	1202	1	2017-07-12	\N		\N		25	3	2		3378	\N	\N
4207		\N	\N	831	1	2017-06-14	\N		\N		8	3	2		3379	\N	\N
4208		\N	\N	14	1	2017-07-13	\N		\N		20	3	2		3380	\N	\N
4209		\N	\N	451	1	2017-06-14	\N		\N		25	3	2		3381	\N	\N
4210		\N	\N	451	1	2017-07-12	\N		\N		25	3	2		3382	\N	\N
4211		\N	\N	412	1	2017-08-16	\N		\N		25	3	2		3383	\N	\N
4212		\N	\N	412	1	2017-07-20	\N		\N		25	3	2		3384	\N	\N
4213		\N	\N	1583	1	2017-07-12	\N		\N		20	3	2		3385	\N	\N
4214		\N	\N	1583	1	2017-07-13	\N		\N		20	3	2		3386	\N	\N
4215		\N	\N	796	1	2017-07-20	\N		\N		24	3	2		3387	\N	\N
4216		\N	\N	413	1	2017-07-12	2018-04-18		\N		25	3	2		3388	\N	\N
4217		\N	\N	818	1	2017-07-13	\N		\N		24	3	2		3389	\N	\N
4218		\N	\N	309	1	2017-08-16	\N		\N		24	3	2		3390	\N	\N
4219		\N	\N	845	1	2017-07-05	\N		\N		8	3	2		3391	\N	\N
4220		\N	\N	550	1	2017-07-12	\N		\N		19	3	2		3392	\N	\N
4221		\N	\N	844	1	2017-08-16	\N		\N		8	3	2		3393	\N	\N
4222		\N	\N	979	1	2017-07-12	\N		\N		20	3	2		3394	\N	\N
4223		\N	\N	980	1	2017-07-13	\N		\N		20	3	2		3395	\N	\N
4224		\N	\N	342	1	2017-07-12	\N		\N		20	3	2		3396	\N	\N
4225		\N	\N	984	1	2017-08-09	\N		\N		20	3	2		3397	\N	\N
4226		\N	\N	983	1	2017-07-13	\N		\N		20	3	2		3398	\N	\N
4227		\N	\N	982	1	2017-07-05	\N		\N		20	3	2		3399	\N	\N
4228		\N	\N	981	1	2017-07-12	\N		\N		20	3	2		3400	\N	\N
4229		\N	\N	843	1	2017-07-12	\N		\N		8	3	2		3401	\N	\N
4230		\N	1664	1705	1	2017-10-04	\N		\N		9	3	2		476	\N	\N
4231		\N	1664	1705	1	2017-10-04	\N		\N		9	3	2		676	\N	\N
4232		\N	1664	1705	1	2017-09-13	\N		\N		9	3	2		65	\N	\N
4233		\N	1664	1705	1	2017-08-16	2018-03-12		\N		9	3	2		104	\N	\N
4234		\N	1664	1705	1	2017-09-14	\N		\N		9	3	2		674	\N	\N
4235		\N	1664	1705	1	2017-08-16	\N		\N		9	3	2		675	\N	\N
4236		\N	1664	1705	1	2017-09-14	\N		\N		9	3	2		480	\N	\N
4237		\N	1664	1705	1	2017-08-15	2018-04-12		\N		9	3	2		61	\N	\N
4238		\N	966	1706	2	2017-12-06	2017-12-11		\N		8	3	2		2010	\N	\N
4239		\N	1706	966	1	2017-12-06	\N		\N		8	3	2		1198	\N	\N
4240		\N	\N	835	1	2017-08-17	\N		\N		8	3	2		3402	\N	\N
4241		\N	\N	1033	1	2017-08-16	\N		\N		20	3	2		3403	\N	\N
4242		\N	\N	828	1	2017-09-21	\N		\N		8	3	2		3404	\N	\N
4243		\N	\N	1031	1	2017-07-13	\N		\N		20	3	2		3405	\N	\N
4244		\N	\N	1026	1	2017-08-17	\N		\N		20	3	2		3406	\N	\N
4245		\N	\N	1355	1	2017-07-20	\N		\N		16	3	2		3407	\N	\N
4246		\N	\N	1035	1	2017-08-17	\N		\N		20	3	2		3408	\N	\N
4247		\N	\N	1034	1	2017-09-13	\N		\N		20	3	2		3409	\N	\N
4248		\N	\N	1342	1	2017-08-17	\N		\N		16	3	2		3410	\N	\N
4249		\N	\N	346	1	2017-08-17	2017-12-08		\N		20	3	2		3411	\N	\N
4250		\N	\N	511	1	2017-08-17	\N		\N		16	3	2		3412	\N	\N
4251		\N	\N	1032	1	2017-08-16	\N		\N		20	3	2		3413	\N	\N
4252		\N	\N	836	1	2017-08-17	\N		\N		8	3	2		3414	\N	\N
4253		\N	\N	324	1	2017-08-24	\N		\N		8	3	2		3415	\N	\N
4254		\N	\N	1510	1	2017-07-06	\N		\N		9	3	2		3416	\N	\N
4256		\N	1708	346	1	2017-11-29	\N		\N		20	3	2		382	\N	\N
4257		\N	\N	545	1	2017-08-09	\N		\N		19	3	2		3417	\N	\N
4258		\N	\N	540	1	2017-07-05	\N		\N		19	3	2		3418	\N	\N
4259		\N	\N	1017	1	2017-08-16	\N		\N		20	3	2		3419	\N	\N
4260		\N	\N	544	1	2017-08-09	\N		\N		19	3	2		3420	\N	\N
4261		\N	\N	1019	1	2017-07-13	\N		\N		20	3	2		3421	\N	\N
4262		\N	\N	6	1	2017-08-16	\N		\N		20	3	2		3422	\N	\N
4263		\N	\N	1021	1	2017-08-17	\N		\N		20	3	2		3423	\N	\N
4264		\N	\N	1088	1	2017-08-16	\N		\N		9	3	2		3424	\N	\N
4265		\N	\N	1348	1	2017-08-16	\N		\N		16	3	2		3425	\N	\N
4266		\N	\N	372	1	2017-06-14	\N		\N		20	3	2		3426	\N	\N
4267		\N	\N	1500	1	2017-08-24	\N		\N		12	3	2		3427	\N	\N
4268		\N	\N	968	1	2017-08-16	\N		\N		20	3	2		3428	\N	\N
4269		\N	\N	1243	1	2017-08-17	\N		\N		25	3	2		3429	\N	\N
4270		\N	\N	969	1	2017-07-20	\N		\N		25	3	2		3430	\N	\N
4271		\N	\N	971	1	2017-08-17	\N		\N		20	3	2		3431	\N	\N
4272		\N	\N	985	1	2017-08-17	\N		\N		20	3	2		3432	\N	\N
4273		\N	\N	972	1	2017-07-13	\N		\N		20	3	2		3433	\N	\N
4274		\N	346	1664	2	2017-12-08	\N		\N		20	3	2		3411	\N	\N
4275		\N	1708	1664	2	2017-12-08	\N		\N		20	3	2		3368	\N	\N
4276		\N	1708	1664	2	2017-12-08	\N		\N		20	3	2		2151	\N	\N
4277		\N	1664	1708	1	2017-12-08	2017-12-12		\N		20	3	2		405	\N	\N
4278		\N	1664	1708	1	2017-12-08	2018-01-22		\N		20	3	2		386	\N	\N
4279		\N	1664	1708	1	2017-12-08	2017-12-22		\N		20	3	2		404	\N	\N
4280		\N	1664	1708	1	2017-12-08	2018-03-01		\N		20	3	2		35	\N	\N
4281		\N	\N	994	1	2017-07-20	\N		\N		20	3	2		3434	\N	\N
4282		\N	\N	993	1	2017-08-17	\N		\N		20	3	2		3435	\N	\N
4283		\N	\N	1237	1	2017-07-04	\N		\N		25	3	2		3436	\N	\N
4284		\N	\N	1248	1	2017-07-12	\N		\N		25	3	2		3437	\N	\N
4285		\N	\N	1248	1	2017-08-17	\N		\N		25	3	2		3438	\N	\N
4286		\N	\N	1247	1	2017-07-12	\N		\N		25	3	2		3439	\N	\N
4287		\N	\N	1251	1	2017-07-12	\N		\N		25	3	2		3440	\N	\N
4288		\N	\N	1253	1	2017-07-12	\N		\N		25	3	2		3441	\N	\N
4289		\N	\N	842	1	2017-08-17	\N		\N		8	3	2		3442	\N	\N
4290		\N	\N	320	1	2017-08-17	\N		\N		8	3	2		3443	\N	\N
4291		\N	\N	1002	1	2017-07-05	\N		\N		20	3	2		3444	\N	\N
4292		\N	\N	363	1	2017-08-10	\N		\N		20	3	2		3445	\N	\N
4293		\N	\N	362	1	2017-08-09	\N		\N		20	3	2		3446	\N	\N
4294		\N	\N	995	1	2017-07-12	\N		\N		20	3	2		3447	\N	\N
4295		\N	\N	996	1	2017-07-14	\N		\N		20	3	2		3448	\N	\N
4296		\N	\N	332	1	2017-07-20	\N		\N		8	3	2		3449	\N	\N
4297		\N	\N	333	1	2017-08-16	\N		\N		8	3	2		3450	\N	\N
4298		\N	\N	841	1	2017-08-23	\N		\N		8	3	2		3451	\N	\N
4299		\N	\N	322	1	2017-08-16	\N		\N		8	3	2		3452	\N	\N
4300		\N	\N	1450	1	2017-07-13	\N		\N		21	3	2		3453	\N	\N
4301		\N	\N	1324	1	2017-07-13	\N		\N		9	3	2		3454	\N	\N
4302		\N	\N	1575	1	2017-08-17	\N		\N		9	3	2		3455	\N	\N
4303		\N	\N	1296	1	2017-08-17	\N		\N		9	3	2		3456	\N	\N
4304		\N	\N	1649	1	2017-08-16	\N		\N		19	3	2		3457	\N	\N
4305		\N	\N	1119	1	2017-07-06	2017-12-13		\N		9	3	2		3458	\N	\N
4306		\N	\N	800	1	2017-08-17	\N		\N		8	3	2		3459	\N	\N
4307		\N	\N	308	1	2017-08-23	\N		\N		12	3	2		3460	\N	\N
4308		\N	\N	720	1	2017-06-06	\N		\N		12	3	2		3461	\N	\N
4309		\N	\N	1265	1	2017-07-13	\N		\N		25	3	2		3462	\N	\N
4310		\N	\N	1170	1	2017-07-06	2017-12-07		\N		9	3	2		3463	\N	\N
4311		\N	1170	1705	1	2017-12-07	2017-12-26		\N		9	3	2		3463	\N	\N
4312		\N	\N	1046	1	2017-05-18	2017-12-08		\N		9	3	2		3464	\N	\N
4313		\N	1046	1705	1	2017-12-08	2017-12-27		\N		9	3	2		3464	\N	\N
4314		\N	\N	389	1	2017-07-13	\N		\N		25	3	2		3465	\N	\N
4315		\N	\N	1343	1	2017-07-11	\N		\N		16	3	2		3466	\N	\N
4316		\N	\N	508	1	2017-07-12	\N		\N		16	3	2		3467	\N	\N
4317		\N	\N	723	1	2017-07-13	\N		\N		12	3	2		3468	\N	\N
4318		\N	\N	1207	1	2017-07-06	\N		\N		8	3	2		3469	\N	\N
4319		\N	\N	1240	1	2017-07-13	\N		\N		25	3	2		3470	\N	\N
4320		\N	\N	1240	1	2017-07-13	\N		\N		25	3	2		3471	\N	\N
4321		\N	\N	299	1	2017-08-22	\N		\N		12	3	2		3472	\N	\N
4322		\N	\N	297	1	2017-07-13	\N		\N		12	3	2		3473	\N	\N
4323		\N	\N	1267	1	2017-07-13	\N		\N		25	3	2		3474	\N	\N
4324		\N	\N	727	1	2017-08-09	\N		\N		12	3	2		3475	\N	\N
4325		\N	\N	298	1	2017-08-17	\N		\N		12	3	2		3476	\N	\N
4326		\N	1708	998	1	2017-12-12	\N		\N		20	3	2		405	\N	\N
4327		\N	\N	1556	1	2017-07-13	\N		\N		9	3	2		3477	\N	\N
4328		\N	\N	846	1	2017-08-17	\N		\N		8	3	2		3478	\N	\N
4329		\N	\N	546	1	2017-08-10	\N		\N		19	3	2		3479	\N	\N
4330		\N	\N	1245	1	2017-07-12	\N		\N		25	3	2		3480	\N	\N
4331		\N	\N	1245	1	2017-08-17	\N		\N		25	3	2		3481	\N	\N
4332		\N	\N	832	1	2017-08-17	\N		\N		8	3	2		3482	\N	\N
4333		\N	\N	539	1	2017-08-16	\N		\N		19	3	2		3483	\N	\N
4334		\N	\N	992	1	2017-07-13	\N		\N		20	3	2		3484	\N	\N
4335		\N	\N	1236	1	2017-06-07	\N		\N		25	3	2		3485	\N	\N
4336		\N	\N	225	1	2017-08-16	\N		\N		19	3	2		3486	\N	\N
4337		\N	1664	178	1	2017-12-12	\N		\N		7	3	2		158	\N	\N
4338		\N	1706	1664	2	2017-12-11	\N		\N		8	3	2		2010	\N	\N
4339		\N	1664	1704	1	2017-12-13	2017-12-19		\N		7	3	2		1492	\N	\N
4340		\N	1707	438	1	2017-12-13	\N		\N		25	3	2		2608	\N	\N
4341		\N	438	1707	1	2017-12-13	2017-12-25		\N		25	3	2		1806	\N	\N
4342		\N	438	1707	1	2017-12-13	2017-12-24		\N		25	3	2		1807	\N	\N
4343		\N	\N	438	1	2017-07-13	\N		\N		18	3	2		3487	\N	\N
4344		\N	1119	1705	1	2017-12-13	2018-01-09		\N		9	3	2	ապամոնտաժվել է, դպրոցը  վերամիավորվել է	3458	\N	\N
4345		\N	1707	438	1	2017-12-13	\N		\N		25	3	2		399	\N	\N
4347		\N	\N	543	1	2017-07-20	\N		\N		19	3	2		3488	\N	\N
4348		\N	\N	531	1	2017-08-17	\N		\N		19	3	2		3489	\N	\N
4349		\N	\N	1250	1	2017-08-16	\N		\N		25	3	2		3490	\N	\N
4350		\N	\N	1250	1	2017-08-16	\N		\N		25	3	2		3491	\N	\N
4351		\N	\N	1254	1	2017-08-17	\N		\N		25	3	2		3492	\N	\N
4352		\N	\N	1241	1	2017-09-07	\N		\N		25	3	2		3493	\N	\N
4353		\N	\N	1246	1	2017-09-13	\N		\N		25	3	2		3494	\N	\N
4354		\N	\N	398	1	2017-08-16	\N		\N		25	25	2		3495	\N	\N
4355		\N	\N	424	1	2017-08-16	\N		\N		25	3	2		3496	\N	\N
4356		\N	\N	395	1	2017-08-10	\N		\N		25	3	2		3497	\N	\N
4358		\N	\N	441	1	2017-07-14	2017-12-13		\N		18	3	2		3498	\N	\N
4359		\N	441	1707	1	2017-12-13	2017-12-25		\N		25	3	2		3498	\N	jass.manasyan@gmail.com
4360		\N	\N	441	1	2017-07-12	2017-12-13		\N		18	3	2		3499	\N	\N
4361		\N	441	1707	1	2017-12-13	2017-12-25		\N		25	3	2		3499	\N	\N
4362		\N	\N	397	1	2017-08-17	\N		\N		25	3	2		3500	\N	\N
4363		\N	\N	397	1	2017-08-17	\N		\N		25	3	2		3501	\N	\N
4364		\N	\N	397	1	2017-08-10	\N		\N		25	3	2		3502	\N	\N
4365		\N	\N	1641	1	2017-08-16	\N		\N		25	3	2		3503	\N	\N
4366		\N	\N	534	1	2017-08-17	\N		\N		19	3	2		3504	\N	\N
4367		\N	178	1704	1	2017-12-13	2017-12-19		\N		7	3	2		1706	\N	\N
4368		\N	\N	997	1	2017-08-17	\N		\N		20	3	2		3505	\N	\N
4369		\N	\N	533	1	2017-08-16	\N		\N		19	3	2		3506	\N	\N
4370		\N	\N	999	1	2017-08-16	\N		\N		20	3	2		3507	\N	\N
4371		\N	\N	357	1	2017-08-17	\N		\N		20	3	2		3508	\N	\N
4372		\N	\N	351	1	2017-07-13	2018-01-22		\N		20	3	2		3509	\N	\N
4373		\N	\N	356	1	2017-08-17	\N		\N		20	3	2		3510	\N	\N
4374		\N	1707	441	1	2017-12-13	\N		\N		25	3	2		32	\N	\N
4375		\N	440	1707	1	2017-12-14	2017-12-24		\N		25	3	2		3363	\N	\N
4376		\N	440	1707	1	2017-12-14	2017-12-25		\N		25	3	2		3362	\N	\N
4377		\N	1707	440	1	2017-12-14	\N		\N		25	3	2		33	\N	\N
4378		\N	1707	440	1	2017-12-14	\N		\N		25	3	2		395	\N	\N
4379		\N	\N	1381	1	2017-06-14	\N		\N		19	3	2		3511	\N	\N
4380		\N	\N	1405	1	2017-07-13	\N		\N		19	3	2		3512	\N	\N
4381		\N	\N	1371	1	2017-08-09	\N		\N		19	3	2		3513	\N	\N
4382		\N	\N	1391	1	2017-07-14	\N		\N		19	3	2		3514	\N	\N
4383		\N	\N	1374	1	2017-08-10	\N		\N		19	3	2		3515	\N	\N
4384		\N	\N	1408	1	2017-07-06	\N		\N		19	3	2		3516	\N	\N
4385		\N	\N	1395	1	2017-08-17	\N		\N		19	3	2		3517	\N	\N
4386		\N	\N	1386	1	2017-08-16	\N		\N		19	3	2		3518	\N	\N
4387		\N	\N	1380	1	2017-08-24	\N		\N		19	3	2		3519	\N	\N
4388		\N	\N	1718	1	2017-08-17	\N		\N		19	3	2		3520	\N	\N
4389		\N	\N	1414	1	2017-08-16	\N		\N		19	3	2		3521	\N	\N
4390		\N	\N	1398	1	2017-08-09	\N		\N		19	3	2		3522	\N	\N
4391		\N	\N	1373	1	2017-08-16	\N		\N		19	3	2		3523	\N	\N
4392		\N	\N	1413	1	2017-08-23	\N		\N		19	3	2		3524	\N	\N
4393		\N	\N	1410	1	2017-08-16	\N		\N		19	3	2		3525	\N	\N
4394		\N	\N	1390	1	2017-08-24	\N		\N		19	3	2		3526	\N	\N
4395		\N	\N	287	1	2017-08-24	\N		\N		12	3	2		3527	\N	\N
4396		\N	\N	687	1	2017-08-10	\N		\N		22	3	2		3528	\N	\N
4397		\N	\N	282	1	2017-07-13	\N		\N		12	3	2		3529	\N	\N
4398		\N	\N	1471	1	2017-08-23	\N		\N		22	3	2		3530	\N	\N
4399		\N	\N	391	1	2017-08-24	\N		\N		25	3	2		3531	\N	\N
4400		\N	\N	1516	1	2017-08-16	\N		\N		9	3	2		3532	\N	\N
4401		\N	\N	1494	1	2017-08-16	\N		\N		22	3	2		3533	\N	\N
4402		\N	\N	296	1	2017-07-14	\N		\N		20	3	2		3534	\N	\N
4403		\N	\N	1118	1	2017-07-12	\N		\N		9	3	2		3535	\N	\N
4404		\N	\N	683	1	2017-08-24	\N		\N		22	3	2		3536	\N	\N
4405		\N	\N	722	1	2017-08-17	\N		\N		12	3	2		3537	\N	\N
4406		\N	\N	1152	1	2017-08-24	\N		\N		9	3	2		3538	\N	\N
4407		\N	\N	1493	1	2017-07-12	\N		\N		22	3	2		3539	\N	\N
4408		\N	\N	360	1	2017-08-09	\N		\N		20	3	2		3540	\N	\N
4409		\N	\N	724	1	2017-08-23	\N		\N		12	3	2		3541	\N	\N
4410		\N	1707	1566	1	2017-12-14	\N		\N		25	3	2		27	\N	\N
4411		\N	1707	1566	1	2017-12-14	\N		\N		25	3	2		397	\N	\N
4412		\N	\N	1566	1	2017-06-14	2017-12-14		\N		15	3	2		3542	\N	\N
4413		\N	1566	1707	1	2017-12-14	2017-12-25		\N		25	3	2		3542	\N	\N
4414		\N	\N	1566	1	2017-07-05	2017-12-14		\N		15	3	2		3543	\N	\N
4415		\N	1566	1707	1	2017-12-14	2017-12-24		\N		25	3	2		3543	\N	\N
4416		\N	\N	1142	1	2017-08-24	\N		\N		9	3	2		3544	\N	\N
4417		\N	\N	688	1	2017-08-16	\N		\N		22	3	2		3545	\N	\N
4418		\N	\N	281	1	2017-08-16	\N		\N		12	3	2		3546	\N	\N
4419		\N	\N	1178	1	2017-08-16	\N		\N		9	3	2		3547	\N	\N
4420		\N	\N	1469	1	2017-07-13	\N		\N		22	3	2		3548	\N	\N
4421		\N	\N	253	1	2017-07-05	\N		\N		12	3	2		3549	\N	\N
4422		\N	\N	365	1	2017-09-13	\N		\N		20	3	2		3550	\N	\N
4423		\N	\N	1520	1	2017-08-09	\N		\N		9	3	2		3551	\N	\N
4424		\N	\N	728	1	2017-08-17	\N		\N		12	3	2		3552	\N	\N
4425		\N	\N	748	1	2017-08-09	\N		\N		12	3	2		3553	\N	\N
4426		\N	\N	758	1	2017-08-09	\N		\N		12	3	2		3554	\N	\N
4427		\N	1707	427	1	2017-12-15	\N		\N		25	3	2		459	\N	\N
4428		\N	427	1707	2	2017-12-15	2017-12-25		\N		25	3	2		2242	\N	\N
4429		\N	\N	1112	1	2017-08-16	\N		\N		9	3	2		3555	\N	\N
4430		\N	\N	1076	1	2017-08-17	\N		\N		9	3	2		3556	\N	\N
4431		\N	\N	1127	1	2017-08-16	\N		\N		9	3	2		3557	\N	\N
4432		\N	\N	1528	1	2017-09-14	\N		\N		9	3	2		3558	\N	\N
4433		\N	\N	1547	1	2017-08-17	\N		\N		9	3	2		3559	\N	\N
4434		\N	\N	1186	1	2017-09-05	\N		\N		9	3	2		3560	\N	\N
4435		\N	\N	301	1	2017-08-23	\N		\N		12	3	2		3561	\N	\N
4436		\N	\N	726	1	2017-08-15	\N		\N		12	3	2		3562	\N	\N
4437		\N	\N	307	1	2017-08-09	\N		\N		12	3	2		3563	\N	\N
4438		\N	\N	306	1	2017-09-21	\N		\N		12	3	2		3564	\N	\N
4439		\N	\N	278	1	2017-08-10	\N		\N		12	3	2		3565	\N	\N
4440		\N	\N	721	1	2017-09-14	\N		\N		12	3	2		3566	\N	\N
4441		\N	\N	303	1	2017-08-10	\N		\N		12	3	2		3567	\N	\N
4442		\N	\N	274	1	2017-08-17	\N		\N		12	3	2		3568	\N	\N
4443		\N	\N	302	1	2017-09-14	\N		\N		12	3	2		3569	\N	\N
4444		\N	\N	300	1	2017-09-04	\N		\N		12	3	2		3570	\N	\N
4445		\N	\N	304	1	2017-09-07	\N		\N		12	3	2		3571	\N	\N
4446		\N	\N	725	1	2017-08-07	\N		\N		12	3	2		3572	\N	\N
4447		\N	\N	719	1	2017-08-17	\N		\N		12	3	2		3573	\N	\N
4448		\N	\N	1353	1	2017-08-10	\N		\N		16	3	2		3574	\N	\N
4449		\N	\N	1340	1	2017-08-17	\N		\N		16	3	2		3575	\N	\N
4450		\N	\N	523	1	2017-08-16	\N		\N		16	3	2		3576	\N	\N
4451		\N	\N	526	1	2017-08-17	\N		\N		16	3	2		3577	\N	\N
4452		\N	\N	1627	1	2017-07-13	\N		\N		22	3	2		3578	\N	\N
4453		\N	\N	1626	1	2017-08-10	\N		\N		22	3	2		3579	\N	\N
4454		\N	\N	1472	1	2017-07-05	\N		\N		22	3	2		3580	\N	\N
4455		\N	\N	665	1	2017-08-03	\N		\N		22	3	2		3581	\N	\N
4456		\N	\N	1480	1	2017-08-10	\N		\N		22	3	2		3582	\N	\N
4457		\N	\N	441	1	2017-08-10	\N		\N		25	3	2		3583	\N	\N
4458		\N	\N	1124	1	2017-08-17	\N		\N		9	3	2		3584	\N	\N
4459		\N	\N	1140	1	2017-08-17	\N		\N		9	3	2		3585	\N	\N
4460		\N	\N	1159	1	2017-08-03	\N		\N		9	3	2		3586	\N	\N
4461		\N	\N	1157	1	2017-08-16	\N		\N		9	3	2		3587	\N	\N
4462		\N	\N	1638	1	2017-08-17	\N		\N		22	3	2		3588	\N	\N
4463		\N	\N	1639	1	2017-08-17	\N		\N		22	3	2		3589	\N	\N
4464		\N	\N	609	1	2017-08-09	\N		\N		23	3	2		3590	\N	\N
4465		\N	\N	681	1	2017-08-10	\N		\N		22	3	2		3591	\N	\N
4466		\N	\N	1636	1	2017-08-18	\N		\N		22	3	2		3592	jass.manasyan@gmail.com	\N
4467		\N	\N	759	1	2017-08-09	\N		\N		12	3	2		3593	jass.manasyan@gmail.com	\N
4468		\N	\N	1206	1	2017-08-16	\N		\N		25	3	2		3594	jass.manasyan@gmail.com	\N
4469		\N	\N	743	1	2017-08-03	\N		\N		12	3	2		3595	jass.manasyan@gmail.com	\N
4470		\N	22	1708	2	2017-12-18	2017-12-18		\N		20	3	2		923	\N	vahram@hf.am
4471		\N	1664	22	1	2017-12-18	\N		\N		20	3	2		296	\N	jass.manasyan@gmail.com
4472		\N	1707	444	1	2017-12-18	\N		\N		25	3	2		34	sonahdavtyan@gmail.com	\N
4473		\N	1664	1665	1	2017-12-18	\N		\N		6	3	2		161	jass.manasyan@gmail.com	\N
4474		\N	1707	390	1	2017-12-19	\N		\N		25	3	2		392	\N	jass.manasyan@gmail.com
4475		\N	1704	1664	1	2017-12-19	2018-02-15		\N		7	3	2		1492	jass.manasyan@gmail.com	\N
4476		\N	1704	1664	1	2017-12-19	\N		\N		7	3	2		1706	\N	jass.manasyan@gmail.com
4477		\N	\N	1059	1	2017-08-10	2017-12-15		\N		9	3	2		3596	jass.manasyan@gmail.com	\N
4478		\N	1059	1705	1	2017-12-15	2017-12-28		\N		9	3	2	ապամոնտաժվել է դպրոցի փակման պատճառով	3596	jass.manasyan@gmail.com	jass.manasyan@gmail.com
4479		\N	\N	1555	1	2017-08-17	\N		\N		9	3	2		3597	jass.manasyan@gmail.com	\N
4480		\N	\N	1115	1	2017-07-06	\N		\N		9	3	2		3598	jass.manasyan@gmail.com	\N
4481		\N	\N	1526	1	2017-08-16	\N		\N		9	3	2		3599	jass.manasyan@gmail.com	\N
4482		\N	\N	1545	1	2017-08-10	\N		\N		9	3	2		3600	jass.manasyan@gmail.com	\N
4483		\N	\N	704	1	2017-08-17	\N		\N		12	3	2		3601	jass.manasyan@gmail.com	\N
4484		\N	\N	284	1	2017-08-25	\N		\N		12	3	2		3602	jass.manasyan@gmail.com	\N
4485		\N	\N	718	1	2017-08-18	\N		\N		12	3	2		3603	jass.manasyan@gmail.com	\N
4486		\N	\N	708	1	2017-08-09	\N		\N		12	3	2		3604	jass.manasyan@gmail.com	\N
4487		\N	\N	1719	1	2017-08-24	\N		\N		9	3	2		3605	jass.manasyan@gmail.com	\N
4488		\N	\N	711	1	2017-08-10	\N		\N		12	3	2		3606	jass.manasyan@gmail.com	\N
4489		\N	\N	702	1	2017-08-17	\N		\N		12	3	2		3607	jass.manasyan@gmail.com	\N
4490		\N	\N	288	1	2017-08-17	\N		\N		12	3	2		3608	jass.manasyan@gmail.com	\N
4491		\N	\N	279	1	2017-08-19	\N		\N		12	3	2		3609	jass.manasyan@gmail.com	\N
4492		\N	\N	248	1	2017-08-10	\N		\N		12	3	2		3610	jass.manasyan@gmail.com	\N
4493		\N	\N	366	1	2017-08-17	\N		\N		20	3	2		3611	jass.manasyan@gmail.com	\N
4494		\N	\N	752	1	2017-08-16	\N		\N		12	3	2		3612	jass.manasyan@gmail.com	\N
4495		\N	\N	716	1	2017-08-25	\N		\N		12	3	2		3613	jass.manasyan@gmail.com	\N
4496		\N	\N	1496	1	2017-08-16	\N		\N		12	3	2		3614	jass.manasyan@gmail.com	\N
4497		\N	\N	280	1	2017-08-10	\N		\N		12	3	2		3615	jass.manasyan@gmail.com	\N
4498		\N	\N	706	1	2017-08-17	\N		\N		12	3	2		3616	jass.manasyan@gmail.com	\N
4499		\N	\N	294	1	2017-08-03	\N		\N		12	3	2		3617	jass.manasyan@gmail.com	\N
4500		\N	\N	703	1	2017-08-10	\N		\N		12	3	2		3618	jass.manasyan@gmail.com	\N
4501		\N	\N	715	1	2017-08-09	\N		\N		12	3	2		3619	jass.manasyan@gmail.com	\N
4502		\N	\N	717	1	2017-08-18	\N		\N		12	3	2		3620	jass.manasyan@gmail.com	\N
4503		\N	\N	712	1	2017-08-09	\N		\N		12	3	2		3621	jass.manasyan@gmail.com	\N
4504		\N	\N	713	1	2017-08-23	\N		\N		12	3	2		3622	jass.manasyan@gmail.com	\N
4505		\N	\N	1637	1	2017-08-17	\N		\N		22	3	2		3623	jass.manasyan@gmail.com	\N
4506		\N	\N	679	1	2017-08-17	\N		\N		22	3	2		3624	jass.manasyan@gmail.com	\N
4507		\N	\N	680	1	2017-08-09	\N		\N		22	3	2		3625	jass.manasyan@gmail.com	\N
4508		\N	\N	1492	1	2017-08-24	\N		\N		22	3	2		3626	jass.manasyan@gmail.com	\N
4509		\N	\N	430	1	2017-08-16	2017-12-20		\N		15	3	2		3627	jass.manasyan@gmail.com	\N
4510		\N	430	1707	2	2017-12-20	2017-12-25		\N		25	3	2		3627	jass.manasyan@gmail.com	\N
4511		\N	1707	430	1	2017-12-20	\N		\N		25	3	2		403	jass.manasyan@gmail.com	\N
4512		\N	\N	1344	1	2017-08-02	\N		\N		16	3	2		3628	jass.manasyan@gmail.com	\N
4513		\N	\N	562	1	2017-08-16	\N		\N		16	3	2		3629	jass.manasyan@gmail.com	\N
4514		\N	\N	568	1	2017-08-25	\N		\N		16	3	2		3630	jass.manasyan@gmail.com	\N
4515		\N	\N	566	1	2017-08-10	\N		\N		16	3	2		3631	jass.manasyan@gmail.com	\N
4516		\N	\N	520	1	2017-07-13	2018-02-27		\N		16	3	2		3632	jass.manasyan@gmail.com	\N
4517		\N	\N	517	1	2017-08-16	\N		\N		16	3	2		3633	jass.manasyan@gmail.com	\N
4518		\N	\N	563	1	2017-08-16	\N		\N		16	3	2		3634	jass.manasyan@gmail.com	\N
4519		\N	\N	519	1	2017-08-16	\N		\N		16	3	2		3635	jass.manasyan@gmail.com	\N
4520		\N	\N	522	1	2017-07-06	\N		\N		16	3	2		3636	jass.manasyan@gmail.com	\N
4521		\N	\N	516	1	2017-08-18	\N		\N		16	3	2		3637	jass.manasyan@gmail.com	\N
4522		\N	\N	427	1	2017-08-16	\N		\N		25	3	2		3638	jass.manasyan@gmail.com	\N
4523		\N	\N	431	1	2017-07-05	\N		\N		25	3	2		3639	jass.manasyan@gmail.com	\N
4524		\N	\N	444	1	2017-07-05	\N		\N		25	3	2		3640	jass.manasyan@gmail.com	\N
4525		\N	\N	444	1	2017-07-13	2017-12-25		\N		25	3	2		3641	jass.manasyan@gmail.com	\N
4526		\N	\N	444	1	2017-08-09	2017-12-24		\N		25	3	2		3642	jass.manasyan@gmail.com	\N
4527		\N	\N	437	1	2017-08-16	\N		\N		25	3	2		3643	jass.manasyan@gmail.com	\N
4528		\N	\N	1014	1	2017-08-17	\N		\N		20	3	2		3644	jass.manasyan@gmail.com	\N
4529		\N	\N	506	1	2017-08-17	\N		\N		16	3	2		3645	jass.manasyan@gmail.com	\N
4530		\N	\N	571	1	2017-08-09	\N		\N		16	3	2		3646	jass.manasyan@gmail.com	\N
4531		\N	\N	503	1	2017-08-11	\N		\N		16	3	2		3647	jass.manasyan@gmail.com	\N
4532		\N	\N	1591	1	2017-08-10	\N		\N		16	3	2		3648	jass.manasyan@gmail.com	\N
4533		\N	\N	1568	1	2017-07-13	\N		\N		25	3	2		3649	jass.manasyan@gmail.com	\N
4534		\N	\N	1567	1	2017-08-16	\N		\N		25	3	2		3650	jass.manasyan@gmail.com	\N
4535		\N	\N	432	1	2017-08-16	\N		\N		25	3	2		3651	jass.manasyan@gmail.com	\N
4536		\N	\N	443	1	2017-09-13	\N		\N		25	3	2		3652	jass.manasyan@gmail.com	\N
4537		\N	\N	1045	1	2017-08-16	\N		\N		9	3	2		3653	jass.manasyan@gmail.com	\N
4538		\N	\N	978	1	2017-08-17	\N		\N		20	3	2		3654	jass.manasyan@gmail.com	\N
4539		\N	1708	977	1	2017-12-20	\N		\N		20	3	2		380	jass.manasyan@gmail.com	\N
4540		\N	\N	1229	1	2017-08-24	\N		\N		25	3	2		3655	jass.manasyan@gmail.com	\N
4541		\N	\N	505	1	2017-08-08	\N		\N		16	3	2		3656	jass.manasyan@gmail.com	\N
4542		\N	\N	1339	1	2017-07-13	\N		\N		16	3	2		3657	jass.manasyan@gmail.com	\N
4543		\N	\N	509	1	2017-08-15	\N		\N		16	3	2		3658	jass.manasyan@gmail.com	\N
4544		\N	\N	510	1	2017-07-12	\N		\N		16	3	2		3659	jass.manasyan@gmail.com	\N
4545		\N	\N	512	1	2017-08-16	\N		\N		16	3	2		3660	jass.manasyan@gmail.com	\N
4546		\N	\N	499	1	2017-08-16	\N		\N		19	3	2		3661	jass.manasyan@gmail.com	\N
4547		\N	\N	1328	1	2017-08-17	\N		\N		19	3	2		3662	jass.manasyan@gmail.com	\N
4548		\N	\N	507	1	2017-08-09	\N		\N		19	3	2		3663	jass.manasyan@gmail.com	\N
4549		\N	\N	532	1	2017-08-16	\N		\N		19	3	2		3664	jass.manasyan@gmail.com	\N
4550		\N	\N	1594	1	2017-08-16	\N		\N		19	3	2		3665	jass.manasyan@gmail.com	\N
4551		\N	\N	535	1	2017-08-17	\N		\N		19	3	2		3666	jass.manasyan@gmail.com	\N
4552		\N	\N	1364	1	2017-08-17	\N		\N		19	3	2		3667	jass.manasyan@gmail.com	\N
4553		\N	\N	1363	1	2017-08-10	\N		\N		19	3	2		3668	jass.manasyan@gmail.com	\N
4554		\N	\N	537	1	2017-08-16	\N		\N		19	3	2		3669	jass.manasyan@gmail.com	\N
4555		\N	\N	504	1	2017-08-18	\N		\N		19	3	2		3670	jass.manasyan@gmail.com	\N
4556		\N	\N	500	1	2017-07-12	\N		\N		19	3	2		3671	jass.manasyan@gmail.com	\N
4557		\N	\N	501	1	2017-08-17	\N		\N		19	3	2		3672	jass.manasyan@gmail.com	\N
4558		\N	\N	1362	1	2017-08-08	\N		\N		19	3	2		3673	jass.manasyan@gmail.com	\N
4559		\N	\N	1592	1	2017-08-16	\N		\N		19	3	2		3674	jass.manasyan@gmail.com	\N
4560		\N	\N	536	1	2017-08-08	\N		\N		19	3	2		3675	jass.manasyan@gmail.com	\N
4561		\N	\N	551	1	2017-08-08	\N		\N		19	3	2		3676	jass.manasyan@gmail.com	\N
4565		\N	\N	1597	1	2017-08-24	\N		\N		19	3	2		3677	jass.manasyan@gmail.com	\N
4566		\N	\N	548	1	2017-08-16	\N		\N		19	3	2		3678	jass.manasyan@gmail.com	\N
4567		\N	\N	1366	1	2017-08-24	\N		\N		19	3	2		3679	jass.manasyan@gmail.com	\N
4568		\N	\N	1368	1	2017-07-13	\N		\N		19	3	2		3680	jass.manasyan@gmail.com	\N
4569		\N	\N	1596	1	2017-08-23	\N		\N		19	3	2		3681	jass.manasyan@gmail.com	\N
4570		\N	\N	1370	1	2017-08-16	\N		\N		19	3	2		3682	jass.manasyan@gmail.com	\N
4571		\N	\N	547	1	2017-08-17	\N		\N		19	3	2		3683	jass.manasyan@gmail.com	\N
4572		\N	\N	1595	1	2017-07-12	\N		\N		19	3	2		3684	jass.manasyan@gmail.com	\N
4573		\N	\N	1367	1	2017-08-15	\N		\N		19	3	2		3685	jass.manasyan@gmail.com	\N
4574		\N	\N	1365	1	2017-08-16	\N		\N		19	3	2		3686	jass.manasyan@gmail.com	\N
4575		\N	\N	565	1	2017-07-12	\N		\N		19	3	2		3687	jass.manasyan@gmail.com	\N
4576		\N	1707	1664	2	2017-12-25	\N		\N		25	3	2		3627	jass.manasyan@gmail.com	\N
4577		\N	1707	1664	2	2017-12-25	\N		\N		25	3	2		2044	jass.manasyan@gmail.com	\N
4578		\N	1707	1664	2	2017-12-25	\N		\N		25	3	2		2242	jass.manasyan@gmail.com	\N
4579		\N	1707	1664	4	2017-12-25	\N		\N		25	3	2		3498	jass.manasyan@gmail.com	\N
4580		\N	444	1664	4	2017-12-25	\N		\N		25	3	2		3641	jass.manasyan@gmail.com	\N
4581		\N	1707	1664	4	2017-12-25	\N		\N		25	3	2		3362	jass.manasyan@gmail.com	\N
4582		\N	1707	1664	4	2017-12-25	\N		\N		25	3	2		3542	jass.manasyan@gmail.com	\N
4583		\N	1707	1664	4	2017-12-25	\N		\N		25	3	2		1806	jass.manasyan@gmail.com	\N
4584		\N	1707	1664	4	2017-12-25	\N		\N		25	3	2		3084	jass.manasyan@gmail.com	\N
4585		\N	1707	1664	4	2017-12-25	\N		\N		25	3	2		3499	jass.manasyan@gmail.com	\N
4586		\N	1664	1664	4	2017-12-25	\N		\N		25	3	2		3363	jass.manasyan@gmail.com	\N
4587		\N	1707	1664	1	2017-12-24	2017-12-25		\N		25	3	2		3363	jass.manasyan@gmail.com	\N
4588		\N	1664	1664	4	2017-12-25	\N		\N		25	3	2		3543	jass.manasyan@gmail.com	\N
4589		\N	1707	1664	1	2017-12-24	2017-12-25		\N		25	3	2		3543	jass.manasyan@gmail.com	\N
4590		\N	1664	1664	4	2017-12-25	\N		\N		25	3	2		1807	jass.manasyan@gmail.com	\N
4591		\N	1707	1664	1	2017-12-24	2017-12-25		\N		25	3	2		1807	jass.manasyan@gmail.com	\N
4592		\N	1664	1664	4	2017-12-25	\N		\N		25	3	2		3642	jass.manasyan@gmail.com	\N
4593		\N	444	1664	1	2017-12-24	2017-12-25		\N		25	3	2		3642	jass.manasyan@gmail.com	\N
4594		\N	\N	338	1	2017-07-13	\N		\N		20	3	2		3688	jass.manasyan@gmail.com	\N
4595		\N	\N	352	1	2017-08-16	\N		\N		20	3	2		3689	jass.manasyan@gmail.com	\N
4596		\N	\N	354	1	2017-08-16	\N		\N		20	3	2		3690	jass.manasyan@gmail.com	\N
4597		\N	\N	355	1	2017-08-16	\N		\N		20	3	2		3691	jass.manasyan@gmail.com	\N
4598		\N	\N	337	1	2017-08-17	\N		\N		20	3	2		3692	jass.manasyan@gmail.com	\N
4599		\N	\N	335	1	2017-08-08	\N		\N		20	3	2		3693	jass.manasyan@gmail.com	\N
4600		\N	\N	339	1	2017-08-16	\N		\N		20	3	2		3694	jass.manasyan@gmail.com	\N
4601		\N	\N	340	1	2017-08-17	\N		\N		20	3	2		3695	jass.manasyan@gmail.com	\N
4602		\N	1712	682	1	2017-12-21	\N		\N		22	3	2		21	jass.manasyan@gmail.com	\N
4603		\N	682	1712	2	2017-12-21	2018-02-16		\N		22	3	2		2683	jass.manasyan@gmail.com	\N
4604		\N	\N	682	1	2017-08-16	\N		\N		22	3	2		3696	jass.manasyan@gmail.com	\N
4605		\N	\N	428	1	2017-08-16	\N		\N		25	3	2		3697	jass.manasyan@gmail.com	\N
4606		\N	\N	1122	1	2017-08-09	\N		\N		9	3	2		3698	jass.manasyan@gmail.com	\N
4607		\N	\N	433	1	2017-07-13	\N		\N		25	3	2		3699	jass.manasyan@gmail.com	\N
4608		\N	\N	1117	1	2017-08-17	\N		\N		9	3	2		3700	jass.manasyan@gmail.com	\N
4609		\N	\N	393	1	2017-08-08	\N		\N		25	3	2		3701	jass.manasyan@gmail.com	\N
4610		\N	\N	1123	1	2017-08-17	\N		\N		9	3	2		3702	jass.manasyan@gmail.com	\N
4611		\N	\N	429	1	2017-08-01	\N		\N		25	3	2		3703	jass.manasyan@gmail.com	\N
4612		\N	\N	436	1	2017-08-16	\N		\N		25	3	2		3704	jass.manasyan@gmail.com	\N
4613		\N	\N	1075	1	2017-08-17	\N		\N		9	3	2		3705	jass.manasyan@gmail.com	\N
4614		\N	\N	1068	1	2017-08-16	\N		\N		9	3	2		3706	jass.manasyan@gmail.com	\N
4615		\N	\N	1239	1	2017-08-09	\N		\N		25	3	2		3707	jass.manasyan@gmail.com	\N
4616		\N	\N	1257	1	2017-08-16	\N		\N		25	3	2		3708	jass.manasyan@gmail.com	\N
4617		\N	\N	1238	1	2017-08-07	\N		\N		25	3	2		3709	jass.manasyan@gmail.com	\N
4618		\N	\N	1264	1	2017-09-05	\N		\N		25	3	2		3710	jass.manasyan@gmail.com	\N
4619		\N	\N	1242	1	2017-08-17	\N		\N		25	3	2		3711	jass.manasyan@gmail.com	\N
4620		\N	\N	1252	1	2017-08-16	\N		\N		25	3	2		3712	jass.manasyan@gmail.com	\N
4621		\N	\N	1249	1	2017-08-23	\N		\N		25	3	2		3713	jass.manasyan@gmail.com	\N
4622		\N	\N	1561	1	2017-08-16	\N		\N		9	3	2		3714	jass.manasyan@gmail.com	\N
4623		\N	\N	1525	1	2017-08-24	\N		\N		9	3	2		3715	jass.manasyan@gmail.com	\N
4624		\N	\N	1180	1	2017-08-24	\N		\N		9	3	2		3716	jass.manasyan@gmail.com	\N
4625		\N	\N	1151	1	2017-08-09	\N		\N		9	3	2		3717	jass.manasyan@gmail.com	\N
4626		\N	\N	1129	1	2017-08-24	\N		\N		9	3	2		3718	jass.manasyan@gmail.com	\N
4627		\N	\N	1148	1	2017-08-17	\N		\N		9	3	2		3719	jass.manasyan@gmail.com	\N
4628		\N	\N	1541	1	2017-08-09	\N		\N		9	3	2		3720	jass.manasyan@gmail.com	\N
4629		\N	\N	8	1	2017-08-17	\N		\N		20	3	2		3721	jass.manasyan@gmail.com	\N
4633		\N	\N	362	1	2017-09-07	\N		\N		20	3	2		3723	jass.manasyan@gmail.com	\N
4634		\N	\N	796	1	2017-08-16	\N		\N		24	3	2		3724	jass.manasyan@gmail.com	\N
4635		\N	1705	1158	1	2017-12-26	\N		\N		9	3	2		377	jass.manasyan@gmail.com	\N
4636		\N	\N	310	1	2017-08-16	\N		\N		24	3	2		3725	jass.manasyan@gmail.com	\N
4637		\N	\N	765	1	2017-08-17	\N		\N		24	3	2		3726	jass.manasyan@gmail.com	\N
4638		\N	\N	774	1	2017-08-09	\N		\N		24	3	2		3727	jass.manasyan@gmail.com	\N
4639		\N	\N	319	1	2017-08-09	\N		\N		24	3	2		3728	jass.manasyan@gmail.com	\N
4640		\N	\N	317	1	2017-08-09	\N		\N		24	3	2		3729	jass.manasyan@gmail.com	\N
4641		\N	\N	1664	1	2017-12-20	2017-12-22		\N		20	3	2	սարքը կորած էր, Հայրավանքից	3722	jass.manasyan@gmail.com	\N
4642		\N	1664	362	1	2017-12-22	\N		\N		20	3	2		3722	jass.manasyan@gmail.com	\N
4643		\N	1705	1050	1	2017-12-26	\N		\N		9	3	2		3463	jass.manasyan@gmail.com	\N
4644		\N	1664	641	1	2017-12-27	\N		\N		21	3	2		445	\N	jass.manasyan@gmail.com
4645		\N	1705	1061	1	2017-12-27	\N		\N		9	3	2		3464	jass.manasyan@gmail.com	\N
4646		\N	\N	373	1	2017-08-16	\N		\N		20	3	2		3730	jass.manasyan@gmail.com	\N
4647		\N	1708	353	1	2017-12-22	\N		\N		20	3	2	տն-ը տեղում չի եղել, տվելա իրան, որ հետո գնա տեղադրի	404	\N	jass.manasyan@gmail.com
4648		\N	\N	509	1	2017-07-12	\N		\N		16	3	2		3731	vahram@hf.am	\N
4649		\N	1708	1664	2	2017-12-18	\N		\N		20	3	2		923	jass.manasyan@gmail.com	\N
4650		\N	\N	1121	1	2017-08-16	\N		\N		9	3	2		3732	jass.manasyan@gmail.com	\N
4651		\N	\N	1098	1	2017-08-09	\N		\N		9	3	2		3733	jass.manasyan@gmail.com	\N
4652		\N	1705	1503	1	2017-12-28	\N		\N		9	3	2		3596	jass.manasyan@gmail.com	\N
4653		\N	641	1713	1	2017-12-28	2018-03-17		\N		21	3	2		2311	\N	jass.manasyan@gmail.com
4654		\N	1664	1720	1	2017-12-29	2018-01-31		\N		6	3	2	Մուրադ	387	\N	jass.manasyan@gmail.com
4655		\N	\N	1054	1	2017-09-13	\N		\N		9	3	2		3734	jass.manasyan@gmail.com	\N
4656		\N	\N	1619	1	2017-09-13	\N		\N		21	3	2		3735	jass.manasyan@gmail.com	\N
4657		\N	\N	595	1	2017-09-20	\N		\N		21	3	2		3736	jass.manasyan@gmail.com	\N
4658		\N	\N	1452	1	2017-08-16	\N		\N		21	3	2		3737	jass.manasyan@gmail.com	\N
4659		\N	\N	1091	1	2017-09-14	\N		\N		9	3	2		3738	jass.manasyan@gmail.com	\N
4660		\N	\N	1164	1	2017-08-17	\N		\N		9	3	2		3739	jass.manasyan@gmail.com	\N
4661		\N	\N	1065	1	2017-09-13	\N		\N		9	3	2		3740	jass.manasyan@gmail.com	\N
4662		\N	1705	1083	1	2018-01-09	\N		\N		9	3	2		3458	jass.manasyan@gmail.com	\N
4663		\N	\N	1310	1	2017-09-13	\N		\N		20	3	2		3741	jass.manasyan@gmail.com	\N
4664		\N	\N	1415	1	2017-09-13	\N		\N		23	3	2		3742	jass.manasyan@gmail.com	\N
4665		\N	1664	1705	1	2018-01-10	2018-01-12		\N		9	3	2		394	jass.manasyan@gmail.com	\N
4666		\N	1664	1705	1	2018-01-10	2018-01-15		\N		9	3	2		396	jass.manasyan@gmail.com	\N
4667		\N	1664	1705	1	2018-01-10	2018-01-15		\N		9	3	2		389	jass.manasyan@gmail.com	\N
4668		\N	1664	1705	1	2018-01-10	2018-01-15		\N		9	3	2		393	jass.manasyan@gmail.com	\N
4669		\N	1664	1705	1	2018-01-10	2018-01-11		\N		9	3	2		391	jass.manasyan@gmail.com	\N
4670		\N	1664	474	1	2018-01-10	\N		\N		9	3	1		1828	jass.manasyan@gmail.com	\N
4671		\N	\N	1558	1	2017-08-03	\N		\N		9	3	2		3743	jass.manasyan@gmail.com	\N
4672		\N	\N	1536	1	2017-10-12	\N		\N		9	3	2		3744	jass.manasyan@gmail.com	\N
4673		\N	1664	1665	1	2018-01-11	\N		\N		5	3	2		346	jass.manasyan@gmail.com	\N
4674		\N	1705	1047	1	2018-01-11	\N		\N		9	3	2		391	jass.manasyan@gmail.com	\N
4675		\N	1664	40	1	2018-01-12	\N		\N		8	3	2		974	\N	jass.manasyan@gmail.com
4676		\N	183	1664	1	2018-01-12	\N		\N		24	3	2		1089	\N	jass.manasyan@gmail.com
4677		\N	1664	196	1	2018-01-12	\N		\N		7	3	2		162	\N	hasmik@hf.am
4678		\N	1664	434	1	2018-01-12	\N		\N		25	3	2		167	\N	jass.manasyan@gmail.com
4679		\N	\N	183	1	2018-01-11	2018-01-12		\N		24	3	2		3745	jass.manasyan@gmail.com	\N
4680		\N	183	1664	1	2018-01-12	2018-01-23		\N		24	3	2		3745	jass.manasyan@gmail.com	\N
4681		\N	1664	1665	1	2018-01-12	\N		\N		5	3	2		780	vahram@hf.am	\N
4682		\N	1664	1665	1	2018-01-12	\N		\N		5	3	2		781	vahram@hf.am	\N
4683		\N	1664	1665	1	2018-01-12	\N		\N		5	3	2		779	vahram@hf.am	\N
4684		\N	1664	1665	1	2018-01-12	\N		\N		5	3	2		778	vahram@hf.am	\N
4685		\N	1664	1665	2	2018-01-12	\N		\N		5	4	2		3358	jass.manasyan@gmail.com	\N
4686		\N	242	1710	1	2018-01-12	2018-03-17		\N		23	3	2	կայանն ապամոնտաժվել է	1666	jass.manasyan@gmail.com	\N
4687		\N	242	1710	1	2018-01-12	2018-03-20		\N		23	3	2	կայանն ապամոնտաժվել է	1665	jass.manasyan@gmail.com	\N
4688		\N	242	1710	1	2018-01-12	\N		\N		23	3	2	կայանն ապամոնտաժվել է	1663	jass.manasyan@gmail.com	\N
4689		\N	\N	1621	1	2017-08-10	2018-01-12		\N		23	3	2		3746	jass.manasyan@gmail.com	\N
4690		\N	1621	1710	1	2018-01-12	2018-03-17		\N		23	3	2		3746	jass.manasyan@gmail.com	\N
4691		\N	1621	1710	1	2018-01-12	2018-03-17		\N		23	3	2		2269	jass.manasyan@gmail.com	\N
4692		\N	\N	1664	1	2018-01-12	\N		\N		5	4	2		3747	jass.manasyan@gmail.com	\N
4693		\N	1705	1048	1	2018-01-12	\N		\N		9	3	2		394	jass.manasyan@gmail.com	\N
4694		\N	1699	1708	1	2018-01-12	2018-01-23		\N		20	3	2		2143	\N	jass.manasyan@gmail.com
4695		\N	1705	1116	1	2018-01-15	\N		\N		9	3	2		393	jass.manasyan@gmail.com	\N
4696		\N	1705	692	1	2018-01-15	\N		\N		9	3	2		389	jass.manasyan@gmail.com	\N
4697		\N	1705	1090	1	2018-01-15	\N		\N		9	3	2		396	jass.manasyan@gmail.com	\N
4698		\N	1664	1705	1	2018-01-15	2018-01-25		\N		9	3	2		371	jass.manasyan@gmail.com	\N
4699		\N	1664	1705	1	2018-01-15	2018-01-29		\N		9	3	2		398	jass.manasyan@gmail.com	\N
4700		\N	1664	1705	1	2018-01-15	2018-01-18		\N		9	3	2		400	jass.manasyan@gmail.com	\N
4701		\N	1664	1705	1	2018-01-15	2018-01-18		\N		9	3	2		407	jass.manasyan@gmail.com	\N
4702		\N	1664	1705	1	2018-01-15	2018-01-18		\N		9	3	2		402	jass.manasyan@gmail.com	\N
4703		\N	1664	1705	1	2018-01-15	2018-01-23		\N		9	3	2		412	jass.manasyan@gmail.com	\N
4704		\N	1664	1705	1	2018-01-15	2018-01-23		\N		9	3	2		406	jass.manasyan@gmail.com	\N
4705		\N	1664	1705	1	2018-01-15	2018-01-24		\N		9	3	2		409	jass.manasyan@gmail.com	\N
4706		\N	1664	1705	1	2018-01-15	2018-01-25		\N		9	3	2		416	jass.manasyan@gmail.com	\N
4707		\N	1664	1705	1	2018-01-15	2018-01-18		\N		9	3	2		408	jass.manasyan@gmail.com	\N
4708		\N	\N	1550	1	2017-08-16	\N		\N		9	3	2		3748	jass.manasyan@gmail.com	\N
4709		\N	\N	1080	1	2017-08-10	\N		\N		9	3	2		3749	jass.manasyan@gmail.com	\N
4710		\N	\N	1540	1	2017-08-17	\N		\N		9	3	2		3750	jass.manasyan@gmail.com	\N
4711		\N	\N	610	1	2017-08-17	\N		\N		23	3	2		3751	jass.manasyan@gmail.com	\N
4712		\N	\N	1056	1	2017-08-17	\N		\N		9	3	2		3752	jass.manasyan@gmail.com	\N
4713		\N	1705	1156	1	2018-01-18	\N		\N		9	3	2		408	jass.manasyan@gmail.com	\N
4714		\N	1705	1172	1	2018-01-18	\N		\N		9	3	2		407	jass.manasyan@gmail.com	\N
4715		\N	1705	1149	1	2018-01-18	\N		\N		9	3	2		402	jass.manasyan@gmail.com	\N
4716		\N	1705	1160	1	2018-01-18	\N		\N		9	3	2		400	jass.manasyan@gmail.com	\N
4717		\N	1664	332	1	2018-01-19	\N		\N		8	3	2		105	\N	jass.manasyan@gmail.com
4718		\N	\N	1107	1	2017-08-16	\N		\N		9	3	2		3753	jass.manasyan@gmail.com	\N
4719		\N	\N	825	1	2017-09-15	\N		\N		17	3	2		3754	jass.manasyan@gmail.com	\N
4720		\N	1708	351	1	2018-01-22	\N		\N		20	3	2		386	jass.manasyan@gmail.com	\N
4721		\N	351	1708	2	2018-01-22	2018-01-23		\N		20	3	2		3509	jass.manasyan@gmail.com	\N
4722		\N	1712	662	1	2018-01-22	\N		\N		22	3	2		19	jass.manasyan@gmail.com	\N
4723		\N	662	1712	2	2018-01-22	2018-02-16		\N		22	3	2		2461	jass.manasyan@gmail.com	\N
4724		\N	1708	1664	2	2018-01-23	\N		\N		20	3	2		3509	jass.manasyan@gmail.com	\N
4725		\N	1708	1664	1	2018-01-23	\N		\N		20	3	2		2143	jass.manasyan@gmail.com	\N
4726		\N	1664	1708	1	2018-01-23	\N		\N		20	3	2		415	jass.manasyan@gmail.com	\N
4727		\N	1664	1708	1	2018-01-23	2018-03-07		\N		20	3	2		413	jass.manasyan@gmail.com	\N
4728		\N	1664	434	1	2018-01-23	\N		\N		25	3	2		3040	\N	jass.manasyan@gmail.com
4729		\N	\N	1549	1	2017-08-03	\N		\N		9	3	2		3755	jass.manasyan@gmail.com	\N
4730		\N	\N	1518	1	2017-09-12	\N		\N		9	3	2		3756	jass.manasyan@gmail.com	\N
4731		\N	1664	416	1	2018-01-23	2018-01-24		\N		25	3	2	չի տեղադրել, մնացելա մոտը	3745	jass.manasyan@gmail.com	jass.manasyan@gmail.com
4732		\N	\N	554	1	2017-08-16	\N		\N		16	3	2		3757	jass.manasyan@gmail.com	\N
4733		\N	\N	555	1	2017-08-09	2018-03-06		\N		16	3	2		3758	jass.manasyan@gmail.com	\N
4734		\N	\N	564	1	2017-09-13	\N		\N		16	3	2		3759	jass.manasyan@gmail.com	\N
4735		\N	\N	528	1	2017-09-13	\N		\N		16	3	2		3760	jass.manasyan@gmail.com	\N
4736		\N	\N	553	1	2017-08-10	\N		\N		16	3	2		3761	jass.manasyan@gmail.com	\N
4737		\N	1705	1109	1	2018-01-23	\N		\N		9	3	2		406	jass.manasyan@gmail.com	\N
4738		\N	1705	699	1	2018-01-23	\N		\N		9	3	2		412	jass.manasyan@gmail.com	\N
4739		\N	\N	559	1	2017-08-16	\N		\N		16	3	2		3762	jass.manasyan@gmail.com	\N
4740		\N	\N	552	1	2017-08-29	\N		\N		16	3	2		3763	jass.manasyan@gmail.com	\N
4741		\N	\N	1406	1	2017-09-13	\N		\N		16	3	2		3764	jass.manasyan@gmail.com	\N
4742		\N	\N	1389	1	2017-09-06	\N		\N		16	3	2		3765	jass.manasyan@gmail.com	\N
4743		\N	\N	1388	1	2017-09-06	\N		\N		16	3	2		3766	jass.manasyan@gmail.com	\N
4744		\N	\N	1375	1	2017-09-06	\N		\N		16	3	2		3767	jass.manasyan@gmail.com	\N
4745		\N	\N	1383	1	2017-08-09	\N		\N		16	3	2		3768	jass.manasyan@gmail.com	\N
4746		\N	\N	1382	1	2017-09-06	\N		\N		16	3	2		3769	jass.manasyan@gmail.com	\N
4747		\N	\N	494	1	2017-08-16	\N		\N		16	3	2		3770	jass.manasyan@gmail.com	\N
4748		\N	\N	1387	1	2017-09-06	\N		\N		16	3	2		3771	jass.manasyan@gmail.com	\N
4749		\N	\N	1399	1	2017-09-14	\N		\N		16	3	2		3772	jass.manasyan@gmail.com	\N
4750		\N	\N	1379	1	2017-08-16	\N		\N		16	3	2		3773	jass.manasyan@gmail.com	\N
4751		\N	\N	1403	1	2017-08-23	\N		\N		16	3	2		3774	jass.manasyan@gmail.com	\N
4752		\N	\N	1400	1	2017-08-15	\N		\N		16	3	2		3775	jass.manasyan@gmail.com	\N
4753		\N	\N	1397	1	2017-09-07	\N		\N		16	3	2		3776	jass.manasyan@gmail.com	\N
4754		\N	\N	1402	1	2017-09-13	\N		\N		16	3	2		3777	jass.manasyan@gmail.com	\N
4755		\N	\N	1378	1	2017-09-05	\N		\N		16	3	2		3778	jass.manasyan@gmail.com	\N
4756		\N	\N	1396	1	2017-09-13	\N		\N		16	3	2		3779	jass.manasyan@gmail.com	\N
4757		\N	\N	1385	1	2017-09-13	\N		\N		16	3	2		3780	jass.manasyan@gmail.com	\N
4758		\N	\N	1407	1	2017-08-16	\N		\N		16	3	2		3781	jass.manasyan@gmail.com	\N
4759		\N	\N	1394	1	2017-09-14	\N		\N		16	3	2		3782	jass.manasyan@gmail.com	\N
4760		\N	\N	1143	1	2017-08-10	\N		\N		9	3	2		3783	jass.manasyan@gmail.com	\N
4761		\N	434	1707	1	2018-01-23	\N		\N		25	3	2		1932	jass.manasyan@gmail.com	\N
4762		\N	\N	482	1	2017-08-23	2018-01-24		\N		9	3	2		3784	jass.manasyan@gmail.com	\N
4763		\N	482	1705	1	2018-01-24	2018-01-29		\N		9	3	2	սարքն ապամոնտաժվել է, դպրոցը փակ է	3784	jass.manasyan@gmail.com	\N
4764		\N	482	1705	1	2018-01-24	2018-01-29		\N		9	3	2	սարքն ապամոնտաժվել է, դպրոցը փակ է	2387	jass.manasyan@gmail.com	\N
4765		\N	489	1705	1	2018-01-24	2018-01-29		\N		9	3	2		2741	\N	jass.manasyan@gmail.com
4766		\N	1705	489	1	2018-01-24	\N		\N		9	3	2		409	jass.manasyan@gmail.com	\N
4767		\N	\N	1412	1	2017-08-16	\N		\N		16	3	2		3785	jass.manasyan@gmail.com	\N
4768		\N	\N	496	1	2017-08-18	\N		\N		16	3	2		3786	jass.manasyan@gmail.com	\N
4769		\N	416	1707	1	2018-01-24	\N		\N		25	3	2		3745	jass.manasyan@gmail.com	\N
4770		\N	\N	416	1	2017-08-10	\N		\N		25	3	2		3787	jass.manasyan@gmail.com	\N
4771		\N	1705	1165	1	2018-01-25	\N		\N		9	3	2		416	jass.manasyan@gmail.com	\N
4772		\N	1705	1177	1	2018-01-25	\N		\N		9	3	2		371	jass.manasyan@gmail.com	\N
4773		\N	\N	497	1	2017-08-10	\N		\N		16	3	2		3788	jass.manasyan@gmail.com	\N
4774		\N	\N	1377	1	2017-09-06	\N		\N		16	3	2		3789	jass.manasyan@gmail.com	\N
4775		\N	\N	1722	1	2017-08-17	\N		\N		16	3	2		3790	jass.manasyan@gmail.com	\N
4776		\N	1664	555	1	2018-01-26	\N		\N		19	3	2		532	\N	jass.manasyan@gmail.com
4777		\N	\N	1064	1	2017-08-16	\N		\N		9	3	2		3791	jass.manasyan@gmail.com	\N
4778		\N	1705	1524	1	2018-01-29	\N		\N		9	3	2		398	jass.manasyan@gmail.com	\N
4779		\N	1705	1171	1	2018-01-29	\N		\N		9	3	2		3784	jass.manasyan@gmail.com	\N
4780		\N	1705	1664	1	2018-01-29	\N		\N		9	3	2		2387	jass.manasyan@gmail.com	\N
4781		\N	1705	1664	1	2018-01-29	\N		\N		9	3	2	Անսարք է միայն առաջին պորտը	2741	\N	jass.manasyan@gmail.com
4782		\N	\N	482	1	2017-08-16	2018-01-29		\N		9	3	2		3792	jass.manasyan@gmail.com	\N
4783		\N	482	1664	1	2018-01-29	2018-03-02		\N		9	3	2		3792	jass.manasyan@gmail.com	\N
4784		\N	1664	1705	1	2018-01-29	2018-01-30		\N		9	3	2		423	jass.manasyan@gmail.com	\N
4785		\N	1664	1705	1	2018-01-29	2018-01-31		\N		9	3	2		424	jass.manasyan@gmail.com	\N
4786		\N	1664	1705	1	2018-01-29	2018-01-30		\N		9	3	2		425	jass.manasyan@gmail.com	\N
4787		\N	1664	1705	1	2018-01-29	2018-01-30		\N		9	3	2		418	jass.manasyan@gmail.com	\N
4788		\N	1664	1705	1	2018-01-29	2018-01-31		\N		9	3	2		420	jass.manasyan@gmail.com	\N
4789		\N	\N	1102	1	2017-08-17	\N		\N		9	3	2		3793	jass.manasyan@gmail.com	\N
4790		\N	\N	1183	1	2017-09-13	\N		\N		9	3	2		3794	jass.manasyan@gmail.com	\N
4791		\N	1705	1163	1	2018-01-30	\N		\N		9	3	2		423	jass.manasyan@gmail.com	\N
4792		\N	1707	447	1	2018-01-30	\N		\N		25	3	2		401	jass.manasyan@gmail.com	\N
4794		\N	447	1707	2	2018-01-30	\N		\N		25	3	2		2893	jass.manasyan@gmail.com	\N
4795		\N	915	1664	2	2018-01-30	\N		\N		7	3	2		1977	jass.manasyan@gmail.com	\N
4797		\N	1664	1716	1	2018-01-30	2018-02-27		\N		16	3	2		411	jass.manasyan@gmail.com	\N
4798		\N	1664	1716	1	2018-01-30	\N		\N		16	3	2		410	jass.manasyan@gmail.com	\N
4799		\N	1664	1716	1	2018-01-30	2018-03-06		\N		16	3	2		421	jass.manasyan@gmail.com	\N
4800		\N	1664	1716	1	2018-01-30	2018-05-08		\N		16	3	2		422	jass.manasyan@gmail.com	\N
4801		\N	1664	1704	1	2018-01-30	2018-02-14		\N		7	3	2		70	jass.manasyan@gmail.com	\N
4802		\N	1664	915	1	2018-01-31	\N		\N		7	3	2		37	\N	jass.manasyan@gmail.com
4804		\N	555	1716	2	2018-01-30	2018-02-02		\N		16	3	2		2541	jass.manasyan@gmail.com	\N
4805		\N	1705	1082	1	2018-01-30	\N		\N		9	3	2		425	jass.manasyan@gmail.com	\N
4806		\N	1705	1037	1	2018-01-31	\N		\N		9	3	2		420	jass.manasyan@gmail.com	\N
4807		\N	1720	1664	1	2018-01-31	2018-02-08		\N		6	3	2		387	jass.manasyan@gmail.com	\N
4808		\N	1705	1537	1	2018-01-31	\N		\N		9	3	2		424	jass.manasyan@gmail.com	\N
4809		\N	1716	1664	2	2018-02-02	\N		\N		16	3	2		2541	jass.manasyan@gmail.com	\N
4810		\N	1716	1664	2	2018-02-02	\N		\N		16	3	2		2533	jass.manasyan@gmail.com	\N
4811		\N	1664	1716	1	2018-02-02	2018-03-28		\N		16	3	2		448	jass.manasyan@gmail.com	\N
4812		\N	1716	1332	1	2018-01-24	\N		\N		16	3	2		350	\N	jass.manasyan@gmail.com
4813		\N	1705	701	1	2018-01-30	\N		\N		9	3	2		418	jass.manasyan@gmail.com	\N
4814		\N	\N	753	1	2017-08-16	\N		\N		12	3	2		3795	jass.manasyan@gmail.com	\N
4815		\N	1664	145	1	2018-02-05	\N		\N		23	3	2		293	\N	jass.manasyan@gmail.com
4816		\N	1664	146	1	2018-02-05	\N		\N		23	3	2		294	\N	jass.manasyan@gmail.com
4817		\N	\N	1126	1	2017-09-06	\N		\N		9	3	2		3796	jass.manasyan@gmail.com	\N
4818		\N	145	1710	1	2018-02-06	2018-03-17		\N		23	3	2		1499	jass.manasyan@gmail.com	\N
4819		\N	145	1710	1	2018-02-06	2018-03-17		\N		23	3	2		1495	jass.manasyan@gmail.com	\N
4820		\N	146	1710	1	2018-02-06	2018-03-17		\N		23	3	2		1491	jass.manasyan@gmail.com	\N
4821		\N	\N	714	1	2017-09-14	\N		\N		12	3	2		3797	jass.manasyan@gmail.com	\N
4822		\N	1716	502	1	2018-02-08	\N		\N		27	3	2		22	\N	jass.manasyan@gmail.com
4824		\N	1664	1705	1	2018-02-08	2018-02-20		\N		9	3	2		419	jass.manasyan@gmail.com	\N
4825		\N	1664	1705	1	2018-02-08	2018-03-06		\N		9	3	2		414	jass.manasyan@gmail.com	\N
4826		\N	1664	1705	1	2018-02-08	2018-03-07		\N		9	3	2		417	jass.manasyan@gmail.com	\N
4827		\N	1664	1705	1	2018-02-08	2018-02-13		\N		9	3	2		387	jass.manasyan@gmail.com	\N
4828		\N	1664	60	1	2018-02-08	\N		\N		19	3	2		166	\N	jass.manasyan@gmail.com
4829		\N	\N	1162	1	2017-09-13	\N		\N		9	3	2		3799	jass.manasyan@gmail.com	\N
4830		\N	\N	1041	1	2017-09-12	\N		\N		9	3	2		3800	jass.manasyan@gmail.com	\N
4831		\N	\N	261	1	2017-09-14	\N		\N		12	3	2		3801	jass.manasyan@gmail.com	\N
4832		\N	\N	1108	1	2017-09-06	\N		\N		9	3	2		3802	jass.manasyan@gmail.com	\N
4833		\N	\N	1128	1	2017-08-16	\N		\N		9	3	2		3803	jass.manasyan@gmail.com	\N
4835		\N	\N	1181	1	2017-08-15	\N		\N		9	3	2		3805	jass.manasyan@gmail.com	\N
4836		\N	\N	1150	1	2017-08-29	\N		\N		9	3	2		3806	jass.manasyan@gmail.com	\N
4837		\N	\N	1132	1	2017-09-13	\N		\N		9	3	2		3807	jass.manasyan@gmail.com	\N
4838		\N	\N	1548	1	2017-08-09	\N		\N		9	3	2		3808	jass.manasyan@gmail.com	\N
4839		\N	1705	1058	1	2018-02-13	\N		\N		9	3	2		387	jass.manasyan@gmail.com	\N
4840		\N	\N	1168	1	2017-09-12	\N		\N		9	3	2		3809	jass.manasyan@gmail.com	\N
4841		\N	1704	1664	2	2018-02-14	\N		\N		7	3	2		70	jass.manasyan@gmail.com	\N
4842		\N	\N	950	1	2017-09-06	\N		\N		8	3	2		3810	jass.manasyan@gmail.com	\N
4843		\N	\N	1725	1	2017-09-05	\N		\N		9	3	2		3811	jass.manasyan@gmail.com	\N
4844		\N	364	1708	2	2018-02-15	\N		\N		20	3	2		2174	jass.manasyan@gmail.com	\N
4845		\N	1708	364	1	2018-02-15	\N		\N		20	3	2		2156	jass.manasyan@gmail.com	\N
4846		\N	1664	904	1	2018-02-15	\N		\N		7	3	2		163	\N	jass.manasyan@gmail.com
4847		\N	1664	904	1	2018-02-15	\N		\N		7	3	2		1492	\N	jass.manasyan@gmail.com
4848		\N	1664	904	1	2018-02-15	\N		\N		7	3	2		635	\N	jass.manasyan@gmail.com
4849		\N	\N	1070	1	2017-08-09	\N		\N		9	3	2		3812	jass.manasyan@gmail.com	\N
4850		\N	\N	1040	1	2017-09-06	\N		\N		9	3	2		3813	jass.manasyan@gmail.com	\N
4851		\N	\N	1053	1	2017-09-06	\N		\N		9	3	2		3814	jass.manasyan@gmail.com	\N
4852		\N	\N	1146	1	2017-09-20	\N		\N		9	3	2		3815	jass.manasyan@gmail.com	\N
4853		\N	\N	1551	1	2017-08-24	\N		\N		9	3	2		3816	jass.manasyan@gmail.com	\N
4854		\N	\N	1173	1	2017-09-20	\N		\N		9	9	2		3817	jass.manasyan@gmail.com	\N
4855		\N	\N	1134	1	2017-09-19	\N		\N		9	3	2		3818	jass.manasyan@gmail.com	\N
4856		\N	\N	696	1	2017-09-14	\N		\N		9	3	2		3819	jass.manasyan@gmail.com	\N
4857		\N	904	1704	1	2018-02-16	2018-02-21		\N		7	3	2		861	jass.manasyan@gmail.com	\N
4858		\N	904	1704	1	2018-02-16	\N		\N		7	3	2		862	jass.manasyan@gmail.com	\N
4859		\N	1664	42	1	2018-02-20	\N		\N		7	3	2		3060	\N	hasmik@hf.am
4860		\N	1664	904	1	2018-02-20	\N		\N		7	3	2		3059	\N	jass.manasyan@gmail.com
4861		\N	1664	731	1	2018-02-20	\N		\N		7	3	2		3044	\N	jass.manasyan@gmail.com
4862		\N	1664	731	1	2018-02-20	\N		\N		7	3	2		164	\N	jass.manasyan@gmail.com
4863		\N	1664	731	1	2018-02-20	\N		\N		7	3	2		3052	\N	jass.manasyan@gmail.com
4864		\N	1664	731	1	2018-02-20	\N		\N		7	3	2		3079	\N	jass.manasyan@gmail.com
4865		\N	1664	731	1	2018-02-20	\N		\N		7	3	2		3080	\N	jass.manasyan@gmail.com
4866		\N	1712	1664	2	2018-02-16	\N		\N		22	3	2		2461	jass.manasyan@gmail.com	\N
4867		\N	1712	1664	2	2018-02-16	\N		\N		22	3	2		2683	jass.manasyan@gmail.com	\N
4868		\N	\N	1495	1	2017-07-04	2018-02-16		\N		22	3	2		3820	jass.manasyan@gmail.com	\N
4869		\N	1495	1664	1	2018-02-16	2018-03-21		\N		22	3	2		3820	jass.manasyan@gmail.com	\N
4870		\N	1705	1071	1	2018-02-20	\N		\N		9	3	2		419	jass.manasyan@gmail.com	\N
4871		\N	\N	1487	1	2017-05-18	2018-02-16		\N		22	3	2		3821	jass.manasyan@gmail.com	\N
4872		\N	1487	1664	1	2018-02-16	\N		\N		22	3	2		3821	jass.manasyan@gmail.com	\N
4873		\N	\N	1478	1	2017-06-07	2018-02-16		\N		22	3	2		3822	jass.manasyan@gmail.com	\N
4874		\N	1478	1664	2	2018-02-16	\N		\N		22	3	2		3822	jass.manasyan@gmail.com	\N
4875		\N	\N	1486	1	2017-08-16	2018-02-16		\N		22	3	2		3823	jass.manasyan@gmail.com	\N
4876		\N	1486	1664	1	2018-02-16	\N		\N		22	3	2		3823	jass.manasyan@gmail.com	\N
4877		\N	\N	1484	1	2017-09-08	2018-02-16		\N		22	3	2		3824	jass.manasyan@gmail.com	\N
4878		\N	1484	1664	2	2018-02-16	\N		\N		22	3	2		3824	jass.manasyan@gmail.com	\N
4879		\N	\N	490	1	2017-08-09	\N		\N		9	3	2		3825	jass.manasyan@gmail.com	\N
4880		\N	\N	1508	1	2017-09-12	\N		\N		9	3	2		3826	jass.manasyan@gmail.com	\N
4881		\N	\N	1145	1	2017-08-22	\N		\N		9	3	2		3827	jass.manasyan@gmail.com	\N
4882		\N	\N	1562	1	2017-11-02	\N		\N		9	3	2		3828	jass.manasyan@gmail.com	\N
4883		\N	\N	1557	1	2017-09-20	\N		\N		9	3	2		3829	jass.manasyan@gmail.com	\N
4884		\N	\N	1106	1	2017-09-13	\N		\N		9	3	2		3830	jass.manasyan@gmail.com	\N
4885		\N	\N	1552	1	2017-09-13	\N		\N		9	3	2		3831	jass.manasyan@gmail.com	\N
4886		\N	\N	1188	1	2017-09-13	\N		\N		9	3	2		3832	jass.manasyan@gmail.com	\N
4887		\N	\N	747	1	2017-10-18	\N		\N		9	3	2		3833	jass.manasyan@gmail.com	\N
4888		\N	\N	1244	1	2017-09-13	\N		\N		25	3	2		3834	jass.manasyan@gmail.com	\N
4889		\N	1704	1664	1	2018-02-21	\N		\N		7	3	2		861	jass.manasyan@gmail.com	\N
4890		\N	1664	520	1	2018-02-21	\N		\N		27	3	2		2184	\N	jass.manasyan@gmail.com
4891		\N	1664	1704	1	2018-02-21	2018-03-17		\N		7	3	2		574	jass.manasyan@gmail.com	\N
4892		\N	\N	1274	1	2017-07-05	\N		\N		25	3	2		3835	jass.manasyan@gmail.com	\N
4893		\N	\N	400	1	2017-08-08	\N		\N		25	3	2		3836	jass.manasyan@gmail.com	\N
4894		\N	\N	400	1	2017-08-09	\N		\N		25	3	2		3837	jass.manasyan@gmail.com	\N
4895		\N	\N	1564	1	2017-07-12	\N		\N		15	3	2		3838	jass.manasyan@gmail.com	\N
4896		\N	502	1723	1	2018-02-12	\N		\N		27	3	2		2502	jass.manasyan@gmail.com	\N
4897		\N	1664	1704	1	2018-02-26	2018-03-01		\N		7	3	2		295	jass.manasyan@gmail.com	\N
4898		\N	1715	291	1	2018-02-23	\N		\N		12	3	2		374	jass.manasyan@gmail.com	\N
4899		\N	904	1664	1	2018-02-26	\N		\N		7	3	2		860	jass.manasyan@gmail.com	\N
4900		\N	42	1664	1	2018-02-26	\N		\N		7	3	2		852	jass.manasyan@gmail.com	\N
4901		\N	1466	1664	1	2018-02-27	\N		\N		9	3	2		3127	jass.manasyan@gmail.com	\N
4904		\N	1716	520	1	2018-02-27	\N		\N		27	3	2		411	jass.manasyan@gmail.com	\N
4905		\N	520	1723	2	2018-02-27	\N		\N		27	3	2		3632	jass.manasyan@gmail.com	\N
4906		\N	520	1723	2	2018-02-27	\N		\N		27	3	2		2535	jass.manasyan@gmail.com	\N
4907		\N	1708	353	1	2018-03-01	\N		\N		20	3	2		35	jass.manasyan@gmail.com	\N
4908		\N	\N	1581	1	2017-10-18	\N		\N		20	3	2		3839	jass.manasyan@gmail.com	\N
4909		\N	1704	1664	1	2018-03-01	2018-03-29		\N		7	3	2		295	jass.manasyan@gmail.com	\N
4910		\N	1664	465	1	2018-03-02	\N		\N		9	3	2		39	\N	jass.manasyan@gmail.com
4911		\N	1664	28	1	2018-03-02	\N		\N		9	3	2		38	\N	jass.manasyan@gmail.com
4912		\N	1664	1714	1	2018-03-02	\N		\N		17	3	2		3149	jass.manasyan@gmail.com	\N
4913		\N	1664	1714	1	2018-03-02	2018-04-06		\N		17	3	2		3792	jass.manasyan@gmail.com	\N
4914		\N	1664	1714	1	2018-03-02	\N		\N		17	3	2		444	jass.manasyan@gmail.com	\N
4915		\N	1664	1714	1	2018-03-02	2018-04-06		\N		17	3	2		245	jass.manasyan@gmail.com	\N
4916		\N	1664	1714	1	2018-03-02	2018-04-06		\N		17	3	2		250	jass.manasyan@gmail.com	\N
4917		\N	\N	615	1	2017-07-06	\N		\N		23	3	2		3840	jass.manasyan@gmail.com	\N
4918		\N	\N	698	1	2017-10-11	\N		\N		9	3	2		3841	jass.manasyan@gmail.com	\N
4919		\N	\N	700	1	2017-10-10	\N		\N		9	3	2		3842	jass.manasyan@gmail.com	\N
4920		\N	\N	1052	1	2017-10-18	\N		\N		9	3	2		3843	jass.manasyan@gmail.com	\N
4921		\N	\N	1175	1	2017-10-18	\N		\N		9	3	2		3844	jass.manasyan@gmail.com	\N
4922		\N	\N	1036	1	2017-10-18	\N		\N		9	3	2		3845	jass.manasyan@gmail.com	\N
4923		\N	\N	1038	1	2017-10-19	\N		\N		9	3	2		3846	jass.manasyan@gmail.com	\N
4924		\N	\N	1039	1	2017-09-13	\N		\N		9	3	2		3847	jass.manasyan@gmail.com	\N
4925		\N	\N	1051	1	2017-10-18	\N		\N		9	3	2		3848	jass.manasyan@gmail.com	\N
4926		\N	\N	1055	1	2017-09-06	\N		\N		9	3	2		3849	jass.manasyan@gmail.com	\N
4927		\N	\N	1072	1	2017-10-18	\N		\N		9	3	2		3850	jass.manasyan@gmail.com	\N
4928		\N	\N	1062	1	2017-11-08	\N		\N		9	3	2		3851	jass.manasyan@gmail.com	\N
4929		\N	\N	1044	1	2017-10-18	\N		\N		9	3	2		3852	jass.manasyan@gmail.com	\N
4930		\N	\N	1100	1	2017-11-07	\N		\N		9	3	2		3853	jass.manasyan@gmail.com	\N
4931		\N	\N	1101	1	2017-10-19	\N		\N		9	3	2		3854	jass.manasyan@gmail.com	\N
4932		\N	\N	1125	1	2017-10-18	\N		\N		9	3	2		3855	jass.manasyan@gmail.com	\N
4933		\N	\N	1136	1	2017-10-19	\N		\N		9	3	2		3856	jass.manasyan@gmail.com	\N
4934		\N	\N	1133	1	2017-10-18	\N		\N		9	3	2		3857	jass.manasyan@gmail.com	\N
4935		\N	\N	1147	1	2017-10-18	\N		\N		9	3	2		3858	jass.manasyan@gmail.com	\N
4936		\N	\N	1154	1	2017-10-18	\N		\N		9	3	2		3859	jass.manasyan@gmail.com	\N
4937		\N	\N	1131	1	2017-10-18	\N		\N		9	3	2		3860	jass.manasyan@gmail.com	\N
4938		\N	\N	1130	1	2017-10-19	\N		\N		9	3	2		3861	jass.manasyan@gmail.com	\N
4939		\N	\N	1155	1	2017-10-12	\N		\N		9	3	2		3862	jass.manasyan@gmail.com	\N
4940		\N	\N	1138	1	2017-10-12	\N		\N		9	3	2		3863	jass.manasyan@gmail.com	\N
4941		\N	\N	1169	1	2017-11-09	\N		\N		9	3	2		3864	jass.manasyan@gmail.com	\N
4942		\N	\N	1166	1	2017-11-16	\N		\N		9	3	2		3865	jass.manasyan@gmail.com	\N
4943		\N	\N	1179	1	2017-09-13	\N		\N		9	3	2		3866	jass.manasyan@gmail.com	\N
4944		\N	\N	1184	1	2017-11-08	\N		\N		9	3	2		3867	jass.manasyan@gmail.com	\N
4945		\N	\N	1176	1	2017-11-16	\N		\N		9	3	2		3868	jass.manasyan@gmail.com	\N
4946		\N	\N	1182	1	2017-11-14	\N		\N		9	3	2		3869	jass.manasyan@gmail.com	\N
4947		\N	\N	1189	1	2017-10-19	\N		\N		9	3	2		3870	jass.manasyan@gmail.com	\N
4948		\N	\N	1192	1	2017-11-22	\N		\N		9	3	2		3871	jass.manasyan@gmail.com	\N
4949		\N	\N	1513	1	2017-11-08	\N		\N		9	3	2		3872	jass.manasyan@gmail.com	\N
4950		\N	\N	1512	1	2017-10-19	\N		\N		9	3	2		3873	jass.manasyan@gmail.com	\N
4951		\N	\N	1509	1	2017-10-19	\N		\N		9	3	2		3874	jass.manasyan@gmail.com	\N
4952		\N	\N	1517	1	2017-11-14	\N		\N		9	3	2		3875	jass.manasyan@gmail.com	\N
4953		\N	\N	1515	1	2017-10-12	\N		\N		9	3	2		3876	jass.manasyan@gmail.com	\N
4954		\N	\N	1543	1	2017-11-07	\N		\N		9	3	2		3877	jass.manasyan@gmail.com	\N
4955		\N	\N	1554	1	2017-10-11	\N		\N		9	3	2		3878	jass.manasyan@gmail.com	\N
4956		\N	\N	1546	1	2017-10-20	\N		\N		9	3	2		3879	jass.manasyan@gmail.com	\N
4957		\N	\N	1559	1	2017-10-18	\N		\N		9	3	2		3880	jass.manasyan@gmail.com	\N
4958		\N	\N	1191	1	2017-10-11	\N		\N		9	3	2		3881	jass.manasyan@gmail.com	\N
4959		\N	\N	1519	1	2017-10-18	\N		\N		9	3	2		3882	jass.manasyan@gmail.com	\N
4960		\N	\N	1120	1	2017-10-18	\N		\N		9	3	2		3883	jass.manasyan@gmail.com	\N
4961		\N	\N	1523	1	2017-11-15	\N		\N		9	3	2		3884	jass.manasyan@gmail.com	\N
4962		\N	\N	1529	1	2017-10-12	\N		\N		9	3	2		3885	jass.manasyan@gmail.com	\N
4963		\N	\N	1539	1	2017-11-08	\N		\N		9	3	2		3886	jass.manasyan@gmail.com	\N
4964		\N	\N	1521	1	2017-11-08	\N		\N		9	3	2		3887	jass.manasyan@gmail.com	\N
4965		\N	\N	1534	1	2017-11-15	\N		\N		9	3	2		3888	jass.manasyan@gmail.com	\N
4966		\N	\N	1522	1	2017-11-08	\N		\N		9	3	2		3889	jass.manasyan@gmail.com	\N
4967		\N	\N	1094	1	2017-10-18	\N		\N		9	3	2		3890	jass.manasyan@gmail.com	\N
4968		\N	\N	1104	1	2017-10-19	\N		\N		9	3	2		3891	jass.manasyan@gmail.com	\N
4969		\N	\N	1097	1	2017-11-16	\N		\N		9	3	2		3892	jass.manasyan@gmail.com	\N
4970		\N	\N	1096	1	2017-10-11	\N		\N		9	3	2		3893	jass.manasyan@gmail.com	\N
4971		\N	\N	1087	1	2017-10-19	\N		\N		9	3	2		3894	jass.manasyan@gmail.com	\N
4972		\N	\N	1086	1	2017-10-12	\N		\N		9	3	2		3895	jass.manasyan@gmail.com	\N
4973		\N	\N	1114	1	2017-10-18	\N		\N		9	3	2		3896	jass.manasyan@gmail.com	\N
4974		\N	\N	1084	1	2017-11-09	\N		\N		9	3	2		3897	jass.manasyan@gmail.com	\N
4975		\N	\N	1103	1	2017-11-07	\N		\N		9	3	2		3898	jass.manasyan@gmail.com	\N
4976		\N	\N	1069	1	2017-11-15	\N		\N		9	3	2		3899	jass.manasyan@gmail.com	\N
4977		\N	\N	1110	1	2017-10-19	\N		\N		9	3	2		3900	jass.manasyan@gmail.com	\N
4978		\N	\N	1079	1	2017-10-11	\N		\N		9	3	2		3901	jass.manasyan@gmail.com	\N
4979		\N	\N	1111	1	2017-10-12	\N		\N		9	3	2		3902	jass.manasyan@gmail.com	\N
4980		\N	\N	1085	1	2017-10-18	\N		\N		9	3	2		3903	jass.manasyan@gmail.com	\N
4981		\N	\N	1066	1	2017-10-11	\N		\N		9	3	2		3904	jass.manasyan@gmail.com	\N
4982		\N	\N	1067	1	2017-11-16	\N		\N		9	3	2		3905	jass.manasyan@gmail.com	\N
4983		\N	\N	1092	1	2017-10-12	\N		\N		9	3	2		3906	jass.manasyan@gmail.com	\N
4984		\N	\N	1105	1	2017-10-12	\N		\N		9	3	2		3907	jass.manasyan@gmail.com	\N
4985		\N	1664	165	1	2018-03-13	\N		\N		7	3	2		159	\N	jass.manasyan@gmail.com
4986		\N	165	1664	2	2018-03-13	\N		\N		7	3	2		1232	\N	jass.manasyan@gmail.com
4987		\N	1706	321	1	2018-03-13	\N		\N		8	3	2		383	evelina@hf.am	\N
4988		\N	1705	466	1	2018-03-12	\N		\N		9	3	2		104	evelina@hf.am	\N
4989		\N	466	1664	2	2018-03-14	\N		\N		9	3	2		2340	evelina@hf.am	\N
4990		\N	1708	336	1	2018-03-07	\N		\N		20	3	2		413	sonahdavtyan@gmail.com	\N
4991		\N	731	1704	1	2018-02-20	\N		\N		7	3	2		73	\N	jass.manasyan@gmail.com
4992		\N	731	1704	1	2018-02-20	\N		\N		7	3	2		1815	\N	jass.manasyan@gmail.com
4993		\N	1664	526	1	2018-03-16	2018-03-21		\N		16	3	2	չի տեղադրել, պահելա իրա մոտ	3032	\N	jass.manasyan@gmail.com
4995		\N	1664	1716	1	2018-03-16	2018-03-28		\N		16	3	2		522	jass.manasyan@gmail.com	\N
4996		\N	1664	522	1	2018-03-16	\N		\N		16	3	2		539	\N	hasmik@hf.am
4997		\N	1705	695	1	2018-03-06	\N		\N		9	3	2		414	jass.manasyan@gmail.com	\N
4998		\N	1716	555	1	2018-03-06	\N		\N		16	3	2		421	jass.manasyan@gmail.com	\N
4999		\N	555	1716	2	2018-03-06	\N		\N		16	3	2		3758	jass.manasyan@gmail.com	\N
5000		\N	1705	1507	1	2018-03-07	\N		\N		9	3	2		417	jass.manasyan@gmail.com	\N
5001		\N	\N	1193	1	2017-09-14	\N		\N		9	3	2		3908	jass.manasyan@gmail.com	\N
5002		\N	\N	693	1	2017-09-06	\N		\N		9	3	2		3909	jass.manasyan@gmail.com	\N
5003		\N	1664	730	1	2018-03-16	\N		\N		7	3	2		106	\N	jass.manasyan@gmail.com
5004		\N	1664	753	1	2018-03-16	\N		\N		7	3	2		72	\N	jass.manasyan@gmail.com
5005		\N	1664	256	1	2018-03-16	\N		\N		7	3	2		69	\N	jass.manasyan@gmail.com
5006		\N	1704	1664	1	2018-03-17	\N		\N		7	3	2		574	jass.manasyan@gmail.com	\N
5007		\N	\N	165	1	2017-07-14	2018-03-17		\N		7	3	2		3910	jass.manasyan@gmail.com	\N
5008		\N	165	1664	2	2018-03-17	\N		\N		7	3	2		3910	jass.manasyan@gmail.com	jass.manasyan@gmail.com
5009		\N	1710	1664	1	2018-03-17	2018-04-06		\N		23	3	2		3746	jass.manasyan@gmail.com	\N
5010		\N	1710	1664	1	2018-03-17	\N		\N		23	3	2		1499	jass.manasyan@gmail.com	\N
5011		\N	1710	1664	1	2018-03-17	\N		\N		23	3	2		2269	jass.manasyan@gmail.com	\N
5012		\N	\N	145	1	2017-10-12	2018-03-17		\N		23	3	2		3911	jass.manasyan@gmail.com	\N
5013		\N	145	1664	1	2018-03-17	\N		\N		23	3	2		3911	jass.manasyan@gmail.com	\N
5014		\N	1710	1664	1	2018-03-17	2018-04-05		\N		23	3	2		1491	jass.manasyan@gmail.com	\N
5015		\N	1713	1664	1	2018-03-17	\N		\N		21	3	2		2311	jass.manasyan@gmail.com	\N
5016		\N	1710	1664	1	2018-03-17	\N		\N		23	3	2		1495	jass.manasyan@gmail.com	\N
5017		\N	1710	1664	1	2018-03-17	\N		\N		23	3	2		1666	jass.manasyan@gmail.com	\N
5018		\N	\N	57	1	2017-09-07	\N		\N		12	3	2		3912	jass.manasyan@gmail.com	\N
5019		\N	\N	270	1	2017-07-13	\N		\N		12	3	2		3913	jass.manasyan@gmail.com	\N
5020		\N	\N	252	1	2017-09-14	\N		\N		12	3	2		3914	jass.manasyan@gmail.com	\N
5021		\N	\N	263	1	2017-10-19	\N		\N		12	3	2		3915	jass.manasyan@gmail.com	\N
5022		\N	\N	266	1	2017-09-07	\N		\N		12	3	2		3916	jass.manasyan@gmail.com	\N
5023		\N	\N	258	1	2017-07-05	\N		\N		12	3	2		3917	jass.manasyan@gmail.com	\N
5024		\N	\N	1446	1	2017-08-18	\N		\N		23	3	2		3918	jass.manasyan@gmail.com	\N
5025		\N	\N	1430	1	2017-09-07	\N		\N		23	3	2		3919	jass.manasyan@gmail.com	\N
5026		\N	\N	1599	1	2017-10-10	\N		\N		23	3	2		3920	jass.manasyan@gmail.com	\N
5027		\N	\N	1694	1	2017-09-14	\N		\N		23	3	2		3921	jass.manasyan@gmail.com	\N
5028		\N	\N	612	1	2017-08-08	\N		\N		23	3	2		3922	jass.manasyan@gmail.com	\N
5029		\N	\N	1654	1	2017-09-14	\N		\N		23	3	2		3923	jass.manasyan@gmail.com	\N
5030		\N	\N	1652	1	2017-08-17	\N		\N		23	3	2		3924	jass.manasyan@gmail.com	\N
5031		\N	\N	1655	1	2017-09-13	\N		\N		23	3	2		3925	jass.manasyan@gmail.com	\N
5032		\N	\N	1604	1	2017-08-17	\N		\N		23	3	2		3926	jass.manasyan@gmail.com	\N
5033		\N	\N	1602	1	2017-10-19	\N		\N		23	3	2		3927	jass.manasyan@gmail.com	\N
5034		\N	\N	1448	1	2017-10-19	\N		\N		23	3	2		3928	jass.manasyan@gmail.com	\N
5035		\N	\N	1457	1	2017-08-10	\N		\N		23	3	2		3929	jass.manasyan@gmail.com	\N
5036		\N	\N	740	1	2017-07-06	\N		\N		20	3	2		3930	jass.manasyan@gmail.com	\N
5037		\N	\N	742	1	2017-10-04	\N		\N		12	3	2		3931	jass.manasyan@gmail.com	\N
5038		\N	\N	733	1	2017-10-18	\N		\N		12	3	2		3932	jass.manasyan@gmail.com	\N
5039		\N	\N	709	1	2017-09-14	\N		\N		12	3	2		3933	jass.manasyan@gmail.com	\N
5040		\N	\N	292	1	2017-10-20	\N		\N		12	3	2		3934	jass.manasyan@gmail.com	\N
5041		\N	\N	738	1	2017-09-13	\N		\N		12	3	2		3935	jass.manasyan@gmail.com	\N
5042		\N	\N	746	1	2017-10-18	\N		\N		12	3	2		3936	jass.manasyan@gmail.com	\N
5043		\N	\N	267	1	2017-09-13	\N		\N		12	3	2		3937	jass.manasyan@gmail.com	\N
5044		\N	\N	598	1	2017-10-11	\N		\N		23	3	2		3938	jass.manasyan@gmail.com	\N
5045		\N	\N	626	1	2017-09-14	\N		\N		23	3	2		3939	jass.manasyan@gmail.com	\N
5046		\N	\N	1428	1	2017-08-18	\N		\N		23	3	2		3940	jass.manasyan@gmail.com	\N
5047		\N	\N	1429	1	2017-09-08	\N		\N		23	3	2		3941	jass.manasyan@gmail.com	\N
5048		\N	\N	1420	1	2017-09-14	\N		\N		23	3	2		3942	jass.manasyan@gmail.com	\N
5051		\N	1710	130	1	2018-03-20	\N		\N		7	3	2		1665	jass.manasyan@gmail.com	\N
5052		\N	730	1704	1	2018-03-19	2018-03-27		\N		7	3	2		478	jass.manasyan@gmail.com	\N
5053		\N	753	1704	1	2018-03-19	2018-03-27		\N		7	3	2		2022	jass.manasyan@gmail.com	\N
5054		\N	256	1704	1	2018-03-19	2018-03-27		\N		7	3	2		1551	jass.manasyan@gmail.com	\N
5055		\N	1575	1664	1	2018-03-21	2018-04-05		\N		9	3	2		2342	jass.manasyan@gmail.com	\N
5056		\N	1686	1664	1	2018-03-21	\N		\N		9	3	2		973	jass.manasyan@gmail.com	\N
5057		\N	526	1716	1	2018-03-21	\N		\N		16	3	2		3032	jass.manasyan@gmail.com	\N
5058		\N	1664	1074	1	2018-03-21	\N		\N		9	3	2		3820	jass.manasyan@gmail.com	hasmik@hf.am
5059		\N	1664	1705	1	2018-03-21	\N		\N		9	3	2		339	jass.manasyan@gmail.com	\N
5060		\N	1664	101	1	2018-03-21	\N		\N		19	3	2		1356	\N	jass.manasyan@gmail.com
5061		\N	\N	461	1	2017-08-17	\N		\N		9	3	2		3943	jass.manasyan@gmail.com	\N
5062		\N	\N	1285	1	2017-08-16	\N		\N		9	3	2		3944	jass.manasyan@gmail.com	\N
5063		\N	\N	1289	1	2017-09-07	\N		\N		9	3	2		3945	jass.manasyan@gmail.com	\N
5064		\N	\N	1291	1	2017-09-13	\N		\N		9	3	2		3946	jass.manasyan@gmail.com	\N
5065		\N	\N	1292	1	2017-09-07	\N		\N		9	3	2		3947	jass.manasyan@gmail.com	\N
5066		\N	\N	1282	1	2017-08-16	\N		\N		9	3	2		3948	jass.manasyan@gmail.com	\N
5067		\N	\N	1321	1	2017-09-14	\N		\N		9	3	2		3949	jass.manasyan@gmail.com	\N
5068		\N	\N	1320	1	2017-09-07	\N		\N		9	3	2		3950	jass.manasyan@gmail.com	\N
5069		\N	\N	1576	1	2017-09-13	\N		\N		9	3	2		3951	jass.manasyan@gmail.com	\N
5070		\N	\N	1573	1	2017-09-05	\N		\N		9	3	2		3952	jass.manasyan@gmail.com	\N
5071		\N	\N	1584	1	2017-10-12	\N		\N		9	3	2		3953	jass.manasyan@gmail.com	\N
5072		\N	\N	1588	1	2017-10-11	\N		\N		9	3	2		3954	jass.manasyan@gmail.com	\N
5073		\N	\N	1585	1	2017-08-16	\N		\N		9	3	2		3955	jass.manasyan@gmail.com	\N
5074		\N	\N	472	1	2017-09-06	\N		\N		9	3	2		3956	jass.manasyan@gmail.com	\N
5075		\N	\N	131	1	2017-09-14	\N		\N		23	3	2		3957	jass.manasyan@gmail.com	\N
5076		\N	\N	616	1	2017-09-07	\N		\N		23	3	2		3958	jass.manasyan@gmail.com	jass.manasyan@gmail.com
5077		\N	\N	620	1	2017-08-16	\N		\N		23	3	2		3959	jass.manasyan@gmail.com	jass.manasyan@gmail.com
5078		\N	\N	600	1	2017-09-13	\N		\N		23	3	2		3960	jass.manasyan@gmail.com	\N
5079		\N	\N	593	1	2017-08-10	\N		\N		23	3	2		3961	jass.manasyan@gmail.com	\N
5080		\N	\N	623	1	2017-09-06	\N		\N		23	3	2		3962	jass.manasyan@gmail.com	\N
5081		\N	\N	1447	1	2017-08-09	\N		\N		23	3	2		3963	jass.manasyan@gmail.com	\N
5082		\N	\N	1454	1	2017-09-07	\N		\N		23	3	2		3964	jass.manasyan@gmail.com	\N
5083		\N	\N	590	1	2017-08-10	\N		\N		23	3	2		3965	jass.manasyan@gmail.com	\N
5084		\N	\N	1255	1	2017-08-10	\N		\N		25	3	2		3966	jass.manasyan@gmail.com	\N
5085		\N	\N	1262	1	2017-07-13	\N		\N		25	3	2		3967	jass.manasyan@gmail.com	\N
5086		\N	\N	392	1	2017-09-14	\N		\N		25	3	2		3968	jass.manasyan@gmail.com	\N
5087		\N	\N	402	1	2017-09-06	\N		\N		23	3	2		3969	jass.manasyan@gmail.com	\N
5088		\N	\N	434	1	2017-08-10	\N		\N		23	3	2		3970	jass.manasyan@gmail.com	\N
5089		\N	\N	442	1	2017-07-13	\N		\N		25	3	2		3971	jass.manasyan@gmail.com	\N
5090		\N	\N	417	1	2017-08-17	\N		\N		25	3	2		3972	jass.manasyan@gmail.com	\N
5091		\N	\N	411	1	2017-08-10	\N		\N		25	3	2		3973	jass.manasyan@gmail.com	\N
5092		\N	\N	1217	1	2017-09-07	\N		\N		25	3	2		3974	jass.manasyan@gmail.com	\N
5093		\N	\N	1223	1	2017-08-10	\N		\N		25	3	2		3975	jass.manasyan@gmail.com	\N
5094		\N	\N	606	1	2017-08-10	\N		\N		25	3	2		3976	jass.manasyan@gmail.com	\N
5095		\N	\N	605	1	2017-08-10	\N		\N		25	3	2		3977	jass.manasyan@gmail.com	\N
5096		\N	\N	582	1	2017-05-10	\N		\N		25	3	2		3978	jass.manasyan@gmail.com	\N
5097		\N	1664	613	1	2018-03-22	\N		\N		23	3	2		67	\N	hasmik@hf.am
5098		\N	\N	601	1	2017-07-20	\N		\N		23	3	2		3979	jass.manasyan@gmail.com	\N
5099		\N	\N	604	1	2017-08-09	\N		\N		23	3	2		3980	jass.manasyan@gmail.com	\N
5100		\N	\N	618	1	2017-08-17	\N		\N		23	3	2		3981	jass.manasyan@gmail.com	\N
5101		\N	\N	578	1	2017-08-10	\N		\N		23	3	2		3982	jass.manasyan@gmail.com	\N
5102		\N	\N	621	1	2017-08-10	\N		\N		23	3	2		3983	jass.manasyan@gmail.com	\N
5103		\N	\N	1560	1	2017-06-08	2018-03-22		\N		9	3	2		3984	jass.manasyan@gmail.com	\N
5106		\N	\N	1593	1	2017-08-15	\N		\N		16	3	2		3985	jass.manasyan@gmail.com	\N
5107		\N	\N	1409	1	2017-10-04	\N		\N		16	3	2		3986	jass.manasyan@gmail.com	\N
5108		\N	\N	1259	1	2017-07-05	\N		\N		25	3	2		3987	jass.manasyan@gmail.com	\N
5109		\N	\N	469	1	2017-09-06	\N		\N		9	3	2		3988	jass.manasyan@gmail.com	\N
5110		\N	\N	538	1	2017-07-05	2018-04-09		\N		16	3	2		3989	jass.manasyan@gmail.com	\N
5111		\N	\N	1645	1	2017-08-10	\N		\N		25	3	2		3990	jass.manasyan@gmail.com	\N
5112		\N	\N	1646	1	2017-09-06	\N		\N		25	3	2		3991	jass.manasyan@gmail.com	\N
5113		\N	\N	401	1	2017-08-09	\N		\N		25	3	2		3992	jass.manasyan@gmail.com	\N
5114		\N	\N	269	1	2017-08-09	\N		\N		12	3	2		3993	jass.manasyan@gmail.com	\N
5115		\N	1707	1214	1	2018-03-23	\N		\N		25	3	2		390	jass.manasyan@gmail.com	\N
5116		\N	\N	525	1	2017-07-12	\N		\N		16	3	2		3994	jass.manasyan@gmail.com	\N
5117		\N	\N	635	1	2017-07-20	\N		\N		21	3	2		3995	jass.manasyan@gmail.com	\N
5118		\N	\N	1613	1	2017-07-06	\N		\N		21	3	2		3996	jass.manasyan@gmail.com	\N
5119		\N	\N	650	1	2017-07-13	\N		\N		21	3	2		3997	jass.manasyan@gmail.com	\N
5120		\N	\N	852	1	2017-04-12	\N		\N		17	3	2		3998	jass.manasyan@gmail.com	\N
5121		\N	\N	862	1	2017-08-10	\N		\N		7	3	2		3999	jass.manasyan@gmail.com	\N
5122		\N	\N	861	1	2017-09-06	\N		\N		7	3	2		4000	jass.manasyan@gmail.com	\N
5123		\N	\N	863	1	2017-07-06	\N		\N		7	3	2		4001	jass.manasyan@gmail.com	\N
5124		\N	\N	867	1	2017-09-07	\N		\N		7	3	2		4002	jass.manasyan@gmail.com	\N
5125		\N	\N	868	1	2017-08-10	\N		\N		7	3	2		4003	jass.manasyan@gmail.com	\N
5126		\N	\N	881	1	2017-08-17	\N		\N		7	3	2		4004	jass.manasyan@gmail.com	\N
5127		\N	\N	882	1	2017-09-14	\N		\N		7	3	2		4005	jass.manasyan@gmail.com	\N
5128		\N	\N	884	1	2017-08-10	\N		\N		7	3	2		4006	jass.manasyan@gmail.com	\N
5129		\N	\N	883	1	2017-09-13	\N		\N		7	3	2		4007	jass.manasyan@gmail.com	\N
5130		\N	\N	888	1	2017-07-07	\N		\N		7	3	2		4008	jass.manasyan@gmail.com	\N
5131		\N	\N	864	1	2017-09-07	\N		\N		7	3	2		4009	jass.manasyan@gmail.com	\N
5132		\N	\N	866	1	2017-08-10	\N		\N		7	3	2		4010	jass.manasyan@gmail.com	\N
5133		\N	\N	871	1	2017-06-08	\N		\N		7	3	2		4011	jass.manasyan@gmail.com	\N
5134		\N	\N	887	1	2017-06-08	\N		\N		7	3	2		4012	jass.manasyan@gmail.com	\N
5135		\N	\N	907	1	2017-08-10	\N		\N		7	3	2		4013	jass.manasyan@gmail.com	\N
5136		\N	\N	924	1	2017-08-10	\N		\N		7	3	2		4014	jass.manasyan@gmail.com	\N
5137		\N	\N	903	1	2017-10-13	\N		\N		7	3	2		4015	jass.manasyan@gmail.com	\N
5138		\N	\N	910	1	2017-08-09	\N		\N		7	3	2		4016	jass.manasyan@gmail.com	\N
5139		\N	\N	922	1	2017-08-10	\N		\N		7	3	2		4017	jass.manasyan@gmail.com	\N
5140		\N	\N	944	1	2017-09-06	\N		\N		7	3	2		4018	jass.manasyan@gmail.com	\N
5141		\N	\N	957	1	2017-08-09	\N		\N		7	3	2		4019	jass.manasyan@gmail.com	\N
5142		\N	\N	949	1	2017-07-05	\N		\N		8	3	2		4020	jass.manasyan@gmail.com	\N
5143		\N	\N	904	1	2017-08-10	\N		\N		8	3	2		4021	jass.manasyan@gmail.com	\N
5144		\N	\N	952	1	2017-07-04	\N		\N		8	3	2		4022	jass.manasyan@gmail.com	\N
5145		\N	\N	860	1	2017-07-13	\N		\N		7	3	2		4023	jass.manasyan@gmail.com	\N
5146		\N	\N	945	1	2017-07-06	\N		\N		8	3	2		4024	jass.manasyan@gmail.com	\N
5147		\N	\N	560	1	2017-08-10	\N		\N		16	3	2		4025	jass.manasyan@gmail.com	\N
5148		\N	\N	1333	1	2017-08-10	\N		\N		16	3	2		4026	jass.manasyan@gmail.com	\N
5149		\N	\N	1334	1	2017-09-07	\N		\N		16	3	2		4027	jass.manasyan@gmail.com	\N
5150		\N	\N	1345	1	2017-08-11	\N		\N		16	3	2		4028	jass.manasyan@gmail.com	\N
5151		\N	\N	502	1	2017-08-18	\N		\N		16	3	2		4029	jass.manasyan@gmail.com	\N
5152		\N	\N	514	1	2017-08-10	\N		\N		16	3	2		4030	jass.manasyan@gmail.com	\N
5153		\N	\N	527	1	2017-09-06	\N		\N		16	3	2		4031	jass.manasyan@gmail.com	\N
5154		\N	\N	1485	1	2017-10-12	\N		\N		22	3	2		4032	jass.manasyan@gmail.com	\N
5155		\N	\N	1482	1	2017-07-13	\N		\N		22	3	2		4033	jass.manasyan@gmail.com	\N
5156		\N	\N	1481	1	2017-10-13	\N		\N		22	3	2		4034	jass.manasyan@gmail.com	\N
5157		\N	\N	1483	1	2017-09-13	\N		\N		22	3	2		4035	jass.manasyan@gmail.com	\N
5158		\N	\N	1484	1	2017-07-12	\N		\N		22	3	2		4036	jass.manasyan@gmail.com	\N
5159		\N	\N	1486	1	2017-05-17	\N		\N		22	3	2		4037	jass.manasyan@gmail.com	\N
5160		\N	\N	1470	1	2017-09-13	\N		\N		22	3	2		4038	jass.manasyan@gmail.com	\N
5161		\N	\N	1625	1	2017-07-12	\N		\N		22	3	2		4039	jass.manasyan@gmail.com	\N
5162		\N	\N	689	1	2017-06-08	\N		\N		22	3	2		4040	jass.manasyan@gmail.com	\N
5163		\N	\N	674	1	2017-09-12	\N		\N		22	3	2		4041	jass.manasyan@gmail.com	\N
5164		\N	\N	662	1	2017-09-14	\N		\N		22	3	2		4042	jass.manasyan@gmail.com	\N
5165		\N	\N	656	1	2017-09-13	\N		\N		22	3	2		4043	jass.manasyan@gmail.com	\N
5166		\N	\N	661	1	2017-09-06	\N		\N		22	3	2		4044	jass.manasyan@gmail.com	\N
5167		\N	\N	663	1	2017-09-14	\N		\N		22	3	2		4045	jass.manasyan@gmail.com	\N
5168		\N	\N	657	1	2017-09-07	\N		\N		22	3	2		4046	jass.manasyan@gmail.com	\N
5169		\N	\N	659	1	2017-09-06	\N		\N		22	3	2		4047	jass.manasyan@gmail.com	\N
5170		\N	\N	685	1	2017-08-10	\N		\N		22	3	2		4048	jass.manasyan@gmail.com	\N
5171		\N	\N	684	1	2017-07-06	\N		\N		22	3	2		4049	jass.manasyan@gmail.com	\N
5172		\N	\N	1473	1	2017-09-07	\N		\N		22	3	2		4050	jass.manasyan@gmail.com	\N
5173		\N	\N	1474	1	2017-10-12	\N		\N		22	3	2		4051	jass.manasyan@gmail.com	\N
5174		\N	\N	1476	1	2017-08-09	\N		\N		22	3	2		4052	jass.manasyan@gmail.com	\N
5175		\N	\N	1477	1	2017-07-07	\N		\N		22	3	2		4053	jass.manasyan@gmail.com	\N
5176		\N	\N	1479	1	2017-06-08	\N		\N		22	3	2		4054	jass.manasyan@gmail.com	\N
5177		\N	\N	1487	1	2017-08-09	\N		\N		22	3	2		4055	jass.manasyan@gmail.com	\N
5178		\N	\N	1491	1	2017-08-10	\N		\N		22	3	2		4056	jass.manasyan@gmail.com	\N
5179		\N	\N	1489	1	2017-08-09	\N		\N		22	3	2		4057	jass.manasyan@gmail.com	\N
5180		\N	\N	1490	1	2017-09-06	\N		\N		22	3	2		4058	jass.manasyan@gmail.com	\N
5181		\N	1704	1664	1	2018-03-27	\N		\N		7	3	2		478	jass.manasyan@gmail.com	\N
5182		\N	1704	1664	1	2018-03-27	\N		\N		7	3	2		1551	jass.manasyan@gmail.com	\N
5183		\N	1704	1664	1	2018-03-27	\N		\N		7	3	2		2022	jass.manasyan@gmail.com	\N
5184		\N	130	1664	1	2018-03-27	2018-03-29		\N		7	3	2		1468	jass.manasyan@gmail.com	\N
5185		\N	\N	953	1	2017-09-14	\N		\N		8	3	2		4059	jass.manasyan@gmail.com	\N
5186		\N	\N	529	1	2017-08-10	\N		\N		16	3	2		4060	jass.manasyan@gmail.com	\N
5187		\N	\N	567	1	2017-09-13	\N		\N		16	3	2		4061	jass.manasyan@gmail.com	\N
5188		\N	\N	1330	1	2017-09-07	\N		\N		16	3	2		4062	jass.manasyan@gmail.com	\N
5189		\N	\N	521	1	2017-07-05	\N		\N		16	3	2		4063	jass.manasyan@gmail.com	\N
5190		\N	\N	1478	1	2017-06-15	\N		\N		22	3	2		4064	jass.manasyan@gmail.com	\N
5191		\N	\N	660	1	2017-09-14	\N		\N		22	3	2		4065	jass.manasyan@gmail.com	\N
5192		\N	\N	1475	1	2017-08-10	\N		\N		22	3	2		4066	jass.manasyan@gmail.com	\N
5193		\N	\N	1488	1	2017-08-10	\N		\N		22	3	2		4067	jass.manasyan@gmail.com	\N
5194		\N	\N	686	1	2017-08-10	\N		\N		22	3	2		4068	jass.manasyan@gmail.com	\N
5195		\N	\N	851	1	2017-09-07	\N		\N		17	3	2		4069	jass.manasyan@gmail.com	\N
5196		\N	\N	803	1	2017-07-06	\N		\N		17	3	2		4070	jass.manasyan@gmail.com	\N
5197		\N	\N	806	1	2017-07-13	\N		\N		17	3	2		4071	jass.manasyan@gmail.com	\N
5198		\N	\N	1392	1	2017-08-10	\N		\N		16	3	2		4072	jass.manasyan@gmail.com	\N
5199		\N	\N	854	1	2017-09-07	\N		\N		17	3	2		4073	jass.manasyan@gmail.com	\N
5200		\N	\N	840	1	2017-09-13	\N		\N		17	3	2		4074	jass.manasyan@gmail.com	\N
5201		\N	\N	316	1	2017-09-07	\N		\N		17	3	2		4075	jass.manasyan@gmail.com	\N
5202		\N	\N	770	1	2017-09-06	\N		\N		17	3	2		4076	jass.manasyan@gmail.com	\N
5203		\N	\N	771	1	2017-07-20	\N		\N		17	3	2		4077	jass.manasyan@gmail.com	\N
5204		\N	\N	775	1	2017-10-12	\N		\N		17	3	2		4078	jass.manasyan@gmail.com	\N
5205		\N	\N	812	1	2017-09-07	\N		\N		17	3	2		4079	jass.manasyan@gmail.com	\N
5206		\N	\N	813	1	2017-09-14	\N		\N		17	3	2		4080	jass.manasyan@gmail.com	\N
5207		\N	\N	853	1	2017-08-09	\N		\N		17	3	2		4081	jass.manasyan@gmail.com	\N
5208		\N	\N	829	1	2017-09-14	\N		\N		17	3	2		4082	jass.manasyan@gmail.com	\N
5209		\N	\N	830	1	2017-09-08	\N		\N		17	3	2		4083	jass.manasyan@gmail.com	\N
5210		\N	\N	833	1	2017-09-07	\N		\N		17	3	2		4084	jass.manasyan@gmail.com	\N
5211		\N	\N	834	1	2017-09-14	\N		\N		17	3	2		4085	jass.manasyan@gmail.com	\N
5212		\N	\N	350	1	2017-09-06	\N		\N		20	3	2		4086	jass.manasyan@gmail.com	\N
5213		\N	1664	1244	1	2018-03-29	\N		\N		25	3	2		2600	\N	jass.manasyan@gmail.com
5214		\N	1664	1224	1	2018-03-29	\N		\N		25	3	2		1485	\N	jass.manasyan@gmail.com
5215		\N	1664	1704	1	2018-03-29	2018-03-30		\N		7	3	2		760	jass.manasyan@gmail.com	\N
5216		\N	1664	1704	1	2018-03-29	\N		\N		7	3	2		1468	jass.manasyan@gmail.com	\N
5217		\N	1664	1704	1	2018-03-29	\N		\N		7	3	2		295	jass.manasyan@gmail.com	\N
5218		\N	1664	1704	1	2018-03-29	2018-03-30		\N		7	3	2		160	jass.manasyan@gmail.com	\N
5219		\N	85	1664	1	2018-03-30	\N		\N		7	3	2		1850	jass.manasyan@gmail.com	\N
5220		\N	85	1664	1	2018-03-30	\N		\N		7	3	2		1851	jass.manasyan@gmail.com	\N
5221		\N	85	1664	2	2018-03-30	\N		\N		7	3	2		1841	\N	jass.manasyan@gmail.com
5222		\N	101	1711	1	2018-03-28	\N		\N		19	3	2		1365	jass.manasyan@gmail.com	\N
5223		\N	1716	101	1	2018-03-28	\N		\N		19	3	2		522	jass.manasyan@gmail.com	\N
5224		\N	101	1711	2	2018-03-28	\N		\N		19	3	2		1366	jass.manasyan@gmail.com	\N
5225		\N	1716	1711	1	2018-03-28	\N		\N		19	3	2		448	jass.manasyan@gmail.com	\N
5226		\N	1704	85	1	2018-03-30	\N		\N		7	3	2		760	jass.manasyan@gmail.com	\N
5227		\N	1704	85	1	2018-03-30	\N		\N		7	3	2		160	jass.manasyan@gmail.com	\N
5228		\N	\N	361	1	2017-09-13	\N		\N		20	3	2		4087	jass.manasyan@gmail.com	\N
5229		\N	\N	380	1	2017-10-11	\N		\N		20	3	2		4088	jass.manasyan@gmail.com	\N
5230		\N	\N	974	1	2017-10-10	\N		\N		20	3	2		4089	jass.manasyan@gmail.com	\N
5231		\N	\N	976	1	2017-09-08	\N		\N		20	3	2		4090	jass.manasyan@gmail.com	\N
5232		\N	\N	987	1	2017-09-06	\N		\N		20	3	2		4091	jass.manasyan@gmail.com	\N
5233		\N	\N	793	1	2017-10-11	\N		\N		17	3	2		4092	jass.manasyan@gmail.com	\N
5234		\N	\N	777	1	2017-10-11	\N		\N		17	3	2		4093	jass.manasyan@gmail.com	\N
5235		\N	\N	848	1	2017-11-08	\N		\N		17	3	2		4094	jass.manasyan@gmail.com	\N
5236		\N	\N	1658	1	2017-10-11	\N		\N		22	3	2		4095	jass.manasyan@gmail.com	jass.manasyan@gmail.com
5237		\N	1664	6	1	2018-04-03	\N		\N		20	3	2		755	\N	hasmik@hf.am
5238		\N	1664	336	1	2018-04-04	\N		\N		20	3	2		107	\N	hasmik@hf.am
5239		\N	\N	379	1	2017-06-28	\N		\N		20	3	2		4096	jass.manasyan@gmail.com	jass.manasyan@gmail.com
5240		\N	\N	779	1	2017-08-10	\N		\N		17	3	2		4097	jass.manasyan@gmail.com	\N
5241		\N	1664	261	1	2018-04-05	\N		\N		12	3	2		2342	\N	hasmik@hf.am
5242		\N	1664	400	1	2018-04-05	\N		\N		25	3	2		1491	\N	hasmik@hf.am
5243		\N	1664	269	1	2018-04-05	\N		\N		12	3	2		66	\N	hasmik@hf.am
5244		\N	1664	269	1	2018-04-05	\N		\N		12	3	2		71	\N	hasmik@hf.am
5245		\N	1664	93	1	2018-04-05	\N		\N		25	3	2		68	\N	hasmik@hf.am
5246		\N	1664	399	1	2018-04-05	\N		\N		25	3	2		564	\N	hasmik@hf.am
5247		\N	604	1710	1	2018-04-05	\N		\N		23	3	2		2433	jass.manasyan@gmail.com	\N
5248		\N	\N	383	1	2017-07-05	\N		\N		20	3	2		4098	jass.manasyan@gmail.com	\N
5249		\N	\N	376	1	2017-09-13	\N		\N		20	3	2		4099	jass.manasyan@gmail.com	\N
5250		\N	\N	988	1	2017-10-11	\N		\N		20	3	2		4100	jass.manasyan@gmail.com	\N
5251		\N	1664	1707	1	2018-04-06	\N		\N		25	3	2		2890	jass.manasyan@gmail.com	\N
5252		\N	943	1664	1	2018-04-05	2018-04-06		\N		8	3	2		2960	\N	hasmik@hf.am
5253		\N	1664	538	1	2018-04-06	\N		\N		16	3	2		121	\N	hasmik@hf.am
5254		\N	1664	538	1	2018-04-06	\N		\N		16	3	2		2960	\N	hasmik@hf.am
5255		\N	1664	552	1	2018-04-06	\N		\N		16	3	2		3746	jass.manasyan@gmail.com	hasmik@hf.am
5256		\N	\N	378	1	2017-09-07	\N		\N		20	3	2		4101	jass.manasyan@gmail.com	\N
5257		\N	\N	381	1	2017-06-08	\N		\N		20	3	2		4102	jass.manasyan@gmail.com	\N
5258		\N	\N	384	1	2017-10-12	\N		\N		20	3	2		4103	jass.manasyan@gmail.com	\N
5259		\N	\N	386	1	2017-10-11	\N		\N		20	3	2		4104	jass.manasyan@gmail.com	\N
5260		\N	\N	1006	1	2017-09-07	\N		\N		20	3	2		4105	jass.manasyan@gmail.com	\N
5261		\N	\N	1007	1	2017-09-06	\N		\N		20	3	2		4106	jass.manasyan@gmail.com	\N
5262		\N	\N	1501	1	2017-10-11	\N		\N		20	3	2		4107	jass.manasyan@gmail.com	\N
5263		\N	212	1710	1	2018-04-05	\N		\N		23	3	2	AP-ն ապամոնտաժվել է	1592	\N	jass.manasyan@gmail.com
5264		\N	212	1710	1	2018-04-05	\N		\N		23	3	2	AP-ն ապամոնտաժվել է	1593	jass.manasyan@gmail.com	\N
5265		\N	212	1710	1	2018-04-05	\N		\N		23	3	2	AP-ն ապամոնտաժվել է	1595	jass.manasyan@gmail.com	\N
5266		\N	133	1710	1	2018-04-05	\N		\N		23	3	2	կայանն  ապամոնտաժվել է	1582	\N	jass.manasyan@gmail.com
5267		\N	133	1710	1	2018-04-05	\N		\N		23	3	2	կայանն  ապամոնտաժվել է	1584	\N	jass.manasyan@gmail.com
5268		\N	133	1710	1	2018-04-05	\N		\N		23	3	2	կայանն  ապամոնտաժվել է	1587	jass.manasyan@gmail.com	\N
5269		\N	133	1710	1	2018-04-05	\N		\N		23	3	2	կայանն  ապամոնտաժվել է	1590	jass.manasyan@gmail.com	\N
5270		\N	\N	530	1	2017-10-12	\N		\N		16	3	2		4108	jass.manasyan@gmail.com	\N
5271		\N	\N	1351	1	2017-10-19	\N		\N		16	3	2		4109	jass.manasyan@gmail.com	\N
5272		\N	\N	524	1	2017-09-07	\N		\N		16	3	2		4110	jass.manasyan@gmail.com	\N
5273		\N	\N	690	1	2017-08-10	\N		\N		22	3	2		4111	jass.manasyan@gmail.com	\N
5274		\N	1673	1664	1	2018-04-09	\N		\N		17	3	2		1091	hasmik@hf.am	\N
5275		\N	1673	1664	1	2018-04-09	\N		\N		17	3	2		1092	hasmik@hf.am	\N
5276		\N	1714	1673	1	2018-04-06	\N		\N		17	3	2		3792	hasmik@hf.am	\N
5278		\N	246	1664	1	2018-04-09	2018-04-16		\N		17	3	2		1096	hasmik@hf.am	\N
5279		\N	1714	1673	1	2018-04-06	\N		\N		17	3	2		245	hasmik@hf.am	\N
5280		\N	1714	246	1	2018-04-06	\N		\N		17	3	2		250	hasmik@hf.am	\N
5281		\N	269	1715	1	2018-04-06	\N		\N		12	3	2		2293	hasmik@hf.am	\N
5282		\N	269	1715	1	2018-04-06	\N		\N		12	3	2		1927	hasmik@hf.am	\N
5283		\N	269	1715	1	2018-04-06	\N		\N		12	3	2		1930	hasmik@hf.am	\N
5284		\N	261	1715	1	2018-04-06	\N		\N		12	3	2		3300	hasmik@hf.am	\N
5285		\N	261	1715	1	2018-04-06	\N		\N		12	3	2		3301	hasmik@hf.am	\N
5286		\N	93	1707	1	2018-04-06	\N		\N		25	3	2		1835	hasmik@hf.am	\N
5287		\N	93	1707	1	2018-04-06	\N		\N		25	3	2		1836	hasmik@hf.am	\N
5288		\N	6	1708	1	2018-04-09	\N		\N		20	3	2		1170	hasmik@hf.am	\N
5289		\N	538	1716	2	2018-04-09	\N		\N		16	3	2		3989	hasmik@hf.am	\N
5290		\N	538	1716	2	2018-04-09	\N		\N		16	3	2		2517	hasmik@hf.am	\N
5291		\N	1664	22	1	2018-04-10	\N		\N		20	3	2		3057	\N	hasmik@hf.am
5296		\N	1	1704	1	2018-04-10	\N		\N		7	3	2		1171	hasmik@hf.am	\N
5297		\N	85	1664	2	2018-04-11	\N		\N		7	3	2		1845	hasmik@hf.am	\N
5298		\N	\N	85	1	2017-07-12	2018-04-11		\N		25	3	2		4112	hasmik@hf.am	\N
5299		\N	85	1664	1	2018-04-11	\N		\N		7	3	2		4112	hasmik@hf.am	\N
5300		\N	85	1664	2	2018-04-11	\N		\N		7	3	2		1853	hasmik@hf.am	\N
5301		\N	\N	341	1	2017-10-11	\N		\N		20	3	2		4113	hasmik@hf.am	\N
5302		\N	\N	385	1	2017-11-09	\N		\N		20	3	2		4114	hasmik@hf.am	\N
5303		\N	\N	986	1	2017-10-12	\N		\N		20	3	2		4115	hasmik@hf.am	\N
5304		\N	\N	1660	1	2017-10-12	\N		\N		20	3	2		4116	hasmik@hf.am	\N
5306		\N	1705	1586	1	2018-04-12	\N		\N		9	3	2		61	hasmik@hf.am	\N
5307		\N	1586	1705	1	2018-04-12	2018-04-13		\N		9	3	2		2393	hasmik@hf.am	\N
5308		\N	1664	1003	1	2018-04-13	\N		\N		20	3	2		119	\N	hasmik@hf.am
5309		\N	1705	1664	1	2018-04-13	\N		\N		9	3	2		2393	hasmik@hf.am	\N
5310		\N	613	1710	2	2018-03-30	\N		\N		23	3	2		26	hasmik@hf.am	\N
5311		\N	336	1708	1	2018-04-06	\N		\N		20	3	2		450	hasmik@hf.am	\N
5312		\N	336	1708	1	2018-04-06	\N		\N		20	3	2		828	hasmik@hf.am	\N
5313		\N	\N	1010	1	2017-10-18	\N		\N		20	3	2		4117	hasmik@hf.am	\N
5314		\N	\N	1699	1	2017-10-12	\N		\N		20	3	2		4118	hasmik@hf.am	\N
5315		\N	\N	1354	1	2017-10-12	\N		\N		20	3	2		4119	hasmik@hf.am	\N
5316		\N	1664	244	1	2018-04-16	\N		\N		20	3	2		3048	\N	hasmik@hf.am
5317		\N	1664	65	1	2018-04-16	\N		\N		7	3	2		1096	\N	hasmik@hf.am
5318		\N	1664	65	1	2018-04-16	\N		\N		7	3	2		47	\N	hasmik@hf.am
5319		\N	1664	66	1	2018-04-16	\N		\N		7	3	2		123	\N	hasmik@hf.am
5320		\N	1664	422	1	2018-04-16	\N		\N		7	3	2		120	\N	hasmik@hf.am
5321		\N	1664	72	1	2018-04-16	\N		\N		7	3	2		48	\N	hasmik@hf.am
5322		\N	1664	85	1	2018-04-16	\N		\N		7	3	2		188	\N	hasmik@hf.am
5323		\N	1664	85	1	2018-04-16	\N		\N		7	3	2		50	\N	hasmik@hf.am
5324		\N	1664	65	1	2018-04-16	2018-04-20		\N		7	3	2	չի տեղադրել․ հետ է բերել	1938	\N	hasmik@hf.am
5325		\N	1664	413	1	2018-04-16	\N		\N		7	3	2		335	\N	hasmik@hf.am
5326		\N	\N	857	1	2017-08-10	\N		\N		7	3	2		4120	hasmik@hf.am	\N
5327		\N	1664	183	1	2018-04-18	\N		\N		17	3	1		1270	hasmik@hf.am	\N
5328		\N	1664	317	1	2018-04-18	\N		\N		17	3	2		3056	\N	hasmik@hf.am
5329		\N	1664	244	1	2018-04-16	\N		\N		20	3	2		3078	\N	hasmik@hf.am
5331		\N	1664	23	1	2018-04-18	\N		\N		20	3	2		173	\N	hasmik@hf.am
5332		\N	1664	560	1	2018-04-19	\N		\N		16	3	2		58	\N	hasmik@hf.am
5333		\N	1664	570	1	2018-04-19	\N		\N		16	3	2		57	\N	hasmik@hf.am
5334		\N	1664	726	1	2018-04-19	\N		\N		12	3	2		60	\N	hasmik@hf.am
5335		\N	1664	719	1	2018-04-19	\N		\N		12	3	2		59	\N	hasmik@hf.am
5337		\N	1664	725	1	2018-04-19	\N		\N		12	3	2		56	\N	hasmik@hf.am
5338		\N	413	1704	1	2018-04-18	2018-04-20		\N		7	3	2		3388	hasmik@hf.am	\N
5293		\N	1664	1315	1	2018-04-10	2018-05-14		\N		7	3	2		3053	\N	hasmik@hf.am
5294		\N	1664	1315	1	2018-04-10	2018-05-14		\N		7	3	2		3046	\N	hasmik@hf.am
5330		\N	1664	23	1	2018-04-18	2018-05-14		\N		20	3	2		204	\N	hasmik@hf.am
5305		\N	1664	1327	1	2018-04-12	2018-05-14		\N		20	3	2	չի տեղադրել	122	\N	hasmik@hf.am
5339		\N	65	1704	1	2018-04-18	2018-04-20		\N		7	3	2		1907	hasmik@hf.am	\N
5340		\N	65	1704	1	2018-04-18	2018-04-20		\N		7	3	2		1908	hasmik@hf.am	\N
5341		\N	65	1704	1	2018-04-18	2018-04-20		\N		7	3	2		1906	hasmik@hf.am	\N
5342		\N	66	1704	1	2018-04-18	2018-04-20		\N		7	3	2		1904	hasmik@hf.am	\N
5343		\N	66	1704	1	2018-04-18	2018-04-20		\N		7	3	2		1905	hasmik@hf.am	\N
5344		\N	317	1714	2	2018-04-19	\N		\N		17	3	2		2072	\N	hasmik@hf.am
5345		\N	1394	1716	1	2018-04-18	2018-04-26		\N		16	3	2		1313	hasmik@hf.am	\N
5346		\N	1394	1716	1	2018-04-18	2018-04-26		\N		16	3	2		1314	hasmik@hf.am	\N
5348		\N	1664	521	1	2018-04-19	\N		\N		16	3	2		1276	\N	hasmik@hf.am
5349		\N	72	1704	1	2018-04-19	2018-04-20		\N		7	3	2		1912	hasmik@hf.am	\N
5350		\N	72	1704	1	2018-04-19	2018-04-20		\N		7	3	2		1913	hasmik@hf.am	\N
5351		\N	422	1704	1	2018-04-19	2018-04-20		\N		7	3	2		2898	hasmik@hf.am	\N
5352		\N	422	1704	1	2018-04-19	2018-04-20		\N		7	3	2		2900	hasmik@hf.am	\N
5353		\N	1704	1664	2	2018-04-20	\N		\N		7	3	2		3388	hasmik@hf.am	\N
5354		\N	65	1664	1	2018-04-20	\N		\N		7	3	2		1938	hasmik@hf.am	\N
5355		\N	1704	1664	1	2018-04-20	\N		\N		7	3	2		1908	hasmik@hf.am	\N
5356		\N	1704	1664	1	2018-04-20	\N		\N		7	3	2		1907	hasmik@hf.am	\N
5357		\N	1704	1664	1	2018-04-20	\N		\N		7	3	2		1906	hasmik@hf.am	\N
5358		\N	1704	1664	1	2018-04-20	\N		\N		7	3	2		1905	hasmik@hf.am	\N
5359		\N	1704	1664	1	2018-04-20	\N		\N		7	3	2		1904	hasmik@hf.am	\N
5360		\N	1704	1664	1	2018-04-20	\N		\N		7	3	2		1912	hasmik@hf.am	\N
5361		\N	1704	1664	1	2018-04-20	\N		\N		7	3	2		1913	hasmik@hf.am	\N
5362		\N	1704	1664	1	2018-04-20	\N		\N		7	3	2		2898	hasmik@hf.am	\N
5363		\N	1704	1664	1	2018-04-20	\N		\N		7	3	2		2900	hasmik@hf.am	\N
5364		\N	1716	108	1	2018-04-26	\N		\N		16	3	2		1313	hasmik@hf.am	\N
5365		\N	1716	108	1	2018-04-26	\N		\N		16	3	2		1314	hasmik@hf.am	\N
5366		\N	108	1716	1	2018-04-26	\N		\N		16	3	2		1362	hasmik@hf.am	\N
5367		\N	108	1716	1	2018-04-26	\N		\N		16	3	2		537	hasmik@hf.am	\N
5368		\N	560	1716	1	2018-04-18	\N		\N		16	3	2		2767	hasmik@hf.am	\N
5369		\N	1664	108	1	2018-05-03	\N		\N		16	3	2		3054	\N	hasmik@hf.am
5370		\N	1664	102	1	2018-05-03	\N		\N		16	3	2		3055	\N	hasmik@hf.am
5371		\N	1664	102	1	2018-05-03	\N		\N		16	3	2		168	\N	hasmik@hf.am
5372		\N	1003	1708	1	2018-05-04	\N		\N		20	3	2		2181	hasmik@hf.am	\N
5373		\N	522	1716	2	2018-05-04	\N		\N		16	3	2		2537	hasmik@hf.am	\N
5374		\N	244	1708	1	2018-05-02	\N		\N		20	3	2		943	hasmik@hf.am	\N
5375		\N	244	1708	1	2018-05-02	\N		\N		20	3	2		944	hasmik@hf.am	\N
5376		\N	108	1716	1	2018-05-08	\N		\N		16	3	2		1360	hasmik@hf.am	\N
5377		\N	108	1716	1	2018-05-08	\N		\N		16	3	2		1361	hasmik@hf.am	\N
5378		\N	1716	570	1	2018-05-08	\N		\N		16	3	2		422	hasmik@hf.am	\N
5379		\N	\N	570	1	2017-08-09	2018-05-08		\N		16	3	2		4121	hasmik@hf.am	\N
5380		\N	570	1716	2	2018-05-08	\N		\N		16	3	2		4121	hasmik@hf.am	\N
5381		\N	570	1716	1	2018-05-08	\N		\N		16	16	2		2764	hasmik@hf.am	\N
5382		\N	570	1716	1	2018-05-08	\N		\N		16	3	2		2891	hasmik@hf.am	\N
5383		\N	1664	26	1	2018-05-10	\N		\N		9	3	2		447	\N	hasmik@hf.am
5384		\N	1664	42	1	2018-05-10	\N		\N		7	3	2		205	\N	hasmik@hf.am
5385		\N	1706	935	1	2018-05-11	\N		\N		8	3	1		2984	hasmik@hf.am	\N
5386		\N	26	1664	2	2018-05-11	\N		\N		9	3	2		917	hasmik@hf.am	\N
5387		\N	42	1704	2	2018-05-11	\N		\N		7	3	2		850	hasmik@hf.am	\N
5413		\N	1327	1708	1	2018-05-14	\N		\N		20	3	2		2391	hasmik@hf.am	\N
5397		\N	\N	1664	1	2018-05-11	\N		\N		5	3	2		4130	hasmik@hf.am	\N
5390		\N	\N	1664	1	2018-05-11	2018-05-14		\N		5	3	2		4123	hasmik@hf.am	\N
5398		\N	1664	463	1	2018-05-14	\N		\N		20	3	2		4123	hasmik@hf.am	\N
5391		\N	\N	1664	1	2018-05-11	2018-05-14		\N		5	3	2		4124	hasmik@hf.am	\N
5400		\N	1664	471	1	2018-05-14	\N		\N		20	3	2		4124	hasmik@hf.am	\N
5401		\N	471	1708	1	2018-05-14	\N		\N		20	3	2		2359	hasmik@hf.am	\N
5392		\N	\N	1664	1	2018-05-11	2018-05-14		\N		5	3	2		4125	hasmik@hf.am	\N
5402		\N	1664	1315	1	2018-05-14	\N		\N		20	3	2		4125	hasmik@hf.am	\N
2722		\N	\N	1315	1	2017-06-04	2018-05-14		\N		20	3	2		2332	\N	\N
5403		\N	1315	1708	1	2018-05-14	\N		\N		20	3	2		2332	hasmik@hf.am	\N
5292		\N	1664	1315	1	2018-04-10	2018-05-14		\N		7	3	2		165	\N	hasmik@hf.am
5404		\N	1315	1708	1	2018-05-14	\N		\N		20	3	2		165	hasmik@hf.am	\N
5405		\N	1315	1708	1	2018-05-14	\N		\N		20	3	2		3053	hasmik@hf.am	\N
5406		\N	1315	1708	1	2018-05-14	\N		\N		20	3	2		3046	hasmik@hf.am	\N
5295		\N	1664	1315	1	2018-04-10	2018-05-14		\N		7	3	2		3077	\N	hasmik@hf.am
5407		\N	1315	1708	1	2018-05-14	\N		\N		20	3	2		3077	hasmik@hf.am	\N
5393		\N	\N	1664	1	2018-05-11	2018-05-14		\N		5	3	2		4126	hasmik@hf.am	\N
5408		\N	1664	470	1	2018-05-14	\N		\N		20	3	2		4126	hasmik@hf.am	\N
5409		\N	470	1708	1	2018-05-14	\N		\N		20	3	2		2357	hasmik@hf.am	\N
5395		\N	\N	1664	1	2018-05-11	2018-05-14		\N		5	3	2		4128	hasmik@hf.am	\N
5410		\N	1664	462	1	2018-05-14	\N		\N		20	3	2		4128	hasmik@hf.am	\N
5411		\N	462	1708	1	2018-05-14	\N		\N		20	3	2		2353	hasmik@hf.am	\N
5394		\N	\N	1664	1	2018-05-11	2018-05-14		\N		5	3	2		4127	hasmik@hf.am	\N
5412		\N	1664	1327	1	2018-05-14	\N		\N		20	3	2		4127	hasmik@hf.am	\N
5396		\N	\N	1664	1	2018-05-11	2018-05-14		\N		5	3	2		4129	hasmik@hf.am	\N
5415		\N	1664	23	1	2018-05-14	\N		\N		20	3	2		4129	hasmik@hf.am	\N
5347		\N	1664	1708	1	2018-04-19	2018-05-14		\N		20	3	2		202	hasmik@hf.am	\N
5416		\N	1708	23	1	2018-05-14	\N		\N		20	3	2		202	hasmik@hf.am	\N
5417		\N	23	1708	1	2018-05-14	\N		\N		20	3	2		204	hasmik@hf.am	\N
3853		\N	\N	1615	1	2017-06-15	2018-05-14		\N		21	3	2		3130	\N	\N
5418		\N	1615	1713	2	2018-05-14	\N		\N		21	3	2		3130	hasmik@hf.am	\N
922	Sevaberd Abovyan Link	\N	\N	26	1	2017-08-20	2018-05-15	10.206.135.71	1	AbovSevaberdlink	9	3	2		916	\N	\N
5420		\N	1664	1615	1	2018-05-14	\N		\N		21	3	2		4131	hasmik@hf.am	\N
5429		\N	26	1705	2	2018-05-15	\N		\N		9	3	2		916	hasmik@hf.am	\N
5419		\N	\N	1664	1	2017-04-13	2018-05-14		\N		5	3	2	Սիսիանի 6-րդ դպրոցից են հանել	4131	hasmik@hf.am	hasmik@hf.am
5421		\N	493	1705	2	2018-05-14	\N		\N		9	3	2		3136	hasmik@hf.am	\N
5105		\N	1560	1705	1	2018-03-22	2018-05-14		\N		9	3	2	ապամոնտաժվել է, դպրոցը վերամիավորվել է	3984	jass.manasyan@gmail.com	jass.manasyan@gmail.com
5422		\N	1705	493	1	2018-05-14	\N		\N		9	3	2		3984	hasmik@hf.am	\N
1532	caghkashen	\N	\N	970	1	2017-09-06	2018-05-14	10.205.134.34	2	SevanRocket	9	3	2		1425	\N	\N
5423		\N	970	1708	1	2018-05-14	\N		\N		20	3	2		1425	hasmik@hf.am	\N
5424		\N	970	1708	1	2018-05-14	\N		\N		20	3	2		1426	hasmik@hf.am	\N
5428		\N	1664	26	1	2018-05-15	\N		\N		9	3	2		198	\N	hasmik@hf.am
2744		\N	\N	463	1	2017-07-18	2018-05-11		\N		20	3	2		2354	\N	\N
5399		\N	463	1708	1	2018-05-11	2018-05-14		\N		20	3	2		2354	\N	hasmik@hf.am
5425		\N	1708	970	1	2018-05-14	\N		\N		20	3	2		2354	hasmik@hf.am	\N
5426		\N	1327	1708	1	2018-05-14	\N		\N		20	3	2		122	hasmik@hf.am	\N
176		\N	\N	1664	\N	2017-07-17	2018-05-15		\N		5	3	2		176	\N	\N
198		\N	\N	1664	\N	2017-07-17	2018-05-15		\N		5	3	2		198	\N	\N
2485	Rya Taza	\N	\N	1499	1	2017-07-04	2018-05-15		\N		12	3	2		2113	\N	\N
5430		\N	1499	1715	2	2018-05-15	\N		\N		12	3	2		2113	hasmik@hf.am	\N
3957		\N	1664	1715	1	2017-11-21	2018-05-15		\N		12	3	2		1933	\N	\N
5431		\N	1715	1499	1	2018-05-15	\N		\N		12	3	2		1933	hasmik@hf.am	\N
5427		\N	1664	1205	1	2018-05-15	\N		\N		25	3	2		176	\N	hasmik@hf.am
3787		\N	5	1205	1	2017-11-14	2018-05-16		\N		7	3	2		156	\N	\N
5432		\N	1205	1707	2	2018-05-16	\N		\N		25	3	2		156	hasmik@hf.am	\N
5433		\N	\N	557	1	2017-05-10	\N		\N		16	3	2		4132	hasmik@hf.am	\N
5434		\N	\N	1347	1	2017-07-06	\N		\N		16	3	2		4133	hasmik@hf.am	\N
5435		\N	\N	1350	1	2017-08-10	\N		\N		16	3	2		4134	hasmik@hf.am	\N
5436		\N	\N	515	1	2017-08-17	\N		\N		16	3	2		4135	hasmik@hf.am	\N
5437		\N	\N	382	1	2017-09-07	\N		\N		20	3	2		4136	hasmik@hf.am	\N
5438		\N	\N	1372	1	2017-08-16	\N		\N		16	3	2		4137	hasmik@hf.am	\N
\.


--
-- TOC entry 3334 (class 0 OID 16526)
-- Dependencies: 233
-- Data for Name: Manufacturer; Type: TABLE DATA; Schema: public; Owner: inventory
--

COPY public."Manufacturer" ("Manufacturer_ID", "Manufacturer_Name") FROM stdin;
0	3Com
1	Ubiquity
2	Cisco
3	Mikrotik
4	AirLink
5	D-Link
6	SMC
7	HP
8	ADC
9	Planet
10	Tenda
11	Mercury
12	TP-Link
13	C-Net
14	Mercury
15	Unknown
49	HUAWEI
\.


--
-- TOC entry 3335 (class 0 OID 16533)
-- Dependencies: 234
-- Data for Name: Measure; Type: TABLE DATA; Schema: public; Owner: inventory
--

COPY public."Measure" ("Measure_ID", "Measure_Name") FROM stdin;
5	մետր
6	հատ
7	կգ
8	տուփ
\.


--
-- TOC entry 3336 (class 0 OID 16540)
-- Dependencies: 235
-- Data for Name: Model; Type: TABLE DATA; Schema: public; Owner: inventory
--

COPY public."Model" ("Model_ID", "Model_Name", "Manufacturer_ID", "Power", "Frequency_ID", "Item_Type_ID") FROM stdin;
0	FSD-1605	9		\N	8
1	PowerBeam M2 400	1	600	1	1
2	PowerBeam PBE-5AC-400-ISO 	1	600	2	1
3	PowerBeam PBE-5AC-400	1	600	2	1
4	PowerBeam M5 AC 500-ISO	1	600	2	1
5	PowerBeam M5 AC 500	1	600	2	1
6	Rocket M2 Airmax	1	600	1	1
7	Rocket M2 Titanium	1	600	1	1
8	Rocket M5 Airmax	1	600	2	1
9	Rocket M5 Titanium	1	600	2	1
10	Rocket M5 AC Light	1	600	1	1
11	Bullet M2	1	600	1	1
12	Bullet M2 Titanium	1	600	1	1
13	Bullet 2HP	1	600	1	1
14	Bullet M5	1	600	2	1
15	Nanostation Loco M2	1	600	1	1
16	Nanostation M2	1	600	1	1
17	Nanostation Loco M5	1	600	2	1
18	Nanostation M5	1	600	2	1
19	AirGrid M5 HP	1	600	2	1
20	LightBeam M5	1	600	2	1
21	LightBeam M5 AC	1	600	2	1
22	TOUGHSwitch PoE 5 port	1		\N	8
23	TOUGHSwitch PoE PRO 8 port	1		\N	8
24	Cisco 1310	2	100	1	1
25	Cisco 1220	2	50	1	1
26	Cisco 1230	2	50	1	1
27	Cisco 1232	2	50	1	1
28	Cisco 1242	2	100	1	1
29	RB/951Ui-2nD hAP	3		\N	2
30	RB/260GS	3		\N	8
31	AirLink Router W11	4	400	1	1
32	TP-Link TL-SF1005D	12		\N	8
33	TP-Link TL-SF1008D	12		\N	8
34	TP-Link TL-SF1016D	12		\N	8
35	TP-Link TL-MR3220	12		\N	3
36	TP-Link TL-WR842MD	12		\N	4
37	D-Link DES-1005A	5		\N	8
38	D-Link DGS-1008D	5		\N	8
39	300 S	8		\N	6
40	GRT-101	9		\N	6
41	SMCGS10C-Smart	6		\N	8
42	S5	10		\N	8
43	Elit 1000 Pro	11		\N	7
44	2.4Ghz, 20dbi	15		1	5
45	2.4Ghz, 24dbi	15		1	5
46	2.4Ghz, 15dbi, 120-Sector	15		1	5
47	2.4Ghz, 19dbi, 120-Sector	15		1	5
48	2.4Ghz, 15dbi, OMNI	15		1	5
49	2.4Ghz, 15dbi, YAGI	15		1	5
50	AirMax 13dBi 2.4GHz DualOmni	1		1	5
51	AirMax 15dBi 2.4GHz 120-Sector	1		1	5
52	AirMax 16dBi 2.4GHz 90-Sector	1		1	5
53	RocketDish 2G 24 AC	1		1	5
54	5Ghz, 26dbi	15		2	5
55	5Ghz, 31dbi	15		2	5
56	AirMax 19dBi 5 GHz 90-Sector	15		2	5
57	AirMax 20dBi 5 GHz 120-Sector	15		2	5
58	RocketDish 5G 31 AC	1		2	5
59	Dir-100	5		\N	2
60	ADSL router DSL-2500	5		\N	9
61	CNet  18-1sgh800cfh	13		\N	8
62	Elite 1000 Pro	11		\N	7
129	Repare Part for IPAM-1600	15		\N	11
130	3C17304A	0		\N	8
131	 PowerBeam M5 400	1		2	1
134	PowerBeam 5AC 620	1	600	2	1
135	Planet GSD-503	9		\N	8
136	2.4GHz, 7dBi (бабочка)	15		1	5
137	B310s-22 (U!Box)	49		\N	12
138	B68A - V100R001	49		\N	12
139	TP-Link  TL-SG105	12		\N	8
140	TP-Link TL-WA5210G	12		\N	1
142	Powerbeam M5-300 22dbi	1		\N	1
143	NanoBridge M5	1		\N	1
144	AirMax 20dBi Sector Antenna (AM5G20-90)	15		2	5
\.


--
-- TOC entry 3337 (class 0 OID 16547)
-- Dependencies: 236
-- Data for Name: Owner; Type: TABLE DATA; Schema: public; Owner: inventory
--

COPY public."Owner" ("Owner_ID", "Owner_Name") FROM stdin;
1	HF
2	Fastnet
3	KTAK
4	UCOM
5	Other
\.


--
-- TOC entry 3338 (class 0 OID 16554)
-- Dependencies: 237
-- Data for Name: Region; Type: TABLE DATA; Schema: public; Owner: inventory
--

COPY public."Region" ("Region_ID", "Region_Name") FROM stdin;
1	Արագածոտն
2	Արարատ
3	Արմավիր
4	Գեղարքունիք
5	Երևան
6	Լոռի
7	Կոտայք
8	Շիրակ
9	Սյունիք
10	Վայոց Ձոր
11	Տավուշ
\.


--
-- TOC entry 3339 (class 0 OID 16561)
-- Dependencies: 238
-- Data for Name: Site; Type: TABLE DATA; Schema: public; Owner: inventory
--

COPY public."Site" ("Site_ID", "Site_Name", "Site_Type_ID", "Region_ID", "Address", "Latitude", "Longitude", "Responsive_Person_ID", "Connection_Type_ID", "Head_Name", "Head_Phone_1", "Head_Phone_2", "Head_Phone_3", "Operator_Name", "Operator_Phone_1", "Operator_Phone_2", "Operator_Phone_3", "Description", "Connected_Comp_Count", "School_Comp_Count", "Creator", "LastModifier") FROM stdin;
1	Ճամբարակ	1	4		\N	\N	3	1										\N	\N	\N	\N
2	Թթուջուրի մ/դ	3	4	գ. Թթուջուր	\N	\N	3	1	Սարիբեկյան Վարդան	98334424	95007385							\N	\N	\N	Armen.hayrapetyan@hf.am
3	Գետիկ	1	4		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
4	Անտառամեջ	1	4		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
5	Վարդենիս	1	4		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
6	Արփունքի մ/դ	3	4	գ. Արփունք	\N	\N	3	2	Վարդանյան Նելա	95007479	77536775		Անդրանիկ	93741474				2	2	\N	jass.manasyan@gmail.com
7	Գավառ	1	4		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
8	Լանջաղբյուրի մ/դ	8	4	գ. Լանջաղբույր	\N	\N	3	2	Ավետիսյան Սերգեյ	95007612	94915404	95111999	Շուշան	94867832				1	10	\N	jass.manasyan@gmail.com
9	Արտանիշ	2	4		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
10	Ջիլ	4	4		\N	\N	3	2	Անահիտ	077-44-72-09		095624420						\N	\N	\N	evelina@hf.am
11	Վահան	1	4		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
12	Սևան	1	4		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
14	Ծովազարդի մ/դ	3	4	գ. Ծովազարդ	\N	\N	3	1	Գալստյան Նվեր	95009767	93896296		Ժաննա	91907414				1	5	\N	vahram@hf.am
15	Մարտունի	1	4		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
16	Ձորագյուղի  հմ/դ	3	4	գ. Ձորագյուղ	\N	\N	3	2	Սարգսյան Սարգիս	95009764	93810648		Ասատրյան Ռուզաննա	93287303				1	8	\N	jass.manasyan@gmail.com
17	Լճավան	2	4		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
18	Հրազդան	1	7		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
19	Հրազդան	4	7		40.5484750000000034	44.7717469999999977	3	2										\N	\N	\N	jass.manasyan@gmail.com
20	Մեղրաձոր	1	7		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
22	Չարենցավան	4	7		\N	\N	3	1	Գրիշա Ավանեսյան	94519793								\N	\N	\N	evelina@hf.am
23	Գյումուշ	4	7		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
24	Արզական	4	7		\N	\N	3	2	Աղվան Նավասարդյան	43100468								\N	\N	\N	jass.manasyan@gmail.com
25	Աբովյան	4	7		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
26	Սևաբերդ	2	7		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
27	Նոր Արտամետ	4	7		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
28	Գետամեջ	4	7		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
30	Քանաքեռ	4	5		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
31	Սպիտակ	1	6		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
32	Սարամեջ	1	6		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
33	Արևաշող	2	6		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
37	Սարալանջ	1	6		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
39	Պարտիզակ	4	1		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
40	Վաղարշապատ 	4	3	Ք. Վաղարշապատ, Նար-Դոսի 3	40.1642790000000005	44.2923919999999995	3	1	Արտյոմ	93601717	95601717							0	0	\N	\N
42	Արմավիր 	4	3	Ք. Արմավիր, Երևանյան 22ա	40.1473670000000027	44.0319670000000016	3	1	Տիգրան Ցականյան	77447210								0	0	\N	\N
43	Ապարան	1	1		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
46	Շենկան	2	1		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
48	Գեղաձոր	1	1		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
50	Օշական	1	1		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
51	Բյուրական	4	1		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
53	Փարպի	1	1		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
55	Թալին	1	1		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
57	Թլիկի հմ/դ	3	1		\N	\N	3	2	Վահագն Մարտոյան	93902579			Սվետլանա Սարգսյան	98654560				1	2	\N	sonahdavtyan@gmail.com
59	Լանջիկ	1	8		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
60	Ձիթհանքով	1	8		\N	\N	3	2	Անդրանիկ	077987174		093447154						\N	\N	\N	evelina@hf.am
61	Ուջան	4	1		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
64	Սանահին	1	6		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
65	Հագվի	2	6		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
66	Օձուն	1	6		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
67	Լորուտ	1	6		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
68	Չկալով	1	6		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
70	Ձորագետ	2	6		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
71	Այրում	1	11		\N	\N	3	1										\N	\N	\N	sonahdavtyan@gmail.com
72	Ախթալա	1	6		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
74	Թեղուտ  (Լոռի)	1	6		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
77	Նոյեմբերյան	1	11		\N	\N	3	1										\N	\N	\N	sonahdavtyan@gmail.com
78	Դիլիջան	1	11		40.7416059999999973	44.8568110000000004	3	1										\N	\N	\N	sonahdavtyan@gmail.com
79	Թեղուտ (Տավուշ)	2	11		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
80	Հաղարծին	1	11		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
81	Բագրատաշեն	2	11		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
84	Վանաձորի շինություն (կառույց)	4	6		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
85	Ստեփանավան	1	6		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
89	Վանաձոր	1	6		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
91	Լերմոնտովո	5	6		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
93	Փամբակ	1	6		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
94	Պուշկին (Պուշկինո)	1	6		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
96	Գյումրի	1	8		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
100	Ամասիա	1	8		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
101	Թորոսգյուղ	5	8		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
102	Ձորաշեն	1	8		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
107	Շիրակավան	2	8		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
108	Կաքավասար	2	8		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
109	Մարալիկ	4	8		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
113	Սարատակ	1	8		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
115	Ջրափ	5	8		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
117	Կապան	1	9		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
118	Եղվարդ	1	9		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
119	Անտառաշատ	1	9		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
120	Ճակատեն	2	9		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
122	Շիկահող	2	9		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
125	Ծավ	1	9		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
128	Լիճք	4	9		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
129	Գորիս	1	9		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
130	Կատար (Գորիս)	1	9		\N	\N	3	1										\N	\N	\N	sonahdavtyan@gmail.com
131	Տեղի թիվ 2 մ/դ	3	9		\N	\N	3	2	Ջհանգիրյան Գյուլնարա	95001927	93645022		Իրինա Գալստյան	77363458				\N	\N	\N	sonahdavtyan@gmail.com
132	Քաջարան	1	9		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
133	Զեյվա (Դավիթ Բեկ)	2	9		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
134	Ագարակ	1	9		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
135	Վարդանիձոր	1	9		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
136	Լեհվազ	2	9		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
137	Աղիտու 	4	9		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
138	Սիսիան	1	9		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
139	Դաստակերտ	2	9		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
140	Որոտան	2	9		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
142	Սալվարդ	2	9		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
143	Եռաբլուր	1	9		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
145	Գորհայք	1	9		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
146	Թերփ (Սարավան)	1	10		\N	\N	3	1										\N	\N	\N	sonahdavtyan@gmail.com
147	Վաղատին	2	9		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
148	Լծեն	2	9		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
149	Դարբաս	1	9		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
151	Շաղատ	2	9		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
153	Շինուհայր	4	9		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
155	Այգեձոր	2	11		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
157	Արծվաբերդ	1	11		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
158	Իջևան	1	11		\N	\N	3	1										\N	\N	\N	sonahdavtyan@gmail.com
160	Սևքար	1	11		\N	\N	3	1										\N	\N	\N	sonahdavtyan@gmail.com
161	Վազաշեն	1	11		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
162	Բաղանիս	1	11		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
163	Կոթի	5	11		\N	\N	3	1										\N	\N	\N	sonahdavtyan@gmail.com
165	Բերդ	1	11		\N	\N	3	1										\N	\N	\N	sonahdavtyan@gmail.com
167	Չինչին (Հին)	1	11		\N	\N	3	1										\N	\N	\N	sonahdavtyan@gmail.com
169	Եղեգնաձոր 2	1	10		\N	\N	3	2	Սևակ Հախնազարյան /հոսանք/	098014324								\N	\N	\N	evelina@hf.am
170	Մոզրով	1	10		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
171	Արտավազ	4	7		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
172	Զեդեա	2	10		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
173	Եղեգնաձոր 1	1	10		\N	\N	3	1										\N	\N	\N	evelina@hf.am
174	Սալլի	2	10		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
175	Ելփին	1	10		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
176	Սմբատաբերդ	2	10		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
177	Վայք	1	10		\N	\N	3	1										\N	\N	\N	sonahdavtyan@gmail.com
178	Ազատեկ	2	10		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
180	Սերս	2	10		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
181	Հերմոն	2	10		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
183	Վեդի	1	2		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
185	Մասիս	4	2		\N	\N	3	1	Սամվել Հովհաննիսյան	093063747		096000060						\N	\N	\N	evelina@hf.am
187	Արտաշատ	4	2		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
191	Գողթ	1	7	գյուղ Գողթ	40.1363759999999985	44.7761110000000002	3	2	Հովսեփյան Հովսեփ  	94466357								\N	\N	\N	\N
192	Գեղարդ	2	7	գյուղ Գեղարդ	40.156922999999999	44.8050110000000004	3	2	Թառոյան Վիգեն	93753299								\N	\N	\N	\N
196	Մեծամոր 	4	3	Ք. Մեծամոր, 1-ին թաղ.,  5բ1	40.1470860000000016	44.1186080000000018	3	1										0	0	\N	\N
197	Սարդարապատ	4	3	գ. Արաքս	40.0898669999999981	43.9562099999999987	3	2	Կարեն Արիստակեսյան	94582098								0	0	\N	\N
336	Գեղաքարի հմ/դ	8	4	գ. Գեղաքար	\N	\N	3	2	Աթայան Թագուհի	95007485	93309702			093284659				1	1	\N	sarmen@hf.am
198	Զվարթնոց	4	3	Ք. Վաղարշապատ, Զվարթնոց թաղամաս 11 շենք	40.1666820000000016	44.3303030000000007	3	1	Արտուշ Մարգարյան	55033747								0	0	\N	\N
203	Աշտարակ GNC	4	1		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
204	Գյումրի Անի	4	8		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
210	Ախուրյան	4	8		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
211	Սրաշեն	1	9		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
212	Դավիթ Բեկ	4	9		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
215	Իծաքար	1	11		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
216	Մարտիրոս	1	10		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
217	Կապուտան	4	7		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
220	Արմաշ	4	2		\N	\N	3	1	093386801									\N	\N	\N	\N
222	Աբովյանի ԱՀԿ` Աբովյան, 4-րդ միկրոշրջան	4	7		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
223	Մալիշկա	4	10		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
225	Դվինի Լ. Ազգալդյանի անվ. մ/դ	3	2		\N	\N	3	2	Լաուրա Բաբայան 	099082200	095005153		Աիդա Խուդոյան	098680655	095680655			3	3	\N	sonahdavtyan@gmail.com
234	Լճկաձոր	4	11		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
235	Արենի /նոր/	1	10		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
236	Արփի /նոր/	1	10		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
237	Գոմք /նոր/	2	10		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
238	Գողթանիկ /նոր/	2	10		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
239	Հորս /նոր, արևային/	2	10		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
240	Քարագլուխ /նոր/	1	10		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
241	Խնձորուտ /նոր/	1	10		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
242	Ջերմուկ /նոր/	4	10		\N	\N	3	1										\N	\N	\N	sonahdavtyan@gmail.com
243	Բյուրեղավան /նոր/ 	4	7		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
244	Հրազդան /նոր/ միկրո	4	7		40.5453639999999993	44.7782610000000005	3	2										\N	\N	\N	jass.manasyan@gmail.com
246	Լանջառ /նոր/	4	2		\N	\N	3	2	Պետիկ Մարգարյան	093092876								\N	\N	\N	\N
247	Աշտարակ /նոր/	1	1		\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
248	Թալինի վարժարան (ՀՀ ԿԳՆ Արագածոտնի տարածաշրջանային պետական քոլեջ)	8	1	ք. Թալին, Խանջյան 16	\N	\N	3	1	Գաբրիել Ավետիսյան	91343950	95008986		Լալա Խուրշուդյան	093 87-94-48				27	27	\N	jass.manasyan@gmail.com
249	Գառնահովիտի մ/դ	8	1	գ. Գառնահովիտ	\N	\N	3	2	Սրապ Գրիգորյան	99302550			Սիրուն Զոհրաբյան					2	10	\N	sonahdavtyan@gmail.com
250	Գետափի մ/դ	8	1	գ. Գետափ	\N	\N	3	2	Ռադիկ Կարապետյան	93484696	95008991							\N	\N	\N	sonahdavtyan@gmail.com
251	Զարինջայի մ/դ	8	1	գ. Զարինջա	\N	\N	3	2	Ստեփանյան Շողիկ	93458170			Գայանե Պետրոսյան	77303723				2	2	\N	sonahdavtyan@gmail.com
252	Կաքավաձորի մ/դ	8	1	գ. Կաքավաձոր	\N	\N	3	2	Էմին Մինասյան	93588676			Խաչատրրան Է.					4	6	\N	sonahdavtyan@gmail.com
253	Ներքին Բազմաբերդի մ/դ	8	1	գ. Ներքին Բազմաբերդ	\N	\N	3	2	Պետրոսյան Անդրանիկ	99973299			Շողեր Հերբոյան					3	10	\N	sonahdavtyan@gmail.com
254	Պարտիզակի մ/դ	8	1	գ. Պարտիզակ	\N	\N	3	2	Արայիկ Շեկիկյան	93743734					Վիկտորիա Գասպարյան	93499978		1	3	\N	sonahdavtyan@gmail.com
255	Դիանի հմ/դ	8	1	գ. Դիան	\N	\N	3	2	Պողոսյան Պավլիկ	94909579	24962121							\N	\N	\N	sonahdavtyan@gmail.com
256	Լուսակնի հմ/դ	8	1	գ. Լուսակն	\N	\N	3	2	Մնացականյան Տաթևիկ	98692530	95008996							2	2	\N	sonahdavtyan@gmail.com
257	Ոսկեթասի մ/դ	8	1	գ. Ոսկեթաս	\N	\N	3	2	Տիգրան Գևորգյան	77782563			Էմիլիա Մարտիրոսյան	93416972				2	4	\N	sonahdavtyan@gmail.com
258	Արտենիի թիվ 2 հմ/դ	8	1	գ. Արտենի	\N	\N	3	2	Թագուհի Միրաքյան	98325654			Դավթյան Մարջան	94394313	95008693			1	5	\N	sonahdavtyan@gmail.com
259	Ալագյազի մ/դ	8	1	գ. Ալագյազ	\N	\N	3	2	Ավդալյան Վազիր	93360219	95006431		Արամ Խուդոյան	094 54-01-08	095 57-43-23			\N	\N	\N	sonahdavtyan@gmail.com
260	Ամրե Թազայի (Սադունցի հմ/դ) հմ/դ	8	1	գ. Ամրե Թազա (Սադունց)	\N	\N	3	2	Ջանոյան Անուշ	093414282 (93388101) 	95006429		Ժաննա Կիրակոսյան	93550734				1	1	\N	sonahdavtyan@gmail.com
261	Ավշենի հմ/դ	8	1	գ. Ավշեն	\N	\N	3	2	Ավոյան Մալխաս	55575341	95006427		Նուրի Ավոյան	94540108				1	5	\N	sonahdavtyan@gmail.com
262	Գեղադիրի մ/դ	8	1	գ. Գեղադիր	\N	\N	3	2	Բավական Գևորգյան	94087209	95006426		Արմենուհի Ավետիսյան 	94640603				3	12	\N	sonahdavtyan@gmail.com
263	Գեղաձորի մ/դ	8	1	գ. Գեղաձոր	\N	\N	3	2	Մխիթարյան Միշա	93757247	95006425		Թագուհի Բաղրամյան	94421373				2	6	\N	sonahdavtyan@gmail.com
264	Գեղարոտի մ/դ	8	1	գ. Գեղարոտ	\N	\N	3	2	Սևակ Մուրադյան	93240406			Գայանե Լանջյան	98505442				1	6	\N	sonahdavtyan@gmail.com
265	Դերեկի մ/դ	8	1	գ. Ճարճակիս (Դերեկ)	\N	\N	3	2	Մարգարյան Ա.-Նախկիին, Հռիփսիմե Ավետիսյան	95006423	94429138	93817900	Սադեյան Թերեզա,	Դերեկի գյուղապետ-Թալաբան 077550411			հրաժարվել են	\N	\N	\N	jass.manasyan@gmail.com
266	Լեռնապարի մ/դ	8	1	գ. Լեռնապար	\N	\N	3	2	Մերուժան Հակոբյան	93725077			Շամիրամ Միրզոյան	93626417				1	7	\N	sonahdavtyan@gmail.com
267	Ջամշլուի հմ/դ	8	1	գ. Ջամշլու	\N	\N	3	2	Խուդոյան Թեմուր	93574323	95006419		Մխիթար Ասատրյան	55574323				1	5	\N	sonahdavtyan@gmail.com
268	Սանգյառի (Կանիաշիր) հմ/դ	8	1	գ. Սանգյառ (Կանիաշիր)	\N	\N	3	2	Բոյաջյան Անահիտ	93558903	95006418		Տիգրանուհի Խաչատրյան	095 89-77-21				1	3	\N	sonahdavtyan@gmail.com
269	Սիփանի մ/դ	3	1	գ. Սիփան	\N	\N	3	2	Սադոյան Մրազ	93382214	95006417		Արամ Խուդոյան	94540108				6	6	\N	sonahdavtyan@gmail.com
270	Ծաղկահովիտի Արագածի արհեստագործական ուսումնարան	8	1	գ. Ծաղկահովիտ	\N	\N	3	2	կիրակոսյան վարդգես	95006416	93333317		Շահնազարյան Տաթևիկ					\N	\N	\N	sonahdavtyan@gmail.com
271	Ծիլքարի մ/դ	8	1	գ. Ծիլքար	\N	\N	3	2	Հովհաննիսյան Արման	93683241	95006415	55933363						1	3	\N	sonahdavtyan@gmail.com
272	Հնաբերդի մ/դ	8	1	գ. Հնաբերդ	\N	\N	3	2	Մելսիդա Նիկողոսյան	94624874			Բաղդասարյան Կարինե	95053272				1	13	\N	sonahdavtyan@gmail.com
273	Մելիքգյուղի մ/դ	8	1	գ. Մելիքգյուղ	\N	\N	3	2	Ղևոնդյան Արթուր	93356790	95006428		Արկադի Սարգսյան	94785348				7	14	\N	sonahdavtyan@gmail.com
274	Շենկանի հմ/դ	8	1	գ. Շենկան	\N	\N	3	2	Չոլոյան Սերյոժա	95006413	98021601		Սուրեն Խաչատրյան	93691985				1	1	\N	sonahdavtyan@gmail.com
275	Վարդաբլուրի մ/դ	8	1	գ. Վարդաբլուր	\N	\N	3	2	Նազարեթյան Ալբերտ	93001736			Ռոբերտ Նազարեթյան	93286239				1	7	\N	sonahdavtyan@gmail.com
276	Օրթաճյայի (Միջնատուն) հմ/դ	8	1	գ. Օրթաճյա (Միջնատուն)	\N	\N	3	2	Գրիգորյան Էդիկ	094579554	95006362		Մուրազ Մամոյան	93864141				1	5	\N	sonahdavtyan@gmail.com
277	Բերքառատի մ/դ	8	1	գ. Բերքառատ	\N	\N	3	2	Աննա Վարդանյան	095184203	95006364	93454383	Քնքուշ Գրիգորյան	94953697				2	10	\N	sonahdavtyan@gmail.com
278	Միրաքի հմ/դ	8	1	գ. Միրաք	\N	\N	3	2	Արշակյան Ժանետ	95777057	95006365		Բաքո Խուդոյան	55574323				1	3	\N	sonahdavtyan@gmail.com
279	Անտառուտի մ/դ	8	1	գ. Անտառուտ	\N	\N	3	2	Շմավոնյան Սուրիկ	93445565	95006398		Դանիելյան Գայանե	93202276				2	11	\N	sonahdavtyan@gmail.com
280	Ավանի մ/դ	8	1	գ. Ավան	\N	\N	3	2	Հովսեփ Դավթյան	93 157514			Ռոզա Հարությունյան	93465588				11	13	\N	sonahdavtyan@gmail.com
281	Արագածոտնի մ/դ	3	1	գ. Արագածոտն	\N	\N	3	2	Լուսինե Կիրակոսյան	55421401	772800823		Միքաելյան Անժելա	77665634				1	5	\N	sonahdavtyan@gmail.com
282	Արտաշավանի մ/դ	8	1	գ. Արտաշավան	\N	\N	3	2	Ռուզաննա Մարտիրոսյան	93256541			Անի Գևորգյան	77179716				4	11	\N	sonahdavtyan@gmail.com
283	Արուճի մ/դ	8	1	գ. Արուճ	\N	\N	3	2	Գրիգորյան Սեդա	93 93-52-09	95006438		Ղումաշյան Լուսաբեր	094 07-92-94				1	13	\N	sonahdavtyan@gmail.com
284	Բազմաղբյուրի մ/դ	8	1	գ. Բազմաղբյուր	\N	\N	3	2	Ղազարյան Մարինե	94826202	95006439	23296253	Աննա Բարսեղյան	93912442				1	8	\N	sonahdavtyan@gmail.com
285	Լեռնարոտի մ/դ	8	1	գ. Լեռնարոտ	\N	\N	3	2	Արթուր Սահակյան	98707631			Սիլվա Պետոյան	93280716				3	6	\N	sonahdavtyan@gmail.com
286	Կոշի մ/դ	8	1	գ. Կոշ	\N	\N	3	2	Տոնոյան Ռուզաննա	93332641	95006442		Էլիզա Հակոբյան	93601348				22	23	\N	sonahdavtyan@gmail.com
287	Նոր Ամանոսի մ/դ	8	1	գ. Նոր-Ամանոս	\N	\N	3	2	Լիդա Մարկոսյան	93963011			Մերի Խաչատրյան	93332847				5	7	\N	sonahdavtyan@gmail.com
288	Նոր Եդեսիայի մ/դ	8	1	գ. Նոր Եդեսիա	\N	\N	3	2	Հրաչիկ Սահակյան	93342935			Նունե Գազարյան	98728256				3	13	\N	sonahdavtyan@gmail.com
289	Շամիրամի հմ/դ	8	1	գ. Շամիրամ	\N	\N	3	2	Հովհաննիսյան Աշոտ	093834229 			Վասիլյան Արմինե	077688784				5	9	\N	sonahdavtyan@gmail.com
290	Ուշիի մ/դ	8	1	գ. ՈՒշի	\N	\N	3	2	Օքսեն Սարգսյան	93469069			Արթուր Գրիգորյան	98858534				1	12	\N	sonahdavtyan@gmail.com
291	Ուջանի մ/դ	8	1	գ. Ուջան	\N	\N	3	2	Հարությունյան Ավետիս	93216393			Անուշ Ազատյան	77055202				2	25	\N	jass.manasyan@gmail.com
292	Օհանավանի մ/դ	8	1	գ. Օհանավան	\N	\N	3	1	Համբարձումյան Լուսիկ	93920881	95006451	98610318	Լուսինե Խուդավերդյան	93247402				4	30	\N	sonahdavtyan@gmail.com
293	Օշականի 9-ամյա մ/դ	8	1	գ. Օշական	\N	\N	3	2	Սարգիս Հովնանյան	077338338			Մերի Զոհրաբյան	091055253				2	3	\N	sonahdavtyan@gmail.com
294	Մուղնիի մ/դ	8	1	գ. Մուղնի	\N	\N	3	1	Համբարձումյան Գրետա	93383531			Շահանե Ասատրյան	93586898				3	4	\N	sonahdavtyan@gmail.com
295	Ագարակի Թերլեմեզյանի անվան մ/դ	8	1	գ. Ագարակ	\N	\N	3	2	Լորետտա Մարգարյան	95006454	93279303		Մարգարիտա Մարտիրոսյան	77066883				1	11	\N	sonahdavtyan@gmail.com
296	Արագածի թիվ 2 մ/դ	8	1	գ. Արագած	\N	\N	3	2	Արման Կարապետյան	55111889			Թագուհի Սարգսյան	93212307				3	7	\N	sonahdavtyan@gmail.com
297	Արայի հմ/դ	8	1	գ. Արա	\N	\N	3	2	Պետրոսյան Անահիտ	94306044	95006372	25261351	Մարի Կարապետյան	77882433				1	7	\N	sonahdavtyan@gmail.com
298	Ափնայի մ/դ	8	1	գ. Ափնագյուղ	\N	\N	3	2	Հակոբյան Սուսաննա	93257233	95006373		Գեղեցիկ Բաբայան	93975832				4	8	\N	sonahdavtyan@gmail.com
299	Երնջատափի մ/դ	3	1	գ. Երնջատափ	\N	\N	3	2	Վարդան Ղուկասյան	43088883			Արա Մկրտչյան	94826273				3	9	\N	sonahdavtyan@gmail.com
300	Թթուջուրի հմ/դ	8	1	գ. Թթուջուր	\N	\N	3	2	Ղազարյան Գրիշա	25260038	93389364	95006375	Անի Ղազարյան	93918852				2	6	\N	sonahdavtyan@gmail.com
301	Լուսագյուղի մ/դ	8	1	գ. Լուսագյուղ	\N	\N	3	2	Բաղդասարյան Էդվարդ	93899928	95006376	25224129	Կարինե Աբգարյան	93121829				7	7	\N	sonahdavtyan@gmail.com
302	Ձորագլխի մ/դ	8	1	գ. Ձորագլուխ	\N	\N	3	2	Սողոմոնյան Կարեն	25260040	093 32-43-92		Սահակյան Մերուժան	094 72-54-11				3	9	\N	sonahdavtyan@gmail.com
303	Մուլքի (Կայք) մ/դ	8	1	գ. Մուլք (Կայք)	\N	\N	3	2	Նունուֆար Ալոյան	94799129	55821275		Մարտին Հարությունյան	94666539				6	6	\N	sonahdavtyan@gmail.com
304	Նիգավանի մ/դ	8	1	գ. Նիգավան	\N	\N	3	2	Բաղդասարյան Նվեր	95006382	93555095		Լյուբա Գալստյան	94287646				5	8	\N	sonahdavtyan@gmail.com
305	Չքնաղի հմ/դ	3	1	գ. Չքնաղ	\N	\N	3	2	Դավթյան Մհեր	93872974	950063823							\N	\N	\N	sonahdavtyan@gmail.com
306	Սարալանջի հմ/դ	8	1	գ. Սարալանջ	\N	\N	3	2	Սասուն Մանուկյան	25224931	93883489	95006384	Ռուղաննա Մնացականյան	93560019				1	5	\N	sonahdavtyan@gmail.com
307	Վարդենիսի մ/դ	8	1	գ. Վարդենիս	\N	\N	3	2	Ավետիսյան Ավետիք	93931827	95006385		Իրինա Պետրոսյան	77480638				7	7	\N	sonahdavtyan@gmail.com
308	Վարդենուտի մ/դ	8	1	գ. Վարդենուտ	\N	\N	3	2	Պետրոսյան Արա	91338811	95006386	25296260	Արամ Եղիազարյան	93838544				2	10	\N	sonahdavtyan@gmail.com
309	Բարձրաշենի մ/դ	3	2	գ. Բարձրաշեն	\N	\N	3	2	Թովմասյան Գոհար	95008661	93766486		Լուսինե Թադևոսյան	93760482				1	3	\N	sonahdavtyan@gmail.com
310	Աբովյանի մ/դ	8	2	գ. Աբովյան	\N	\N	3	2	Մարիետա Գրիգորյան	94776768			Նելլի Խաչատրյան	94811837				1	6	\N	sonahdavtyan@gmail.com
311	Լանջազատի մ/դ	8	2	գ. Լանջազատ	\N	\N	3	2	Մախմուրյան Արուս	95008658	99238889		Քրիստինե Հարությունյան	93612443				4	4	\N	sonahdavtyan@gmail.com
312	Արարատի թիվ 2 մ/դ	8	2	գ. Արարատ, Իսակովի 2	\N	\N	3	1	Դավթյան Հասմիկ	95005735	94349076		Հայկ Մկրտչյան	93929169				9	13	\N	sonahdavtyan@gmail.com
313	Արարատի թիվ 3 մ/դ	8	2	գ. Արարատ, Խնկո Ապոր փողոց 43	\N	\N	3	1	Բալայան Բենիամին	95005734	93401005		Աննա Մարության	98888783	94661913			6	14	\N	sonahdavtyan@gmail.com
314	Արմաշի մ/դ	8	2	գ. Արմաշ	\N	\N	3	2	Զեյնալյան Վալոդ	95005732	55360036		Անահիտ Մաթեւոսյան	93331944				1	9	\N	sonahdavtyan@gmail.com
315	Զանգակատան մ/դ	8	2	գ. Զանգակատուն	\N	\N	3	2	Հովհաննիսյան Թամարա	95005727	93892813		Ժիրայր Դանիելյան նոր օպերատոր	098 13-29-77				5	13	\N	sonahdavtyan@gmail.com
316	Լանջառի հմ/դ	8	2	գ. Լանջառ	\N	\N	3	2	Պողոսյան Մարտին	95005731	93621942		Մարտին Հովհաննիսյան	93027972				\N	\N	\N	sonahdavtyan@gmail.com
317	Լուսաշողի մ/դ	8	2	գ. Լուսաշող	\N	\N	3	2	Մելոյան Մանուշակ	95005141	93902938	94191124	Արտակ Հարությունյան	93332475	77191121			4	8	\N	sonahdavtyan@gmail.com
318	Պ. Սևակի մ/դ	8	2	գ. Պ. Սևակ	\N	\N	3	2	Մանուկյան Մանուշակ	94172525			Թիրանյան Լիլիթ	93370201				4	8	\N	sonahdavtyan@gmail.com
319	Շաղափի Զազարյանի անվան մ/դ	8	2	գ. Շաղափ	\N	\N	3	2	Միքայելյան Լևոն	95005725	99010129		Շուշաննա Հակոբյան	77564330				6	6	\N	sonahdavtyan@gmail.com
320	Ազատաշենի հմ/դ	8	2	գ. Ազատաշեն	\N	\N	3	2	Հարությունյան Արմինե	95008657	98577704		Աննա Գրիգորյան	91618788				1	1	\N	sonahdavtyan@gmail.com
321	Դարբնիկի մ/դ	8	2	գ. Դարբնիկ	\N	\N	3	2	Զիրոյան Նելլի	95008654		077999981	Ռուզաննա	094547090				\N	\N	\N	evelina@hf.am
322	Խաչփարի մ/դ	8	2	գ. Խաչփար	\N	\N	3	2	Եփրեմյան Սուսաննա	95008656	94836084		Վարսիկ	98720620				1	9	\N	sonahdavtyan@gmail.com
323	Ջրահովիտի մ/դ	8	2	գ. Ջրահովիտ	\N	\N	3	2	Բաբայան Արտակ	95008653	93248231		Սեդա Հովսեփյան	91545610				1	3	\N	sonahdavtyan@gmail.com
324	Սիփանիկի հմ/դ	8	2	գ. Սիփանիկ	\N	\N	3	2	Սահակյան Մայիս	95008652	93630280		Առաքելյան Անգին	077 99-25-50				3	3	\N	sonahdavtyan@gmail.com
325	Բերքաշատի մ/դ	8	3	գ. Բերքաշատ	40.0411879999999982	43.9052879999999988	3	2	Էդիսոն Թորոսյան	55692762			Լյուդվիգ-նոր օպերատոր	77151588				1	\N	\N	\N
326	Նորակերտ մ/դ	8	3	գ. Նորակերտ	40.1889040000000008	44.3450940000000031	3	2	Վեզիրյան	23161081	44148898			93194565				6	\N	\N	\N
327	Բագարանի մ/դ	8	3	գ.Բագարան	40.1420320000000004	43.6580680000000001	3	5	Գեղեցիկ Ավետիսյան	98798098			Արաքսյա	77587858				2	4	\N	\N
328	Երվանդաշատի մ/դ	8	3	գ. Երվանդաշատ	40.1213880000000032	43.6708830000000034	3	5	Մարիամ Հովհաննիսյան	93184200			Լիանա Ավագյան	94071317				3	3	\N	\N
329	Արգինայի մ/դ	8	3	գ. Արգինա	40.2733709999999974	43.7347520000000003	3	2	Արտավազդ Գրիգորյան	93325590			Էլմիրա Մխիթարյան	94593335				2	5	\N	\N
330	Քարակերտի թիվ 1 մ/դ	8	3	գ. Քարակերտ	40.2478399999999965	43.8170209999999969	3	2	Թամարա Բաղդասարյան	93805383			Մասրիամ Նիկողոսյան	077618157				0	15	\N	\N
331	Շահումյանի մ/դ	8	3	գ. Շահումյան	40.2133090000000024	44.3001580000000033	3	2	Հ. Մանուկյան	93538456			Բաղդասարյան Հակուշիկ	98294066	95802423			2	2	\N	\N
332	Էջմիածնի արհեստագործական պետ. Ուսումնարան	8	3	ք. Վաղարշապատ, Աթարբեկյան 101	40.1337249999999983	44.2936229999999966	3	2	Պետրոսյան	93198514			Լուսինե Թովմասյան	98848139			Պետք է միացնեն օպտիկա․․ Առաժմ ռադիո է․․	1	\N	\N	\N
333	Դաշտի մ/դ	8	3	գ. Դաշտ	40.2264470000000003	44.2990939999999966	3	2	Սուսաննա Նազարյան	77303020			Նազելի Հարությունյան	94225784	93479231			2	2	\N	\N
334	Մերձավանի մ/դ	8	3	գ. Մերձավան	40.1817939999999965	44.403024000000002	3	2	Մարտիրոսյան Վ.	93518380			Մարտիրոսյան Նոնա	94180108				1	6	\N	\N
335	Ախպրաձորի մ/դ	8	4	գ. Ախպրաձոր	\N	\N	3	2	Ղուկասյան Գինեվարդ	95007489	93646340		Ղուկասյան Նժդեհ	91077064				4	6	\N	jass.manasyan@gmail.com
1688	Բջնի-Արմենակ	4	7		\N	\N	\N	2	Արմենակ Այվազյան	094990676	055505450							\N	\N	\N	jass.manasyan@gmail.com
337	Լճավանի մ/դ	8	4	գ. Լճավան	\N	\N	3	2	Գեվորգյան Նորիկ	95007487	93593239		Մելքոնյան Նարինե	77791506				1	5	\N	jass.manasyan@gmail.com
338	Ծովակի մ/դ	8	4	գ. Ծովակ	\N	\N	3	2	Հարությունյան Ռուզաննա	95007491	93133363		Սարգսյան Էդիտա	77894891				\N	\N	\N	jass.manasyan@gmail.com
339	Կարճաղբյուրի մ/դ	8	4	գ. Կարճաղբյուր	\N	\N	3	2	Ֆենյա Խաչատրյան	77750200	077750200		Հարությունյան Անահիտ	098719764				10	22	\N	jass.manasyan@gmail.com
340	Մաքենիսի մ/դ	8	4	գ. Մաքենիս	\N	\N	3	2	Մխիթարյան Ադամ	95007493	93866275		Արփինե	77876766				1	2	\N	jass.manasyan@gmail.com
341	Նորաբակի մ/դ	8	4	գ. Նորաբակ	\N	\N	3	2	Մկրտչյան Ժիրայր	77454002	95007523		Հակոբքոխքյան Ա.	93701035				3	4	\N	jass.manasyan@gmail.com
342	Գավառի թիվ 1 հտ/դ	8	4	ք. Գավառ, Միքայելյան 33	\N	\N	3	1	Զազյան Լարիսա	95008552	91146677		Խունոյան Աննա	99454616				5	5	\N	jass.manasyan@gmail.com
343	Գեղարքունիքի մ/դ	8	4	գ. Գեղարքունիք	\N	\N	3	2	Խաչատրյան Ջեմմա	093856412	094856412		Խաչատրյան Աշոտ	93041643				\N	\N	\N	jass.manasyan@gmail.com
344	Արեգունիի մ/դ	8	4	գ. Արեգունի	\N	\N	3	2	Վարդանյան Նորիկ	95007486	93232815		Բեգլարյան Մարտուն	94963697				\N	\N	\N	jass.manasyan@gmail.com
345	Ծափաթաղի մ/դ	8	4	գ. Ծափաթաղ	\N	\N	3	2	Հակոբյան Պարգև	94634874	077-88-79-00- բարկացած գյուղապետ							\N	\N	\N	jass.manasyan@gmail.com
346	Մեծ Մասրիկի տ/դ	8	4	գ. Մեծ Մասրիկ	\N	\N	3	1	Հովհաննիսյան Նազիկ	95007582	98808780							\N	\N	\N	jass.manasyan@gmail.com
347	Նորակերտի մ/դ	8	4	գ. Նորակերտ	\N	\N	3	2	Շահինյան Բենիկ	95007536	93589494		Գալստյան Դավիթ	94728140				2	2	\N	jass.manasyan@gmail.com
348	Շատվանի մ/դ	8	4	գ. Շատվան	\N	\N	3	2	ԳԵվորգյան Ֆրունզիկ	95007528	93311230		Անահաիտ	77645916				2	2	\N	jass.manasyan@gmail.com
350	Լճափի մ/դ	8	4	գ. Լճափ	\N	\N	3	2	Հովհաննիսյան Կառլեն	95009765	77100136		Սիլվարդ	99990984				3	3	\N	jass.manasyan@gmail.com
351	Աստղաձորի մ/դ	8	4	գ. Աստղաձոր	\N	\N	3	2	Սիրեկանյան Ջիվան	95006486	93668410		Տիրուհի	98716500				10	10	\N	jass.manasyan@gmail.com
352	Արծվանիստի մ/դ	8	4	գ. Արծվանիստ	\N	\N	3	2	Թոռնիկ Սահակյան	93396373	94251055		Լենա Գալստյան	93634375				1	10	\N	jass.manasyan@gmail.com
353	Լեռնակերտի հմ/դ	8	4	գ. Լեռնակերտ	\N	\N	3	2	Մխիթարյան Սպարտակ	95006484	94868907		Կարապետյան Արտակ	93503197				\N	\N	\N	jass.manasyan@gmail.com
354	Ծովինարի մ/դ	8	4	գ. Ծովինար	\N	\N	3	2	Սահակյան Միհրանուշ	95006483	93208990		Սահանուշ	093 57-67-65				2	10	\N	jass.manasyan@gmail.com
355	Ծովինարի տ/դ	3	4	գ. Ծովինար	\N	\N	3	2	Գևորգյան Լուսինար	77225054			Սիրարփի	77617555				2	2	\N	jass.manasyan@gmail.com
356	Վարդենիկի թիվ 1 հմ/դ	8	4	գ. Վարդենիկ	\N	\N	3	1	Ժորա Ղումաշյան	98741187			Բաղոյան Աննա	93845184				3	5	\N	jass.manasyan@gmail.com
357	Վարդենիկի կրթահամալիր	8	4	գ. Վարդենիկ	\N	\N	3	1	Բադալյան Կամո	95006479	91550444		Թամար	93497414				9	56	\N	jass.manasyan@gmail.com
358	Գեղհովիտի թիվ 1 մ/դ	8	4	գ. Գեղհովիտ	\N	\N	3	1	Աղջոյան Բաբկեն	95009294	94219595		Պողոսյան Ռադմիլա	94867528				\N	\N	\N	jass.manasyan@gmail.com
359	Գեղհովիտի թիվ 2 մ/դ	8	4	գ. Գեղհովիտ	\N	\N	3	1	Սաֆարյան Մանվել	95009293	93330016		Պետրոսյան Գեղամ	77359003				\N	\N	\N	jass.manasyan@gmail.com
360	Ծակքարի մ/դ	8	4	գ. Ծակքար	\N	\N	3	2	Մանուկյան Ռոբերտ	95008548	94217046		Սիրուշ	94781190				1	2	\N	jass.manasyan@gmail.com
361	Ծովասարի Մուրադյանի անվան մ/դ	8	4	գ. Ծովասար	\N	\N	3	2	Վարդանյան Նաիրի	95008574	98610724		Ալեքսանյան Սամվել	94669383				\N	\N	\N	jass.manasyan@gmail.com
362	Մադինայի մ/դ 	3	4	գ. Մադինա	\N	\N	3	2	Կարապետյան Արտակ	93503197			Վարիկ	94397666				5	10	\N	jass.manasyan@gmail.com
363	Ն. Գետաշենի թիվ 1 մ/դ	8	4	գ. Ն. Գետաշեն	\N	\N	3	2	Հովհաննես Հովհաննիսյան	94263486			Հովհաննես	98870848				1	12	\N	jass.manasyan@gmail.com
364	Վ. Գետաշենի թիվ 1 մ/դ	8	4	գ. Վ. Գետաշեն	\N	\N	3	2	Գասպարյան Վալոդյա	94234067	94234067		Գյուլնարա	77632735				3	7	\N	jass.manasyan@gmail.com
365	Ձորագյուղի  ա/դ	8	4	գ. Ձորագյուղ	\N	\N	3	2	Խաչատրյան Հերիքնազ	95008591	94804632		Հակոբյան Մերրի	93235351	Ինֆորմատիկ ով ոգտվումա	093879098		1	20	\N	sarmen@hf.am
366	Հայրավանքի մ/դ	8	4	գ. Հայրավանք	\N	\N	3	1	Համբարձումյան Սարգիս	95006498	94550348		Սուսաննա Պետրոսյան	94471720				\N	\N	\N	jass.manasyan@gmail.com
367	Սևանի թիվ 3 հմ/դ	8	4	ք. Սևան, Կարեն Դեմիրճյան 21	\N	\N	3	1	Հովհաննիսյան Լուսինե	95007381	91428803	91428802	Մարինե	43160636	0261 2-64-27			5	10	\N	jass.manasyan@gmail.com
368	Սևանի պետական քոլեջ	8	4	ք. Սևան, Նաիրյան 1-ին նրբ. 14	\N	\N	3	1	Գեվորգյան Ռուբիկ	95007378	94347035		Վրեժ	99080225				8	8	\N	jass.manasyan@gmail.com
369	Գեղամավանի մ/դ	8	4	գ. Գեղամավան	\N	\N	3	2	Գրիգորյան Շամամ	94844404			Աստղիկ	0261/61044	98005334			10	20	\N	jass.manasyan@gmail.com
370	Ծովագյուղի մ/դ	8	4	գ. Ծովագյուղ	\N	\N	3	2	Ադելինա Սահակյան	93534540			Մինասյան Նինա	93245377	Հայրապետյան Արտուշ	077253522		5	5	\N	sarmen@hf.am
371	Նորաշենի հմ/դ	8	4	գ. Նորաշեն	\N	\N	3	2	Բարսեղյան Ռուբիկ	093060135								\N	\N	\N	evelina@hf.am
1690	Գառնի	1	7		40.1213570000000033	44.7107489999999999	3	1										\N	\N	\N	jass.manasyan@gmail.com
372	Չկալովկայի մ/դ	8	4	գ. Չկալովկա	\N	\N	3	2	Միրաքյան Նաիրա	95007398	93061676		Հասմիկ	43057612				3	7	\N	jass.manasyan@gmail.com
373	Սեմյոնովկայի հմ/դ	8	4	գ. Սեմյոնովկա	\N	\N	3	2	Սարգսյան Վարդանուշ	95007397	93262531							\N	\N	\N	jass.manasyan@gmail.com
374	Գագարինի մ/դ	8	4	գ. Գագարին	\N	\N	3	2	Աբրահամյան Սամվել	95007396	93331607	094040611	Համբարձումյան Նորայր	98650936				7	7	\N	sarmen@hf.am
375	Շորժայի մ/դ	8	4	գ. Շորժա	\N	\N	3	2	Մուրադյան Արամ	94830796			Մելքումյան Ջեմմա զբաղվում է ինետով	93107083	93072766			\N	\N	\N	jass.manasyan@gmail.com
376	Ջիլի մ/դ	8	4	գ. Ջիլ	\N	\N	3	2	Ստեփանյան Արմենուհի	93501192			Միրա	77447015				8	10	\N	jass.manasyan@gmail.com
377	Վահանի մ/դ	8	4	գ.Վահան	\N	\N	3	2	Մարտիրոսյան	95007484	77740084		ani	099448825				\N	\N	\N	sarmen@hf.am
378	Ճամբարակի թիվ 4 մ/դ	8	4	ք. Ճամբարակ, Ա. Խաչատրյան 1	\N	\N	3	1	Գաբրիելյան Հասմիկ	95007471	98023373		Ստեփանյան Վարդան	93981871				\N	\N	\N	jass.manasyan@gmail.com
379	Ճամբարակի թիվ 1 հմ/դ	8	4	ք. Ճամբարակ, Պ. Սևակի 1	\N	\N	3	1	Սարգսյան Լյովա	95007468	77223112		Գալստյան Անուշ	77422015				\N	\N	\N	jass.manasyan@gmail.com
380	Ճամբարակի ա/դ	8	4	ք. Ճամբարակ, Ե. Չարենցի փ.	\N	\N	3	1	Մկրտչյան Արմինե	95007465	77222365		Ստեփանյան Աիդա	93824635				\N	\N	\N	jass.manasyan@gmail.com
381	Անտառամեջի մ/դ	8	4	գ. Անտառամեջ	\N	\N	3	2	Ազարյան Արթուր	94018383	96018383							\N	\N	\N	jass.manasyan@gmail.com
382	Արտանիշի մ/դ	8	4	գ. Արտանիշ	\N	\N	3	2	Մարգարյան Արայիկ	95007469	55814749		Աղաջանյան Մարինե	94787817				\N	\N	\N	jass.manasyan@gmail.com
383	Գետիկի մ/դ	8	4	գ. Գետիկ	\N	\N	3	2	Ղավալյան Հակոբ	95007389	94830887		Ղալեչյան Անահիտ	098 81-21-94				\N	\N	\N	jass.manasyan@gmail.com
384	Դպրաբակի մ/դ	8	4	գ. Դպրաբակ	\N	\N	3	2	Խնդկարյան Անթառամ	95007387	94007179		Խոնդկարյան Աշոտ	93098138				\N	\N	\N	jass.manasyan@gmail.com
385	Դրախտիկի մ/դ	8	4	գ. Դրախտիկ	\N	\N	3	5	Բաբացյոխյան Նազիկ		94757556		Խաչատրյան Նատալյա օպերատոր	77431142				\N	\N	\N	jass.manasyan@gmail.com
386	Մարտունիի մ/դ	8	4	գ. Մարտունի	\N	\N	3	2	Խաչատրյան Արամայիս	94702856			Երիցյան Ալվինա	93609243				\N	\N	\N	jass.manasyan@gmail.com
387	Լերմոնտովոյի մ/դ	8	6	գ. Լերմոնտովո	\N	\N	3	2	Հովսեփյան Վահան	91953294			Մամաջանյան Լիաննա 	93809128				2	10	\N	jass.manasyan@gmail.com
388	Գուգարքի թիվ 1 մ/դ	8	6	գ. Գուգարք	\N	\N	3	2	Հարությունյան Թաթուլ	93850780	99850780	322522893	Սիրուշ Մելիքսեթյան	98772363				20	46	\N	jass.manasyan@gmail.com
389	Գուգարքի թիվ 2 մ/դ	8	6	գ. Գուգարք	\N	\N	3	2	Կարինե Սարիբեկյան	77994166			Մարիամ Թումանյան	98664878				1	6	\N	jass.manasyan@gmail.com
390	Ազնվաձորի մ/դ	8	6	գ. Ազնվաձոր	\N	\N	3	4	Շահնազարյան Սեյրան	93246498	95007237		Լիլիթ Խառատյան	093 69-15-65				2	5	\N	jass.manasyan@gmail.com
391	Դեբեդի մ/դ	8	6	գ. Դեբեդ	\N	\N	3	2	Զավեն Խաչատրյան	93502019			Արփինե Քարհանյան	93627204				4	10	\N	jass.manasyan@gmail.com
392	Եղեգնուտի մ/դ	8	6	գ. Եղեգնուտ	\N	\N	3	2	Համբարձումյան Հովիկ	93622260			Քարհանյան Արփիկ	95451743		93451743		3	4	\N	jass.manasyan@gmail.com
393	Լեռնապատի մ/դ	8	6	գ. Լեռնապատ	\N	\N	3	2	Աննա Աբազյան	93227446			Իրինա Միկինյան	94509651				1	7	\N	jass.manasyan@gmail.com
394	Մարգահովիտի մ/դ	8	6	գ. Մարգահովիտ	\N	\N	3	3	Անտինյան Աշոտ	91070505	77050961		Ալչանգյան Մարիամ	98344575				17	20	\N	jass.manasyan@gmail.com
395	Վահագնիի մ/դ	8	6	գ. Վահագնի	\N	\N	3	2	Ներսեսյան Աղունիկ	93303829	55303829	032269410	Անահիտ Ղազարյան	032269410				3	10	\N	jass.manasyan@gmail.com
396	Ֆիոլետովոյի մ/դ	8	6	գ. Ֆիոլետովո	\N	\N	3	2	Ղազարյան Արամ	77056903	99056904		Մարգարյան Թերմինե	99056904				1	16	\N	jass.manasyan@gmail.com
397	Անտառամուտի հմ/դ	8	6	գ. Անտառամուտ	\N	\N	3	3	Գևորգյան Աշոտ	95007262	091772216							3	4	\N	jass.manasyan@gmail.com
398	Ձորագյուղի հմ/դ	8	6	գ. Ձորագյուղ	\N	\N	3	2	Գրիգորյան Ալվարդ		93130026	95007285	Նարեկ Արզումանյան	98877243				3	5	\N	jass.manasyan@gmail.com
399	Ձորագետի հմ/դ	8	6	գ. Ձորագետ	\N	\N	3	2	Էլմիրա Եգանյան	93447537								6	6	\N	jass.manasyan@gmail.com
400	Փամբակի հմ/դ	8	6	գ. Փամբակ	\N	\N	3	2	Ալբերտ Ուլիխանյան	55111571	91260150		Ալբերտ Ուլիխանյան	99111571				2	4	\N	jass.manasyan@gmail.com
401	Օձունի թիվ 1 մ/դ	8	6	գ. Օձուն	\N	\N	3	2	Աղիկյան Անահիտ	91755867			Դավիթավյան Գրետա	91761040				\N	\N	\N	jass.manasyan@gmail.com
402	Օձունի թիվ 2 մ/դ	8	6	գ. Օձուն	\N	\N	3	2	Ղուլյան Հրիփսիմե	91713300			Դավթյան Թերեզա	99080378				7	7	\N	jass.manasyan@gmail.com
403	Դսեղի մ/դ	8	6	գ. Դսեղ	\N	\N	3	2	Շեկոյան Էդուարդ	93045514			Նարինե Ափիդարյան	77529283				3	15	\N	jass.manasyan@gmail.com
404	Շնողի մ/դ	3	6	գ. Շնող	\N	\N	3	1	Ավետյան Գ.	91791174			Լիլիթ Ներկարարյան	93466565				\N	\N	\N	jass.manasyan@gmail.com
405	Ճոճկանի մ/դ	3	6	գ. Ճոճկան	\N	\N	3	2	Խաչատրյան Է.	77090750								\N	\N	\N	jass.manasyan@gmail.com
406	Լորուտի մ/դ	8	6	գ. Լորուտ	\N	\N	3	5	Սարգսյան Դավիթ		93848262		Հարությունյան Կարինե	77289874				1	3	\N	jass.manasyan@gmail.com
407	Աքորիի մ/դ	8	6	գ. Աքորի	\N	\N	3	2	Կիմիկ Պետրոսյան	91789939			Խլոպուզյան Ալլա	99866146				\N	\N	\N	jass.manasyan@gmail.com
1691	Նեղոց Building AP	4	6		\N	\N	\N	2										\N	\N	\N	jass.manasyan@gmail.com
408	Արևածագի մ/դ	8	6	գ. Արևածագ	\N	\N	3	2	Արմինե Երիցյան	55803410								6	7	\N	jass.manasyan@gmail.com
409	Մեծ Այրումի մ/դ	8	6	գ. Մեծ Այրում	\N	\N	3	2	Այվազյան Ս.	94346572								\N	\N	\N	jass.manasyan@gmail.com
410	Մարցի մ/դ	8	6	գ. Մարց	\N	\N	3	2	Ռուդիկ Ափիցարյան	93625701								1	9	\N	jass.manasyan@gmail.com
411	Քարինջի մ/դ	8	6	գ. Քարինջ	\N	\N	3	2	Արամ եղինյան	0253 60410	77734232		Շահնզարյան լիյա	094843771				3	6	\N	jass.manasyan@gmail.com
412	Շամուտի հմ/դ	8	6	գ. Շամուտ	\N	\N	3	5	Արարատ Հակոբյան	94728342			Ղազարյան Էդվարդ	94769229				4	9	\N	jass.manasyan@gmail.com
413	Հագվու հմ/դ	8	6	գ. Հագվի	\N	\N	3	2	Վաղանուշ Սահակյան	55701129			Միքայելյան Մարգարիտա	77627271				4	6	\N	jass.manasyan@gmail.com
414	Ծաթերի հմ/դ	8	6	գ. Ծաթեր	\N	\N	3	2	Աննա Դավթյան	91199207	55199297		Ավետյան Մանե	93041070				4	6	\N	jass.manasyan@gmail.com
415	Մղարթի հմ/դ	8	6	գ. Մղարթ	\N	\N	3	2	Մոսինյան Աղաբեկ	93020883			Ղազարյան Մելիք	093500791				1	3	\N	jass.manasyan@gmail.com
416	Այգեհատի հմ/դ	3	6	գ. Այգեհատ	\N	\N	3	2	Պ. Շահվերդյան	93437210	95007662		Աննա Շահվերդյան	55562555				3	8	\N	jass.manasyan@gmail.com
417	Արդվու հմ/դ	8	6	գ. Արդվի	\N	\N	3	2	Սեյրան Այդինյան	93337756			Նարինե Կիրակոսյան	77238492				2	6	\N	jass.manasyan@gmail.com
418	Թեղուտի մ/դ	8	6	գ. Թեղուտ	\N	\N	3	2	Վառլեն Բաբայան	94029595			Նատալյա Մելիքսեթյան	98013307				\N	\N	\N	jass.manasyan@gmail.com
419	Քարկոփի մ/դ	8	6	գ. Քարկոփ	\N	\N	3	2	Ղումաշյան Ղ.	91761577			Լուսինե Ղազարյան	77603826				\N	\N	\N	jass.manasyan@gmail.com
420	Հաղպատի մ/դ	8	6	գ. Հաղպատ	\N	\N	3	2	Ադամյան Հասմիկ	93915598			Մարինե Վարության					\N	\N	\N	jass.manasyan@gmail.com
421	Կաճաճկուտի հմ/դ	8	6	գ.Կաճաճկուտ	\N	\N	3	3	Ղարիբ Պողոսյան	91619053								\N	\N	\N	jass.manasyan@gmail.com
422	Շամլուղի հմ/դ	8	6	գ. Շամլուղ	\N	\N	3	2		094929329			Տաթևիկ Մարգարյան	93603131				\N	\N	\N	Armen.hayrapetyan@hf.am
423	Նեղոցի հմ/դ	8	6	գ. Նեղոց	\N	\N	3	1	Սոսինյան Արևիկ	55305828			Մարգո Մուրադյան	93613853				\N	\N	\N	jass.manasyan@gmail.com
424	Չկալովի հմ/դ	8	6	գ. Չկալով	\N	\N	3	2	Անահիտ Հարությունյան	93402994			Հայարփի Քարյան	77949372				1	12	\N	jass.manasyan@gmail.com
425	Ախթալայի թիվ 2 մ/դ	8	6	ք. Ախթալա, Ախթ. թիվ 2 մ/դ	\N	\N	3	1	Շուշանիկ Հոբոսյան	077595458	55101232		Կարինե Ոփյան	91453004				\N	\N	\N	jass.manasyan@gmail.com
426	Սպիտակի հտ/դ	8	6	ք. Սպիտակ, Խնկոյան փ.	\N	\N	3	1	Արտակ Պողոսյան	94614888			Հայկուհի Հակոբյան, Այդա-հաշվապահ	91345596	55619701			1	4	\N	jass.manasyan@gmail.com
427	Ջրաշենի մ/դ	8	6	գ. Ջրաշեն	\N	\N	3	2	Մխիթարյան Վաչագան	94484842			Փառանձեմ Հովհաննիսյան	77622978				1	20	\N	jass.manasyan@gmail.com
428	Արևաշողի մ/դ	8	6	գ. Արևաշող	\N	\N	3	2	Թերեզա  Գրիգորյան	93359868			Նաիրա Խաչատրյան	93792318	41200387			15	17	\N	jass.manasyan@gmail.com
429	Շիրակամուտի թիվ 1 մ/դ	8	6	գ. Շիրակամուտ	\N	\N	3	2	Աշոտ Կյուրեղյան	95007185	093-14-97-79		Աննա Ոսկանյան	93848168				2	14	\N	jass.manasyan@gmail.com
430	Շիրակամուտի թիվ 2 հմ/դ	8	6	գ. Շիրակամուտ	\N	\N	3	2	Ահարոն Նալբանդյան	93 397515								3	7	\N	jass.manasyan@gmail.com
431	Լեռնավանի մ/դ	8	6	գ. Լեռնավան	\N	\N	3	2	Պայծառ Վարդանյան	93328857			Նաիրա Ավետիսյան	93504055				2	13	\N	jass.manasyan@gmail.com
432	Ծաղկաբերի մ/դ	8	6	գ. Ծաղկաբեր	\N	\N	3	2	Սարգսյան Սարգիս	93112050			Գրետա Օհանջանյան	94951432				1	8	\N	jass.manasyan@gmail.com
433	Գեղասարի մ/դ	3	6	գ. Գեղասար	\N	\N	3	2	Ղուկասյան Վազգեն	95908047			Արմինե Սարգսյան					1	2	\N	jass.manasyan@gmail.com
434	Սարահարթի մ/դ	3	6	գ. Սարահարթ	\N	\N	3	1	Խումարյան Ռուդիկ	93054360			Արմենուհի	0255 60401	093514553			6	14	\N	Armen.hayrapetyan@hf.am
435	Սարամեջի մ/դ	8	6	գ. Սարամեջ	\N	\N	3	2	Մալխասյան Լիլիթ	93815947	96465560		Քաչանյան Նարինե	98273983				10	10	\N	jass.manasyan@gmail.com
436	Գոգարանի մ/դ	8	6	գ. Գոգարան	\N	\N	3	2	Նիկողոսյան Հրանտ	93696290	99696290							6	8	\N	jass.manasyan@gmail.com
437	Լուսաղբյուրի մ/դ	8	6	գ. Լուսաղբյուր	\N	\N	3	2	Քոչարյան Սուսաննա	99161633			Սամվել Մարգարյան	93040786				1	11	\N	jass.manasyan@gmail.com
438	Նոր Խաչակապի մ/դ	3	6	գ. Նոր Խաչակապ	\N	\N	3	2	Սիմոնյան Սեմյոն	93393194		93393494						3	5	\N	sarmen@hf.am
439	Ղուրսալու մ/դ	8	6	գ.Ղուրսալի	\N	\N	3	2	Միքայելյան Խաչատուր	98245500			Սահակյան Անուշ	43986863				4	8	\N	jass.manasyan@gmail.com
440	Լեռնանցքի մ/դ	8	6	գ. Լեռնանցք	\N	\N	3	2	Ավագյան Արամ	93388656			Թամարա Թումանյան	096432220				13	13	\N	jass.manasyan@gmail.com
441	Քարաձորի մ/դ	8	6	գ. Քարաձոր	\N	\N	3	2	Արկադի Կիրակոսյան	93489088			Գարիկ Հակոբյան	98102560				4	8	\N	jass.manasyan@gmail.com
442	Շենավանի հմ/դ	8	6	գ. Շենավան	\N	\N	3	2	Ղազարյան Ֆլորա	99115590 	95115595		Ղալեչյան Քրիստինե	077712808				1	4	\N	jass.manasyan@gmail.com
443	Խնկոյանի հմ/դ	3	6	գ. Խնկոյան	\N	\N	3	2	Մարինե Առաքելյան	93450419			Անի Կարապետյան	94129619				1	7	\N	jass.manasyan@gmail.com
444	Սարալանջի հմ/դ	8	6	գ. Սարալանջ	\N	\N	3	2	Թամարա Աֆյան	98128120			Արմեն Հովհաննիսյան	94228120				2	3	\N	jass.manasyan@gmail.com
445	Կաթնաղբյուրի մ/դ	8	6	գ. Կաթնաղբյուր	\N	\N	3	3	Ավթալյան Ալմաստ	93024978			Սարգսյան Հասմիկ	91077207				\N	\N	\N	jass.manasyan@gmail.com
446	Միխայլովկայի մ/դ	8	6	գ. Միխայլովկա	\N	\N	3	2	Ռաֆաելյան Գայանե	93523237			Աբրահամյան Մարինե	077329297				5	5	\N	jass.manasyan@gmail.com
447	Սարչապետի մ/դ	8	6	գ. Սարչապետ	\N	\N	3	2	Դավթյան Համլետ	93201026	0254 6-02-06		Սահակյան Հերմինե	94269166				4	11	\N	jass.manasyan@gmail.com
448	Նորաշենի մ/դ	8	6	գ. Նորաշեն	\N	\N	3	1	Ռաֆիկ Մարտիրոսյան	77737128			Գալստյան Տաթևիկ	94718998				8	14	\N	jass.manasyan@gmail.com
449	Արծնիի մ/դ	8	6	գ. Արծնի	\N	\N	3	2	Ռոստոմյան Մարիետա	93676945	95007127							\N	\N	\N	jass.manasyan@gmail.com
450	Պետրովկայի մ/դ	8	6	գ. Պետրովկա	\N	\N	3	2	Փնջոյան Արամայիս		93052644		Փնջոյան Հայկ	98124212				2	3	\N	jass.manasyan@gmail.com
451	Աթանի հմ/դ	8	6	գ. Աթան	\N	\N	3	5	Արամ Մարուքյան	93602428			Մարության Գայանե	93419307				6	6	\N	jass.manasyan@gmail.com
453	Կոտայքի տարածաշրջանային պետական քոլեջ	8	7	ք. Հրազդան, Կենտրոն	\N	\N	3	1	Գևորգյան Գագիկ	93920922			Աննա Եղիազարյան	93141504				\N	\N	\N	jass.manasyan@gmail.com
454	Ալափարսի մ/դ	8	7	գ. Ալափարս	\N	\N	3	2	Կակոյան Վրամ	93574083			Մանվել	77898872				5	5	\N	sonahdavtyan@gmail.com
455	Աղավնաձորի մ/դ	8	7	գ. Աղավնաձոր	\N	\N	3	2	Աղամալյան Ռուդիկ	93266875								\N	\N	\N	sonahdavtyan@gmail.com
456	Արզականի մ/դ	8	7	գ. Արզական	\N	\N	3	2	Գևորգյան Կարինե	55155450			Օվսաննա	98711841				5	5	\N	sonahdavtyan@gmail.com
457	Արտավազի մ/դ	8	7	գ. Արտավազ	\N	\N	3	2	Կոնջոռյան Բորիկ	93707749			Հովհաննիսյան Գոհար	77395229				\N	\N	\N	sonahdavtyan@gmail.com
458	Լեռնանիստի մ/դ	8	7	գ. Լեռնանիստ	\N	\N	3	2	Հայրապետյան Հայկ	91112936	22328593	95002884						\N	\N	\N	sonahdavtyan@gmail.com
459	Մարմարիկի մ/դ	8	7	գ. Մարմարիկ	\N	\N	3	2	Արզումանյան Նոննա	093949565			Կիրակոսյան Սուսաննա	77992477				2	6	\N	sonahdavtyan@gmail.com
460	Փյունիկի մ/դ	8	7	գ. Փյունիկ	\N	\N	3	2	Մարաբյան Գագիկ	93137806	22394118							\N	\N	\N	sonahdavtyan@gmail.com
461	Եղվարդի «Նաիրի» արհեստագործական պետ. ուսումնարան	8	7	ք. Եղվարդ, Երևանյան փող., շ. 10	40.3066079999999971	44.4752280000000013	3	1	Կարիեն Մեհրաբյան	94834504			Սրապիոնյան Նունե	77599476				\N	\N	\N	\N
462	Արգելի մ/դ	8	7	գ.Արգել	\N	\N	3	2	Մեսրոպյան Կարինե	093991033			1. Նաիրա Հարությունյան, 2. Անուշիկ Փիլիպոսյան	093149403	094370984			5	15	\N	sonahdavtyan@gmail.com
463	Արագյուղի «Տիգրանակերտ» վարժարան	8	7	գ. Արագյուղ	40.4007170000000002	44.5474359999999976	3	2	Ա. Պետրոսյան	98990403			Վ. Ամիրխանյան	94729996				\N	\N	\N	\N
464	Բուժականի մ/դ	8	7	գ. Բուժական	40.4478170000000006	44.5206689999999981	3	3	Մուրադյան Գևորգ	93336159			Հայկ Եգլարյան	094237335				\N	\N	\N	sarmen@hf.am
465	Գետամեջի մ/դ	8	7	գ. Գետամեջ	\N	\N	3	2	Գեղամյան Լիաննա	099103118			Սարգսյան Ալվարդ	077105137				2	8	\N	sonahdavtyan@gmail.com
466	Նոր Գեղիի թիվ 2 մ/դ	8	7	գ. Նոր Գեղի	\N	\N	3	2	Արայիկ Հարությունյան	93885586			Ադրինե Տեր- Պողոսյան	93354548				2	4	\N	sonahdavtyan@gmail.com
467	Նոր Երզնկայի մ/դ	8	7	գ. Նոր Երզնկա	40.3001580000000033	44.3923419999999993	3	2	Մեսրոպյան Երազիկ	91282944	95797555		Լուսինե	77994568				4	10	\N	\N
468	Քանաքեռավանի «Փոքր Մհեր» վարժարան	8	7	գ. Քանաքեռավան	40.2350190000000012	44.5290719999999993	3	2	Մուրադյան Արա	91358928	95003978		Նազիկ					\N	\N	\N	\N
469	Քասախի թիվ 1 մ/դ	8	7	գ. Քասախ	40.2339750000000009	44.4508439999999965	3	1	Սարգսյան	(094) 911602				(098) 741196				\N	\N	\N	Armen.hayrapetyan@hf.am
470	Քարաշամբի մ/դ	8	7	գ. Քարաշամբ	\N	\N	3	2	Հասմիկ Օսիպյան	91061056			Լևոնյան Թամարա	91799982				2	2	\N	sonahdavtyan@gmail.com
471	Սարալանջի հմ/դ	8	7	գ. Սարալանջ	40.398887000000002	44.5254019999999997	3	2	Բարսեղյան Թադևոս	91242240	94242246		Լաուրա	94969245				4	4	\N	\N
472	Աբովյանի թիվ 1 արհեստագործական պետ. ուսումնարան	8	7	ք. Աբովյան, երիտասարդական 22	\N	\N	3	1	Շահբազյան Մ	93269126	22220228		Զախարյան Օվսաննա	93356864				\N	\N	\N	jass.manasyan@gmail.com
473	Ակունքի մ/դ	8	7	գ. Ակունք	\N	\N	3	2	Սարգսյան Իրինա	93975542			Սարգսյան Ս.	91909994				15	18	\N	sonahdavtyan@gmail.com
474	Արամուսի մ/դ 	3	7	գ. Արամուս	\N	\N	3	2	Ֆրունզ Պողոսյան	94700826			Մարինե Սահակյան	094224475	Վարդուհի Վարդանյան	094841136		12	25	\N	sonahdavtyan@gmail.com
475	Գառնիի թիվ 1 հմ/դ	8	7	գ. Գառնի	40.1221940000000004	44.7329620000000006	3	2	Մարգարյան Ա.	93048481			Ս. Օհանյան	55517783				\N	\N	\N	\N
476	Գառնի բանավանի հմ/դ	8	7	գ. Գառնի, Բանավան	40.1080889999999997	44.6817220000000006	3	2	Գասպարյան Ա.	91512893			Հովհաննիսյան Թագուհի	55878427				\N	\N	\N	\N
477	Գառնիի Ատոմի անվան թիվ 2 ա/դ	8	7	գ. Գառնի, փ. Ջ. Ալեքյան	40.117125999999999	44.7316239999999965	3	2	Հովհաննես Հարությունյան	096686761			Լուսինե Գեղամյան	99311119				10	40	\N	jass.manasyan@gmail.com
478	Գեղադիրի մ/դ	8	7	գ. Գեղադիր	40.1525669999999977	44.655307999999998	3	2	Ավետիսյան Զավեն	93846337								\N	\N	\N	\N
479	Գեղարդի մ/դ	8	7	գ. Գեղարդ	40.1570859999999996	44.7981830000000016	3	2	Տարոյան Վիգեն	93753299			Ալեքսանյան Արմենուհի	77763010				\N	\N	\N	\N
480	Գողթի մ/դ	8	7	գ. Գողթ	40.1388490000000004	44.7866110000000006	3	2	Հ. Հովսեփյան	94466357			Նարինե Գաբրիելյան	93912750				\N	\N	\N	\N
481	Զառի մ/դ	8	7	գ. Զառ	\N	\N	3	2	Խաչատրյան Հ.	94504971			Աբրահամյան Նվարդ	93801882				\N	\N	\N	sonahdavtyan@gmail.com
482	Զովաշենի հմ/դ	8	7	գ. Զովաշեն	\N	\N	3	2	Եփրեմյան Ռիմա	22220637	94682896		Հ. Խաչատրյան	55212711			դպրոցը փակվել է	\N	\N	\N	jass.manasyan@gmail.com
483	Կաթնաղբյուրի հմ/դ	8	7	գ. Կաթնաղբյուր	\N	\N	3	2	Դանիելյան Գ.	93882451			Հասմիկ Հակոբյան	93656480				\N	\N	\N	sonahdavtyan@gmail.com
484	Կամարիսի մ/դ	8	7	գ. Կամարիս	\N	\N	3	2	Արամայիս Ենոքյան	91458366			Կարինե Սարգսյան	93763885				6	12	\N	sonahdavtyan@gmail.com
485	Կապուտանի մ/դ	8	7	գ. Կապուտան	\N	\N	3	2	Հովհաննիսյան Սամվել	22260037	93896692		Սաֆարյան Սոնա	98036601				\N	\N	\N	sonahdavtyan@gmail.com
486	Հացավանի մ/դ	8	7	գ. Հացավան	40.1402080000000012	44.6543690000000026	3	2	Ս. Սահակյան	93582623			Մ. Հովհաննիսյան	99096445				\N	\N	\N	\N
487	Նոր Գյուղի մ/դ	8	7	գ. Նոր Գյուղ	\N	\N	3	2	Հովհաննիսյան Ս.	93356686			Ս. Առուշանյան	93550083				\N	\N	\N	sonahdavtyan@gmail.com
488	Նուռնուսի մ/դ	8	7	գ. Նուռնուս	\N	\N	3	2	Դավիթ Կարապետյան	77903600			Անդրանիկ	95383737				2	5	\N	sonahdavtyan@gmail.com
489	Ողջաբերդի մ/դ	8	7	գ. Ողջաբերդ	40.1719220000000021	44.6433669999999978	3	2	Վ. Գրիգորյան	91060846			Լուսինե Հարությունյան	93480861				3	4	\N	\N
490	Պտղնիի մ/դ	8	7	գ. Պտղնի	40.2532080000000008	44.5807640000000021	3	1	Արզումանյան Ն.	99280531			Հերմինե					1	10	\N	jass.manasyan@gmail.com
491	Գետարգելի հմ/դ	8	7	գ. Գետարգել	40.2450749999999999	44.5988150000000019	3	2	Տասալյան Արեգնազ	91738044			Սվետլաննա	55261511				7	8	\N	\N
492	Սևաբերդի մ/դ	8	7	գ. Սևաբերդ	\N	\N	3	2	Զախարյան Վ.	779888901			Արսեն Զաքարյան	77135651				\N	\N	\N	sonahdavtyan@gmail.com
493	Վերին Պտղնիի մ/դ	3	7	գ. Վ. Պտղնի	40.249215999999997	44.5847320000000025	3	1	Հակոբյան Արսեն	99111168			Մերի	99850405				4	10	\N	\N
494	Գյումրու թիվ 41 մ/դ	8	8	 ք. Գյումրի, Ե. Չարենցի 4	\N	\N	3	1	Աթոյան Անահիտ 	 094800991			Արմինե Միքայելյան	094927210		13		13	\N	\N	jass.manasyan@gmail.com
495	Գյումրու թիվ 1 արհեստագործական պետ. ուսումնարան	8	8	ք. Գյումրի, Թումանյան փողոց, 2 շենք	\N	\N	3	1	Գրիգոր Մկրտչյան	312-30372								\N	\N	\N	hasmik@hf.am
496	Գյումրու պետական տեխնիկական քոլեջ ՊՈԱԿ	8	8	ք. Գյումրի, Տիգրան Մեծ 29ա	\N	\N	3	1	Սարգսյան Մխիթար 	93729489			Գայանե Ավետիսյան 	094845148				\N	\N	\N	jass.manasyan@gmail.com
497	Գյումրու թիվ 3 արհեստագործական պետ. ուսումնարան	8	8	ք. Գյումրի, Սպանդարյան փող., 84 շենք	40.3085060000000013	44.4763420000000025	3	1		312-51623								\N	\N	\N	jass.manasyan@gmail.com
498	Աղինի մ/դ	8	8	ք. Եղվարդ, Սաֆարյան 88	40.3211889999999968	44.4816819999999993	3	2	Էլբազյան խաչիկ	093839839			Պետրոսյան Պավել	077713849				2	6	\N	jass.manasyan@gmail.com
499	Լանջիկի մ/դ	8	8	գ. Բալահովիտ	\N	\N	3	2	Ծովիկ Հովհաննիսյան	94749023			Անահիտ Հովհաննիսյան	94855086				3	7	\N	jass.manasyan@gmail.com
500	Ձիթհանքովի մ/դ	8	8	գ. Գեղաշեն	\N	\N	3	2	Կարինե Բալաբեկյան	94821376			Սուսաննա Խաչատրյան	94824452				2	11	\N	jass.manasyan@gmail.com
501	Ձորակապի մ/դ	8	8	գ. Զովք	40.2078920000000011	44.6935689999999965	3	2	Կարինե Սահակյան	98549850			Ալլա Նուրոյան	99476047				3	12	\N	jass.manasyan@gmail.com
502	Ջրափիի մ/դ	8	8	գ. Կոտայք	\N	\N	3	2	Մարիամ Հովհաննիսյան	94343539			Աննա Առաքելյան	93081165				1	8	\N	jass.manasyan@gmail.com
503	Սարակապի մ/դ	8	8	ք. Աբովյան, Բարեկամության	\N	\N	3	2	Միսակ Ծառուկյան	93357393			Ժաննա Հակոբյան	93763372				2	6	\N	jass.manasyan@gmail.com
504	Քարաբերդի մ/դ	8	8	ք. Աբովյան, Տարտուի 1	\N	\N	3	2	Ալեքսան Ասատրյան	93820912			Սվետլանա Թորոսյան	94631658				2	11	\N	jass.manasyan@gmail.com
505	Լուսաղբյուրի մ/դ	8	8	ք. Աբովյան, Ռոսիա 26	\N	\N	3	2	Ն. Քեշիշյան	98036246			Կարինե	055 578582				\N	\N	\N	jass.manasyan@gmail.com
506	Հայկաձորի մ/դ	8	8	ք. Աբովյան, Սարալանջ	\N	\N	3	2	Վարդանյան Սարգսյան	93030772			Քնարիկ Մելիքյան	7016334				1	1	\N	jass.manasyan@gmail.com
507	Բենիամինի մ/դ	8	8	ք. Աբովյան, 2-րդ միկրոշրջ	\N	\N	3	2	Հակոբ Նահապետյան	93266421			Աստղիկ	98004737				1	5	\N	jass.manasyan@gmail.com
508	Լեռնուտի մ/դ	8	8	ք. Աբովյան, ուսանողական թ	\N	\N	3	3	Սուրեն Կարոյան	94237339			Լուսինե Կիրակոսյան					\N	\N	\N	jass.manasyan@gmail.com
509	Կրաշենի հմ/դ	8	8	գ. Կրաշեն	40.8785809999999969	43.9627369999999971	3	2	Մարինե Սարգսյան	98588407			Աննա Մարտիրոսյան	77588407				1	2	\N	vahram@hf.am
510	Մեծ Սարիարի մ/դ	8	8	գ. Ջրաբեր	\N	\N	3	2	Ասյա Գևորգյան	93745964			Լիլիթ Նիկողոյան	94224799				1	3	\N	jass.manasyan@gmail.com
511	Ոսկեհասկի մ/դ	8	8	ք. Բյուրեղավան	\N	\N	3	2	Վահան Մուրադյան	22265180	91731270		Սուսաննա Գրիգորյան	93326561				1	7	\N	jass.manasyan@gmail.com
512	Ջաջուռ կայարանի տ/դ	8	8	ք. Բյուրեղավան	\N	\N	3	2	Ջեմա Յայլոյան	93979332			Լիլիթ Գրիգորյան	93886694				1	1	\N	jass.manasyan@gmail.com
513	Փոքրաշենի մ/դ	8	8	ք. Բյուրեղավան	\N	\N	3	2	Զոհրաբ Արշակյան	93660249			Մերի Գևորգյան 	96332122				1	1	\N	jass.manasyan@gmail.com
514	Բասենի մ/դ (Մուսայելյան)	8	8	գ. Բասեն	\N	\N	3	2	Սոլախյան Թեմինա	77390541			Ավագյան Ռաֆիկ	93623625				5	17	\N	jass.manasyan@gmail.com
515	Ալվարի մ/դ	8	8	գ. Սոլակ	\N	\N	3	2	Դավթյան Լիդա	22325726	94200117		Արմինե Ասատրյան	77488477				\N	\N	\N	jass.manasyan@gmail.com
516	Աղվորիկի հմ/դ	8	8	գ. Քաղսի	\N	\N	3	2	Կարեն Հովհաննիսյան	94696570								\N	1	\N	jass.manasyan@gmail.com
517	Արդենիսի մ/դ	8	8	գ. Ֆանտան	\N	\N	3	2	Աբրահամյան Կարինե	77808810			Գայանե Կոստանդյան	94682505				\N	\N	\N	jass.manasyan@gmail.com
518	Բերդաշենի մ/դ	8	8	ք. Հրազդան, Միկրոշրջան	\N	\N	3	2	Շաբոյան Ժանետա	22363077	94247004		Սարդարյան Հասմիկ	94112216				\N	\N	\N	jass.manasyan@gmail.com
519	Գառնառիճի մ/դ	3	8	ք. Հրազդան, Շահումյան 170	\N	\N	3	2	Գափրամյան Նաիրա	22362314	93005579		Էդգար Ամիրյան	98764704				1	3	\N	jass.manasyan@gmail.com
520	Զորակերտի մ/դ	8	8	 գ.Զորակերտ	\N	\N	3	2	Աղավնի Հովհաննիսյան	094093007			Մկրտիչ	94200065				1	1	\N	jass.manasyan@gmail.com
521	Ծաղկուտի մ/դ	8	8	գ․ Ծաղկուտ	\N	\N	3	2	Պողոսյան Վարդան	94135661			Արմինե Սարգսյան	93239473				\N	\N	\N	Armen.hayrapetyan@hf.am
522	Շաղիկի հմ/դ	8	8	գ. Շաղիկ	\N	\N	3	2	Կարախանյան Անուշ	93105707	24660053			094863216				1	1	\N	Armen.hayrapetyan@hf.am
523	Ամասիայի մ/դ	8	8	ք. Հրազդան, Կենտրոն	\N	\N	3	2	Կարինե Հարթենյան	22326404	93863155		Ալեքսանյան Արտյոմ	93157614				2	8	\N	jass.manasyan@gmail.com
524	Արեգնադեմի մ/դ	3	8	ք. Հրազդան, Միկրոշրջան	\N	\N	3	2	Միքայելյան Գագիկ	22334556	77574575		Օհանյան Մարիամ	98777116				\N	\N	\N	jass.manasyan@gmail.com
525	Բանդիվանի մ/դ	8	8	ք. Հրազդան, Կենտրոն	\N	\N	3	2	Գրիգորյան Սաթենիկ	93407658	22325907		Գևորգյան Կարապետ	22325907	93407658			1	2	\N	jass.manasyan@gmail.com
526	Գտաշենի մ/դ	8	8	ք. Հրազդան, Միկրոշրջան	\N	\N	3	2	Գնել Կարապետյան	22322851	94871033		Նարինե Գալոյան					2	4	\N	jass.manasyan@gmail.com
527	Զարիշատի հմ/դ	8	8	Շիրակ,  գ․ Զարիշատ	\N	\N	3	2	Ալվարդ Շաղոյան	093626833								\N	\N	\N	Armen.hayrapetyan@hf.am
528	Հողմիկի մ/դ	8	8	ք. Հրազդան, Կաքավաձոր	\N	\N	3	2	Հասմիկ Ասատրյան	22360645	93237697		Գոհար Միքայելյան	93681234				\N	\N	\N	jass.manasyan@gmail.com
529	Հովտունի հմ/դ	8	8	գ. Կարենիս	\N	\N	3	2	Խաչատրյան Նշան	22360012	93868429		Աբրահամյան Հասմիկ	94759878				\N	\N	\N	jass.manasyan@gmail.com
530	Ջրաձորի մ/դ	8	8	ք. Չարենցավան, VI թաղ.	\N	\N	3	2	Խաչատրյան Ալլա	22642355	93857985		Հայրապետյան Գայանե	77995429				\N	\N	\N	jass.manasyan@gmail.com
531	Անուշավանի մ/դ	8	8	ք. Չարենցավան, V թաղ.	\N	\N	3	2	Մարտիրոս Հարթենյան	94914817	22641652		Օֆելյա Ստեփանյան	93478970				2	24	\N	jass.manasyan@gmail.com
532	Լուսակերտի մ/դ	8	8	ք. Չարենցավան, II միկրոթա	\N	\N	3	2	Աշոտ Գալստյան	77248070			Լուիզա Եղիազարյան	77805359				2	9	\N	jass.manasyan@gmail.com
533	Հայկասարի հմ/դ	8	8	ք. Չարենցավան, I Ա թաղ.	\N	\N	3	2	Նվեր Խաչատրյան	93478857			Սևակ Ոսկանյան	98895555				2	2	\N	jass.manasyan@gmail.com
534	Հայրենյացի մ/դ	8	8	ք. Չարենցավան, IV թաղ., շ	\N	\N	3	2	Մասիս Ոսկանյան	93844501			Անի Սահակյան	94657877				1	3	\N	jass.manasyan@gmail.com
535	Հոռոմի մ/դ	8	8	գ. Զորավան	40.3547190000000029	44.526921999999999	3	2	Անահիտ Գալստյան	93158328			Իրինա Գասպարյան	93904743				6	12	\N	jass.manasyan@gmail.com
536	Հովտաշենի հմ/դ	8	8	գ․ Հովտաշեն	\N	\N	3	2	Հովսեփ Հովհաննիսյան	93050035			Անահիտ Իգիթյան	98321200				1	1	\N	Armen.hayrapetyan@hf.am
537	Մեղրաշենի մ/դ	8	8	գ. Մրգաշեն	\N	\N	3	2	Գյուլնարա Պետրոսյան	94840050			Թևանյան Մանուշակ	98508597				3	3	\N	jass.manasyan@gmail.com
538	Պեմզաշենի մ/դ	8	8	գ. Քանաքեռավան	40.246259000000002	44.531210999999999	3	2	Լյովա Նազարեթյան	93182898			Ակսաննա Խլղաթյան	93367814				2	12	\N	jass.manasyan@gmail.com
539	Տուֆաշենի մ/դ	8	8	ք. Նոր Հաճըն, Է. Տոռոզյան	\N	\N	3	2	Ժան Ոսկանյան	93184814			Նախշուն Հովհաննիսյան	98110599				3	7	\N	jass.manasyan@gmail.com
540	Լեռնակերտի մ/դ	3	8	ք. Նոր Հաճըն, Շահումյան 1	\N	\N	3	2	Պողոս Կիրակոսյան	093147676			Ասյա Հարությունյան 	095891011				5	12	\N	jass.manasyan@gmail.com
541	Արևշատի մ/դ	8	8	գ. Թեղենիք	\N	\N	3	2	Սարգիս Խաչատրյան	94509782			Գրիգոր Փահլևանյան	55236667				2	11	\N	jass.manasyan@gmail.com
542	Գեղանիստի մ/դ	3	8	գ. Առինջ	40.2310450000000017	44.5700720000000032	3	2	Կարինե Ղազարյան	93242346			Մանուշակ Երիցյան	77130579				3	9	\N	jass.manasyan@gmail.com
543	Գետափի մ/դ	8	8	գ. Արզնի	\N	\N	3	2	Ռուզաննա Արաջյան	77055602			Արմինե Խաչատրյան	44044144				1	6	\N	jass.manasyan@gmail.com
544	Հառիճի երեկոյան (Արթիկի երեկոյան դպրոց ) մ/դ	8	8	գ. Ձորաղբյուր, Լուսավորու	40.202058000000001	44.6466920000000016	3	2	Մանվել Վարագյան	94470800			Նառա Սահակյան	98101595				1	1	\N	\N
545	Հառիճի մ/դ	3	8	գ. Ջրվեժ	40.1870750000000001	44.5920819999999978	3	2	Անահիտ Խաչատրյան	93899460			Ջանիկ Պողոսյան	93750418				2	5	\N	jass.manasyan@gmail.com
546	Մեծ Մանթաշի մ/դ	8	8	ք. Աբովյան, Ս.Մնացականյան	\N	\N	3	1	Սանդոյան Գոհար	94583484			Չաբյան Անահիտ	94351252				1	12	\N	jass.manasyan@gmail.com
547	Նահապետավանի մ/դ	8	8	գ. Բջնի	\N	\N	3	2	Մարինե Մանուկյան	93802138			Արտավազդ Սարգսյան	91979701				2	5	\N	jass.manasyan@gmail.com
548	Սարալանջի մ/դ	8	8	գ. Մեղրաձոր	\N	\N	3	2	Մակիչ Սարգսյան	98386850			Անի Փաշիկյան	98992511				2	5	\N	jass.manasyan@gmail.com
549	Սպանդարյանի մ/դ	8	8	ք. Ծաղկաձոր, Մայիսյան 14	\N	\N	3	2	Մարո Վարագյան	22360255	93339919		Անի Մինասյան	93462313				1	2	\N	jass.manasyan@gmail.com
550	Վարդաքարի մ/դ	8	8	3 փող, 4 շենք	\N	\N	3	2	Սահակյան Նարինե	093072413			Մայիլյան Աննա	077616599				1	2	\N	jass.manasyan@gmail.com
551	Փոքր Մանթաշի մ/դ	3	8	ք. Հրազդան, Երևանյան 5	\N	\N	3	1	Մարկուշ Կարապետյան	77186876			Արամանյակ Պալոյան	93857133				2	21	\N	jass.manasyan@gmail.com
552	Արփենիի մ/դ	8	8	ք. Չարենցավան, Լենինի 22	\N	\N	3	2	Կարապետյան Լուսինե	22644582	94426742		Ա. Հարությունյան	93808836				\N	\N	\N	jass.manasyan@gmail.com
553	Գոգհովիտի մ/դ	8	8	գ. Զովունի	40.2350330000000014	44.5063109999999966	3	2	Ղազարյան Վարդան	94503544			Հասմիկ Սեղբոսյան	55064686				\N	\N	\N	jass.manasyan@gmail.com
554	Զույգաղբյուրի մ/դ	8	8	գ. Նոր Արտամետ	\N	\N	3	2	Մելքոն Կարապետյան	55921959			Սարգսյան Հայկանուշ	55332538				\N	\N	\N	jass.manasyan@gmail.com
555	Թորոսգյուղի հմ/դ	8	8	գ. Նոր Գեղի, Ց. Խաչատրյան	\N	\N	3	2	Գարեգին Հակոբյան	93056609			Լիլիթ Հակոբյան	94442173				1	11	\N	jass.manasyan@gmail.com
556	Հարթաշենի հմ/դ	8	8	գ. Պռոշյան	40.2470780000000019	44.4185719999999975	3	2	Մկրտչյան Աննա	93470824			Անահիտ Հակոբյան	93312655				\N	\N	\N	jass.manasyan@gmail.com
557	Ձորաշենի մ/դ	8	8	գ. Քասախ	40.2362830000000002	44.4575469999999981	3	2	Շաբոյան	091833242	094833242		Գևորգյան Անդրանիկ	94980111				\N	\N	\N	jass.manasyan@gmail.com
558	Մուսայելյանի (Աշոցք) մ/դ	8	8	ք. Եղվարդ, Չարենցի փ.54	40.3147639999999967	44.4771610000000024	3	2	Սիմոնյան Ռազմիկ	93541207			Սիմոնյան Վարդգես	93800270				\N	\N	\N	jass.manasyan@gmail.com
559	Ցողամարգի մ/դ	8	8	ք. Նոր Հաճըն, Չարենցի 20	\N	\N	3	2	Ն. Վարդանյան	55959390			Մանուշակ Պողոսյան	98713893				\N	\N	\N	jass.manasyan@gmail.com
560	Կաքավասարի հմ/դ	8	8	գ. Հատիս	\N	\N	3	2		94116150								\N	\N	\N	jass.manasyan@gmail.com
561	Աշոցքի մ/դ	8	8	գ. Աշոցք	\N	\N	3	2	Ավետիսյան Սամվել	95008926	77757767		Գայանե Հարությունյան	91000515				5	7	\N	jass.manasyan@gmail.com
562	Բավրայի մ/դ	8	8	գ. Բավրա	\N	\N	3	2	Վարդանյան Արմեն	95008927	99077567		Անահիտ Մխիթարյան	95877567				1	7	\N	jass.manasyan@gmail.com
563	Թավշուտի մ/դ	8	8	գ. Թավշուտ	\N	\N	3	2	Սողոյան Ալեքսան	95008928	93945945		Արայիկ Շահբազյան	94322819				\N	\N	\N	jass.manasyan@gmail.com
564	Կարմրավանի հմ/դ	3	8	գ. Կարմրավան	\N	\N	3	2	Ավետիսյան Լուսինե	95008929	77232924		Էլիզա Սարգսյան	94539610				\N	\N	\N	jass.manasyan@gmail.com
565	Կրասարի մ/դ	8	8	գ. Կրասար	\N	\N	3	2	Առաքելյան Լյուդմիլա	95008952	94963513		Արփինե Խաչատրյան	77525859				1	6	\N	jass.manasyan@gmail.com
566	Ղազանչիի մ/դ	8	8	գ. Ղազանչի	\N	\N	3	2	Մարտուն Խաչատրյան	98542372			Լիա Սարգսյան	93806988				1	4	\N	jass.manasyan@gmail.com
567	Սարագյուղի հմ/դ	8	8	գ. Սարագյուղ	\N	\N	3	2	Հակոբյան Գինեվարդ	95008953	55107039		Հակոբյան Գինեվարդ	55107039				\N	\N	\N	jass.manasyan@gmail.com
568	Սիզավետի մ/դ	8	8	գ. Սիզավետ	\N	\N	3	2	Արայիկ Մանուկյան	93827906			Քնարիկ Համբարյան	77761708				2	2	\N	jass.manasyan@gmail.com
569	Փոքր Սեպասարի հմ/դ	8	8	գ. Փոքր Սեպասար	\N	\N	3	2	Սարուխանյան Իսկուհի	95008954	99660776							\N	\N	\N	jass.manasyan@gmail.com
570	Փոքր Սարիարի մ/դ	8	8	գ. Փոքր Սարիար	\N	\N	3	2	Մխեյան Արմինե	95008956	94626771		Վռամ Հովհաննիսյան	93626771				\N	\N	\N	jass.manasyan@gmail.com
571	Անի կայարանի մ/դ	8	8	գ. Անիավան (Անի կայարան)	\N	\N	3	3	Հայկուհի Հակոբյան	93239511			Հովսեփ Մխիթարյան	93443829				1	1	\N	jass.manasyan@gmail.com
572	Բարձրաշենի հմ/դ	8	8	գ. Բարձրաշեն	\N	\N	3	\N										\N	\N	\N	\N
573	Սպանդարյանի մ/դ	8	9	գ. Սպանդարյան	\N	\N	3	2	Գալստյան Գոհարիկ	77112600	95001643		Աննա Ստեփանյան	98563502				2	4	\N	sonahdavtyan@gmail.com
574	Բալաքի տարրական դպրոց	8	9	գ. Բալաք	\N	\N	3	2	Պողոսյան Գայանե	93285764	95001948		Սուսաննա Գևորգյան	94288929				2	2	\N	sonahdavtyan@gmail.com
575	Մուցքի հմ/դ	8	9	գ. Մուցք	\N	\N	3	2	Սարգսյան	77282699			Կիրակոսյան Աղունիկ	94324216				1	6	\N	sonahdavtyan@gmail.com
576	Քարաշենի մ/դ	8	9	գ. Քարաշեն	\N	\N	3	2	Շեգունց Դ․	098595261	95001943		Բաղդասարյան Ռ․	098940333				\N	\N	\N	sonahdavtyan@gmail.com
578	Արավուսի տարրական դպրոց	8	9	գ. Արավուս	\N	\N	3	2	Ջհանգիրյան Նարինե	95001915	77982262		Գ. Սեգունց	77878151				1	1	\N	jass.manasyan@gmail.com
579	Ներքին Խնձորեսկի մ/դ	8	9	գ. Ներքին Խնձորեսկ	\N	\N	3	2	Գրիգորյան Անուշիկ	95001895	93812845		Դիլանչյան Սամվել	93171282				3	7	\N	sonahdavtyan@gmail.com
580	Որոտան գյուղ, հմ/դ (Գորիս)	8	9	Որոտան գյուղ	\N	\N	3	2	Արա Գրիգորյան	77990511			Սոնա Գրիգորյան	94644955				3	6	\N	sonahdavtyan@gmail.com
581	Որոտանի մ/դ(Սիսիան)	8	9	գ. Որոտան	\N	\N	3	2	Անուշ Բարսամյան	93148938			Շուշան Ստեփանյան	77883089				2	4	\N	sonahdavtyan@gmail.com
582	Շամբի մ/դ	8	9	գ. Շամբ	\N	\N	3	2	Զաքարյան Սամվել	95002512	93005958		Հովսեփյան Արուսյակ	98033210				4	8	\N	sonahdavtyan@gmail.com
583	Լծենի հմ/դ	8	9	գ. Լծեն	\N	\N	3	2	Կարապետ Ամիրյան	95002537	97718506		Բունիաթյան Լուսինե	98402120				1	1	\N	sonahdavtyan@gmail.com
584	Դարբասի մ/դ	8	9	գ. Դարբաս	\N	\N	3	2	Օհանյան Վալերիկ	95002545	93260298		Կարմեն Գևորգյան	77100233				3	12	\N	sonahdavtyan@gmail.com
585	Լորի մ/դ	8	9	գ. Լոր	\N	\N	3	2	Լիաննա Գրիգորյան	95002567	98780753		Գագիկ Աղաբեկյան	93540406				3	8	\N	sonahdavtyan@gmail.com
586	Շենաթաղի հմ/դ	8	9	գ. Շենաթաղ	\N	\N	3	2	Զաքարյան Ռուբեն	95002273	93019731		Մարինե Պետրոսյան	77356400				1	1	\N	sonahdavtyan@gmail.com
587	Սվարանցի մ/դ	8	9	գ. Սվարանց	\N	\N	3	2	Վարդանյան Նվերիկ	95004615	77587363		Հենրի Սարգսյան	94250399				1	3	\N	sonahdavtyan@gmail.com
588	Տանձատափի հմ/դ	8	9	գ. Տանձատափ	\N	\N	3	2	Աբրահամյան Վիլեն	94006412			Վերջինե Հարությունյան					2	3	\N	sonahdavtyan@gmail.com
589	Հալիձորի մ/դ	8	9	գ. Հալիձոր	\N	\N	3	2	Շուշանիկ Գաբրիելյան	95004632	93200720		Արամ Աղաջանյան	93805736				5	6	\N	sonahdavtyan@gmail.com
590	Շուռնուխի մ/դ	8	9	գ. Շուռնուխ	\N	\N	3	2	Լալաբեկյան Արմեն	94666445			Սոնա Գրիգորյան	94644955				1	5	\N	jass.manasyan@gmail.com
591	Սալվարդի հմ/դ	8	9	գ. Սալվարդ	\N	\N	3	5	Քրիստափորյան Հովհաննես	95002585	93627778		Աբելյան Կարինե-նախկին	93549852	Գևորգյան Գոհար	077381006		1	3	\N	sonahdavtyan@gmail.com
592	Աշոտավան	4	9	գ. Աշոտավան	\N	\N	3	2	Օհանյան Հովսեփ	94815210			Կ. Մարգարյան	77993634	28395143			\N	\N	\N	jass.manasyan@gmail.com
593	Հացավանի մ/դ	8	9	գ. Հացավան	\N	\N	3	2	Ստեփանյան Արտակ	95002592	98006672	055558338	Լիլիթ Ասատրյան	98985737				2	3	\N	sonahdavtyan@gmail.com
594	Թասիկի հմ/դ	8	9	գ. Թասիկ	\N	\N	3	2	Հարությունյան Հարություն	95002764	93019166		Հարությունյան Դավիթ	55355363				2	3	\N	sonahdavtyan@gmail.com
595	Նժդեհ (Սոֆլուի) հմ/դ	8	9	գ. Նժդեհ (Սոֆլու)	\N	\N	3	2	Ապրեսյան Սերոբ	95002757	93863433		Օհանյան Լիլիթ	94740967				1	2	\N	sonahdavtyan@gmail.com
596	Դաստակերտի մ/դ	8	9	գ. Դաստակերտ	\N	\N	3	2	Ապրեսյան Սերոբ	93863433	95002697		Արթուր Գրիգորյան	93647214				\N	\N	\N	sonahdavtyan@gmail.com
597	Տորունիքի հմ/դ	8	9	գ. Տորունիք	\N	\N	3	2	Դավթյան Արայիկ	93811210			Կոստանյան Կարինե	93701849				2	2	\N	sonahdavtyan@gmail.com
598	Ծավի մ/դ	8	9	գ. Ծավ	\N	\N	3	2	Մարտիրոսյան Յ.	95001283	94148041		Մարգարիտա Գալստյան	94013070				\N	\N	\N	sonahdavtyan@gmail.com
599	Ներքին Հանդի հմ/դ	8	9	գ. Ներքին Հանդ	\N	\N	3	2	Սողոմոնյան Դոնարա	95001286	77770977		Մերի Ավետիսյան	98064414				1	2	\N	sonahdavtyan@gmail.com
600	Շիկահողի մ/դ	8	9	գ. Շիկահող	\N	\N	3	2	Հասմիկ Ղազարյան	95001287	93941662		խաչատրյան Անահիտ	93182111				\N	\N	\N	sonahdavtyan@gmail.com
601	Ճակատենի հմ/դ	8	9	գ. Ճակատեն	\N	\N	3	2	Բաբայան Եղիշե	95006218	93062138		Օսիպյան Լիանա	95006218	93852930			\N	\N	\N	sonahdavtyan@gmail.com
602	Գեղանուշի մ/դ	8	9	գ. Գեղանուշ	\N	\N	3	2	Գայանե Գրիգորյան	077768836		95006217	Կարինե Պողոսյան	93749084	028524487			3	10	\N	sonahdavtyan@gmail.com
603	Եղվարդի մ/դ	8	9	գ. Եղվարդ	\N	\N	3	2	Մանյա Գևորգյան	95006216	93165222							\N	\N	\N	Armen.hayrapetyan@hf.am
604	Վարդավանքի մ/դ	8	9	գ. Վարդավանք	\N	\N	3	2	Նինել Սարգսյան	98887957			Մանե Ծատրյան	94789846				2	4	\N	sonahdavtyan@gmail.com
605	Կապանի թիվ 8 մ/դ	8	9	ք. Կապան, Շղարշիկ բանավան	\N	\N	3	4	Գագիկ Հարությունյան	95006214	91370078		կարինե		077582854			\N	\N	\N	sarmen@hf.am
606	Աճանան (Խալաջ) մ/դ	8	9	գ. Աճանան (Խալաջ)	\N	\N	3	2	Հովհաննիսյան Սոնա	95006213	77160477		Թամարա Միքայելյան	28554102	093500406			1	6	\N	jass.manasyan@gmail.com
607	Եղեգի մ/դ	8	9	գ. Եղեգ	\N	\N	3	2	Մերի Գանդալյան	93049480	28560044		Սոսի Մարտիրոսյան					\N	\N	\N	sonahdavtyan@gmail.com
608	Դավիթ Բեկի մ/դ	8	9	գ. Դավիթ Բեկ	\N	\N	3	2	Գրիշա Գաբրիելյան	95006197	93177701		Բալայան Վրեժ	94161093	77889071			\N	11	\N	sonahdavtyan@gmail.com
609	Նորաշենիկի մ/դ	8	9	գ. Նորաշենիկ	\N	\N	3	2	Դավիթ Թումանյան 	98299952			Մարգարիտա Հայրապետյան	77966639				2	4	\N	sonahdavtyan@gmail.com
610	Օխտարի մ/դ	8	9	գ. Օխտար	\N	\N	3	2	Պողոսյան Ռաֆիկ	95006195	94208075		Առաքելյան Անահիտ	60860				\N	\N	\N	sonahdavtyan@gmail.com
611	Տավրուսի մ/դ	8	9	գ. Տավրոս	\N	\N	3	2	Կամո Ավանեսյան	95006173	93135969		Աշխեն Արշակյան	98189040				1	4	\N	sonahdavtyan@gmail.com
612	Վերին Խոտանանի մ/դ	8	9	գ. Վերին Խոտանան	\N	\N	3	2	Բադալյան Խաչատուր	95006172	93417395		Ոսկանյան Նարինե	94209080				1	4	\N	jass.manasyan@gmail.com
613	Աղվանի հմ/դ	8	9	գ. Աղվան	\N	\N	3	2	Մկրտչյան Մարգո	93194008			Սուքիասյան Վանուշ	77382128				1	2	\N	jass.manasyan@gmail.com
614	Տանձավերի մ/դ	8	9	գ. Տանձավեր	\N	\N	3	2	Թումանյան Անժելա	28560607	95006185	93182728						\N	\N	\N	sonahdavtyan@gmail.com
615	Ձագեձորի մ/դ	8	9	գ. Ձագեձոր	\N	\N	3	2	Ազարյան Լեռնիկ	95006184	77123167		Ծատրյան Յաննա	77010484				5	7	\N	sonahdavtyan@gmail.com
616	Լեռնաձորի հմ/դ	3	9	գ. Լեռնաձոր	\N	\N	3	1	Գրիգորյան Ծովինար	77131464	95006183		Շուշան Ներսիսիյան	94152986				1	6	\N	jass.manasyan@gmail.com
617	Քաջարանի թիվ 5 մ/դ	8	9	ք. Քաջարան, Բարիկավան	\N	\N	3	5	Մկրտչյան Անուշ	95006182	98309022		Ավետիսյան Լիանա	94640043				\N	\N	\N	sonahdavtyan@gmail.com
618	Քաջարանի թիվ 6 հմ/դ	8	9	ք. Քաջարան, Անդոկավան թաղ	\N	\N	3	5	Իվանյան Սամվել	93961575	95006173		Հասմիկ Հայրապետյան	94730976				\N	\N	\N	sonahdavtyan@gmail.com
619	Ագարակի հմ/դ (Կապան)	8	9	գ. Ագարակ	\N	\N	3	2	Ավանեսյան Ռոզա	95006298		94334021	Սվետլաննա Խաչատրյան		93201795			1	6	\N	sonahdavtyan@gmail.com
620	Վարդանիձորի մ/դ	8	9	գ. Վարդանիձոր	\N	\N	3	2	Ալվարդ Մնացականյան 	98919719			Լուսինե Բեգլարյան	93991591				4	6	\N	sonahdavtyan@gmail.com
621	Լիճքի մ/դ	8	9	գ. Լիճք	\N	\N	3	2	Էսման Պողոսյան	95002469	94601361		Սեդիկ Հայրապետյան	94200899				2	4	\N	sonahdavtyan@gmail.com
622	Լեհվազի մ/դ	8	9	գ. Լեհվազ	\N	\N	3	2	Վարդանյան Վարսենիկ	95002474	93627492		Մարո Խաչատրյան	94876254				3	10	\N	sonahdavtyan@gmail.com
623	Կարճևանի հմ/դ	8	9	գ. Կարճևան	\N	\N	3	2	Պապյան Սվետլաննա	95002476	93512919	91613288	Նվարդ Կարապետյան	93694445				4	4	\N	sonahdavtyan@gmail.com
624	Տաշտունի հմ/դ	8	9	գ. Տաշտուն	\N	\N	3	2	Գևորգյան Ոսկեհատ	95002485	94043525		Հեղուշ Բաղրամյան	77955332			01-09-2017-ից փակվել է աշակերտ չունեն	1	2	\N	jass.manasyan@gmail.com
625	Աղիտուի հմ/դ	8	9	գ. Աղիտու	\N	\N	3	2	Շահնազարյան Սուրեն	93004495			Թամար Շահինյան					2	2	\N	sonahdavtyan@gmail.com
626	Ալվանքի մ/դ	8	9	գ. Ալվանք	\N	\N	3	4	Վերա Սևումյան	91314449	95002426		Զվարթ Գեոգջայան	91095255				4	8	\N	sonahdavtyan@gmail.com
627	Ագարակաձորի մ/դ	8	10	գ. Ագարակաձոր	\N	\N	3	1	Հովհաննիսյան Նաիրա	95004658	93642031		Էվելինա Մանուկյան	91280128				\N	\N	\N	sonahdavtyan@gmail.com
628	Աղնջաձորի մ/դ	8	10	գ. Աղնջաձոր	\N	\N	3	2	Հրաչյան Եդիգարյան	95004663	93832130		Նարինե Ստեփանյան	281201191	77677204			7	7	\N	sonahdavtyan@gmail.com
629	Արտաբույնքի մ/դ	8	10	գ. Արտաբույնք	\N	\N	3	2	Բաբայան Մեսրոպ	95004669	96339604		Դիաննա Բաշիյանց	91171847				11	11	\N	sonahdavtyan@gmail.com
630	Գետափի մ/դ	8	10	գ. Գետափ	\N	\N	3	2	Կարինե Հակոբյան	93893320			Սուսաննա Հակոբյան	94202915				12	18	\N	sonahdavtyan@gmail.com
631	Գլաձորի մ/դ	8	10	գ. Գլաձոր	\N	\N	3	1	Կարինե Կոստանյան	985995788			Մուրադյան Հայկուհի	93825672				1	13	\N	sonahdavtyan@gmail.com
632	Մոզրովի հմ/դ	8	10	գ. Մոզրով	\N	\N	3	2	Ա. Մելքոնյան	95004692	93656092							\N	\N	\N	sonahdavtyan@gmail.com
633	Ելփինի մ/դ	8	10	գ. Ելփին	\N	\N	3	2	Գևորգյան Ժորա	95004746	93224336		Մարկոսյան Գարիկ	93930824				10	10	\N	sonahdavtyan@gmail.com
634	Եղեգիսի մ/դ	8	10	գ. Եղեգիս	\N	\N	3	2	Նելլի Հարությունյան	77821315	95004748		Քնարիկ Բաբագուլյան	77635345				7	7	\N	sonahdavtyan@gmail.com
635	Թառաթումբի մ/դ	8	10	գ. Թառաթումբ	\N	\N	3	2	Խաչատրյան Զոհրաբ	95004779	93327403		Հասմիկ Եղյան	94159905				9	10	\N	sonahdavtyan@gmail.com
636	Հերմոնի հմ/դ	8	10	գ. Հերմոն	\N	\N	3	2	Նաիրա Մնացականյան	77190169			Օվսաննա Վարդանյան	94167583				5	6	\N	sonahdavtyan@gmail.com
637	Հորբատեղի հմ/դ	8	10	գ. Հորբատեղ	\N	\N	3	2	Միքայել Սարգսյան	95004884	99021737		Գևորգ Սարգսյան	96071737				5	7	\N	sonahdavtyan@gmail.com
638	Շատինի մ/դ	3	10	գ. Շատին	\N	\N	3	1	Բաբիկ Մարգարյան	95004959	99050115	94599101	Սյուզաննա  Տիգրանյան	93241241				12	17	\N	\N
639	Չիվայի մ/դ	8	10	գ. Չիվա	\N	\N	3	2	Արսեն Ասատրյան	95004994	93565440		Մանուշակ Ղևոնդյան	93301158				11	12	\N	sonahdavtyan@gmail.com
640	Ռինդի մ/դ	8	10	գ. Ռինդ	\N	\N	3	2	Թադևոսյան Աշոտ	95005117	93827319		Անուշ Սաֆարյան	93761976				12	12	\N	sonahdavtyan@gmail.com
641	Սալլիի հմ/դ	8	10	գ. Սալլի	\N	\N	3	2	Մհեր Հովակիմյան	95005119	93493626	28121056	Էմմա Մինասյան	28121087				6	6	\N	sonahdavtyan@gmail.com
642	Քարագլխի մ/դ	8	10	գ. Քարագլուխ	\N	\N	3	2	Հովհաննիսյան Արման Սամսոնի	98884031			Մարինե Զաքարյան	77137715				9	12	\N	sonahdavtyan@gmail.com
643	Վարդահովիտի հմ/դ	8	10	գ. Վարդահովիտ	\N	\N	3	2	Մարգարյան Անահիտ	94384280			Տաթևիկ Մաթևոսյան	77922798				3	3	\N	sonahdavtyan@gmail.com
644	Բարձրունիի մ/դ	8	10	գ. Բարձրունի	\N	\N	3	2	Մարգարյան Անդրանիկ	95006147	93823359		Վարդուհի Հարությունյան	77562888				5	15	\N	sonahdavtyan@gmail.com
645	Ազատեկի մ/դ	8	10	գ. Ազատեկ	\N	\N	3	2	Ղազարյան Կարապետ	98108060			Հասմիկ Բադալյան	77717371				9	9	\N	sonahdavtyan@gmail.com
646	Արինի մ/դ	8	10	գ. Արին	\N	\N	3	2	Գևորգյան Սլբերտ	95006149	93472102		Լուսինե Գևորգյան	95006149	93472102			9	9	\N	sonahdavtyan@gmail.com
647	Արտավանի մ/դ	8	10	գ. Արտավան	\N	\N	3	2	Գրավիկ Հովհաննիսյան	94150540			Մարինե Խաչատրյան	94241576	94872229			7	7	\N	sonahdavtyan@gmail.com
648	Գնդեվազի մ/դ	3	10	գ. Գնդեվազ	\N	\N	3	2	Արևիկ Թունյան	93799825			Նաիրա Ներսիսյան	93652258				15	29	\N	sonahdavtyan@gmail.com
649	Գոմքի մ/դ	8	10	գ. Գոմք	\N	\N	3	2	Խաչատրյան Նվարդ	95006156	93587968		Վարդանյան Մխիթար	93530247				6	6	\N	sonahdavtyan@gmail.com
650	Զեդեայի հմ/դ	8	10	գ. Զեդեա	\N	\N	3	2	Սաղաթելյան Զոյա	95006157	98512796		Էդգար Մկրտչյան	41400031				5	5	\N	sonahdavtyan@gmail.com
651	Կարմրաշենի մ/դ	8	10	գ. Կարմրաշեն	\N	\N	3	2	Թովմասյան Արմեն	95006158	94040583		Գայանե Դավեյան	94040584				3	4	\N	sonahdavtyan@gmail.com
652	Մարտիրոսի մ/դ	8	10	գ. Մարտիրոս	\N	\N	3	2	Հակոբյան Թևոս	94444829	95006159		Հակոբյան Տաթևիկ	98885902				11	12	\N	sonahdavtyan@gmail.com
653	Սարավանի հմ/դ	8	10	գ. Սարավան	\N	\N	3	2	Փանդունց Աշոտ	95006162	94843861		Սոնա Փանդունց	93868481				5	9	\N	sonahdavtyan@gmail.com
654	Սերսի հմ/դ	8	10	գ. Սերս	\N	\N	3	2	Էմանուել Հարությունյան	95006163	93411644							2	5	\N	sonahdavtyan@gmail.com
655	Վազաշենի մ/դ	8	11	գ. Վազաշեն	\N	\N	3	2	Սարգիս Խաչատրյան	95003997	93478570		Արթուր Խաչատրյան	94995195				\N	\N	\N	jass.manasyan@gmail.com
656	Խաշթառակի մ/դ	8	11	գ. Խաշթառակ	\N	\N	3	2	Սամվել Սիմոնյան	94773234			Գրետա Հովակիմյան	94878877				4	6	\N	jass.manasyan@gmail.com
657	Բերքաբերի մ/դ	8	11	գ. Բերքաբեր	\N	\N	3	2	Հենրիկ Արզումանյան	093 18-94-28								\N	\N	\N	jass.manasyan@gmail.com
658	Ն. Ծաղկավանի մ/դ	8	11	գ. Ն. Ծաղկավան	\N	\N	3	2	Դավիթ Յոլչյան	95004117	93303624		Նառա Ռևազյան	77114978				\N	\N	\N	jass.manasyan@gmail.com
659	Լուսահովիտի հմ/դ	8	11	գ. Լուսահովիտ	\N	\N	3	2	Արզումանյան Արտակ	95004132	93673784		Պետրոսյան Լուսինե	77441601				\N	\N	\N	jass.manasyan@gmail.com
660	Կայանի մ/դ	8	11	գ. Կայանավան	\N	\N	3	2	Վարդանյան Լենա	93422924	95004139		Վանուհի Գուլինյան	98733037				6	10	\N	jass.manasyan@gmail.com
661	Կիրանցի հմ/դ	8	11	գ. Կիրանց	\N	\N	3	2	Բաբինյան Վոլոդյա	95004143	94979494		Մեսրոփ Շահնազարյան	94506004				\N	\N	\N	jass.manasyan@gmail.com
662	Հովքի մ/դ	8	11	գ. Հովք	\N	\N	3	2	Եթեր Նազարյան	95004145	077209060		էդիտա	55332494				8	8	\N	sarmen@hf.am
663	Թեղուտի մ/դ	8	11	գ. Թեղուտ	\N	\N	3	1	Թամրազյան Արգամ	95004147	93553286		Բագրատ Ստեփանյան	77070679				\N	\N	\N	jass.manasyan@gmail.com
664	Հաղարծինի մ/դ	8	11	գ. Հաղարծին	\N	\N	3	2	Թամանյան Գոհար	95004152	94555859		Ատոմ Թամրազյան	93207410				\N	\N	\N	jass.manasyan@gmail.com
665	Դիլիջանի թիվ 6 հմ/դ	8	11	ք. Դիլիջան Կամոյի փ. 131	\N	\N	3	1	Սարգսյան Սուսաննա	95004165	93614109		Աիդա Ավետիսյան	94191619				11	11	\N	jass.manasyan@gmail.com
666	Այրումի մ/դ	8	11	գ. Այրում	\N	\N	3	1	Բաղինյան Արարատ	95004169	91280652							\N	\N	\N	jass.manasyan@gmail.com
667	Բագրատաշենի թիվ 1 մ/դ	8	11	գ. Բագրատաշեն	\N	\N	3	2	Եսայան Ռազմիկ	95004172	77960419							\N	\N	\N	Armen.hayrapetyan@hf.am
668	Բագրատաշենի թիվ 2 հմ/դ	8	11	գ. Բագրատաշեն	\N	\N	3	2	Ալավերդյան Լիանա	95004183	77220461		Աիդա Մաթևոսյան	77608515				\N	\N	\N	jass.manasyan@gmail.com
669	Կոթի մ/դ	8	11	գ. Կոթի	\N	\N	3	3	Սիրադեղյան Մուշեղ	95004189	93059595		Սաշիկ Աբովյան	94835352				\N	\N	\N	jass.manasyan@gmail.com
670	Հաղթանակի մ/դ	8	11	գ. Հաղթանակ	\N	\N	3	2	Բիջոյան Գևորգ	95004221	93442934		Աիդա Եգանյան	93148902				\N	\N	\N	jass.manasyan@gmail.com
671	Զորականի մ/դ	8	11	գ. Զորական	\N	\N	3	2	Խոջայան Սիլվա	95004235	94336063		Հայրապետյան Նորա	98734531				\N	\N	\N	jass.manasyan@gmail.com
672	Ոսկեպարի մ/դ	8	11	գ. Ոսկեպար	\N	\N	3	2	Ալավերդյան Հարություն	95004274	98697738		Իրինա Աղամյան	93791882				9	11	\N	jass.manasyan@gmail.com
673	Բաղանիսի մ/դ	8	11	գ. Բաղանիս	\N	\N	3	2	Բայրամյան Ալվարդ	95004275	77433275		Սիլվա Իսրայելյամ	98023365				\N	\N	\N	jass.manasyan@gmail.com
674	Դովեղի մ/դ	8	11	գ. Դովեղ	\N	\N	3	2	Վարդանյան Սանասար	95004278	77179900		Անի Գորգինյան	55093747				\N	\N	\N	jass.manasyan@gmail.com
675	Ջուջևանի մ/դ	8	11	գ. Ջուջևան	\N	\N	3	2	Վարդանյան Վալերիկ	95004279	94901040		Զինա Բաբաջանյան	77407340				\N	\N	\N	jass.manasyan@gmail.com
676	Լճկաձորի հմ/դ	8	11	գ. Լճկաձոր	\N	\N	3	2	Մալինյան Ռուսլան	95004281	93233213							\N	\N	\N	jass.manasyan@gmail.com
677	Դեղձավանի հմ/դ	8	11	գ. Դեղձավան	\N	\N	3	2	Բեջանյան Ալիսա	95004286	94803736		Ալինա Բեջանյան	94803736				\N	\N	\N	jass.manasyan@gmail.com
678	Դեբեդավանի մ/դ	8	11	գ. Դեբեդավան	\N	\N	3	2	Հարությունյան Մարինե	95004283	77689267		Լիաննա Մովսեսյան	77158112				\N	\N	\N	jass.manasyan@gmail.com
679	Արծվաբերդի հմ/դ	8	11	գ. Արծվաբերդ	\N	\N	3	2	Ուզունյան Սիրանուշ	95004284	94943071		Արմինե Անանյան	93404349				6	14	\N	jass.manasyan@gmail.com
680	Այգեձորի մ/դ	8	11	գ. Այգեձոր	\N	\N	3	2	Եղիազարյան Ելմիրա	95004285	93398598		Վարսիկ Մամիկոնյան	77891557				1	6	\N	jass.manasyan@gmail.com
681	Չորաթանի մ/դ	8	11	գ. Չորաթան	\N	\N	3	2	Զարգարյան Վազգեն	93351690			Շուշան Քալանթարյան	098806611	93958593			19	22	\N	jass.manasyan@gmail.com
682	Չինարու մ/դ	8	11	գ. Չինարի	\N	\N	3	2	Դալլաքյան Գրետա	95004287	94357716		Աշխեն Պետրոսյան					\N	18	\N	jass.manasyan@gmail.com
683	Նավուրի մ/դ	8	11	գ. Նավուր	\N	\N	3	2	Մարդանյան Կամո	95004294	93338859							9	12	\N	jass.manasyan@gmail.com
684	Տավուշի մ/դ (Թովուզ)	8	11	գ. Տավուշ	\N	\N	3	2	Կլեկչյան Արաքսյա	94902255			Տաթևիկ Մխիթարյան	94009954	Գևորգ	091451581		12	12	\N	jass.manasyan@gmail.com
685	Վ. Ծաղկավանի մ/դ	8	11	գ. Վ. Ծաղկավան	\N	\N	3	2	Խաչատրյան Ռուբիկ	95004296	99091440		Գայանե Ղայթմազյան	91988366				\N	\N	\N	jass.manasyan@gmail.com
686	Վարագավանի մ/դ	8	11	գ. Վարագավան	\N	\N	3	2	Գրիգորյան Հայկ	95004319	94577501		Գրիգորյան Սարգիս	77788016				\N	\N	\N	jass.manasyan@gmail.com
687	Պառավաքարի մ/դ	8	11	գ. Պառավաքար	\N	\N	3	2	Նիգոյան Անգին	95004331	77159009		Ղազարյան Արմինե	93676774				8	10	\N	jass.manasyan@gmail.com
688	Իծաքարի հմ/դ	8	11	գ. Իծաքար	\N	\N	3	2	Դանիելյան Վարդան	95004336	94990034		Դանիելյան Ա.	77632158				1	5	\N	jass.manasyan@gmail.com
689	Աղավնավանքի մ/դ	8	11	գ. Աղավնավանք	\N	\N	3	5										\N	\N	\N	sonahdavtyan@gmail.com
690	Աճարկուտի հմ/դ	8	11	գ. Աճարկուտ	\N	\N	3	5	Վարդումյան Արտակ	95004516	94751555		Գյոզալ Քոչարյան					\N	\N	\N	sonahdavtyan@gmail.com
691	Խաչարձանի հմ/դ	8	11	գ. Խաչարձան	\N	\N	3	5	Լյովա Բուդաղյան	094337077								\N	\N	\N	evelina@hf.am
692	Երևանի թիվ 9 արհեստագործական պետական ուսումնարան	8	5	ք. Երևան, Վարդաշեն փ. 6,	\N	\N	3	1	Տոպոլյան Ռուզան	77010290	95008772	454365	Միքայել Միքայելյան	99241224				13	16	\N	jass.manasyan@gmail.com
693	Երևանի թիվ 10 արհեստագործական պետական ուսումնարան	8	5	ք. Երևան, Հր. Ներսիսյան 3	\N	\N	3	1	Բարսեղյան Արծրունի	95008773				095100851				\N	\N	\N	sarmen@hf.am
694	Երևանի մտավոր թերզարգացում ունեցող երեխաների թիվ 6 հատուկ/օժանդակ դպրոց	8	5	ք. Երևան, Ավան, Աճառյան 4	\N	\N	3	1	տկն. Արտաշեսյան	95008775	613210	6132220						\N	\N	\N	jass.manasyan@gmail.com
695	Երևանի պետական ֆինանսատնտեսագիտական քոլեջ	8	5	ք. Երևան, Ավան, Բաբաջանյա	\N	\N	3	1	Սերգեյ Խառատյան	627201	625700		Գրիգորյան	77621612				2	30	\N	jass.manasyan@gmail.com
696	Երևանի Պ. Չայկովսկու անվ. միջնակարգ երաժշտական դպրոց	8	5	ք. Երևան, Կողբացու 36	\N	\N	3	1	Կոստանդյան Մարտուն	95008778	532212							25	26	\N	jass.manasyan@gmail.com
697	Երևանի թիվ 4 արհեստագործական պետական ուսումնարան	8	5	ք. Երևան, Գյուլիքեխվյան 2	\N	\N	3	1	Ադյան Արմեն	95008756	99880909	634070	Ղազարյան Ռուզաննա	010634070				10	10	\N	jass.manasyan@gmail.com
698	Երևանի թիվ 1 արհեստագործական պետական ուսումնարան	8	5	ք. Երևան, Արշակունյաց 65	\N	\N	3	1	Դավթյան Սլավիկ	443701	91427235	95008754	Շողեր Խանզադյան	55524676				\N	\N	\N	jass.manasyan@gmail.com
699	Երևանի թիվ 5 արհեստագործական պետական ուսումնարան	8	5	ք. Երևան, Քանաքեռ ՀԷԿ, Բա	\N	\N	3	1	Ա. Հովհաննիսյան	91500680	95008753	239359	Հասմիկ	91484500				11	15	\N	jass.manasyan@gmail.com
700	Երևանի թիվ 6 արհեստագործական պետական ուսումնարան	8	5	ք. Երևան, Լենինականի 3	\N	\N	3	1	Սոնա Գրիգորյան	99110551	95008752		Նաջարյան Փարանձեմ	91632005				\N	\N	\N	jass.manasyan@gmail.com
701	Երևանի թիվ 8 արհեստագործական պետական ուսումնարան	8	5	ք. Երևան, Ավանեսովի 1	\N	\N	3	1	Մարիամ Հակոբյան	471732	91717381		Անահիտ	94265819				16	24	\N	jass.manasyan@gmail.com
702	Բյուրականի Թումանյանի անվ. մ/դ	8	1	գ. Բյուրական	\N	\N	3	2	Լուսինե Մկրտչյան	93131009	95006456		Անդրեասյան Արմեն	77775598				25	27	\N	sonahdavtyan@gmail.com
703	Կարբիի մ/դ	8	1	գ. Կարբի	\N	\N	3	1	Սաթենիկ Հակոբյան	94076870			Վարդանուշ Հովհաննիսյան	93832289				2	33	\N	sonahdavtyan@gmail.com
704	Կարինի մ/դ	8	1	գ. Կարին	\N	\N	3	2	Գալստյան Ալվարդ	93652188	23232018		Լիլիա Խաչատրյան	93691146				5	7	\N	sonahdavtyan@gmail.com
705	Ղազարավանի մ/դ	8	1	գ. Ղազարավան	\N	\N	3	2	Թամարա Սարգսյան	077795455			Արուսյակ Մովսիսյան	077474135				1	3	\N	sonahdavtyan@gmail.com
706	Ոսկեհատի մ/դ	8	1	գ. Ոսկեհատ	\N	\N	3	2	Նասեյան Նելլի	93640606	23261575		Մուշեղ Գասպարյան	98518540				4	8	\N	sonahdavtyan@gmail.com
707	Ոսկեվազի մ/դ	3	1	գ. Ոսկեվազ	\N	\N	3	2	Հովհաննիսյան Նաիրա	98000077			Արտավազդ Սարիբեկյան	093 830-730	099 830-730			6	40	\N	sonahdavtyan@gmail.com
708	Սասունիկի մ/դ	8	1	գ. Սասունիկ	\N	\N	3	2	Սեդա Սողոմոնյան	77611613			Հարությունյան Վարդի	93881845				7	8	\N	sonahdavtyan@gmail.com
709	Փարպիի Ղ. Փարպեցու անվ. մ/դ	8	1	գ. Փարպի	\N	\N	3	2	Արշակյան Նորիկ	93900737	0232/96351		Արմինե Հարությունյան	077002920	Օվսաննա Գալստյան	098587088		3	10	\N	sonahdavtyan@gmail.com
710	Օշականի Մ. Մաշտոցի անվ. մ/դ	8	1	գ. Օշական	\N	\N	3	2	Լիանա Մելիքյան	096420070			Գոհար Գալստյան	091034799				1	47	\N	sonahdavtyan@gmail.com
711	Օրգովի մ/դ	8	1	գ. Օրգոբվ	\N	\N	3	2	Սեդրակ Զարոյան	93955179	23231653		Հովհաննես Տոնոյան	093 26-06-41				2	6	\N	sonahdavtyan@gmail.com
712	Աշտարակի Գր. Ղափանցյանի անվ. թիվ 4 հմ/դ	8	1	ք. Աշտարակ Նարեկացու փող., 79 շենք	\N	\N	3	1	Մկրտչյան Աստղիկ	232 3 34-54	91831683	232 357-37	Նարինե Մարգարյան	94731621				5	15	\N	jass.manasyan@gmail.com
713	Աշտարակի թիվ 1 հտ/դ	8	1	ք. Աշտարակ, Տիգրան Մեծի փող., 25 շենք	\N	\N	3	1	Գայանե Հակոբյան	98902026	95006471	35064	Վարսիկ Շամիրյան	94136960				1	2	\N	jass.manasyan@gmail.com
714	Աշտարակի Ն. Աշտարակեցու անվ. թիվ 1 հմ/դ	8	1	ք. Աշտարակ, Պռոշյան 14	\N	\N	3	1	Բարսեղյան Սուսաննա	93-58-70-22	02323 8-18							20	22	\N	jass.manasyan@gmail.com
715	Աշտարակի Ն. Սիսակայանի անվ. թիվ 5 ա/դ	8	1	ք. Աշտարակ, Տիգրան Մեծի 9	\N	\N	3	1	Մարինե Սուքիասյան	02323 31-72	95006473	98658880	Սյուզաննա Թաթուլյան	91150700				2	31	\N	jass.manasyan@gmail.com
716	Աշտարակի Պ. Պռոշյանի անվ. թիվ 3 հմ/դ	8	1	ք. Աշտարակ, Չարենցի 1	\N	\N	3	1	Կարինե Ալմասյան	94285659			Անահիտ Գրիգորյան	93047033				13	13	\N	jass.manasyan@gmail.com
717	Աշտարակի Ս. Շահազիզի անվ. թիվ 2 հմ/դ	8	1	ք. Աշտարակ, Ալազանի 10	\N	\N	3	1	Բալայան Հովհաննես	93925252	0232/35574		Նարինե Մեսրոպյան	77255507				4	4	\N	jass.manasyan@gmail.com
718	Աղձիքի մ/դ	8	1	գ. Աղձիք	\N	\N	3	2	Սոնա Միքայելյան	99621138			Պետրոսյան Նելլի	94826044				2	10	\N	sonahdavtyan@gmail.com
719	Ապարանի Վ. Եղիազարյան անվ. թիվ 1 հմ/դ	8	1	ք. Ապարան	\N	\N	3	1	Արսեն Ալեքսանյան	77171750			Եփրեմյան Վարդան	55447717				8	8	\N	jass.manasyan@gmail.com
720	Արագածի թիվ 1 մ/դ	3	1	գ. Արագած	\N	\N	3	2	Սարգսյան Համլետ	0252/92281	93262607	95006389	Ծովինար Հովհաննիսյան	98459569				\N	7	\N	sonahdavtyan@gmail.com
721	Եղիպատրուշի մ/դ	8	1	գ. Եղիպատրուշ	\N	\N	3	2	Գրիգորյան Գնել	95006391	93838432		Անի Առաքելյան	095 53-46-36				13	14	\N	sonahdavtyan@gmail.com
722	Ծաղկաշենի Կ. Համբարձումյանի անվ. մ/դ	8	1	գ. Ծաղկաշեն	\N	\N	3	2	Զաքարյան Արթուր	94826176	95006392	25261950						\N	\N	\N	sonahdavtyan@gmail.com
723	Հարթավանի մ/դ	8	1	գ. Հարթավան	\N	\N	3	2	Հասմիկ Մամյան	55460824	95006393		Սուրիկ Ասատրյան	77993932				3	8	\N	sonahdavtyan@gmail.com
724	Քուչակի մ/դ	8	1	գ. Քուչակ	\N	\N	3	2	Լիլյա Գևորգյան	94826041			Անահիտ Հարությունյան	98811984				2	18	\N	sonahdavtyan@gmail.com
725	Ապարանի ա/դ	8	1	ք. Ապարան, Գարեգին Նժդեհի	\N	\N	3	1	Բարսեղյան Նվարդ	93625858	95006395		Լիլիթ Թադևոսյան	94916672				10	52	\N	jass.manasyan@gmail.com
726	Ապարանի թիվ 2 հմ/դ	8	1	ք. Ապարան	\N	\N	3	1	Նաիրա Ղազարյան	93721074	95006396	25225456	Աբրահամյան Մարինե	98810889				8	8	\N	jass.manasyan@gmail.com
727	Շենավանի մ/դ	8	1	գ. Շենավան	\N	\N	3	2	Ազատյան Ազատ	93271530	95006397	25293313	Աղաբեկյան Արմեն	77782245				10	18	\N	sonahdavtyan@gmail.com
728	Վերին Բազմաբերդի հմ/դ	8	1	գ. Վերին Բազմաբերդ	\N	\N	3	2	Հովհաննիսյան Կառլեն	99051211	98051211	0249/60025	Մերի Զաքարյան	77121597				1	7	\N	sonahdavtyan@gmail.com
729	Ագարակավանի մ/դ	8	1	գ. Ագարակավան (Վ. Ագարակ)	\N	\N	3	2	 Հունանյան Ջուլյետա /փոխտնօրեն/	041488573								\N	\N	\N	sonahdavtyan@gmail.com
730	Ակունքի մ/դ	8	1	գ. Ակունք	\N	\N	3	2	Սեյրան Մկրտչյան	77715031			Ասատրյան Աննա	77937242	24990136			2	5	\N	sonahdavtyan@gmail.com
731	Աշնակի Գ. Չաուշի անվ. մ/դ	3	1	գ. Աշնակ	\N	\N	3	2	Մարտիրոսյան Վահրամ	98168444	95008697		Արևիկ Սարգսյան	98270438				2	5	\N	sonahdavtyan@gmail.com
732	Արևուտի հմ/դ	8	1	գ. Արևուտ (Բարոժ)	\N	\N	3	2	Խաթուն Հարությունյան	94 82-62-81			Նարեկ Դավթյան	77331138				1	3	\N	sonahdavtyan@gmail.com
733	Դաշտադեմի Գ. Բաղդասարյանի անվ. մ/դ	8	1	գ. Դաշտադեմ	\N	\N	3	2	Հակոբյան Ռիմա	093085261			Արամ	077 08-10-80				2	4	\N	sonahdavtyan@gmail.com
734	Դդմասարի հմ/դ	3	1	գ. Դդմասար	\N	\N	3	2	Արմենուհի Տերտերյան	93000237			Գագիկ Տերտերյան	93231376				2	8	\N	sonahdavtyan@gmail.com
735	Եղնիկի հմ/դ	8	1	գ. Եղնիկ	\N	\N	3	2	Մանասյան Օնիկ	93 31-03-54	95009183							\N	\N	\N	sonahdavtyan@gmail.com
736	Զովասարի մ/դ	8	1	գ. Զովասար	\N	\N	3	2	Սարգսյան Ալբերտ	95 77-52-94	95009184		Անյա Գազարյան	77781908				4	7	\N	sonahdavtyan@gmail.com
738	Իրինդի Մ. Քոթանյանի անվ. մ/դ	8	1	գ. Իրինդ	\N	\N	3	2	Խոջաբեկյան Վիկտորիա	77302408	24973179		Գուլոյան Վարդուշ					\N	\N	\N	sonahdavtyan@gmail.com
739	Կանչի հմ/դ	8	1	գ. Կանչ (Գյալթո)	\N	\N	3	2	Շուշանիկ Գաբրիելյան	94443522			Անի Սաֆարյան	98739700				4	5	\N	sonahdavtyan@gmail.com
740	Կարմրաշենի մ/դ	8	1	գ. Կարմրաշեն	\N	\N	3	2		077509191	95008723	24999288						\N	\N	\N	Armen.hayrapetyan@hf.am
741	Հակկոի հմ/դ	8	1	գ. Հակկո	\N	\N	3	2	Լիդյա Գրիգորյան	77325626			Տարոն Գրիգորյան	94325626				3	3	\N	sonahdavtyan@gmail.com
742	Հացաշենի հմ/դ	8	1	գ. Հացաշեն	\N	\N	3	2	Եղիազարյան Թոռնիկ	93480232	95008997	093862766 new						\N	\N	\N	sarmen@hf.am
743	Մաստարաի մ/դ	8	1	գ. Մաստարա	\N	\N	3	2	Արսենյան Աննա	93341876	95008968		Հովհաննիսյան Հռիփսիմե	77513096				7	9	\N	sonahdavtyan@gmail.com
744	Շղարշիկի Ա. Մինասյանի անվ. մ/դ	8	1	գ. Շղարշիկ	\N	\N	3	2	Գդոյան Սամվել	94180318			Կարինե Սարգսյան	077921784				2	8	\N	Armen.hayrapetyan@hf.am
745	Սուսերի մ/դ	8	1	գ. Սուսեր	\N	\N	3	2	Մարինա Քոսյան	93907084			Գրիգորյան Թագուհի	77523077				1	4	\N	sonahdavtyan@gmail.com
746	Վերին Սասնաշենի Մ. Մանուկյանի հմ/դ	8	1	գ. Վ.Սասնաշեն	\N	\N	3	2	Յուրա Մանուկյան	093 84-95-54								\N	\N	\N	sonahdavtyan@gmail.com
747	Ցամաքասարի հմ/դ	8	1	գ. Ցամաքասար	\N	\N	3	2	Մարկոսյան Նազիկ	95008973	93482856		նելլի Ավետիսյան	94962209				4	9	\N	jass.manasyan@gmail.com
748	Ավթոնայի հմ/դ	8	1	գ. Ավթոնա	\N	\N	3	3	Լևոն Աբրահամյան	93874401	95008982		Սեդրակ Մարտիրոսյան	77110386				1	2	\N	sonahdavtyan@gmail.com
749	Արագածավանի թիվ 1 մ/դ	8	1	գ. Արագածավան	\N	\N	3	2	Խաչատրյան Ասպրամ	77782788	95008983	0249/05122	Անահիտ Սարգսյան	93389988				13	24	\N	sonahdavtyan@gmail.com
750	Արագածավանի թիվ 2 մ/դ	8	1	գ. Արագածավան	\N	\N	3	2	Ա. Տեր-Մարիտիրոսյան	93129229	95008981		Ղազարյան Դավիթ	77095937				2	6	\N	sonahdavtyan@gmail.com
751	Արեգի մ/դ	8	1	գ. Արեգ	\N	\N	3	2	Վարդուշ Սարգսյան	77031275			Քրիստինե Կարապետյան	94017840				4	11	\N	sonahdavtyan@gmail.com
752	Արտենիի թիվ 1 մ/դ	8	1	գ. Արտենի	\N	\N	3	2	Շատոյան Մանուշակ	93771791	95008961		Լուսիկ Առաքելյան	77088520				1	31	\N	sonahdavtyan@gmail.com
753	Դավիթաշենի մ/դ	8	1	գ. Դավիթաշեն	\N	\N	3	2	Կարապետյան Հրաչուհի	94941067	95008979		Հերմինե Հովհաննիսյան	095919778	077919778			1	4	\N	jass.manasyan@gmail.com
754	Կաթնաղբյուրի Մ. Գալշոյանի անվ. մ/դ	8	1	գ. Կաթնաղբյաուր	\N	\N	3	2	Հախոյան Աշոտ	95430349	95008978	24973575						2	6	\N	sonahdavtyan@gmail.com
755	Նոր Արթիկի մ/դ	8	1	գ. Նոր Արթիկ	\N	\N	3	2	Արշալույս Հակոբյան	93247646			Գոհար Այվազյան	94708630				2	7	\N	sonahdavtyan@gmail.com
756	Սորիկի հմ/դ	8	1	գ. Սորիկ	\N	\N	3	2	Կարապետյան Վարդան	94827818	95008979		Էլիզա Նահապետյան	77436554				1	1	\N	sonahdavtyan@gmail.com
757	Թալինի ա/դ	8	1	ք. Թալին	\N	\N	3	1	Աննա Կնյազյան	93596788	95008974		Լալա Խուրշուդյան	91131326				40	43	\N	jass.manasyan@gmail.com
758	Թալինի թիվ 2 հմ/դ	8	1	ք. Թալին	\N	\N	3	1	Անահիտ Հարությունյան	77073596			Գայանե Ավդալյան	91646137				4	9	\N	jass.manasyan@gmail.com
759	Թալինի Մ. Գորկու անվ. թիվ 1 հմ/դ	8	1	ք. Թալին	\N	\N	3	1	Ֆահրադյան Գագիկ	91655911	95006434		Տիգրան Սարգսյան	91765176				25	30	\N	jass.manasyan@gmail.com
760	Արարատի թիվ 1 մ/դ	8	2	գ. Արարատ, Վ. Սարգսյանի փ	\N	\N	3	1	Վարժապետյան Դավիթ	95004568	94388337		Մելքոնյան Մարետա	98665453				3	14	\N	sonahdavtyan@gmail.com
761	Այգավանի մ/դ	8	2	գ. Այգավան, Սերոբ Հովհաննիսյան 43	\N	\N	3	1	Ավետիսյան Կարինե	93211242	95007832		Անի Հարությունյան	93350460	055010271			7	10	\N	Armen.hayrapetyan@hf.am
762	Ավշարի մ/դ	8	2	գ. Ավշար	\N	\N	3	1	Աղաբեկյան Գեղեցիկ	55047704	95005847		Գոհար Թամազյան	55335529				6	16	\N	sonahdavtyan@gmail.com
763	Արալեզի մ/դ	8	2	գ. Արալեզ	\N	\N	3	2	Գուլաբյան Տիգրան	95005787	91753295		Լիլիթ Մանուկյան	94134929				\N	\N	\N	sonahdavtyan@gmail.com
764	Գոռավանի մ/դ	8	2	գ. Գոռավան, Գևորգ Մարզպետունու 8	\N	\N	3	1	Աթոյան Գառնիկ	95005782	94673155		Նունե Կարապետյան	077 21-97-18				\N	\N	\N	sonahdavtyan@gmail.com
765	Դաշտաքարի մ/դ	8	2	գ. Դաշտաքար	\N	\N	3	2	Ղիմոյան Վարուժան	95005776	99002886		Նարինե Արթենյան	93651167				6	10	\N	sonahdavtyan@gmail.com
766	Եղեգնավանի մ/դ	8	2	գ. Եղեգնավան	\N	\N	3	2	Զաքարյան Մանվել	95005779	93646546		Սյուզաննա Գալստյան	93777265				1	7	\N	sonahdavtyan@gmail.com
767	Երասխի մ/դ	8	2	գ. Երասխ	\N	\N	3	2	Լևոնյան Մարիամ	95005773	55109901		Արման Մուրադյան	55104401				5	6	\N	sonahdavtyan@gmail.com
768	Լուսառատի մ/դ	8	2	գ. Լուսառատ	\N	\N	3	2	Վերգուշ Առաքելյան	95005767	77500477		Հասմիկ Էմիշյան	94789767				8	11	\N	sonahdavtyan@gmail.com
769	Նոյակերտի մ/դ	8	2	գ. Նոյակերտ	\N	\N	3	2	Իսաջանյան Արթուր	95005762	93579731		Դումանյան Լիլիթ	93017673				3	10	\N	sonahdavtyan@gmail.com
770	Նոր Կյանքի մ/դ	8	2	գ. Նոր Կյանք	\N	\N	3	1	Տեր-Նիկողոսյան Գայանե	95005753	91234283		Հասմիկ Ղազարյան					\N	\N	\N	sonahdavtyan@gmail.com
771	Նոր Ուղիի մ/դ	8	2	գ. Նոր Ուղի	\N	\N	3	2	Մայիլյան Անահիտ	55403099	55403099		Լ. Սարգսյան	94120203				6	11	\N	sonahdavtyan@gmail.com
772	Ոսկետափի թիվ 1 հմ/դ	8	2	գ. Ոսկետափ	\N	\N	3	1	Պետրոսյան Թորգոմ	94553228			Վարթեր Հովակիմյան	77614443				1	9	\N	jass.manasyan@gmail.com
773	Ոսկետափի ա/դ	3	2	գ. Ոսկետափ	\N	\N	3	1	Ազարյան Սերգեյ	93459141	93566070		Ռուստամյան Արմինե	77304053				6	25	\N	sonahdavtyan@gmail.com
774	Ուրցաձորի մ/դ	8	2	գ. Ուրցաձոր	\N	\N	3	2	Մկրտչյան Կարինե	95005739	94316355		Սեդա Սիմոնյան	98388611				10	10	\N	sonahdavtyan@gmail.com
775	Սիսավանի մ/դ	8	2	գ. Սիսավան	\N	\N	3	1	Գալստյան Նարինե	95003124	91589551		Տիգրան Թորոսյան	93541631				\N	\N	\N	sonahdavtyan@gmail.com
776	Սուրենավանի մ/դ	8	2	գ. Սուրենավան	\N	\N	3	2	Ավետիսյան Վալյա	95003135	93200394		Գոհար Ալոյան	55345313	099 34-53-13			10	24	\N	sonahdavtyan@gmail.com
777	Վանաշենի մ/դ	8	2	գ. Վանաշեն	\N	\N	3	2	Մանուկյան Անիկ	95003181	93348818		Հասմիկ Նահապետյան	94755676				\N	\N	\N	sonahdavtyan@gmail.com
778	Տափերականի մ/դ	8	2	գ. Տափերական	\N	\N	3	1	Սարգսյան Մուշեղ	95005738	93201482		Մարինե Սարգսյան	95901530				\N	\N	\N	sonahdavtyan@gmail.com
779	Փոքր Վեդու մ/դ	8	2	գ. Փոքր Վեդի	\N	\N	3	2	Հարությունյան Արթուր	95001645	91200856		Մուրադյան Գոհար	094-80-43-95				\N	\N	\N	sonahdavtyan@gmail.com
780	Արարատի 3 հմ/դ	8	2	ք. Արարատ, Խանջյան 61	\N	\N	3	1	Հովհաննիսյան Գոհարիկ	95003416	93814921		Սարգսյան Գայանե	98388394				1	10	\N	jass.manasyan@gmail.com
781	Արարատի ա/դ	8	2	ք. Արարատ, Խանջյան 67	\N	\N	3	1	Շադյան Իլյիչ	95003257	77872707		Լիլիթ Գալստյան	91544054				\N	\N	\N	jass.manasyan@gmail.com
782	Արարատի թիվ 4 հմ/դ	8	2	ք. Արարատ, Խանջյան 63	\N	\N	3	1	Փանոսյան Նուրիցա	95003234	94224367		Մարիանա Անդրեասյան	93570715				\N	\N	\N	jass.manasyan@gmail.com
783	Արարատի թիվ 5 մ/դ	8	2	ք. Արարատ, ՈԿՖ-ի բանավան	\N	\N	3	1	Զադոյան Հասմիկ	95003219	55300763		Մելքոնյան Ռուզաննա	093 17-05-17				8	12	\N	jass.manasyan@gmail.com
784	Արարատի թիվ 1 հմ/դ	8	2	ք. Արարատ, Շահումյան 41	\N	\N	3	1	Նաբիկյան Նունե	95003195	94213500		Դիլանյան Մարիամ	98752156				2	8	\N	jass.manasyan@gmail.com
785	Արարատի Պ. Սևակի անվ. թիվ 2 հմ/դ	8	2	ք. Արարատ, Շահումյան 16	\N	\N	3	1	Հովհաննիսյան Զինա	95003184	91234310	95551969	Սարգսյան Սյուզաննա	94702268				13	24	\N	jass.manasyan@gmail.com
786	Վեդու թիվ 2 հմ/դ	8	2	ք. Վեդի, Կասյան 4	\N	\N	3	1	Նոնա Ադրեասյան	95002997	93493447		Աստղիկ Սահրադյան	0234/6-52-72				\N	\N	\N	jass.manasyan@gmail.com
787	Վեդու Մ. Խաչատրյանի անվ.  ա/դ	8	2	ք. Վեդի	\N	\N	3	1	Ալեքսանյան Արմեն	95002992	55997744		Գայանե Կիրակոսյան	93975226				13	38	\N	jass.manasyan@gmail.com
788	Այգեզարդի Զ. Ղարիբյանի անվ. մ/դ	8	2	գ. Այգեզարդ	\N	\N	3	2	Նունե Բաբլոյան	93592243			Սյուզաննա Հովհաննիսյան	91009392				2	6	\N	sonahdavtyan@gmail.com
789	Այգեպատի մ/դ	8	2	գ. Այգեպատ	\N	\N	3	2	Անահիտ Հովհաննիսյան	93496022			Հռիփսիմե Բունիաթյան	93080165				1	8	\N	sonahdavtyan@gmail.com
790	Արաքսավանի մ/դ	8	2	գ. Արաքսավան	\N	\N	3	2	Մինասյան Մարտին	95005719	93970027		Գրիգորյան Անի	98475554		9		1	9	\N	sonahdavtyan@gmail.com
791	Բյուրավանի մ/դ	8	2	գ. Բյուրավան	\N	\N	3	2	Նվարդ Մելիքյան	77361979			Մարիամ Խաչատրյան	93881599				2	5	\N	sonahdavtyan@gmail.com
792	Դալարի մ/դ	8	2	գ. Դալար	\N	\N	3	1	Հախվերդյան Շողիկ	95005712	94008385		Լուսինե Հունանյան	077778241	055064403			8	15	\N	sonahdavtyan@gmail.com
1062	Երևանի Թելմանի անվ. թիվ 13 հմ/դ	8	5	Արշակունյաց 20	\N	\N	3	1			95006353	525663						\N	\N	\N	jass.manasyan@gmail.com
793	Դիմիտրովի մ/դ	8	2	գ. Դիմիտրով	\N	\N	3	1	Մկրտչյան Հայկ	95005167	93105422		Գոհար Բուդաղյան	94199477				\N	\N	\N	sonahdavtyan@gmail.com
794	Կանաչուտի Գ. Եփրեմյանի անվ. մ/դ	8	2	գ. Կանաչուտ	\N	\N	3	2	Սուսաննա Խաչատրյան	95005157	94726004		Էլմիրա Գալստյան	093 53-07-42				\N	\N	\N	sonahdavtyan@gmail.com
796	Նշավանի մ/դ	8	2	գ. Նշավան	\N	\N	3	2	Մարինե Բագրատյան	95005152	94160797		Ջուլիետա Մանուկյան	77198319				3	5	\N	sonahdavtyan@gmail.com
797	Նորաշենի մ/դ	8	2	գ. Նորաշեն	\N	\N	3	2	Գոհարիկ Հակոբյան	95005149	91569687		Նաիրա Մանուկյան	77 844570				1	36	\N	sonahdavtyan@gmail.com
798	Շահումյանի մ/դ	8	2	գ. Շահումյան	\N	\N	3	1	Ստեփանյան Վարսիկ	095820886			Նինել Ծատուրյան	077963997				3	5	\N	sonahdavtyan@gmail.com
799	Ոստանի մ/դ	8	2	գ. Ոստան	\N	\N	3	2	Գեղամ Արշակյան	95005132	93806055		Հավաքիմյան Լուսինե	55237488				\N	\N	\N	sonahdavtyan@gmail.com
800	Վարդաշենի մ/դ	8	2	գ. Վարդաշեն	\N	\N	3	2	Սոֆիա Հովսեփյան	95005131	91613464		Մերի	94030375				1	1	\N	sonahdavtyan@gmail.com
801	Քաղցրաշենի Սամվել Գևորգյանի անվ. մ/դ	8	2	գ. Քաղցրաշեն	\N	\N	3	2	Թադեւոս Աբրահամյան	98990063			Արմինե Խաչատրյան	93554602				1	9	\N	sonahdavtyan@gmail.com
802	Ազատավան մ/դ	8	2	գ. Ազատավան, Մաշտոցի փ.	\N	\N	3	1	Կարապետյան Արմեն	93247859			Զեփյուր Խաչատրյան	93938593				1	19	\N	sonahdavtyan@gmail.com
803	Արտաշատի Ա. Գոլեցյանի անվ. թիվ 1 մ/դ	8	2	ք. Արտաշատ, Մարքսի 13	\N	\N	3	1	Տինա Մարգարյան	077003169	-22567							\N	\N	\N	sarmen@hf.am
804	Արտաշատի թիվ 3 մ/դ	8	2	ք. Արտաշատ, Օգոստոսի 23	\N	\N	3	1	Միրզոյան Մարգուշ	95008689	93808977		Կարեն Միրզոյան	77390005				7	13	\N	jass.manasyan@gmail.com
805	Արտաշատի թիվ 4 ա/դ	8	2	ք. Արտաշատ, Տերյան 1	\N	\N	3	1	Նարինե Մուրադյան	093740039			Արմենուհի Հայրապետյան	093086737				8	15	\N	jass.manasyan@gmail.com
806	Արտաշատի թիվ 5 մ/դ	8	2	ք. Արտաշատ, Աճառյան 1	\N	\N	3	1	Արմինե Դավթյան	93450808			Կարինե Աբրահամյան	95594621				6	20	\N	jass.manasyan@gmail.com
807	Արտաշատի թիվ 6 մ/դ	8	2	ք. Արտաշատ, Մարքսի 20	\N	\N	3	1	Մուրադյան Նարինե	95008684	93740039		Արմենւհի Հայրապետյան	93086737				\N	\N	\N	jass.manasyan@gmail.com
808	Արտաշատի Թումանյանի անվ. թիվ 2 մ/դ	8	2	ք. Արտաշատ Մռավյան 32	\N	\N	3	1	Նիկողոսյան Նաիրա	95008683	55220033		Ալինա Մովսիսյան	77156876				10	10	\N	jass.manasyan@gmail.com
809	Դիտակի մ/դ	8	2	գ. Դիտակ	\N	\N	3	2	Հովհաննիսյան Սարգիս	95008682	96721313	077 72-13-13	Բալայան Ալինա	94335989				4	6	\N	sonahdavtyan@gmail.com
810	Հովտաշենի մ/դ	8	2	գ. Հովտաշեն	\N	\N	3	2	Հովհաննիսյան Վիրաբ	95008681	55397420		Պողոսյան Ժաննա	55626017				1	10	\N	sonahdavtyan@gmail.com
811	Մասիսի մ/դ	8	2	գ. Մասիս	\N	\N	3	2	Խաչատրյան Ռուզաննա	95008679	93540533		Մարինե Միքայելյան	94545579				5	10	\N	sonahdavtyan@gmail.com
812	Մխչյանի մ/դ	8	2	գ. Մխչյան	\N	\N	3	1	Ավագյան Աննա	95008678	93095050							\N	\N	\N	sonahdavtyan@gmail.com
813	Մրգավանի մ/դ	8	2	գ. Մրգավան	\N	\N	3	1	Հարությունյան Գայանե		91777002		Վարսենիկ Դանիելյան	93413439				\N	\N	\N	sonahdavtyan@gmail.com
814	Մրգավետի մ/դ	8	2	գ. Մրգավետ	\N	\N	3	1	Զոհրաբյան Վրեժ	95008675	93682728		Անի Մելքոնյան	94656478				5	7	\N	sonahdavtyan@gmail.com
815	Նարեկի մ/դ	8	2	գ. Նարեկ	\N	\N	3	2	Դավթյան Անուշ	95008674	94748015	0235 6-15-29	Գայանե Ամրոյան, Արևիկ Հակոբյան	77437662	099 88-41-43			1	4	\N	sonahdavtyan@gmail.com
816	Ջրաշենի մ/դ	8	2	գ. Ջրաշեն	\N	\N	3	2	Գալստյան Երվանդ	95008673	94667584		Հովհաննիսյան Վեներա	91042007				1	8	\N	sonahdavtyan@gmail.com
817	Այգեստանի Խ. Միքայելյանի անվ. մ/դ	8	2	գ. Այգեստան	\N	\N	3	2	Մանուկյան Լեյլի	95008671	98023637		Մարտիրոսյան Լուսինե	94977724				3	11	\N	sonahdavtyan@gmail.com
818	Արևշատի մ/դ	8	2	գ. Արևշատ	\N	\N	3	2	Սուսաննա Դավթյան	95008672	91796869		Հրանուշ Գրիգորյան	99074115				3	8	\N	sonahdavtyan@gmail.com
819	Բաղրամյանի մ/դ	8	2	գ. Բաղրամյան	\N	\N	3	1	Թադեվոսյան Ռուզաննա	95008669	91494409		Անահիտ Պետրոսյան	77019047				5	13	\N	sonahdavtyan@gmail.com
820	Բերդիկի մ/դ	8	2	գ. Բերդիկ	\N	\N	3	2	Մինասյան Սեդա	094818868	91818860	95008667	Համասփյուր Եփրեմյան	094094973				2	5	\N	sonahdavtyan@gmail.com
821	Գետազատի մ/դ	8	2	գ. Գետազատ	\N	\N	3	2	Մարգարյան Թինա	77003169			Լիլիթ Միխայելյան	77074388				3	3	\N	sonahdavtyan@gmail.com
822	Դեղձուտի մ/դ	3	2	գ. Դեղձուտ	\N	\N	3	2	Մելքոնյան Սրբուհի	95008664	94060558		Էդիկ Մելքոնյան	98485112	99116171			4	4	\N	sonahdavtyan@gmail.com
823	Հնաբերդի մ/դ	8	2	գ. Հնաբերդ	\N	\N	3	2	Եղիազարյան Վարսիկ	98705011	95008662		Մխիթարյան Հասմիկ	55646260				5	10	\N	sonahdavtyan@gmail.com
824	Վ. Արտաշատի մ/դ	8	2	գ. Վ. Արտաշատ	\N	\N	3	2	Եսայան Գրիգոր	95008663	93096691		Սեդա Թամազյան	77338608				\N	\N	\N	sonahdavtyan@gmail.com
825	Վերին Դվինի մ/դ	8	2	գ. Վ. Դվին	\N	\N	3	2	Լազարեվա Աիդա	95007651	93041667		Արթուր Յուխանաեվ	98986046	0235/64404			2	3	\N	sonahdavtyan@gmail.com
826	Այնթապի Բյուզանդ Մարգարյանի անվ. 2 մ/դ	8	2	գ. Այնթապ, 4-րդ փողոց	\N	\N	3	1	Սահակյան Ալվարդ	95008651	93525897	0236-63125	Արման Միքայելյան	91948032				0	21	\N	sonahdavtyan@gmail.com
827	Այնթապի թիվ 1 մ/դ	8	2	գ. Այնթապ	\N	\N	3	1	Շահբազյան Լիլիա	95008649	93630101		Ադելինա Շահինյան	96006968				2	28	\N	sonahdavtyan@gmail.com
828	Արբաթի Զաքարյանի անվ. մ/դ	8	2	գ. Արբաթ	\N	\N	3	2	Կիրակոսյան Արմեն	95008648	93939331		Գոհար Սարգսյան	94212545				\N	\N	\N	sonahdavtyan@gmail.com
829	Արևաբույրի Թադևոսյանի անվ. մ/դ	8	2	գ. Արևաբուլր	\N	\N	3	1	Աբգարյան Նվեր	95008647	93093885		Վարսենիկ Շերոյան	98784165				3	9	\N	sonahdavtyan@gmail.com
830	Գեղանիստի մ/դ	8	2	գ. Գեղանիստ	\N	\N	3	2	Իսպիրյան Ժորա	95008646	93626290		Նելլի Ալոյան	55994458				\N	\N	\N	sonahdavtyan@gmail.com
831	Դաշտավանի Տոնոյանի անվ. մ/դ	3	2	գ. Դաշտավան	\N	\N	3	2	Շահվերդյան Լաուրա	95008645	93100958		Նառա	77380123				1	1	\N	sarmen@hf.am
832	Դարակերտի մ/դ	8	2	գ. Դարակերտ	\N	\N	3	2	Անտոնյան	93569056			Փիրուզա Սեյրանյան	77918786				1	11	\N	sonahdavtyan@gmail.com
833	Զորակի մ/դ	8	2	գ. Զորակ	\N	\N	3	2	Բաբախանյան Տիգրան	95008642	93525209		Ավագյան Անժելա	0236/60013	094 40-27-19			1	10	\N	sonahdavtyan@gmail.com
834	Հայանիստի մ/դ	3	2	գ. Հայանիստ	\N	\N	3	2	Ավետիսյան Արմինե	094527000		95008639	Ելենա Գրիգորյան	93464425	099464425			1	10	\N	sonahdavtyan@gmail.com
835	Հովտաշատի մ/դ	8	2	գ. Հովտաշատ	\N	\N	3	2	Մկրտչյան Արմենուհի	95008641	93376752		Հայարփի Ստեփանյան	93113402				\N	\N	\N	sonahdavtyan@gmail.com
836	Ղուկասավանի մ/դ	3	2	գ. Ղուկասավան	\N	\N	3	1	Ահարոնյան Ռուզաննա	093050461	95008638		Գայանե Արուստամյան		94385435	055461273		1	1	\N	sarmen@hf.am
837	Մարմարաշենի մ/դ	8	2	գ. Մարմարաշեն	\N	\N	3	1	Համբարձումյան Աննա	95008637	93976480		Հելնար Կոնստանյան	93800516				\N	\N	\N	sonahdavtyan@gmail.com
838	Նիզամիի մ/դ	8	2	գ. Նիզամի	\N	\N	3	2	Խաչատրյան Թամարա	95008636	93100172		Նունե Ժանոյան	094 89-09-11				1	4	\N	sonahdavtyan@gmail.com
839	Նոր Խարբերդ թիվ 2 մ/դ	8	2	գ. Նոր Խարբերդ	\N	\N	3	1	Միրիջանյան Սոնա	93056515			Մնացականյան Կիմա	95103124				2	32	\N	sonahdavtyan@gmail.com
840	Նոր Խարբերդի թիվ 1 մ/դ	8	2	գ. Նոր Խարբերդ	\N	\N	3	1	Սարգսյան Մարինե	94667667	95008634		Հոթարյան Արևիկ	94743306	55545349			\N	\N	\N	sonahdavtyan@gmail.com
841	Նոր Կյուրինի մ/դ	8	2	գ. Նոր Կյուրին	\N	\N	3	2	Հակոբյան Վարդուշ	95008632	94839434		Գևորգյան Ելենա	94624643				1	3	\N	sonahdavtyan@gmail.com
842	Նորաբացի Մ. Ապելյանի անվ. մ/դ	8	2	գ. Նորաբաց	\N	\N	3	2	Մովսիսյան Մարինե	93882725			Լուսինե Գրիգորյան	93882725				1	13	\N	sonahdavtyan@gmail.com
843	Նորամարգի մ/դ	3	2	գ. Նորամարգ	\N	\N	3	2	Գալստյան ծովինար	55478770	0236 64636		Ալլախվերդյան Էլեոնորա	94246325				1	4	\N	sonahdavtyan@gmail.com
844	Ռանչպարի մ/դ	8	2	գ. Ռանչպար, 6-րդ փ. I փակ	\N	\N	3	2	Դալլաքյան Սվետա	95008628	93329126		Վյաչեսլավ Իսրաելյան	94227818				4	4	\N	sonahdavtyan@gmail.com
845	Սայաթ-Նովայի մ/դ	8	2	գ. Սայաթ-Նովա	\N	\N	3	2	Վարդազարյան	93763267			Թամար	098081390				6	10	\N	sarmen@hf.am
846	Սիսի մ/դ	8	2	գ. Սիս	\N	\N	3	2	Սարգսյան Սարգիս	95008715	55088900		Նաիրա Առաքելյան	93099946				3	3	\N	sonahdavtyan@gmail.com
847	Մասիսի թիվ 2 հմ/դ	8	2	ք. Մասիս, Դպրոցականների 1	\N	\N	3	1	Նազարյան Արևհատ	93570502	0236/4-26-02	95008716	Արմեն Պողոսյան	94181922				12	26	\N	jass.manasyan@gmail.com
848	Մասիսի թիվ 3 հմ/դ	8	2	ք. Մասիս, Դպրոցականների 2	\N	\N	3	1	Մուրադյան Էմմա	93225282	95008717		Մարգարիտա Թանգյան	93087218				\N	\N	\N	jass.manasyan@gmail.com
849	Մասիսի թիվ 4 հմ/դ	8	2	ք. Մասիս, 5-րդ փողոց	\N	\N	3	1	Բարսեղյան Նարինե	95008718	93736543		Իրինա Գրիգորյան	94105022				3	3	\N	jass.manasyan@gmail.com
850	Մասիսի թիվ 5 ա/դ	8	2	ք. Մասիս, 4-րդ փողոց	\N	\N	3	1	Ազնավուրյան Ալինա	95008719	94942425		Հակոբյան Սվետա	98713370				9	14	\N	jass.manasyan@gmail.com
851	Մասիսի թիվ 6 հմ/դ	8	2	ք. Մասիս, Կայարանի թաղամաս	\N	\N	3	1	Բաբայան Աղունիկ	95008721	93098560		Նունե Հակոբյան	93239272				\N	\N	\N	jass.manasyan@gmail.com
852	Մասիսի Մաշտոցի անվ. թիվ 1 հմ/դ	8	2	ք. Մասիս, 4-րդ փողոց	\N	\N	3	1	Արևյան Թամարա	95008724	95962400		Հասմիկ Զաքարյան	99014071				\N	\N	\N	jass.manasyan@gmail.com
853	Արգավանդի մ/դ	8	2	գ. Արգավանդ	\N	\N	3	1	Համբարյան Սմբուլ	95008984	55656000							\N	\N	\N	sonahdavtyan@gmail.com
854	Վեդիի թիվ 1 Մարգարյանի անվ. հմ/դ	8	2	ք. Վեդի, Արցախի 5	\N	\N	3	1	Պապոյան Ալվարդ	95005726	93032100		Վահագն Օհանյան	077-55-00-75				\N	\N	\N	jass.manasyan@gmail.com
855	Լուկաշինի մ/դ	8	3	գ. Լուկաշին	40.1849220000000003	44.0080979999999968	3	2	Պետրոսյան Արմինե	93208986			Ժաննա Հովհաննիսյան	77473148				2	\N	\N	\N
856	Խանջյանի մ/դ	8	3	գ. Խանջյան	40.1857320000000016	43.9794020000000003	3	2	Աննա Հովսեփյան	98003272			Եղիազարյան Սյուզաննա	77932430				1	\N	\N	\N
857	Հայկավանի մ/դ	8	3	գ. Հայկավան	40.0932919999999982	44.0425570000000022	3	2	Սոֆյա Ալավերդյան	94331004			Հասմիկ օպերատոր չի	77312424	Շուշան օպերատոր 	098060898		0	\N	\N	sarmen@hf.am
858	Նորապատի մ/դ	8	3	գ. Նորապատ	40.1373439999999988	44.0396250000000009	3	2	Սահակյան Նաիրա	98577300			Արամ Ռուբենյան	93278453				8	\N	\N	\N
859	Ալաշկերտի Հ. Քոչարի անվ. մ/դ	8	3	գ. Ալաշկերտ	40.1112340000000032	44.0556160000000006	3	2	Ալինա Նաջարյան				Նաիրա Բաղդասարյան	93335095				1	\N	\N	\N
860	Արմավիրի «Տիգրան Մեծի» անվան ռազմամարզական հատուկ վարժարան	8	3	ք. Արմավիր, Աբովյան 149	40.1615419999999972	44.0226479999999967	3	1	Կորյուն Ղումաշյան	77212665			Բարեյան Ա	093212665		20		1	\N	\N	\N
1680	Գյումրի Գալա	4	8		40.8071100000000015	43.846390999999997	3	1										\N	\N	\N	jass.manasyan@gmail.com
861	Արմավիրի թիվ 1 հտ/դ	8	3	ք. Արմավիր, Գորկու 5-րդ նրբ. 14 շենք	40.1607190000000003	44.0478400000000008	3	1	Լ. Ասատրյան	93750787			Սարգսյան Սուսաննա	99827592				3	\N	\N	\N
862	Արմավիրի թիվ 10 հմ/դ	8	3	ք. Արմավիր, Սայաթ-Նովա 7	40.1473330000000033	44.0516440000000031	3	1	Լիանա Հայրապետյան	93555456			Տաթևիկ Դավթյան	93916478				3	\N	\N	\N
863	Արմավիրի թիվ 3 հմ/դ	8	3	ք. Արմավիր, Կոմիտաս 27	40.1631309999999999	44.0367839999999973	3	1	Բաղդասարյան Արմեն	93746762			Գայանե Թադևոսյան	93655321				3	\N	\N	\N
864	Արմավիրի Վ. Բախշյանի անվ. թիվ 2 հմ/դ	8	3	ք. Արմավիր, Հանրապետության 26	40.1540600000000012	44.0382979999999975	3	1	Գևորգ Առաքելյան	93936879			Աննա Հայրապետյան	93542329				1	\N	\N	\N
865	Հացիկի Ա. Բաղդասրյանի անվ. մ/դ	8	3	գ. Հացիկ	40.1675779999999989	43.9533539999999974	3	2	Տաթևիկ Մկրտչյան	93802783			Սիրան Բաղդասարյան	93648566				1	\N	\N	\N
866	Արմավիրի Ա. Օզանյանի անվ. թիվ 5 հմ/դ	8	3	ք. Արմավիր, Հանրապետության 20	40.1519779999999997	44.0349629999999976	3	1	Իվանյան Մաշա	93999508			Ռուզան	77039765				20	\N	\N	\N
867	Արմավիրի թիվ 4 ա/դ	8	3	ք. Արմավիր, Շահումյան 46	40.149363000000001	44.0354249999999965	3	1	Անի Քալաշյան				Եվա Խաչատրյան	94186769				5	\N	\N	\N
868	Արմավիրի թիվ 6 հմ/դ	8	3	ք. Արմավիր, Շահումյան 20	40.146808	44.0419059999999973	3	1	Հասմիկ Գասպարյան	98007919			Մանյան Խաչատրյան	91472016				8	\N	\N	\N
869	Արմավիրի թիվ 8 հմ/դ	8	3	ք. Արմավիր, Աբովյան 182	40.1598279999999974	44.0303159999999991	3	1	Աննա Խաչատրյան				Աննա Գևորգյան	93783468				6	\N	\N	\N
870	Արմավիրի թիվ 9 հմ/դ	8	3	ք. Արմավիր, Գորկու 5-րդ նրբ.	40.161403	44.0467239999999975	3	1	Այվազյան Գոռ	98503667	95007276		Նազենի Միանսյան	94901513				5	\N	\N	\N
871	Արմավիրի Ռ. Եղոյանի անվ. թիվ 1 ա/դ	8	3	ք. Արմավիր, Ավետիսյան 4	40.1511399999999981	44.0286329999999992	3	1	Նունե Դոլինյան	93757477			Արմինե Իվանյան	93801380				17	\N	\N	\N
872	Այգեշատի Յու. Հովհաննիսյանի անվ. մ/դ	8	3	գ. Այգեշատ	40.0762829999999965	44.059387000000001	3	2	Արմենակ Սարդարյան	094340539			Կարինե Տեր-Հարությունյան	93993035				1	9	\N	\N
873	Արազափի Թ. Հուրյանի անվ. մ/դ	8	3	գ. Արազափ	40.0430830000000029	44.141849999999998	3	2	Չինար Կարապետյան	093171063				098644033				1	6	\N	Armen.hayrapetyan@hf.am
874	Արևիկի մ/դ	8	3	գ. Արևիկ	40.098351000000001	44.0948580000000021	3	2	Լևոն Այվազյան	93577872			Աբրահամյան Վահե	77409569				1	\N	\N	\N
875	Արմավիրի մ/դ	8	3	գ. Արմավիր	40.0886780000000016	44.0481320000000025	3	2	Ռուզաննա Ասմարյան	77021677			չի աշխատում	098525975	կազմակերպիչ 077804890			1	10	\N	sarmen@hf.am
876	Արտաշարի մ/դ	8	3	գ. Արտաշար	40.1114030000000028	44.1806989999999971	3	2	Հասմիկ Սրապիոնյան	93075601			Մանուշ	93471740	094446416			1	\N	\N	\N
877	Եղեգնուտի մ/դ	8	3	գ. Եղեգնուտ	40.0911240000000006	44.1544120000000007	3	2	Հովհաննես Մարգարյան	93522237			Եդգար Մարգարյան	77240661				1	\N	\N	\N
878	Երասխահունի մ/դ	3	3	գ. Երասխահուն	40.0727779999999996	44.2196229999999986	3	1	Սարիբեկյան Ս.	93877400			Ռուզաննա Շմավոնյան	93820237				\N	\N	\N	\N
879	Զարթոնքի մ/դ	8	3	գ. Զարթոնք	40.1058659999999989	44.1613109999999978	3	2	Մելքոնյան				Սամսոն	93919323				1	\N	\N	\N
880	Մայիսյանի մ/դ	8	3	գ. Մայիսյան	40.1527669999999972	44.0916080000000008	3	2	Պետրոսյան Իշխան	93616984	23763929		Ամատունի Կիրակոսյան	91123440				7	\N	\N	\N
881	Մարգարաի մ/դ	8	3	գ. Մարգարա	40.0338720000000023	44.1831419999999966	3	1	Մարգարյան Արուսյակ	55896674			Լուսինե					1	\N	\N	\N
882	Վարդանաշենի մ/դ	8	3	գ. Վարդանաշեն	40.0518580000000028	44.1930460000000025	3	1	Հակոբ Հովասափյան	55331355	93331334		Նելլի Հայրապետյան	77646093				1	\N	\N	\N
883	Մեծամորի թիվ 1 հմ/դ	8	3	ք. Մեծամոր	40.1456019999999967	44.1160939999999968	3	1	Գևորգյան Նունե	93522166			Աննա	93120424	Լուսինե ինֆ ուսուց	093004068		12	13	\N	\N
884	Մեծամորի թիվ 2 ա/դ	8	3	ք. Մեծամոր	40.1453089999999975	44.1250209999999967	3	1	Մայիս Նիկողոսյան	91542450			Արմինե	77912898				4	\N	\N	\N
885	Այգևանի Մ. Խորենացու անվ. մ/դ	8	3	գ. Այգևան	40.1399600000000021	43.9796770000000024	3	2	Կարեն Մովսիսյան	94690606			Մարինե Մովսիսյան	95413161				2	\N	\N	\N
886	Արաքսի Զ. Ավետիսյանի անվ. մ/դ	8	3	գ. Արաքս	40.0980890000000016	43.9549790000000016	3	2	Բարսեղյան Կարինե	94112410	55112410		Ղազարյան Ալվարդ	77789476				4	\N	\N	\N
887	Արգավանդի մ/դ	8	3	գ. Արգավանդ	40.0632990000000007	44.091230000000003	3	1	Մխիթար Դանիելյան	98130026	96130026		Ջեմա	98899310				1	12	\N	\N
888	Բամբակաշատի մ/դ	8	3	գ. Բամբակաշատ	40.1133700000000033	44.0142219999999966	3	2	Պարոնյան Գայանե	093820897	95008534		Մարտիրոսյան Շուշանիկ	55344588	93399589			4	12	\N	\N
889	Գետաշենի մ/դ	8	3	գ. Գետաշեն	40.0458950000000016	43.9470090000000013	3	2	Գևորգ Մուքոյան	93437505			Նելլի	77250082				10	40	\N	\N
890	Լենուղու Ջիվանու անվ. մ/դ	8	3	գ. Լենուղի	40.1227659999999986	43.9666879999999978	3	2	Աֆյան Փառանձեմ	93186066			Կուտանյան Թամարա	41997909				1	\N	\N	\N
891	Մրգաշատի Մ. Մաղաքյանի անվ. թիվ 2 մ/դ	8	3	գ. Մրգաշատ	40.1228890000000007	44.0567139999999995	3	2	ՌոբերտՀամբարձումյան	93713883			Ռուզաննա Հարությունյան	77685898				2	\N	\N	\N
892	Մրգաշատի Վ. Ափոյանի անվ. թիվ 1 մ/դ	8	3	գ. Մրգաշատ	40.1232820000000032	44.067419000000001	3	2	Լենա Նալբանդյան	77838343			Գայանե Մելիքյան	94233281				1	6	\N	\N
893	Նալբանդյանի մ/դ	8	3	գ. Նալբանդյան	40.0623280000000008	43.9877309999999966	3	2	Տիգրան Գևորգյան	77116622			Կարինե Մկրտչյան	94859104				1	\N	\N	\N
894	Նոր Ամասիայի մ/դ	8	3	գ. Ամասիա Ն. (Ամասիա)	40.0830130000000011	43.9692930000000004	3	2	Գոհար Ներսիսյան	93681847			Համլետ Գինոսյան	93184939				1	\N	\N	\N
1681	Քարինջ	4	6		40.9733779999999967	44.691673999999999	3	2	Պետրոսյան	077735496								\N	\N	\N	sarmen@hf.am
895	Նոր Արմավիրի մ/դ	8	3	գ. Նոր Արմավիր	40.089578000000003	43.9940899999999999	3	2	Հերիքնազ Հարությունյան	93200255			Սաֆարյան Հովհաննես	94227006				1	\N	\N	\N
896	Նոր Արտագերսի մ/դ	8	3	գ. Նոր Արտագերս	40.0698250000000016	44.0098190000000002	3	2	Սամվել Խաչատրյան	93335737			Հռիփսիմե Դավթյան	94564636				1	\N	\N	\N
897	Նոր Կեսարիաի մ/դ	8	3	գ. Նոր Կեսարիա	40.0625829999999965	43.9056909999999974	3	2	Վարդան Հակոբյան	77949634	95441177		Պերճանուշ	93010524				1	\N	\N	\N
898	Շենավանի մ/դ	8	3	գ. Շենավան	40.0569229999999976	43.9305980000000034	3	2	Հակոբյան Դերենիկ	93751696			Նաիրա Գալստյան	94587207				2	\N	\N	\N
899	Ջանֆիդայի Էդ. Դաշտոյանի անվ. մ/դ	8	3	գ. Ջանֆիդա	40.0416990000000013	44.0266850000000005	3	2	Հակոբ Սրեյան	55441414	93363768		Մարիամ Հարությունյան	77428062				1	7	\N	\N
900	Ջրաշենի մ/դ	8	3	գ. Ջրաշեն	40.0874639999999971	44.0167399999999986	3	2	Սամվել Պողոսյան	77646414			Ներսիկ	93223326				1	\N	\N	\N
901	Սարդարապատի մ/դ	8	3	գ. Սարդարապատ	40.1310519999999968	44.0095919999999978	3	2	Մանուկյան Անահիտ	93186505			Կարինե Սմբատյան	94605555	Օֆելյա Սարգսյան 	094833435		13	13	\N	\N
902	Տանձուտի մ/դ	8	3	գ. Տանձուտ	40.0698730000000012	44.079225000000001	3	2	Հովսեփ Այվազյան	93439968			Անտոնյան Անժելա	98353040				3	11	\N	\N
903	Փշատավանի մ/դ	8	3	գ. Փշատավան	40.0405640000000034	44.0648449999999983	3	2	Նելի Ղորղանյան	93623293			Դիանա	93619334				1	11	\N	\N
904	Բաղրամյան մ/դ	3	3	գ. Բաղրամյան (Բաղրամյանի շրջ)	40.1965799999999973	43.8599329999999981	3	2	Տոմիկյան Աղասի	94244420			Պետրոսյան Իզաբելլա	77276767				\N	\N	\N	\N
905	Արտամետի մ/դ	8	3	գ. Արտամետ	40.1232210000000009	43.8607829999999979	3	2	Ղազարյան Մելքոն	93243740			Աննա	77638990				11	14	\N	\N
906	Մյասնիկյանի Արայի անվ. մ/դ	8	3	գ. Մյասնիկյան	40.178600000000003	43.9165429999999972	3	2	Զուբեիդա Հովհաննիսյան	93191220			Գասպարյան Վարսենիկ	93194614				7	\N	\N	\N
907	Շենիկի մ/դ	8	3	գ. Շենիկ	40.2108739999999969	43.770265000000002	3	2	Լավրենտ Հայրապետյան	93386044			Տաթևիկ	77254420				1	\N	\N	\N
908	Լեռնագոգի մ/դ	8	3	գ. Լեռնագոգ	40.2573760000000007	43.8655439999999999	3	2	Կորյուն Մակարյան	94635885	95007312		Ալիսա Առաքելյան	93184275				4	\N	\N	\N
909	Քարակերտի թիվ 2 մ/դ	8	3	գ. Քարակերտ	40.2444810000000004	43.8196470000000033	3	2	Վարդթիթեր Պապոյան	94172041			Մեսրոպյան Սուսաննա	77987500				1	\N	\N	evelina@hf.am
910	Արևադաշտի մ/դ	8	3	գ. Արևադաշտ	40.1331720000000018	43.9406949999999981	3	2	Նազիկ Բաբայան	99582344	41042344		Շողիկ	93505456				1	1	\N	\N
911	Արտիմետի հմ/դ	8	3	գ. Արտիմետ	40.1511139999999997	44.2668430000000015	3	2	Գյոզալյան Արտակ	93186288			Խաչատրյան Քրիստինե	77139066				1	1	\N	\N
912	Հուշակերտի մ/դ	8	3	գ. Հուշակերտ	40.0855590000000035	43.9250070000000008	3	2	Խարաջանյան Մկրտիչ	93379107			Թորոսյան Նելլի	94604555				3	\N	\N	\N
913	Վանանդի մ/դ	8	3	գ. Վանանդ	40.105203000000003	43.8178789999999978	3	2	Խաչիկյան Հայկ	93394060			Անահիտ Մարգարյան	93480578				1	6	\N	\N
914	Տալվորիկի հմ/դ	8	3	գ. Տալվորիկ	40.1016499999999994	43.8823640000000026	3	2	Մարինե Սաֆարյան	94159132			Հռիփսիմե Սաղաթելյան	94585001				2	2	\N	\N
915	Դալարիկի Հ. Հովհաննիսյանի անվ. մ/դ	8	3	գ. Դալարիկ	40.2259320000000002	43.8781540000000021	3	2	Հեբոյան Բավական	93928362	95007654		Ռեհանյան Մարինե	93669948				1	\N	\N	\N
916	Աղավնատան Ղ. Աբգարյանի անվ. մ/դ	3	3	գ. Աղավնատուն	40.228588000000002	44.2524330000000035	3	2	Ա. Ավետիսյան	93195868	95008626		Արմինե Ավետիսյան	77692719				13	13	\N	\N
917	Ակնաշենի մ/դ	8	3	գ. Ակնաշեն	40.0946709999999982	44.2864840000000015	3	2	Նորիկ  Բաղդասարյան	93138812			Հռիփսիմե Ենոքյան	77019157				2	2	\N	\N
918	Այգեկի մ/դ	8	3	գ. Այգեկ	40.1899859999999975	44.3837979999999988	3	2	Արիստակեսյան Ռ.	93961696			Էդիկ Բաղդասարյան	98572730				1	5	\N	\N
919	Այգեշատ(Էջ.)ի մ/դ	8	3	գ. Այգեշատ(Էջ.)	40.2326049999999995	44.287585	3	2	Հովսեփյան Նաիրա	055161677սխալէ	98880000		Խաչատրյան Սուսաննա	94200232				1	\N	\N	\N
920	Առատաշենի մ/դ	8	3	գ. Առատաշեն	40.1295410000000032	44.2296240000000012	3	2	Ղազարյան Սևակ	93744644			Մարիամ Ամիրյան	77424882	55703637			1	1	\N	\N
921	Արագածի Մ. Մեխակյանի անվ. մ/դ	8	3	գ. Արագած	40.2169969999999992	44.2335229999999981	3	2	Սայադյան Վրեժ	94494920			Մերի Վարդանյան	94858502				6	7	\N	\N
922	Արաքս (Էջ.)-ի մ/դ	8	3	գ. Արաքս(Էջ.)	40.0532439999999994	44.3017660000000006	3	2	Մարտիրոսյան Շ.	94145000			Հովակիմյան Արմենուհի	93549559				0	\N	\N	\N
923	Արևաշատի մ/դ	8	3	գ. Արևաշատ	40.1432509999999994	44.3749309999999966	3	2	Առաքելյան Հ.	77430610			Կարինե	94503064				4	4	\N	\N
924	Բաղրամյանի (Էջ.) մ/դ	8	3	գ. Բաղրամյան /Էջմիածնի տա	40.1901560000000018	44.367561000000002	3	2	Շուշանիկ Ոսկանյան	93814414			Ոսկանյան Ռոզա	94337676				2	\N	\N	\N
925	Գայի մ/դ	8	3	գ. Գայ	40.0837590000000006	40.0837590000000006	3	2	Հարությունյան 	93555632			Խաչատրյան	94567941				1	1	\N	\N
926	Գեղակերտի մ/դ	8	3	գ. Գեղակերտ	40.1854379999999978	44.2484340000000032	3	2	Արմեն Ահարոնյան	93185645			Ալավերդյան Լուսինե	93513075				1	2	\N	\N
927	Գրիբոյեդովի Վ. Ռոստոմյանի անվ. մ/դ	3	3	գ. Գրիբոյեդով	40.1127010000000013	44.2730069999999998	3	2	Սերգեյ Թադևոսյան	93185955			Աշոտ Արզումանյան	93492994	95492994			9	9	\N	\N
928	Դողսի մ/դ	8	3	գ. Դողս	40.2270099999999999	44.2731989999999982	3	2	Ավետիսյան Գոհար	77030388				55543566				2	3	\N	\N
929	Թաիրովի մ/դ	8	3	գ. Թաիրով	40.1634499999999974	44.421247000000001	3	1	Մ. Բաղամյան	93284191			Մարիամ Մնացականյան	94670055				12	12	\N	\N
930	Լեռնամերձի հմ/դ	8	3	գ. Լեռնամերձ	40.2564429999999973	44.2655159999999981	3	2	Զավեն Գրիգորյան	93875138			Լուսինե Գրիգորյան	55273751				2	\N	\N	\N
1682	Դսեղ ամբուլատորիա	11	6		\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
931	Խորոնքի մ/դ	8	3	գ. Խորոնք	40.1334810000000033	44.2443990000000014	3	2	Ասատրյան Նշան	77148000			Ծաղիկ Փաթաթանյան	55255760	Ալվարդ055255760			3	7	\N	\N
932	Ծաղկալանջի մ/դ	8	3	գ. Ծաղկալանջ	40.1990150000000028	44.2291480000000021	3	2	Եգորյան	94728844								4	4	\N	\N
933	Ծիածանի մ/դ	8	3	գ. Ծիածան	40.1816850000000017	44.2644159999999971	3	2	Գազազյան Գ.	93597220			Անուշ Սերգոյան	94656795	77377547	093342844		8	\N	\N	sarmen@hf.am
934	Հայկաշենի Գ. Կիրակոսյանի անվ. մ/դ	8	3	գ. Հայկաշեն	40.0735079999999968	44.3032690000000002	3	2	Հենրիկ Խրոյան	94861199			Կարինե Անդրեասյան	77776399				0	1	\N	\N
935	Հովտամեջի մ/դ	8	3	գ. Հովտամեջ	40.182265000000001	44.2564709999999977	3	2	Եղյան Ն.	55189113	ուսմասվար095505768	41512900	Հայկանուշ Մեսրոպյան	77512900				3	\N	\N	\N
936	Մեծամորի մ/դ	8	3	գ. Մեծամոր	40.0726349999999982	44.2919869999999989	3	2	Եղիազարյան Գասպար	95008549	93057822		Էմին Մարտիրոսյան	93759119				6	6	\N	\N
937	Մուսալեռի Ֆր. Վերֆելի անվ. մ/դ	8	3	գ. Մուսալեռ	40.1543909999999968	44.3756410000000017	3	2	Սվարյան	99073087			Անի	55041670	ՊալոյանՍամվել093562536			6	6	\N	\N
938	Մրգաստանի Կ. Հարությունյանի անվ. մ/դ	8	3	գ. Մրգաստան	40.1993670000000023	44.2784059999999968	3	2	Ասատրյան Նունուֆար	93555621			Գևորգյան Անահիտ	93194077				1	3	\N	\N
939	Նորավանի մ/դ	8	3	գ. Նորավան	40.1699199999999976	44.0296519999999987	3	2	Հովհաննես Ստեփանյան	93280944			Էլյանորա	93439296				3	15	\N	\N
940	Ոսկեհատի մ/դ	8	3	գ. Ոսկեհատ	40.1456510000000009	44.3327370000000016	3	2	Սյուզաննա Շմավոնյան	93544425	23148020		Պետրոսյան Սոֆիկ	93418062	Թերմինե094851139	տնտեսվարՄարտին093456334		4	\N	\N	\N
941	Պտղունքի Տիգրան Մեծի անվ. մ/դ	8	3	գ. Պտղունք	40.1616349999999969	44.3624340000000004	3	1	Սիլվա Մկրտումյան	94141310	ուսմասվար093197181		Վերոնիկա Լոքյան	94683395	Կարինե043216258			3	3	\N	\N
942	Ջրառատի Թ. Խաչատրյանի անվ. մ/դ	8	3	գ. Ջրառատ	40.0712109999999981	44.2665390000000016	3	2	Հարությունյան Դավիթ	98413839	ուսմասվարՎարդանյան077550027			055657087				0	\N	\N	Armen.hayrapetyan@hf.am
943	Փարաքարի հմ/դ	8	3	գ. Փարաքար, Խ.Գասպարյան 2	40.1646429999999981	44.4028360000000006	3	1	Ա. Նարինբեկյան	963636912	77263377		Նաիրա Գրիգորյան	93510759				2	4	\N	\N
944	Փարաքարի մ/դ	8	3	գ. Փարաքար	40.1624070000000017	44.3991910000000018	3	1	Հակոբյան Վարազդատ	93917555			Լուսինե Սարգսյան	55900248	093013551			1	\N	\N	sarmen@hf.am
945	Վաղարշապատի Գ. Նարեկացու անվան թիվ 2 ա/դ	8	3	ք. Վաղարշապատ, Մաշտոցի 75/2	40.1667660000000026	44.3016289999999984	3	1	Ալվարդ Հայրապետյան	93539448			Ալիսա Բաղդասարյան	94030520	94030520	93433828		3	\N	\N	\N
946	Վաղարշապատի Գ. Նժդեհի անվ. թիվ 8 հմ/դ	8	3	ք. Վաղարշապատ, Մանուշյան 1	40.1646149999999977	44.339500000000001	3	1	Գալստյան Եսթեր	93235300			Թովմասյան Թովմաս նախկին օպերատոր	55650657	94243267	95243267		1	4	\N	\N
947	Վաղարշապատի Ե. Օտյանի անվ. թիվ 7 հմ/դ	8	3	ք. Վաղարշապատ, Գարեգին Նժդեհ	40.1757989999999978	44.304668999999997	3	1	Վ. Հայրապետյան	93322105			Գայանե Հակոբյան	99336571				1	\N	\N	\N
948	Վաղարշապատի Զ. Անդրանիկի անվ. թիվ 12 հմ/դ	8	3	ք. Վաղարշապատ, Արագածի զանգված	40.1676969999999969	44.3243429999999989	3	1	Հովհաննսիյան Վեմիր	93410708			Արշակյան Գոհարիկ	98808619	95131011			7	\N	\N	\N
950	Վաղարշապատի Մ. Ա. Ս. Էջմիածնի Է. Օռնեկյանի անվան դպրոց	8	3	ք. Վաղարշապատ, Արարատյան	40.1607940000000028	44.2959770000000006	3	1					Նելլի Խաչատրյան	93206507				8	\N	\N	\N
951	Վաղարշապատի թիվ 4 հմ/դ	8	3	ք. Վաղարշապատ, Սպանդարյան	40.1711850000000013	44.2965579999999974	3	1	Արուսյակ Մուրադյան	93575184			Կարինե Մանուկյան	55011017		99778585		1	\N	\N	\N
952	Վաղարշապատի թիվ 3 հմ/դ	8	3	ք. Վաղարշապատ, Աթարբեկյան	40.1636260000000007	44.289512000000002	3	1	Մարտիրոսյան Հունան	055020357		23152060	Սիմոնյան Ռուզան	98152211		55943539		6	10	\N	\N
953	Վաղարշապատի Մ. Խորենացու անվ. թիվ 10 ա/դ	8	3	ք. Վաղարշապատ, Զվարթնոց թաղ.	40.1700930000000014	44.3308109999999971	3	1	Հայկ Բաղդասարյան	93193646			Արմինե Աղաջանյան	93905893	ՄովսիսյանԿարինե	93914869		11	\N	\N	\N
954	Վաղարշապատի Մ. Գորկու անվ. թիվ 5 ա/դ	8	3	ք. Վաղարշապատ, Շահումյան 100	40.1578289999999996	44.3045839999999984	3	1	Գ. Սաֆարյան	93185811			Ստեփանյան Լիլիթ	93484805		93050075		13	13	\N	\N
955	Վաղարշապատի թիվ 1 հմ/դ	8	3	ք. Վաղարշապատ, Բաղրամյան 12	40.1654709999999966	44.2914919999999981	3	1	Հովակիմյան Կարինե	9980023			Կարինե	93723804	Թագուհի	94511707		1	\N	\N	\N
956	Վաղարշապատի Ներսիսյան թիվ 6 հմ/դ	8	3	ք. Վաղարշապատ, Մովսես Խորենացու փող., 101 շենք	40.1650800000000032	44.2848609999999994	3	1	Սեդա Ենգիբարյան	98053707			Նարինե	23147307	95500321			9	9	\N	jass.manasyan@gmail.com
957	Վաղարշապատի թիվ 9 հմ/դ	8	3	ք. Վաղարշապատ, Կույբիշև 1	40.1574120000000008	44.3016560000000013	3	1	Սամվելյան Մ.	93198534			Վարդանյան Վարդիթեր	55804920	Մարի091008204			7	\N	\N	\N
958	Վաղարշապատի թիվ 11 հմ/դ	8	3	ք. Վաղարշապատ, Չարենց 0	40.1575380000000024	44.2813000000000017	3	1	Սարգսյան 	77082500			Սուսան	91065510				1	\N	\N	\N
959	Ակնալճի Ա. Հարությունյանի անվ. մ/դ	8	3	գ. Ակնալիճ	40.1434520000000035	44.1595900000000015	3	2	Վարդիթեր Վարդերեսյան	93536859			Լուսինե Բաղդասարյան	77923028				3	\N	\N	\N
960	Ամբերդի Հ. Նավասարդյանի անվ. մ/դ	8	3	գ. Ամբերդ	40.238151000000002	44.2738700000000023	3	2	Զոհրաբ Մաղաքյան	94442256			Մելինե Ստեփանյան	93231777				1	\N	\N	\N
961	Ապագաի մ/դ	8	3	գ. Ապագա	40.0978530000000006	44.2531230000000022	3	2	Մխիթար Մխիթարյան	93453597			Արմեն Ղուկասյան	55305820				5	\N	\N	\N
962	Արշալույսի Ս. Գրիգորյանի անվ. մ/դ	8	3	գ. Արշալույս	40.172272999999997	44.2104270000000028	3	2	Է. Եղիազարյան	91330064			Իրինա Գալստյան	77727010				8	14	\N	\N
963	Լուսագյուղի մ/դ	8	3	գ. Լուսագյուղ	40.0896660000000011	44.269525999999999	3	2	Բաղդասարյան Հ.	93193292			Կոստանդյան Ալինա	94193644				2	\N	\N	\N
964	Հայթաղի Կարապետյանի անվ. մ/դ	8	3	գ. Հայթաղ	40.1802780000000013	44.2284069999999971	3	2	Գաբրիելյան Ռ.	93444090			Վարդանյան Լիլիթ	93114105				6	\N	\N	\N
965	Ջրարբիի մ/դ	8	3	գ. Ջրառատի թ/ֆ	40.0809349999999966	44.2477489999999989	3	2	Նարեկ Զաքարյան	98688800			Խաչատրյան Արաքսյա	77060039	Անժելա041262720			2	2	\N	\N
966	Տարոնիկի մ/դ	8	3	գ. Տարոնիկ	40.1352159999999998	44.197575999999998	3	2	Հակոբյան Ա.	93563077			Ղավալյան Արմինե	95224884				7	7	\N	\N
967	Ֆերիկի հմ/դ	8	3	գ. Ֆերիկ	40.1836119999999966	44.2125929999999983	3	2	Պողոսյան Լևոն	93725759	93225259							2	3	\N	\N
968	Գանձակի թիվ 1 մ/դ	8	4	գ. Գանձակ	\N	\N	3	2	Եղիազարյան Հասմիկ	95006497	77668812	96668812	Շուշանիկ	94619760				8	8	\N	jass.manasyan@gmail.com
969	Գանձակի թիվ 2 մ/դ	8	4	գ. Գանձակ	\N	\N	3	2	Ասատրյան Հրաչիկ	95007592	91764343		Հակոբյան Միկիչ	99382460				1	1	\N	jass.manasyan@gmail.com
970	Ծաղկաշենի մ/դ	8	4	գ. Ծաղկաշեն	\N	\N	3	2	Սանասար Սարգսյան	 93 66 26 85			Ջուլիետա Մանուկյան	98805115				6	10	\N	sarmen@hf.am
971	Կարմիրգյուղի թիվ 1 մ/դ	8	4	գ. Կարմիրգյուղ	\N	\N	3	2	Շահբազյան Կարինե	95007616	77070759		Արփինե	93453197				1	2	\N	jass.manasyan@gmail.com
972	Կարմիրգյուղի թիվ 2 մ/դ	8	4	գ. Կարմիրգյուղ	\N	\N	3	2	Գոհար Մկոյան	95007621	94206651		Անուշիկ	43393238				3	5	\N	jass.manasyan@gmail.com
973	Նորատուսի թիվ 1 մ/դ	8	4	գ. Նորատուս	\N	\N	3	2	Ավետիսյան Վարդ	95007623	93249400		Նելլի	94900300				4	6	\N	jass.manasyan@gmail.com
974	Նորատուսի թիվ 2 մ/դ	8	4	գ. Նորատուս	\N	\N	3	2	Ներսիսյան Նաիրա	95007624	93670443		Արմազյան Անուշ	99999374				3	3	\N	jass.manasyan@gmail.com
975	Նորատուսի թիվ 3 մ/դ	8	4	գ. Նորատուս	\N	\N	3	2	Բաղդասարյան Արև	95007626	93217020	93217021	Մերի	77933888				2	5	\N	jass.manasyan@gmail.com
976	Սարուխանի թիվ 1 մ/դ	8	4	գ. Սարուխան, Գ. Դարբինյան փ. 14	\N	\N	3	2	Մուդոյան Հայկ	95007627	93203500		Գալոյան Մ.	93363533				\N	\N	\N	jass.manasyan@gmail.com
977	Սարուխանի թիվ 2 մ/դ	8	4	գ. Սարուխան	\N	\N	3	2	Դանիելյան Սվետլանա	95007628	93381137		Մակարյան Արմինե	77908990				1	7	\N	jass.manasyan@gmail.com
978	Սարուխանի թիվ 3 մ/դ	8	4	գ. Սարուխան	\N	\N	3	2	Բալասանյան Անահիտ	95007629	99999814	99999812	Խաչատրյան Հասմիկ	94146625	77751161			1	5	\N	jass.manasyan@gmail.com
979	Գավառի ա/դ	8	4	ք. Գավառ, Թումանյան 3	\N	\N	3	1	Նունե Ղուլոյան	93594970			Ղուլոյան Արմինե	91710021				10	30	\N	jass.manasyan@gmail.com
980	Գավառի թիվ 1 հմ/դ	8	4	ք. Գավառ, Դեմիրճյան 32	\N	\N	3	1	Խունոյան Մանուշ	95902014			Գասպարյան Գոհար	95415749				10	12	\N	jass.manasyan@gmail.com
981	Գավառի թիվ 2 մ/դ	8	4	ք. Գավառ, Հացառատ թաղ.	\N	\N	3	1	Հակոբյան Անահիտ	95007634	77375752	77375751	Ալեքսանյան Հերմինե	96011230	095071230			6	6	\N	sarmen@hf.am
982	Գավառի թիվ 3 հմ/դ	8	4	ք. Գավառ, Արծրունի եղբ. 98	\N	\N	3	1	Հովակիմյան Մելանյա	95007635	93554821		Ռուզաննա	93813418				1	6	\N	jass.manasyan@gmail.com
983	Գավառի թիվ 4 հմ/դ	8	4	ք. Գավառ, Գ. Լուսավորիչի 6	\N	\N	3	1	Մկրտչյան Գայանե	98725372	91551215	0264 22086	Հակոբյան Անահիտ	77074131				5	5	\N	jass.manasyan@gmail.com
984	Գավառի թիվ 5 մ/դ	8	4	ք. Գավառ, Ազատության փ.	\N	\N	3	1	Արաքսյա Վարդանյան	91658560	93345898	99345898	Ավագյան Լալա	91658655				3	3	\N	jass.manasyan@gmail.com
985	Գավառի թիվ 7 մ/դ	8	4	ք. Գավառ, Արծվաքար թ.	\N	\N	3	1	Սուսաննա Ավետիսյան	98788330			Մարինե	98909734				10	10	\N	jass.manasyan@gmail.com
986	Գավառի թիվ 8 մ/դ	8	4	ք. Գավառ, Հացառատ թաղամաս	\N	\N	3	1	Սարգսյան Վլադիմիր	95007392	93378296		Դավթյան Անահիտ	98761873				4	4	\N	jass.manasyan@gmail.com
987	Ճամբարակի Մ. Քոչարյանի անվ. թիվ 2 հմ/դ	8	4	ք. Ճամբարակ	\N	\N	3	1	Գրիգորյան Կարինե	95007383	91603887	95440600	Սարգսյան Աննա	91039101				\N	\N	\N	jass.manasyan@gmail.com
988	Աղբերքի մ/դ	8	4	գ. Աղբերք	\N	\N	3	5	Ղալեչյան Անահիտ	95007382	93393871		Ստեփանյան Վազգուհի	94524159				\N	\N	\N	jass.manasyan@gmail.com
989	Երանոսի թիվ 1 մ/դ	8	4	գ. Երանոս	\N	\N	3	2	Հակոբյան Տիգրան	95008592	91217054		Փինողյան Էլիս	93771552				\N	\N	\N	jass.manasyan@gmail.com
990	Երանոսի թիվ 2 մ/դ	8	4	գ. Երանոս	\N	\N	3	2	Ղազարյան Գառնիկ	95008554	098794222							\N	\N	\N	Armen.hayrapetyan@hf.am
991	Զոլաքարի Ա. Վարդանյանի անվ. թիվ 2 մ/դ	8	4	գ. Զոլաքար	\N	\N	3	2	Մելիքյան Սամվել	95008556	93380026		Մարտիրոսյան Ներսիկ	93889138				1	3	\N	jass.manasyan@gmail.com
992	Զոլաքարի թիվ 1 մ/դ	3	4	գ. Զոլաքար	\N	\N	3	2	Ռուզան Մարգարյան	94896627			Սյուզաննա	77609979				5	5	\N	jass.manasyan@gmail.com
993	Լիճքի թիվ 1 մ/դ	8	4	գ. Լիճք	\N	\N	3	1	Ալֆրեդ Սմբատյան	94644656	93351083		Հոխիկյան Արմեն	99666846				8	8	\N	jass.manasyan@gmail.com
994	Լիճքի թիվ 2 հմ/դ	8	4	գ. Լիճք	\N	\N	3	1	Մկրտչյան Գագիկ	95008561	94072454		Երջանիկ	77218437				3	3	\N	jass.manasyan@gmail.com
995	Ն. Գետաշենի Ա. Եղիազարյանի թիվ 2 մ/դ	8	4	գ. Ն. Գետաշեն	\N	\N	3	2	Եղիազարյան Գագիկ	95009312	94935636		Բայանդուր	93580725				13	13	\N	jass.manasyan@gmail.com
996	Վ. Գետաշենի թիվ 2 մ/դ	8	4	գ. Վ. Գետաշեն	\N	\N	3	2	Պայծառ Աղաբաբյան	93204941			Ավետիսյան Մոնիկա	93767817				4	14	\N	jass.manasyan@gmail.com
997	Վաղաշենի մ/դ	8	4	գ. Վաղաշեն	\N	\N	3	2	Աննա Նավասարդյան	98018235			Սուվարյան Սյուզաննա	0262/44688	94777564			22	22	\N	jass.manasyan@gmail.com
998	Վարդաձորի մ/դ	8	4	գ. Վարդաձոր	\N	\N	3	2	Հակոբյան Մայիս	95008593	77655412		Գևորգ	93236526				1	10	\N	jass.manasyan@gmail.com
999	Վարդենիկի Ա. Օհանյանի անվ. թիվ 2 հմ/դ	8	4	գ. Վարդենիկ, բանավան, շենք 8	\N	\N	3	1	Գափոյան Սեվադա	95008594	94218775		Կամո	93366933				8	8	\N	jass.manasyan@gmail.com
1000	Մարտունու թիվ 1 հմ/դ	8	4	ք. Մարտունի, Կոմիտաս -11	\N	\N	3	2	Ղազարյան Խանում	95008596	94605004		Զաքարյան Ավետիք	98984598				1	6	\N	sonahdavtyan@gmail.com
1001	Մարտունու ա/դ	8	4	ք. Մարտունի, Նարեկացի 7	\N	\N	3	2	Վարդան Ավետիսյան	94514847			Էլմիրա	94384462				1	7	\N	sonahdavtyan@gmail.com
1002	Մարտունու թիվ 2 հմ/դ	8	4	ք. Մարտունի, Գարեգին Նժդեհի 4	\N	\N	3	2	Նաիրի Մովսիսյան	93366536			Ավետիսյան Զառա	94942716				3	25	\N	sonahdavtyan@gmail.com
1003	Դդմաշենի մ/դ	8	4	գ. Դդմաշեն	\N	\N	3	2	Գալստյան Սեդրակ	95007395	93360696		Մաթևոսյան Անուշ	99099008				12	12	\N	jass.manasyan@gmail.com
1004	Ծաղկունքի Թումանյանի անվ. մ/դ	8	4	գ. Ծաղկունք	\N	\N	3	2	Ներսեսյան Անահիտ	98050242			Լիլիթ	94580703	262 6-00-82			5	5	\N	jass.manasyan@gmail.com
1005	Վարսերի մ/դ	8	4	գ. Վարսեր	\N	\N	3	2	Ադամյան Ծաղիկ	93764340	95007393		Վիկտորիա	0261/27469	98304621			3	3	\N	jass.manasyan@gmail.com
1006	Զովաբերի մ/դ	8	4	գ. Զովաբեր	\N	\N	3	2	Հովհաննեսյան	77887125	77404494		Ստեփանյան Արմինե	93592408				5	10	\N	jass.manasyan@gmail.com
1007	Լճաշենի մ/դ	8	4	գ. Լճաշեն	\N	\N	3	2	Մուրադյան Աիդա	95006495			Մանուկյան Վարդուհի	0261/27733	077 697733			6	6	\N	jass.manasyan@gmail.com
1008	Սևանի թիվ 5 մ/դ	8	4	ք. Սևան, Կ. Դեմիրճյան 21	\N	\N	3	1	Սահակյան Նարինե	95006494	99900618		Դավթյան Սերինե	77005556				6	8	\N	jass.manasyan@gmail.com
1009	ք. Սևանի թիվ 6 մ/դ	8	4	ք. Սևան, Խորհուրդների 8	\N	\N	3	1	Գեվորգյան Էդիկ	95006493	91207512	98207512	Ավագյան Սերգեյ	93340016				5	5	\N	jass.manasyan@gmail.com
1010	Սևանի Յակով Զորբյանի անվ. թիվ 2 հմ/դ	8	4	ք. Սևան, Խաղաղության 3	\N	\N	3	1	ԳԵվորգյան Կարինե	95006492	94480052		Անտոնյան Լիլիթ	99067171				6	6	\N	jass.manasyan@gmail.com
1011	Սևանի թիվ 4 հմ/դ	8	4	ք. Սևան, Չարենցի 2	\N	\N	3	1	Մաթևոսյան Սվետլաննա	94447750			Գաբրիելյան Նաիրա	91858536				3	7	\N	jass.manasyan@gmail.com
1012	Սևանի Խ. Աբովյանի անվ. ա/դ	8	4	ք. Սևան, Աբովյան 6	\N	\N	3	1	Մկրտչյան Լիաննա	95006489	91285999		Լաուրա	94255088				2	12	\N	jass.manasyan@gmail.com
1013	Սևանի Մ. Մաշտոցի անվ. թիվ 1 հմ/դ	8	4	Ք. Սևան, Նաիրյան 173	\N	\N	3	1	Նիկողոսյան Աննա	95006487	99119411		Ավետիսյան Արևիկ	93971287	0261/22402			6	6	\N	jass.manasyan@gmail.com
1014	Տրետուքի մ/դ	8	4	գ. Տրետուք	\N	\N	3	2	Մանուկյան Տարիել	95007497	93812466		Արևշատյան Վիլեն	77878756				2	2	\N	jass.manasyan@gmail.com
1015	Լուսակունքի մ/դ	8	4	գ. Լուսակունք	\N	\N	3	2	Հարությունյան Անահիտ	95007494	93373092	0269/22743	Վազգանուշ	93428635				2	5	\N	jass.manasyan@gmail.com
1016	Ազատի հմ/դ	8	4	գ. Ազատ	\N	\N	3	2	Ներսիսյան Վարդան	95007496	94301737		Թագուհի	94870297				1	1	\N	jass.manasyan@gmail.com
1017	Ակունքի մ/դ	8	4	գ. Ակունք	\N	\N	3	2	Լուսիկ Ավագյան	93316671	94916946		Քրիստինե	77878641				3	3	\N	jass.manasyan@gmail.com
1018	Այրքի մ/դ	8	4	գ. Այրք	\N	\N	3	2	Դավթյան Հրանտ	95007512	93266060		Դավթյան Հեղինե	94266062				1	3	\N	jass.manasyan@gmail.com
1019	Ավազանի հմ/դ	8	4	գ. Ավազան	\N	\N	3	2	Լալայան Սարգիս	95007498	94516816		Դաբաղյան Էդուարդ	93742209				3	3	\N	jass.manasyan@gmail.com
1020	Գեղամաբակի հմ/դ	8	4	գ. Գեղամաբակ	\N	\N	3	2	Բարսեղյան Աշխեն	93841488								1	3	\N	jass.manasyan@gmail.com
1021	Գեղամասարի մ/դ	8	4	գ. Գեղամասար	\N	\N	3	2	Բարսեղյան Աշոտ	95007476	93250099		Գագո	98713505				2	3	\N	jass.manasyan@gmail.com
1022	Խաչաղբյուրի մ/դ	8	4	գ. Խաչաղբյուր	\N	\N	3	2	Խոջաբեկյան Արմեն	93106100			Նազելի	93916830				3	3	\N	jass.manasyan@gmail.com
1023	Կախակնի մ/դ	8	4	գ. Կախակն	\N	\N	3	2	Խլոյան Արտաշ	94028887								3	5	\N	jass.manasyan@gmail.com
1024	Կութի մ/դ	8	4	գ. Կութ	\N	\N	3	2	Կոստանյան Աղվան	95007472	93262244							1	2	\N	jass.manasyan@gmail.com
1025	Կուտականի մ/դ	8	4	գ. Կուտական	\N	\N	3	2	Ավետիսյան Ռաֆայել	95007587	93317579		Արևշատյան Վիլեն	77878756				2	2	\N	jass.manasyan@gmail.com
1026	Մեծ Մասրիկի մ/դ	8	4	գ. Մեծ Մասրիկ	\N	\N	3	2	Հակոբյան Ատոմ	95007583	94774700	93932126	Մկրտչյան Թերեզա	93234655				6	6	\N	jass.manasyan@gmail.com
1027	Շատջրեքի մ/դ	8	4	գ. Շատջրեք	\N	\N	3	2	Աբրահամյան Աշոտ	95007554	93273082		Աբրահամյան Տիգրանուհի	77853050				\N	\N	\N	jass.manasyan@gmail.com
1028	Ջաղացաձորի մ/դ	8	4	գ. Ջաղացաձոր	\N	\N	3	2	Մելիքյան Կարինե	93400626			Թովմասյան Նարինե	0269/22753	93400626			4	4	\N	jass.manasyan@gmail.com
1029	Սոթքի մ/դ	8	4	գ. Սոթք	\N	\N	3	2	Մելքոնյան Արտակ	95007548	93203045		Հերմինե			3		3	\N	\N	jass.manasyan@gmail.com
1030	Վանեվանի մ/դ	8	4	գ. Վանեվան	\N	\N	3	2	Քոչարյան Վազգեն	95007546	93843948		Միրզոյան Չինաշխարհիկ	93541513				\N	\N	\N	jass.manasyan@gmail.com
1031	Փոքր Մասրիկի մ/դ	8	4	գ. Փոքր Մասրիկ	\N	\N	3	2	Հովհաննիսյան Արմեն	95007558	93898259		Գրիգորյան Գայանե	77431822				1	1	\N	jass.manasyan@gmail.com
1032	Վարդենիսի թիվ 4 հմ/դ	8	4	ք. Վարդենիս, Շահումյան փ. թ. 5	\N	\N	3	1	Սահակյան Անահիտ	95007542	94870449		Հովհաննիսյան Սեդա	93772804				6	6	\N	jass.manasyan@gmail.com
1033	Վարդենիսի Էդ. Պողոսյանի անվ. թիվ 2 հմ/դ	8	4	ք. Վարդենիս, Երևանյան փ. 37	\N	\N	3	1	Խլոյան Սոֆյա	95007557	98845533		Կարապետյան Ագնեսա	93077232				7	10	\N	jass.manasyan@gmail.com
1034	Վարդենիսի թիվ 1 ա/դ	8	4	ք. Վարդենիս, Երևանյան 103	\N	\N	3	1	Ոսկան Ոսկանյան	93237216			Աննա	77958582				10	10	\N	jass.manasyan@gmail.com
1035	Վարդենիսի թիվ 3 հմ/դ	8	4	ք. Վարդենիս, Լեռնագործների փ.	\N	\N	3	1	Պետրոսյան Արմեն	95007481	93012235		Արմինե					2	2	\N	jass.manasyan@gmail.com
1036	Երևանի Ա. Երզնկյանի անվ. թիվ 118 ա/դ	8	5	Արզումանյան 8	\N	\N	3	1	Կ. Հովակիմյան	10391070	98004444		Օգանեզովա Մելանյա	91304322				\N	\N	\N	jass.manasyan@gmail.com
1037	Երևանի Ա. Հովհաննիսյանի անվ. թիվ 194 հմ/դ	8	5	Նոր-Արեշ 7 փ. 1	\N	\N	3	1	Մանուկյան Նունե	453920	091/458521		Կեմարջյան Զեփյուռ	93147046				10	10	\N	jass.manasyan@gmail.com
1038	Երևանի Ա. Մանուկյանի անվ. թիվ 93 մ/դ	8	5	Դավիթաշեն 5-րդ փող.	\N	\N	3	1	Արմեն Թորոսյան	93573203								\N	\N	\N	jass.manasyan@gmail.com
1039	Մ. Սեբաստացի կրթահամալիրի հիմնական դպրոց	8	5	Ծովակալ Իսակովի 52/6	\N	\N	3	\N	Գոհար Բալջյան	93133807			Սեն	93328186	077033799 տիգրան			\N	\N	\N	\N
1040	Երևանի Ա. Շավարշյանի անվ. թիվ 40 հմ/դ	8	5	Վարդանանց 30	\N	\N	3	1	Դավթյան Հռիփսիմե	91583611	550643		Անահիտ Իշխանյան	93881510				1	1	\N	jass.manasyan@gmail.com
1041	Երևանի Ա. Պուշկինի անվ. թիվ 8 հմ/դ	8	5	Մոսկովյան 17	\N	\N	3	1	Ստեփանյան նատալյա		95008914	564931	Միքայել	95522111				15	15	\N	jass.manasyan@gmail.com
1042	Երևանի Աթարբեկյանի անվ. թիվ 61 մ/դ	8	5	Հովսեփյան 91	\N	\N	3	1	Գրիգորյան Լուսինե	95008789	99659911		Մկրտչյան Հայկանուշ	96500420				\N	\N	\N	jass.manasyan@gmail.com
1043	Երևանի Ալ. Մյասնիկյանի անվ. թիվ 66 հմ/դ	8	5	Բագրատունյաց 9	\N	\N	3	1	Այվազյան Զարուհի	420833	95008916		Մարիա					10	19	\N	jass.manasyan@gmail.com
1044	Երևանի Ալ. Բլոկի անվ. թիվ 122 հմ/դ	8	5	Արզումանյան 5	\N	\N	3	1	Մալախյան Մարինե	91416772			Սեդրակյան Վիոլետա	99320932				\N	\N	\N	jass.manasyan@gmail.com
1045	Երևանի Ալ. Շիրվանզադեի անվ. թիվ 21 մ/դ	8	5	Վ. Վաղարշյան 24	\N	\N	3	1	Երիցյան Նելլի	223110			Շողիկ Շահբազյան	55100953	223110			16	16	\N	jass.manasyan@gmail.com
1046	Երևանի Ավ. Իսահակյանի անվ. թիվ 16 ա/դ	8	5	Բուռնազյան 37	\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
1047	Երևանի Արհեստագործական ավագ դպրոց	8	5	Անդրանիկի 92/1	\N	\N	3	1	Էլեն Թադևոսյան	93484746			Նարիեն Պողոսյան	94132026				\N	\N	\N	jass.manasyan@gmail.com
1048	Երևանի Բ-1 թաղ-ի հանրակրթական դպրոց	8	5	Ա. Բաբաջանյան 47/1	\N	\N	3	1	Նաիրա 	744380			Սեն	93328186				200	200	\N	jass.manasyan@gmail.com
1049	Երևանի Բ-4 թաղ-ի հանրակրթական դպրոց	8	5	Ա. Բաբաջանյան 38/1	\N	\N	3	1	Աբրահամյան Տաթևիկ	742172			Անուշ Հովհաննիսյան	93076993				212	212	\N	jass.manasyan@gmail.com
1050	Երևանի Գ. Գյուլբեկյանի անվ. թիվ 190 ա/դ	8	5	Հ/Ա Բ - 2 թաղ.	\N	\N	3	1	Զատիկյան Կարինե	99803939	95006358	722160	Սոնա	94564065				52	52	\N	jass.manasyan@gmail.com
1051	Երևանի Գ. Նժդեհի անվ. թիվ 161 հմ/դ	8	5	Բագրատունյաց 32/1	\N	\N	3	1	Մուշեղ Սինանյան	95006356	94450279	487670	Մարիանա Բադաղյան	91237148				19	24	\N	jass.manasyan@gmail.com
1052	Երևանի Գ. Բաղյանի անվ. թիվ 141 հմ/դ	8	5	Ն/Ն Գյուլիքևիսյան-27	\N	\N	3	1	Հովհաննիսյան Անահիտ	93816715	633401	95008768	Սանթրյան Արմինե	77915800				12	13	\N	jass.manasyan@gmail.com
1053	Երևանի Գ. Էմինի անվ. թիվ 182 ա/դ	8	5	Կրիվոյի 55	\N	\N	3	1	Ռ. Ալավերդյան	540010	93786688		Գայանե Ավետիսյան	55380718	520010			39	39	\N	jass.manasyan@gmail.com
1054	Երևանի Գ. Մահարու անվ. թիվ 176 հմ/դ	8	5	Հովնաթանի 33	\N	\N	3	1	Մարիամ  Խաչատրյան	91123429	95008913	727742	Անահիտ	77508014	91735410			9	26	\N	jass.manasyan@gmail.com
1055	Երևանի Գ. Մարգարյանի անվ. թիվ 94 ա/դ	8	5	Բաշինջաղյան 100	\N	\N	3	1	Վարդանյան Սուսաննա	94100162	95008912		Զինա Խաչատրյան	91373294				\N	\N	\N	jass.manasyan@gmail.com
1056	Երևանի Գ. Նարեկացու անվ. թիվ 137 հմ/դ	8	5	Ս. Տարոնցի 17	\N	\N	3	1	Զոհրաբյան Աննա	93262027	95008957	486601	Գուրգեն	77833078				19	30	\N	jass.manasyan@gmail.com
1057	Երևանի Գ. Ստեփանյանի անվ. թիվ 135 հմ/դ	8	5	Ն/Ն2-րդ զ.Սեփանյան 5	\N	\N	3	1	Ներսեսյան Գարեգին	95008941	632580		Մանուկյան Գյուլնարա	98925723				11	27	\N	jass.manasyan@gmail.com
1058	Երևանի Գեղարվեստի վարժարան	8	5	Րաֆֆու 69/1	\N	\N	3	1	Ծովինար Սարգսյան	735310			Սեն	93328186				1	30	\N	jass.manasyan@gmail.com
1059	Երևանի Գրիբոյեդովի անվ. թիվ 41 հմ/դ	8	5	Մյասնիկյան 2	\N	\N	3	1	Մարգարյան Սուսաննա	95008939	93505095							\N	\N	\N	jass.manasyan@gmail.com
1060	Երևանի Դ. Հովսեփյանի անվ. թիվ 191 հմ/դ	8	5	Անդրանիկի 73	\N	\N	3	1	Թ. Ավդալյան	95006354	94737508		Անի	77646298				1	20	\N	jass.manasyan@gmail.com
1061	Երևանի Է. Բոյաջյանի անվ. թիվ 121 հմ/դ	8	5	Պ. Տիչինայի նրբ.	\N	\N	3	1	Գոհար Զաքարյան	741581	93349560		Հարությունյան Զարուհի	55792500				12	19	\N	jass.manasyan@gmail.com
1683	Զառ	4	7		40.2564319999999967	44.7372030000000009	3	2										\N	\N	\N	jass.manasyan@gmail.com
1063	Երևանի թիվ 101 մ/դ	8	5	Մուշական	\N	\N	3	1	Արտեմիս Քեշքերյան	450601	95006352	91690993	Հայարփի Խարազյան	98026082	55191989			3	12	\N	jass.manasyan@gmail.com
1064	Երևանի թիվ 105 ա/դ	8	5	Օտյան 45	\N	\N	3	1	Արմինե Սողոյան	736391			Անուշիկ	98583363				24	24	\N	jass.manasyan@gmail.com
1065	Երևանի թիվ 107 մ/դ	8	5	Ջրաշենի 1 փ., 41շ.	\N	\N	3	1	Աննա Աբելյան	010452483			Մարինե Խաչատրյան	77572277				4	11	\N	jass.manasyan@gmail.com
1066	Երևանի թիվ 108 մ/դ	8	5	Սիլիկյան թաղամաս 10	\N	\N	3	1	Ավետիսյան Անդրանիկ	95006347	93425521		Գևորգյան Տաթևիկ	93493280				\N	\N	\N	jass.manasyan@gmail.com
1067	Երևանի թիվ 109 ա/դ	8	5	Մարգարյան 2 նրբ. 14	\N	\N	3	1	Թադևոսյան Վլադիմիր	91210174	95006348		Վահագն Ավագյան	93425011				\N	\N	\N	jass.manasyan@gmail.com
1068	Երևանի թիվ 110 հմ/դ	8	5	Ս. Տարոնցի 11	\N	\N	3	1	Անժելա Ս.	482162			Արսեն	98370707				13	13	\N	jass.manasyan@gmail.com
1069	Երևանի թիվ 111 մ/դ	8	5	Լուկաշինի 1\\5	\N	\N	3	1	Քեհեյան Անդրանիկ	95006351	353183	91556188	Նադիրյան Գայանե	91529225				\N	\N	\N	jass.manasyan@gmail.com
1070	Երևանի թիվ 12 հտ/դ	8	5	Սիմոն Վրացյան 75	\N	\N	3	1	Տաթևիկ Կոստանյան		552241		Անուշ	552241				3	3	\N	jass.manasyan@gmail.com
1071	Երևանի թիվ 120 հմ/դ	8	5	Մ. Խորենացի 207	\N	\N	3	1	Ա. Քոչարյան	573460			Նելլի Սարգսյան	94210609				12	28	\N	jass.manasyan@gmail.com
1072	Երևանի թիվ 13 երաժշտական մ/դ	8	5	Ծովակալ Իսակովի 13	\N	\N	3	1										\N	\N	\N	jass.manasyan@gmail.com
1073	Երևանի թիվ 134 հմ/դ	8	5	Նանսենի 14փ	\N	\N	3	1	Ազատյան Գոհարիկ	010634800			Գաբրիելյան Լուսինե	93828046				2	15	\N	jass.manasyan@gmail.com
1074	Երևանի թիվ 136 հմ/դ	8	5	Լեփսիուսի 6 փ.	\N	\N	3	1	Գրետա Թունյան	200846	240846							\N	\N	\N	jass.manasyan@gmail.com
1075	Երևանի թիվ 140 հմ/դ	8	5	Նորագավիթ 1-ին փող. 99	\N	\N	3	1	Սարգսյան Մարինե	91553284	95006341	481391	Աննա Վարդանյան	93544418				6	10	\N	jass.manasyan@gmail.com
1076	Երևանի թիվ 144 հմ/դ	8	5	Վերին Շենգավիթ 2-րդ փող. 9	\N	\N	3	1	Կարինե Գասպարյան	440993			Արմինե	440993				4	10	\N	jass.manasyan@gmail.com
1077	Երևանի թիվ 147 հմ/դ	8	5	Կ. ՈՒլնեցու 1	\N	\N	3	1	Մարգարիտա Հովհաննիսյան 	245020			Պայծառ Բոյաջյան	99577333				8	13	\N	jass.manasyan@gmail.com
1078	Երևանի թիվ 152 հմ/դ	8	5	Արարատյան 1 զանգված	\N	\N	3	1	Ասատուրյան Միխայիլ	93772196	95006338		Արմինե Հարությունյան	91566995				8	9	\N	jass.manasyan@gmail.com
1079	Երևանի թիվ 153 հմ/դ	8	5	Առաքելյան 47	\N	\N	3	1	Սարգսյան Անուշ	91214232	95006337							\N	\N	\N	jass.manasyan@gmail.com
1080	Երևանի թիվ 157 մ/դ	8	5	Նորք-Մարաշ 11 փողոց 62	\N	\N	3	1	Միրզոյան Նարինե	94404081			Հասմիկ	94654614				1	13	\N	jass.manasyan@gmail.com
1081	Երևանի թիվ 159 ա/դ	8	5	Նորք-Նորք 5-րդ Մ/Շ	\N	\N	3	1	Զարինե Ղազարյան	010641133	95006334		Սահակյան Ռուզաննա	99370875				12	39	\N	\N
1082	Երևանի թիվ 160 հմ/դ	8	5	Ավանեսովի 10	\N	\N	3	1	Անահիտ Գալստյան	471700	95006332	094/392098	Էլլադա Հովհաննիսյան	93473775				12	12	\N	jass.manasyan@gmail.com
1083	Երևանի թիվ 162 հմ/դ	8	5	Անդրանիկի-4	\N	\N	3	1	Լ. Պողոսյան	728210			Հասմիկ Բալայան	91086575				20	20	\N	jass.manasyan@gmail.com
1084	Երևանի թիվ 167 հմ/դ	8	5	Սարի-թաղ 28 փ. 1	\N	\N	3	1	Սարգսյան Կիմա	550842			Անուշիկ Հարությունյան	94227384				\N	\N	\N	jass.manasyan@gmail.com
1085	Երևանի թիվ 168 հմ/դ	8	5	Բաշինջաղյան 1 նրբ	\N	\N	3	1	Գալստյան Սոնա	94415620	94415020	95006293	Արմինե Ավանիսովա	93365264				\N	\N	\N	jass.manasyan@gmail.com
1086	Երևանի թիվ 170 ա/դ	8	5	Ավան Թումանյան 3	\N	\N	3	1	Հայերյան Անուշ	95006294	91515518	610930	Լաուրա	99644722				37	37	\N	jass.manasyan@gmail.com
1087	Երևանի թիվ 171 հմ/դ	8	5	Իսահակյան թաղ.	\N	\N	3	1	Արամ Սաֆարյան	95006295	10627311							\N	\N	\N	jass.manasyan@gmail.com
1088	Երևանի թիվ 174 հմ/դ	8	5	Սվաճյան - 42	\N	\N	3	1	Նաիրա Դանիելյան	93269052			Արմինե Խաչատրյան	93203863				30	30	\N	jass.manasyan@gmail.com
1089	Երևանի թիվ 175 մ/դ	8	5	Նուբարաշեն 11 փող.	\N	\N	3	1	Անահիտ Բաբաջանյան	98368597	476540		Քնարիկ	94600093				12	15	\N	jass.manasyan@gmail.com
1090	Երևանի թիվ 178 հմ/դ	8	5	Խաղաղ-Դոնի 25	\N	\N	3	1	Հայկուհի	91484935			Աննա	470200	95103819			12	12	\N	jass.manasyan@gmail.com
1091	Երևանի թիվ 179 հմ/դ	8	5	Օհանովի փող.	\N	\N	3	1	Վարդանյան Մերի	729110			Սուսաննա	77507090				13	15	\N	jass.manasyan@gmail.com
1092	Երևանի թիվ 180 հմ/դ	8	5	Ավան-Առինջ	\N	\N	3	1	Սարգսյան Լևոն	91471275	95006221		Գոհար Մուրադյան	55321191				\N	\N	\N	jass.manasyan@gmail.com
1093	Երևանի թիվ 181 հմ/դ	8	5	Բաբաջանյան փողոց 4	\N	\N	3	1	Վ. Կիրակոսյան	95006225	94901196		Հունանյան Ռուզաննա	94022882				\N	\N	\N	jass.manasyan@gmail.com
1094	Երևանի թիվ 185 հմ/դ	8	5	Բեկնազարյան 5	\N	\N	3	1	Քարամյան Համլետ	95006227			Ալոյան Նաիրա					\N	\N	\N	jass.manasyan@gmail.com
1095	Երևանի թիվ 186 հմ/դ	8	5	Ն/Ն 8-րդ զ.	\N	\N	3	1	Քոչարյան Մարինե	93064774	95006228	010667086	Օհանյան Նաիրա	077560687				17	17	\N	jass.manasyan@gmail.com
1096	Երևանի թիվ 188 հմ/դ	8	5	Համո Բեկնազարյան 5	\N	\N	3	1	Խաչատրյան Վարդիթեր	95483596	95006229		Մարգարյան Մարիամ	91097197				\N	\N	\N	jass.manasyan@gmail.com
1097	Երևանի թիվ 195 ա/դ	8	5	Մազմանյան 5ա	\N	\N	3	1	Պողոսյան Անահիտ	359555	95006231		Լուսինե Մակարյան	99627230				\N	\N	\N	jass.manasyan@gmail.com
1684	Բջնի	4	7		40.464184000000003	44.6527280000000033	3	2	Դերենիկ Դավթյան	094529000								\N	\N	\N	sarmen@hf.am
1098	Երևանի Ա. Նավասարդյանի անվ. թիվ 196 հմ/դ	8	5	Դավթաշեն 4-րդ թաղամաս	\N	\N	3	1	Նավասարդյան Անուշ	371908	95006232		Հասմիկ	91001020				9	15	\N	jass.manasyan@gmail.com
1099	Երևանի թիվ 197 հմ/դ	8	5	Ն/Ն 9-րդ մ/շ Վիլնյուսի փ.	\N	\N	3	1	Ավետիսյան Ալմաստ	656450	664311		Մարգարյան Ռեգինա	91650151				7	43	\N	jass.manasyan@gmail.com
1100	Երևանի Հ. Խաչատրյանի անվ. թիվ 199 հմ/դ	8	5	Դավթաշեն 4-րդ թաղ.	\N	\N	3	1	Ա. Գալստյան	95006235	91838499		Հասմիկ Ենգիբարյան	94360919				\N	\N	\N	jass.manasyan@gmail.com
1101	Երևանի մտավոր թերզարգացում ունեցող երեխաների թիվ 2 հտ/դ	8	5	Նորքի այգիներ 247	\N	\N	3	1	Ղազարյան Համլետ	95006236	91421353							\N	\N	\N	jass.manasyan@gmail.com
1102	Երևանի թիվ 2 հտ/կթհ	8	5	Րաֆֆու 113	\N	\N	3	1	Շաբոյան Լ.	95006237	95944050							\N	\N	\N	jass.manasyan@gmail.com
1103	Երևանի թիվ 2 ա/դ	8	5	Տիգրան Մեծի 34	\N	\N	3	1	Ք. Սարյան	94411135	95006238		Շահինար Բալախչյան	99730130				\N	\N	\N	jass.manasyan@gmail.com
1104	Երևանի թիվ 200 հմ/դ	8	5	Տ. Պետրոսյան	\N	\N	3	1	Խալափյան Սիլվա	91345236	99361094	369093	Մխիթարյան Սաթիկ	55365181				\N	\N	\N	jass.manasyan@gmail.com
1105	Երևանի թիվ 22 հմ/դ	8	5	Գ-3 թաղամաս	\N	\N	3	1	Թորոսյան Շողիկ	391113			Հասմիկ Գյուրջինյան					\N	\N	\N	jass.manasyan@gmail.com
1106	Երևանի Ա. Մարգարյանի անվ. թիվ 29 ա/դ	8	5	Սարյան 23	\N	\N	3	1	Սարուխանյան Ռուզան	91456764	95006242	583270	Նարինե					13	35	\N	jass.manasyan@gmail.com
1107	Երևանի թիվ 31 հմ/դ	8	5	Հ. Հովսեփյան 2	\N	\N	3	1	Նարիա Հակոբյան	95006243	55995966		Մարիա Մարգարյան	55679669				\N	\N	\N	jass.manasyan@gmail.com
1108	Երևանի Մ. Նալբանդյանի անվ. թիվ 33 հմ/դ	8	5	Նար-Դոսի փող. 38	\N	\N	3	1	Ի. Վարդանյան	551522			Սիրանուշ	91356029				14	15	\N	jass.manasyan@gmail.com
1109	Երևանի թիվ 37 հմ/դ	8	5	Քանաքեռ ՀԷԿ 14	\N	\N	3	1	Գ. Միկոյան	231032			Մարիամ Սերոբյան	94496642				6	8	\N	jass.manasyan@gmail.com
1110	Երևանի թիվ 39 հմ/դ	8	5	Ծխախոտագործների - 1	\N	\N	3	1	Բաբայան Ա.	95006247	95876103		Գևորգ Գրիգորյան	55642606				\N	\N	\N	jass.manasyan@gmail.com
1111	Երևանի թիվ 44 հմ/դ	8	5	Մ. Ավետիսյանի 89	\N	\N	3	1	Մարինա Տոնոյան	091 211-799			Նալանյան Լիլիթ	99124777				\N	\N	\N	jass.manasyan@gmail.com
1112	Երևանի թիվ 46 ա/դ	8	5	Մանանդյան 2	\N	\N	3	1	Արմեն Աբգարյան		445301		Դավիթ	98077884				30	49	\N	jass.manasyan@gmail.com
1113	Երևանի թիվ 49 հմ/դ	8	5	Նոր-Արեշ 5-րդ փող. 2	\N	\N	3	1	Աբհրահամյան Ալեքսան	91411132	450200		Մարինե	94365645				2	6	\N	jass.manasyan@gmail.com
1114	Երևանի թիվ 50 հմ/դ	8	5	Շևչենկո 34	\N	\N	3	1	Հարությունովա Սյուզաննա	93867203			Սարգսյան Անահիտ	41090446				6	9	\N	jass.manasyan@gmail.com
1115	Երևանի Մ. Քաջունու անվ. թիվ 54 ա/դ	8	5	Ն. Տիգրան - 12	\N	\N	3	1	Պետրոսյան Էթերի	91971555	231891		Իրինա Սանամյան	94889956	91343624			26	54	\N	jass.manasyan@gmail.com
1116	Երևանի թիվ 64 հմ/դ	8	5	Վարդաշեն 3-րդ փ. 2 շենք	\N	\N	3	1	Երանուհի Հարությունյան	453331			Պողոսյան Երանուհի	94260489				7	18	\N	jass.manasyan@gmail.com
1117	Երևանի թիվ 75 հմ/դ	8	5	Ներքին Շենգավիթ 12-րդ փող. 13	\N	\N	3	1	Ջ. Սաֆարյան	488890			Աղավնի	99070271				23	23	\N	jass.manasyan@gmail.com
1118	Երևանի Մովսես Պողոս Ճամբազյանի անվ. թիվ 79 հմ/դ	8	5	Հ. Հովհաննիսյան 30	\N	\N	3	1	Քնարիկ Հայրապետյան	95006257	98602012		Գայանե	463420	95787942			18	26	\N	jass.manasyan@gmail.com
1119	Երևանի թիվ 81 մ/դ	8	5	Թաիրովի 14	\N	\N	3	1	Ամիրյան Գայանե	562855	91950081	95006258	Շաքարյան Լուսինե	94633071				\N	\N	\N	jass.manasyan@gmail.com
1120	Երևանի թիվ 87 մ/դ	8	5	Խուդյակովի 44	\N	\N	3	1	 Զեյնալյան Նարգիզ	94623141		611240	Ա. Բադալյան	91301305	Թևոսյան Անահիտ			10	32	\N	jass.manasyan@gmail.com
1121	Երևանի թիվ 91 հմ/դ	8	5	Ծերենցի 72ա	\N	\N	3	1	Ղալումյան Է.	93228605			Նունե	774546				14	16	\N	jass.manasyan@gmail.com
1122	Երևանի թիվ 97 ա/դ	8	5	Ներքին Շենգավիթ 12-րդ փող. 1	\N	\N	3	1	Արմինե Արշակյան	93284547			Լուսինե	77709987				27	42	\N	jass.manasyan@gmail.com
1123	Երևանի թիվ 98 հմ/դ	8	5	Նորագավիթ 1-ին փող. 97	\N	\N	3	1	Ավագյան Մարիաննա	91322272	485967	95006282	Անահիտ	96002555				13	14	\N	jass.manasyan@gmail.com
1124	Երևանի Թումանյանի անվ. թիվ 32 հմ/դ	8	5	Սևանի 132	\N	\N	3	1	Քնարիկ Պետրոսյան	440260			Սոնա 	44170607				9	10	\N	jass.manasyan@gmail.com
1125	Երևանի Լ. Միրիջանյանի անվ. թիվ 155 հմ/դ	8	5	Բաշինջաղյան 2 նրբ.	\N	\N	3	1	Դանիելյան Լուսինե	10340966	95006279		Ղայթանչյան Գայանե	93112281				\N	\N	\N	jass.manasyan@gmail.com
1126	Երևանի Լ. Արիսյանի անվ. թիվ 127 ա/դ	8	5	Պ. Սևակի 11	\N	\N	3	1	Էլոյան Նելսիկ	91456727	95006278	281332	Հայրապետյան Մարիամ	281332	93287870	55020543		19	42	\N	jass.manasyan@gmail.com
1127	Երևանի Լ. Բելինսկու անվ. թիվ 38 հմ/դ	8	5	Գ. Նժդեհի 22	\N	\N	3	1	Վանեսքեհյան Ավետիք	98380038	440066		Սարգսյան Ռոզա	91317694				12	14	\N	jass.manasyan@gmail.com
1128	Երևանի Լ. Շանթի անվ. թիվ 4 հմ/դ	8	5	Ալեք Մանուկյան 3	\N	\N	3	1	Արմենուհի Զուռնաչյան	552771			Վրեժուհի	99065665				7	10	\N	jass.manasyan@gmail.com
1129	Երևանի Լ. Տոլստոյի անվ. թիվ 128 հմ/դ	8	5	Ազատության 5	\N	\N	3	1	Անահիտ ՈՒզունյան	200012	95006274		Սիմոնյան Գայանե	99257472				5	13	\N	jass.manasyan@gmail.com
1130	Երևանի Լիսիցիանի անվ. թիվ 34 հմ/դ	8	5	Տիգրան Մեծի 38	\N	\N	3	1	Նաիրա Մանուկյան	550170	77040305		Փանաջյան Զարուհի	93454795				\N	\N	\N	jass.manasyan@gmail.com
1131	Երևանի Խ. Աբովյանի անվ. թիվ 84 հմ/դ	8	5	Քանաքեռ 14 փող. թիվ 1	\N	\N	3	1	Էլոյան Արկադի	91428003	95006272	283591						\N	\N	\N	jass.manasyan@gmail.com
1132	Երևանի Խ. Աբովյանի ՀՊՄՀ-ի հենակետային վարժ. ա/դ	8	5	Ագաթանգեղոսի 7ա	\N	\N	3	1	Նաիրա Սաֆարյան	91428863	95006271	552272	Նարինե	77428863				21	21	\N	jass.manasyan@gmail.com
1133	Երևանի Խ. Սամուելյանի անվ. թիվ 47 հմ/դ	8	5	Սարի թաղ 5	\N	\N	3	1	Խաչատրյան Կարինե	578507	96459040		570310					\N	\N	\N	jass.manasyan@gmail.com
1134	Երևանի Խաչատուր Աբովյանի անվ. թիվ 2 հմ/դ	8	5	ք. Երևան, Ա. Իսահակյանի 3	\N	\N	3	1	Հակոբյան Իռեն	583862	95006268	091/483090	Մխիթարյան Գոհար	99779078	55548543			12	12	\N	jass.manasyan@gmail.com
1135	Երևանի Կարեն Դեմիրճյանի անվ. թիվ 139 ա/դ	8	5	Ն/Ն Ն Ստեփանյան 3	\N	\N	3	1	Ջահանգիրյան Կլառա				Նարինե	43555586				\N	64	\N	jass.manasyan@gmail.com
1136	Երևանի Կոստան Զարյանի անվ. թիվ 117 հմ/դ	8	5	Ֆանարջյան 15	\N	\N	3	1	Մարիեն Արիստակեսյան	287697	93302404		Բաբայան Ժաննա	287697				\N	\N	\N	jass.manasyan@gmail.com
1137	Երևանի կույրերի երեկոյան հտ/դ	8	5	Ն. Տիգրանյան 6	\N	\N	3	1	Հովսեփյան Ալվարդ	91238778			Վահե 					\N	\N	\N	jass.manasyan@gmail.com
1138	Երևանի Հ. Մորգենթաուի անվ. թիվ 126 հմ/դ	8	5	Էստոնական 8	\N	\N	3	1	Արզանյան	91322309			Գոհար Մովսիսյան	55396910				\N	\N	\N	jass.manasyan@gmail.com
1139	Երևանի Հ. Աճառյանի անվ. թիվ 72 հմ/դ	8	5	Մխիթար Հերացու 2ա	\N	\N	3	1	Մարտիրոսյան Գայանե	91109943	553581	551843	Քաոյան Անի	93886882				\N	\N	\N	jass.manasyan@gmail.com
1140	Երևանի Հ. Ավետիսյանի անվ. թիվ 74 հմ/դ	8	5	Բագրատունյաց 23	\N	\N	3	1	Բալբաբյան Անահիտ	462240			Ղաջոյան Շուշան	77539602				15	18	\N	jass.manasyan@gmail.com
1141	Երևանի Հ.Գյուլիքեխվյանի անվ. թիվ 103 ա/դ	8	5	Զ. Սարկավագի 14	\N	\N	3	1	Սպարտակ Վարդանյան	091714541	95006815	284685	Գոհար  Ասատրյան	095070196				24	10	\N	jass.manasyan@gmail.com
1142	Երևանի Հ. Հովհաննիսյանի անվ. թիվ 52 հմ/դ	8	5	Շիրակի 3	\N	\N	3	1	Նարինե Շարյան	420642	95006816	91687272	Մարգարյան Մարիամ	55434643				25	25	\N	jass.manasyan@gmail.com
1143	Երևանի Հ. Պարոնյանի անվ. թիվ 59 հմ/դ	8	5	Վարշավյան 45	\N	\N	3	1	Ադամյան Սամվել	95006818	257279	93221227	Անուշ Ադամյան	55207742				13	14	\N	jass.manasyan@gmail.com
1144	Երևանի Հ. Սահյանի անվ. թիվ 70 հմ/դ	8	5	Սարի-թաղ 3-րդ փող., 44 շ.	\N	\N	3	1	Սահակ Փարվանյան	94060303			Անժելա	98453286				7	8	\N	jass.manasyan@gmail.com
1145	Երևանի Հակոբ Կոջոյանի անվ. թիվ 15 կթհ.	8	5	Մաշտոցի 2ա և 11	\N	\N	3	1	Սանյան Գոհար	95006821	564732		Հովհաննիսյան Վարդուհի	93863863				28	28	\N	jass.manasyan@gmail.com
1146	Երևանի ՀՊՃՀ ա/դ	8	5	Տերյան 105, 7-րդ մասնաշենք	\N	\N	3	1	Ա. Առաքելյան	520630			Ռուզաննա	520630				7	42	\N	jass.manasyan@gmail.com
1147	Երևանի Հրանտ Մաթևոսյանի անվ. 96 հմ/դ	8	5	Նոր-Նորք Դ. Մալյան -24	\N	\N	3	1	Լ. Մկրտչյան	91212107	95006825		Թորոսյան Լիլիթ	77122895				\N	\N	\N	jass.manasyan@gmail.com
1148	Երևանի Ղ. Աղայանի անվ. թիվ 63 հմ/դ	8	5	Կիևյան 9	\N	\N	3	1	Փիրումյան Լուսինե	220369			Լուիզա	77038687				11	15	\N	jass.manasyan@gmail.com
1149	Երևանի Ղևոնդ Ալիշանի անվ. թիվ 95 մ/դ	8	5	Նուբարաշեն 13 փող. 1 տուն	\N	\N	3	1	Ա. Բաղդասարյան	476041			Աննա 	77475342				4	39	\N	jass.manasyan@gmail.com
1150	Երևանի Մ. Աբեղյանի անվ. ԵՃՇՊՀ ա/դ	8	5	Խանջյան 9	\N	\N	3	1	Ա. Մարուխյան	526471	526471		Մարգարիտա	55481895				10	29	\N	jass.manasyan@gmail.com
1151	Երևանի Մ. Գալշոյանի անվան թիվ 148 ա/դ	8	5	Սունդուկյանի 78	\N	\N	3	1	Հերմինե Դավթյան	227366			Իզաբելլա	96033533				48	48	\N	jass.manasyan@gmail.com
1152	Երևանի Մ. Գորգիսյանի անվ. թիվ 158 հմ/դ	8	5	Շիրակի 2-րդ նրբ. 5	\N	\N	3	1	Գյուլումյան Արև	95006751	91727728		Հովսեփյան Օլյա	93241962				9	9	\N	jass.manasyan@gmail.com
1153	Երևանի Մ. Խորենացու անվ. 143 հմ/դ	8	5	Նորքի 3-րդ զ. Բաղյան 5	\N	\N	3	1	Գարեգին Կոստանդյան	91411334	633170		Նարինե Մամյան	665524	633170			8	8	\N	jass.manasyan@gmail.com
1154	Երևանի Մ. Մանուշյանի անվ. թիվ 48 հմ/դ	8	5	Դրոյի 11	\N	\N	3	1	Արիստակեսյան Ժ>	91889964			Արև Մովսիսյան	94884750				\N	\N	\N	jass.manasyan@gmail.com
1155	Երևանի Մ. Մեծարենցի անվ. թիվ 146 հմ/դ	8	5	Լուկաշինի 6	\N	\N	3	1	Ա. Դիլբանյան	91762352	95006718		Մարիետա Դավթյան	93300026				\N	\N	\N	jass.manasyan@gmail.com
1156	Երևանի Մ. Մխոյանի անվ. թիվ 68 հմ/դ	8	5	Նոր - Արեշ 8 փ. 56 տուն	\N	\N	3	1	Ազիզյան Սուսաննա	91555566	452980		Մարգարիտա					12	12	\N	jass.manasyan@gmail.com
1157	Երևանի Մ. Սարյանի անվ. թիվ 86. Հ մ/դ	8	5	Բագրատունյաց 45	\N	\N	3	1	Նվարդ Հակոբյան	93234720			Իսրաելյան Կարինե	77486244				3	7	\N	jass.manasyan@gmail.com
1158	Երևանի Մոնթե Մելքոնյանի անվ. թիվ 11 հմ/դ	8	5	Հ/Ա Բ2 թաղամաս	\N	\N	3	1	Ազիզյան Ռ.	91425393	95006716	720221	Համբարձումյան Գայանե	94923641				2	53	\N	jass.manasyan@gmail.com
1159	Երևանի Մուրացանի անվ. թիվ 18 հմ/դ	8	5	Բագրատունյաց 32	\N	\N	3	1	Անահիտ Ավետիսյան	483971			Դոնարա	99015123				8	15	\N	jass.manasyan@gmail.com
1160	Երևանի մտավոր թերզարգացում ունեցող երեխաների թիվ 11 հտ/դ	8	5	Նուբարաշեն 6 փող 1 շենք	\N	\N	3	1	Անահիտ Ենգիբարյան	475240			Սուրեն	96213077				7	9	\N	jass.manasyan@gmail.com
1161	Երևանի Յ. Լեփսիուսի անվ. թիվ 88 հմ/դ	8	5	Կարախանյան 11	\N	\N	3	1	Հարությունյան Գայանե	95006712	010666488		Հարությունյան Նահրուհի	95638862				10	18	\N	jass.manasyan@gmail.com
1162	Երևանի Ն. Աղբալյանի անվ. թիվ 19 հմ/դ	8	5	Տերյան 54	\N	\N	3	1	Արշրաֆյան Լիանա	587350	91690000		Լուսինե Խաչատրյան	93228682				1	25	\N	jass.manasyan@gmail.com
1163	Երևանի Ն. Գոգոլի անվ. թիվ 35 հմ/դ	8	5	Էրեբունի 16	\N	\N	3	1	Սարյան Ա.	452101			Հայհկանուշ Գրիգորյան	43177111	94166050			23	24	\N	jass.manasyan@gmail.com
1164	Երևանի Ն. Զարյանի անվ. թիվ 130 հմ/դ	8	5	Հ. Հակոբյանի նրբ. 3	\N	\N	3	1	Հովհաննիսյան Արմինե	222300			Անահիտ	96433544				20	20	\N	jass.manasyan@gmail.com
1165	Երևանի Ն. Խաչատրյանի անվ. թիվ 113 մ/դ	8	5	Հաղթանակ 6 փ. 51 շենք	\N	\N	3	1	Սուսաննա Խալաթյան	723051			Նարինե	94734425				22	33	\N	jass.manasyan@gmail.com
1166	Երևանի Ն. Մեծի անվ. թիվ 124 հմ/դ	8	5	Աճարյան 15	\N	\N	3	1	Ն. Մարտիրոսյան	91357180								\N	\N	\N	jass.manasyan@gmail.com
1167	Երևանի Ն. Սաֆարյանի անվ. թիվ 164 հմ/դ	8	5	Ն/Ն-2-րդ զ. Թոթովենցի 7	\N	\N	3	1	Ներսիսյան Արմինե	010629580			Գրիգորյան Սաթենիկ	94190895				16	20	\N	jass.manasyan@gmail.com
1168	Երևանի Ն. Ստեփանյանի անվ. թիվ 71 հմ/դ	8	5	Հանրապետության 72	\N	\N	3	1	Գայանե Դեմիրյան	91430036	560311		Ռուզաննա Սարուխանյան	55560314				1	21	\N	jass.manasyan@gmail.com
1169	Երևանի Նար-Դոսի անվ. թիվ 14 մ/դ	8	5	Երվանդ Քոչարի 12/1	\N	\N	3	1	Բարսեղյան Արուսյակ	550744	95006748	93433615	Արմինե Մանուկյան	93164674				\N	\N	\N	jass.manasyan@gmail.com
1170	Երևանի Շ. Ռուսթավելու անվ. թիվ 23 հմ/դ	8	5	Ռուսթավելու 17	\N	\N	3	1	Արուսյակ Ադյան	95006747	91329691							\N	\N	\N	jass.manasyan@gmail.com
1171	Երևանի Շ. Սիմոնյանի անվ. թիվ 112 ա/դ	8	5	Սեբաստիա 84ա	\N	\N	3	1	Քարամյան Սարգիս	91409487	95006746	774646	Հրածին	96563094				5	30	\N	jass.manasyan@gmail.com
1172	Երևանի Պ. Սևակի անվ. թիվ 123 հմ/դ	8	5	Նոր-Արեշ 35 փողոց, հ. 2	\N	\N	3	1	Վ. Թելունց	459710			Սիմոնյան Անժելա	454806				16	16	\N	jass.manasyan@gmail.com
1173	Երևանի պարարվեստի պետական քոլեջ	8	5	Բայրոնի 5	\N	\N	3	1	Հասմիկ Մարկոսյան	564426			Վելիջանյան Գայանե	93190277	95260427			6	10	\N	jass.manasyan@gmail.com
1174	Երևանի Ռ. Սևակի անվ. թիվ 151 հմ/դ	8	5	Բաբայան 40	\N	\N	3	1	Մարգարյան Իզաբելլա	256355			Աղամյան Մարինա	93567477				20	35	\N	jass.manasyan@gmail.com
1175	Երևանի Ս. Բյուրատի անվ. թիվ 125 հմ/դ	8	5	Պարույր Սևակի 89	\N	\N	3	1	Լիլիթ Անտոնյան	096466364	95006742		Ալավերդյան Եպրաքսյա	99433004				14	54	\N	jass.manasyan@gmail.com
1176	Երևանի Ս. Գևորգյանի անվ. թիվ 189 ա/դ	8	5	Տիգրան Պետրոսյան 1 թաղ.	\N	\N	3	1	Պետրոսյան Սերգեյ	91430889	95006741							\N	\N	\N	jass.manasyan@gmail.com
1177	Երևանի Ս. Խանզադյանի անվ. թիվ 184 ա/դ	8	5	Շերամի փողոց 91ա	\N	\N	3	1	Մարիամ Կիրակոսյան	41710900			Հասմիկ	 95748008				22	44	\N	jass.manasyan@gmail.com
1178	Երևանի Ս. Հովսեփյանի անվ. թիվ 115 ա/դ	8	5	Շիրակի 72/1	\N	\N	3	1	Անտոնյան Գոհար	95006738	77994811		Արմեն Մկրտչյան	91212931				29	46	\N	jass.manasyan@gmail.com
1179	Երևանի Ս. Շահմուրադյանի անվ. թիվ 85 հմ/դ	8	5	Ծարավ-Աղբյուրի 21	\N	\N	3	1	Ղուկասյան Դիանա	95006737	91454624	287727	Նարինե Թարջումանյան	91907751				\N	\N	\N	jass.manasyan@gmail.com
1180	Երևանի Ստ. Զորյանի անվ. թիվ 56 հմ/դ	8	5	Հ. Քոչարի 13	\N	\N	3	1	Ս. Գալստյան	95006736	272070	228830	Քալողյան Շողիկ	91107768				30	39	\N	jass.manasyan@gmail.com
1181	Երևանի Ստ. Շահումյանի անվ. թիվ 1 հմ/դ	8	5	Մաշտոցի պող. 33	\N	\N	3	1	Աննա Եղյան	533223	533223		Անժելա	96805414				11	11	\N	jass.manasyan@gmail.com
1182	Երևանի Ստարովայտովայի անվ. թիվ 177 հմ/դ	8	5	Դուրյան թաղ. 3-24	\N	\N	3	1	Մադոյան Ռաֆաել	91346454								\N	\N	\N	jass.manasyan@gmail.com
1183	Երևանի Վ. Զատիկյանի անվ. թիվ 90 հմ/դ	8	5	Բատիկյան 89	\N	\N	3	1	Խոցանյան Սոխակ	772536	93270000		Երվանդ	99707395				33	47	\N	jass.manasyan@gmail.com
1184	Երևանի Վ. Թեքեյանի անվ. թիվ 92 հմ/դ	8	5	Սեբաստիա 54	\N	\N	3	1	Մարդանյան Ծովինար	95006731	344005	98344005	արփինե Զաքինյան	91775202				\N	\N	\N	jass.manasyan@gmail.com
1185	Խ. Աբովյանի անվան ՀՊՄՀ-ի հիմնական դպրոց	8	5	Դեղատան 17	\N	\N	3	\N	Ս. Խաչատրյան	527826	95006729	93558844	Նոնա Հայրապետյան	55887001				\N	\N	\N	\N
1186	Երևանի Վ. Համբաձումյանի անվ. թիվ 12 հմ/դ	8	5	Գ. Նժդեհի 11	\N	\N	3	1	Ստեփանյան Վլադիմիր	95006728	91406901		Գայանե	93887216				19	19	\N	jass.manasyan@gmail.com
1187	Երևանի Վ. Համբարձումյանի անվ. թիվ 17 հմ/դ	8	5	Սասունցի-Դավթի 78	\N	\N	3	1	Նաիրուհի Սարգսյան	450952			Երանոսյան Նունե	91471435				\N	\N	\N	jass.manasyan@gmail.com
1188	Երևանի Վ. Մայակովսկու անվ. թիվ 7 հմ/դ	8	5	Գրիգոր Լուսավորչի 7	\N	\N	3	1	Ռուխկյան Վիկտորիա	95006726	524621	77704441	Հռիփսիմե	527929				14	50	\N	jass.manasyan@gmail.com
1189	Երևանի Վ. Վաղարշյանի անվ. թիվ 80 հմ/դ	8	5	Ծովակալ Իսակովի 2/1	\N	\N	3	1	Արսենյան Ռիտա	91210037			Գայանե Եսայան	99294939				\N	\N	\N	jass.manasyan@gmail.com
1190	Երևանի Վ. Վարդևանյանի անվ. թիվ 173 հմ/դ	8	5	Հ. Հովսեփյան 4	\N	\N	3	1	Մարինյան Նարինե	91180862	95006724		Անի					10	12	\N	jass.manasyan@gmail.com
1191	Երևանի Վ. Տերյանի անվ. թիվ 60 հմ/դ	8	5	Տիգրան Մեծի 42	\N	\N	3	1	Իսկանդարյան Անիչկա	550070	77099522		Տաթևիկ Դավթյան	77565181				18	19	\N	jass.manasyan@gmail.com
1192	Երևանի Րաֆֆու անվան թիվ 36 հմ/դ	8	5	Արաբկիր Կոմիտաս 37	\N	\N	3	1	Նունե Ղազարյան	234856	91311189		Լիլիթ	95870800				2	7	\N	jass.manasyan@gmail.com
1193	Երևանի օլիմպիական հերթափոխի պետական մարզական մգ մ/դ	8	5	Մանուկյան 31	\N	\N	3	1	Գաբրիելյան Արմեն	773430			Աղավնի Տիգրանյան	94722182				\N	\N	\N	jass.manasyan@gmail.com
1194	Ալավերդու Ս. Նովայի անվ. թիվ 8 մ/դ	8	6	ք. Ալավերդի, Սան. Սարահարթ 3-10 ա	\N	\N	3	1	Բաբայան Ա.	94099081				91641425				\N	\N	\N	jass.manasyan@gmail.com
1195	Ալավերդու Ստ. Շահումյանի անվ. թիվ 5 մ/դ	8	6	ք. Ալավերդի, Խուդյակովի 2ա	\N	\N	3	1	Մելիքսեթյան Լաուրա	91009044	95007361		Վարդանյան Էլմիրա	22231				\N	\N	\N	jass.manasyan@gmail.com
1196	Ալավերդու Ակների թիվ 11 մ/դ	8	6	ք. Ալավերդի, Ակներ	\N	\N	3	2	Ծատինյան Անահիտ	99062871			Հայարփի Սիմոնյան	91696270				3	4	\N	sonahdavtyan@gmail.com
1197	Ալավերդու Ե. Չարենցի անվ. թիվ 9 մ/դ	8	6	ք. Ալավերդի, Դեբետի 60 ա	\N	\N	3	1	Ա. Գորգինյան	91591698			Անահիտ Գորգինյան	99591698				\N	\N	\N	jass.manasyan@gmail.com
1198	Ալավերդու թիվ 12 մ/դ	8	6	ք. Ալավերդի, Սարահարթ 2/26 ա	\N	\N	3	1	Գոհարիկ Ավետյան	55777175			Գոհար Բարսեղյան	55446080				13	15	\N	jass.manasyan@gmail.com
1199	Ալավերդու թիվ 4 մ/դ	8	6	ք. Ալավերդի, Սանահին թաղ.	\N	\N	3	1	Մոսինայն Նունե	91933440			Այդինյան Այդա	32506				\N	\N	\N	jass.manasyan@gmail.com
1200	Ալավերդու Թումանյանի անվ. թիվ 2 մ/դ	8	6	ք. Ալավերդի, Ջրավազանի 6ա	\N	\N	3	1	Լուսինե Միքաելյան	25323057	91022583		Մելանիա Անդրեասյան	094 93-94-84				\N	\N	\N	jass.manasyan@gmail.com
1201	Ալավերդու Մ. Թանդիլյանի անվ. թիվ 10 հմ/դ	8	6	ք. Ալավերդի, Շահումյան-2ա	\N	\N	3	1	Նալբանդյան Սեդա	94581518			Սեդա Բաղդասարյան	99712571				\N	\N	\N	jass.manasyan@gmail.com
1202	Ալավերդու Մյասնիկյանի անվ. թիվ 7 մ/դ	8	6	ք. Ալավերդի, Սանահին կայ. դպրոցական.114	\N	\N	3	2	Ռոզա Մելիքսեթյան	93731415	95007656	91067755	Մելքոնյան Մանանա	91100885				4	8	\N	sonahdavtyan@gmail.com
1203	Ալավերդու Ս. Սպանդարյանի անվ. թիվ 1 մ/դ	8	6	ք. Ալավերդի, Էնգելսի 2 ա	\N	\N	3	1	Սեդա Վահրամյան	95007461	91435941		Սերինե Հակոբյան	0253 23-72	96363836			\N	\N	\N	jass.manasyan@gmail.com
1204	Բազումի մ/դ	8	6	գ. Բազում	\N	\N	3	1	Ալավերդյան Մեխակ	91959525	77669525		Լիլիթ Հովհաննիսյան	98111949				4	8	\N	jass.manasyan@gmail.com
1205	Արջուտի մ/դ	3	6	գ. Արջուտ	\N	\N	3	2	Մեսրոփյան Գայանե	93095678			Չավուշյան Նառա	93805905				1	3	\N	jass.manasyan@gmail.com
1206	Դարպասի մ/դ	8	6	գ. Դարպաս	40.8321290000000019	44.4275710000000004	3	2	Սերգեյ Գյուրջանյան	93916180			Հասմիկ Արտենյան	03226-29-44	93831895			6	11	\N	jass.manasyan@gmail.com
1207	Շահումյանի մ/դ	8	6	գ. Շահումյան	\N	\N	3	2	Սամվել Հակոբյան	94957515					Աննա Ավագյան	94327216		3	15	\N	jass.manasyan@gmail.com
1208	Սպիտակի Ա. Շիրակացու անվ. թիվ 8 մ/դ	8	6	ք. Սպիտակ, Երևանյան խճ. 1	\N	\N	3	1	Լուսիկ Սարդարյան	96105601	94175600		Պողոսյան Մհեր	91672769				8	12	\N	jass.manasyan@gmail.com
1209	Սպիտակի թիվ 2 մ/դ	8	6	ք. Սպիտակ, Ս. Ավետիսյան 1	\N	\N	3	1	Մաթոսյան Լուսինե	91572275	55693900		Մելինե Մելքոնյան	0255 2 -23 -80	99163073			16	24	\N	jass.manasyan@gmail.com
1210	Սպիտակի թիվ 5 հիմնական դպրոց	8	6	ք. Սպիտակ, Իտալական թաղամաս	\N	\N	3	1	Յարմալոյան Մարինե	99684435			Մաթոսյան Նառա	99599050				2	11	\N	jass.manasyan@gmail.com
1211	Սպիտակի թիվ 3 հմ/դ	8	6	ք. Սպիտակ, Պանրագործների	\N	\N	3	1	Հարությունյան Շահեն	99962526	95893834 	25524319	Թագուհի Ոսկանյան	93442410	96442410			2	5	\N	jass.manasyan@gmail.com
1212	Սպիտակի Ս. Ավետիսյանի անվ. թիվ 3 ա/դ 	8	6	ք. Սպիտակ, Շահումյան 15	\N	\N	3	1	Սարդարյան Երանուհի	55333877			Լիլիթ Գրիգորյան	93946183				28	50	\N	jass.manasyan@gmail.com
1213	Սպիտակի Վարդանանց անվ. թիվ 4 մ/դ	8	6	ք. Սպիտակ, Այգեստան 53	\N	\N	3	1	Օֆելյա Պետրոսյան	55953787	93953787		Սաթիկ Հովհաննիսյան	94247719				7	11	\N	jass.manasyan@gmail.com
1214	Ամրակիցի մ/դ	8	6	գ. Ամրակից	\N	\N	3	2	Սարգսյան Գոհար	95016859			Մատինյան Զարուհի	094644102				5	7	\N	jass.manasyan@gmail.com
1215	Գարգառի Վ. Բալայանի անվ. մ/դ	8	6	գ. Գարգառ	\N	\N	3	2	Չիլինգարյան Գագիկ	93598839			Սիրվարդ Հարությունյան	99862129				2	10	\N	jass.manasyan@gmail.com
1216	Գյուլագարակի մ/դ	8	6	գ. Գյուլագարակ	\N	\N	3	2	Մատինյան Գառնիկ	93098609			Շավերդյան Լուսինե	77126027				5	10	\N	jass.manasyan@gmail.com
1217	Լոռի Բերդի հմ/դ	8	6	գ. Լոռի Բերդ	\N	\N	3	2	Ավագյան Էդիկ	91777053			Մելիքյան Լիլիթ	94036400				\N	\N	\N	jass.manasyan@gmail.com
1218	Կողեսի հմ/դ	8	6	գ. Կողես	\N	\N	3	2	Ներսեսյան Իրինա	93021508			Հասմիկ Մամաջանյան	55592555				3	5	\N	jass.manasyan@gmail.com
1219	Հոբարձու մ/դ	8	6	գ. Հոբարձի	\N	\N	3	2	Կարինե Գալստյան	93881855			Սահակյան Անի	98691684				3	9	\N	jass.manasyan@gmail.com
1220	Յաղդանի հմ/դ	8	6	գ. Յաղդան	\N	\N	3	2	Սիմոնյան Անահիտ	93216947			Աննա Սաքանյան	98158371				2	4	\N	jass.manasyan@gmail.com
1221	Պուշկինոյի հմ/դ	8	6	գ. Պուշկինո	\N	\N	3	2	Քալաշյան Գառնիկ	94037843			Նազարյան Նարեկ	55565859				3	6	\N	jass.manasyan@gmail.com
1222	Վարդաբլուրի մ/դ	8	6	գ. Վարդաբլուր	\N	\N	3	2	Հարությունյան Հայկարամ	93226180			Ասրյան Գայանե	99922818				5	8	\N	jass.manasyan@gmail.com
1223	Արմանիսի հմ/դ	8	6	գ. Արմանիս	\N	\N	3	2	Արամ Մխոյան	94715273	99715273		Լիզա Վարդանյան	93072077				\N	\N	\N	jass.manasyan@gmail.com
1685	Գառնիի ամբուլատորիա	11	7		40.1172559999999976	44.7265769999999989	3	2										\N	\N	\N	jass.manasyan@gmail.com
1224	Բովաձորի մ/դ	8	6	գ. Բովաձոր	\N	\N	3	2	Խարազյան Սամվել	95007425	25660075	091649106	Կորյուն	093663737				\N	\N	\N	sarmen@hf.am
1225	Լեջանի մ/դ	8	6	գ. Լեջան	\N	\N	3	2	Սահակյան Անահիտ	91153979			Չոբանյան Էլեն	77232216				2	4	\N	jass.manasyan@gmail.com
1226	Ուռուտի մ/դ	8	6	գ. Ուռուտ	\N	\N	3	2	Անուշ Օհանյան	94759892			Այվազյան Հեղինե	91046076	94844324			5	11	\N	jass.manasyan@gmail.com
1227	Ուրասարի հմ/դ	8	6	գ. Ուրասար	\N	\N	3	2	Շոլինյան Մարիամ	94788796	93565804		Կոստանդյան Ստեփան	94788796				4	5	\N	jass.manasyan@gmail.com
1228	Սվերդլովի մ/դ	8	6	գ. Սվերդլով	\N	\N	3	2	Արմեն Ղուկասյան	55236335	95007423	95007423	Սաքանյան Մարինե	91088648				3	5	\N	jass.manasyan@gmail.com
1229	Ստեփանավանի Ա. Պուշկինի անվ. թիվ 2 մ/դ	8	6	ք. Ստեփանավան, Սուրբ-Նշանի 39	\N	\N	3	1	Հարությունյան Լիլիա	95007449	25622532	94109119	Գագինյան Նարինե	91232311				18	18	\N	jass.manasyan@gmail.com
1230	Ստեփանավանի Երևանի բժշկահոգեբանամանկավարժական գնահատման կենտրոնի մասնաճյուղ հտ/հմդ	8	6	ք. Ստեփանավան, Երիտասարդական 51	\N	\N	3	1	Նավասարդյան Գայանե	96555568			Ջանջուղազյան Հասմիկ	91004262				2	2	\N	jass.manasyan@gmail.com
1231	Ստեփանավանի Հ. Թումանյանի անվ. ա/դ	8	6	ք. Ստեփանավան, Մեղապարտի 15-ա	\N	\N	3	1	Սեդա Թունյան	91760696			Մովսեսյան Գայանե	91193706				16	62	\N	jass.manasyan@gmail.com
1232	Ստեփանավանի Մ. Խորենացու անվ. թիվ 3 մ/դ	8	6	ք. Ստեփանավան, Աշոտաբերդ թ.	\N	\N	3	1	Մկրտչյան Նառա	25623186	95007286		Նոնա Բեժանյան	25624964	95007826	077057124		6	16	\N	jass.manasyan@gmail.com
1233	Ստեփանավանի Ստ. Շահումյանի անվ. թիվ 1 մ/դ	8	6	ք. Ստեփանավան, Մ.Բաղրամյա	\N	\N	3	1	Սարգսյան Գայանե	93335132			Գայանե Գևորգյան	99005909				12	12	\N	jass.manasyan@gmail.com
1234	Ստեփանավանի Վ. Թեքեյանի անվ. թիվ 6 մ/դ	8	6	ք. Ստեփանավան, Ս. Վարդանի 1	\N	\N	3	1	Հմայակ Մարտիրոսյան	43334234			Մարգարիտա Զարգարյան	77001137				24	24	\N	jass.manasyan@gmail.com
1235	Ստեփանավանի վարժ.	8	6	ք. Ստեփանավան, Բաղրամյան 67	\N	\N	3	1	Հերմինե Ջանջուղազյան	94110031			Չոբանյան Անժելա	55428746	77359735			3	10	\N	jass.manasyan@gmail.com
1236	ՀՊՃՀ Վանաձորի կրթահամալիրին կից ճարտարագիտական թեքումով հենակետային ավագ-դպրոց վարժարան	8	6	ք. Վանաձոր, Մաշտոցի 117	\N	\N	3	1	Սիրադեղյան Արմեն	93698847			Նաիրա Աղամովա	77683511				1	12	\N	jass.manasyan@gmail.com
1237	ՎՊՄԻ հենակետային վարժարան ա/դ	8	6	ք. Վանաձոր, Տիգրան Մեծի 3	\N	\N	3	1	Սամվել Աղաջանյան	93339029			Դավիթյան Անի	55410178				4	15	\N	jass.manasyan@gmail.com
1238	Վանաձորի «Վիդրոջենյա» թիվ 28 հմ/դ	8	6	ք. Վանաձոր, Տարոն 2, ՔՇՀ-3	\N	\N	3	1	Բրուտյան Ալբերտ	93643343			Մխիթարյան Ռիտա	60423	95007341			10	18	\N	jass.manasyan@gmail.com
1239	Վանաձորի Ա. Բակունցի անվ. թիվ 7 հմ/դ	8	6	ք. Վանաձոր, Թևոսյան 1ա	\N	\N	3	1	Լուսիկ Սարգսյան	94062686			Մանե Յոլչյան	93725811				10	13	\N	jass.manasyan@gmail.com
1240	Վանաձորի Ա. Խլղաթյանի անվ. թիվ 18 մ/դ	8	6	ք. Վանաձոր, Երևանյան խճ. 155	\N	\N	3	1	Մուրադյան Արսեն	91586153			Անուշ Ղևոնդյան	94474474				4	30	\N	jass.manasyan@gmail.com
1241	Վանաձորի Գ. Չաուշի անվ. թիվ 24 մ/դ	8	6	ք. Վանաձոր, Ներսիսյան 6	\N	\N	3	1	Հասմիկ Հովսեփյան	93118411			Լուսինե Գալստյան	99292769				32	34	\N	jass.manasyan@gmail.com
1242	Վանաձորի Գայի անվ. թիվ 21 հմ/դ	8	6	ք. Վանաձոր, Նիզամու	\N	\N	3	1	Սուլյան Սարգիս	93229849	032248177		Արմենուհի Ստեփանյան	99048896				6	7	\N	jass.manasyan@gmail.com
1243	Վանաձորի Եղ. Չարենցի անվ. թիվ 12 հմ/դ	8	6	ք. Վանաձոր, Անանիա Շիրակացու 12 ա	\N	\N	3	1	Հովակիմյան Մարինե	55203346			Մելքոնյան Էդիտա	55811898				3	7	\N	jass.manasyan@gmail.com
1244	Վանաձորի թիվ 1 հատուկ (օժանդակ) դպրոց	8	6	ք. Վանաձոր, Բաղրամյան պ/նրբ.22	\N	\N	3	1	Հարությունյան Սասուն	99996628			Պողոսյան Զինա					\N	\N	\N	jass.manasyan@gmail.com
1245	Վանաձորի Խ. Աբովյանի անվ. թիվ 9 մ/դ	8	6	ք. Վանաձոր, Զորավար Անդրանիկի 71	\N	\N	3	1	Վարդանյան Անահիտ	55217759			Աննա Հովհաննիսյան	98555415				13	15	\N	jass.manasyan@gmail.com
1246	Վանաձորի Ծովակալ Իսակովի անվ. թիվ 23 մ/դ	8	6	ք. Վանաձոր, 3 ուսանողական	\N	\N	3	1	Տաթևիկ Հովսեփյան	99026292			Թագուհի Մամյան	91933353				12	22	\N	jass.manasyan@gmail.com
1247	Վանաձորի Դ. Վարուժանի անվ. թիվ 16 հմ/դ	8	6	ք. Վանաձոր, Տարոն 4	\N	\N	3	1	Հարությունյան Նաիրա	93402523	032261981		Մելինե Զուրաբյան	77940409				25	29	\N	jass.manasyan@gmail.com
1248	Վանաձորի Ղ. Ալիշանի անվ. թիվ 27 հմ/դ	8	6	ք. Վանաձոր, Տարոն 4	\N	\N	3	1	Գարեգին Քարհանյան	99002280	94108222		Հախվերդյան Ռուզաննա	55017477	99957025			20	20	\N	jass.manasyan@gmail.com
1249	Վանաձորի Մ. Խորենացու անվ. թիվ 17 ա/դ	8	6	ք. Վանաձոր, Բաղրամյան 88	\N	\N	3	1	Սաղաթելյան Թամարա	93266001			Լուսինե Գրիգորյան	98101453				\N	25	\N	jass.manasyan@gmail.com
1250	Վանաձորի Մ. Մաշտոցի անվ. թիվ 15 հմ/դ	8	6	ք. Վանաձոր, Աղայան 69	\N	\N	3	1	Տիգրան Հեղինյան	94449293	032228285		Անի Մնացականյան	94110902				4	7	\N	jass.manasyan@gmail.com
1251	Վանաձորի Մաթեմատիկայի և բնագիտ. առարկաների խորացված ուսուցմամբ վարժ.	8	6	ք. Վանաձոր, Վարդանանց 100	\N	\N	3	1	Ծատուրյան Արմեն	91208126			Պողոսյան Իրինա	93330125				34	37	\N	jass.manasyan@gmail.com
1252	Վանաձորի Մարշալ Բաղրամյանի անվ. թիվ 26 հմ/դ	8	6	ք. Վանաձոր, Սիվաշավան	\N	\N	3	1	Խարազյան Մարգարիտա	91752146	91752146	94752146	Ինեսա Գրիգորյան	55888679	98857412			2	6	\N	jass.manasyan@gmail.com
1253	Վանաձորի Պ. Սևակի անվ. թիվ 30 հմ/դ	8	6	ք. Վանաձոր, Տարոն 2, Ուկրաինական	\N	\N	3	1	Դարբինյան Սուսաննա	95007241	99360069		Վարդուհի Ասլանյան	77811992				18	19	\N	jass.manasyan@gmail.com
1254	Վանաձորի Սոսի անվ. թիվ 13 մ/դ	8	6	ք. Վանաձոր, Թաղամաս 3 ուսանողական 11	\N	\N	3	1	Էմինյան Գագիկ	0322-2-65-07	93705960		Լիանա Ռամազյան	77805441				1	40	\N	jass.manasyan@gmail.com
1255	Վանաձորի Ստ. Զորյանի անվ. թիվ 22 հմ/դ	8	6	ք. Վանաձոր, Բանակի 29	\N	\N	3	1	Դավիթ Մելքոնյան	91540050			Գայանե Եգանյան	99322962	95322962			13	13	\N	jass.manasyan@gmail.com
1256	Վանաձորի Ստ. Շահումյանի անվ. թիվ 6 հմ/դ	8	6	ք. Վանաձոր, Գր. Լուսավորչի 47	\N	\N	3	1	Ասատրյան Նազելի	93139977			Ռուզաննա Պեպանյան	77343389				8	13	\N	jass.manasyan@gmail.com
1257	Վանաձորի Ա. Մաթրոսյանի անվ. թիվ 8 հմ/դ	8	6	ք. Վանաձոր, Մաշտոցի 7	\N	\N	3	1	Սարուխանյան Անուշ	095758507	91533349	032249237	Մխիթարյան Սյուզաննա	77641652				1	21	\N	jass.manasyan@gmail.com
1258	Վանաձորի Ա. Պուշկինի անվ. թիվ 4 հմ/դ	8	6	ք. Վանաձոր, Տիգրան Մեծի 23	\N	\N	3	1	Խումարյան Համլետ	94817600			Լիանա Կարապետյան	91816571				20	20	\N	jass.manasyan@gmail.com
1259	Վանաձորի Ա.Հ.Կ. Վազգեն 1-ի  անվ. թիվ 1 հմ/դ	8	6	ք. Վանաձոր, Մյասնիկյան 10	\N	\N	3	1	Սարուխանյան Լիլիթ	91520951			Միկիչյան Արեգ	93506444				15	19	\N	jass.manasyan@gmail.com
1260	Վանաձորի Ավ. Իսահակյանի անվ. թիվ 2 հմ/դ	8	6	ք. Վանաձոր, Մխ.Հերացու 20	\N	\N	3	1	Մամուլյան Հակոբ	93388628			Խաչատրյան Արմինե	77104474				8	8	\N	jass.manasyan@gmail.com
1261	Վանաձորի թիվ 1 ա/ու	8	6	ք. Վանաձոր, Կ. Դեմիրճյանի 23	\N	\N	3	1	Ղարաքեշիշյան Կարեն	93022221	032220410		Ղարաքեշիշյան Լիլիթ	99502221				11	11	\N	jass.manasyan@gmail.com
1262	Վանաձորի Պ. Տիչինայի անվ. թիվ 20 հմ/դ	8	6	ք. Վանաձոր, Տիգրան Մեծի 75ա	\N	\N	3	1	Աթոյան Կարինե	40074	093 111-889		Լիզա Մարգարյան	94991465				18	21	\N	jass.manasyan@gmail.com
1263	Վանաձորի Հ. Թումանյանի անվ. թիվ 3 հմ/դ	8	6	ք. Վանաձոր, Տիգրան Մեծի 31	\N	\N	3	1	Հեղինե Կոստանյան	91766202			Նաիրա Մխիթարյան	93078009				3	7	\N	jass.manasyan@gmail.com
1264	Վանաձորի Ս. Նովայի անվ. թիվ 10 ա/դ	8	6	ք. Վանաձոր, Աղայան	\N	\N	3	1	Պարանյան Խաչատուր Գուրգենի	098 54-25-66	055 54-25-66	0322 4 93 31	Մուրադյան Աննա, Սարգսյան Սիլվա	77278849	77325133			72	72	\N	jass.manasyan@gmail.com
1265	Վանաձորի Վ. Համբարձումյանի անվ. թիվ 25 մ/դ	8	6	ք. Վանաձոր, Համբարձումյանի 2 շ.	\N	\N	3	1	Անահիտ Ղազումյան	91746321			Արթուր Գրիգորյան	77943430				23	29	\N	jass.manasyan@gmail.com
1266	Վանաձորի Տերյանի անվ. թիվ 5 ա/դ	8	6	ք. Վանաձոր, Տիգրան Մեծի փակուղի 1-1	\N	\N	3	1	Բարոյան Լյովա	93091196			Սարգսյան Արփինե	93730663				30	48	\N	jass.manasyan@gmail.com
1267	Վանաձորի Րաֆֆու անվ. թիվ 19 մ/դ	8	6	ք. Վանաձոր, Չուխաջյան 12ա	\N	\N	3	1	Անուշ Եդոյան	55068668	032247714		Նելլի Գրիգորյան, Թորոսյան Անուշ	94043326	093209785			20	32	\N	jass.manasyan@gmail.com
1268	Բլագոդորնոյեի հմ/դ	8	6	գ. Բլագոդարնոյե	\N	\N	3	2	Սուքիասյան Սուսաննա	93028750			Մանուկյան Լաուրա	98871995				2	5	\N	jass.manasyan@gmail.com
1269	Դաշտադեմի մ/դ	3	6	գ. Դաշտադեմ	\N	\N	3	2	Աղաջանյան Սերգեյ	55 857585	98085898  		Զաքարյան Ելիզավետա	77080394				2	4	\N	jass.manasyan@gmail.com
1270	Լեռնահովիտի մ/դ	8	6	գ. Լեռնահովիտ	\N	\N	3	2	Բուլղադարյան Արաքսյա	94017089			Հեղինե Պողոսյան	77389096				5	20	\N	jass.manasyan@gmail.com
1271	Կաթնառատի մ/դ	8	6	գ. Կաթնառատ	\N	\N	3	2	Ռեվազյան Հայկանուշ	93881824			Մովսիսյան Անիկ	94728009				1	9	\N	jass.manasyan@gmail.com
1272	Ձյունաշողի մ/դ	8	6	գ. Ձյունաշող	\N	\N	3	2	Արթուր Սարկիսով	94253546			Նարինե Ազոյան	98721646				3	3	\N	jass.manasyan@gmail.com
1273	Մեդովկայի մ/դ	8	6	գ. Մեդովկա	\N	\N	3	2	Սուսաննա Ավդալյան	94103623								2	5	\N	jass.manasyan@gmail.com
1274	Մեծավանի թիվ 1 մ/դ	8	6	գ. Մեծավան	\N	\N	3	1	Դումիկյան Սուսաննա	77264725			Սոլոյան Անի	77500879				2	14	\N	jass.manasyan@gmail.com
1275	Մեծավանի թիվ 2 մ/դ	8	6	գ. Մեծավան	\N	\N	3	2	Արարատ Սոլոյան	098426242				94859636				3	5	\N	Armen.hayrapetyan@hf.am
1276	Տաշիրի ա/դ	8	6	ք. Տաշիր, Սայաթ-Նովա 5	\N	\N	3	1	Պետրոսյան Արշակ	91421723			Լոռա Հազոյան	77420381				15	35	\N	jass.manasyan@gmail.com
1277	Տաշիրի թիվ 2 հմ/դ	8	6	ք. Տաշիր, Կ. Դեմիրճյան	\N	\N	3	1	Սալվի ՄելոյաՆ	91201580	94201588		Բաղդասարյան Սյուզաննա	94212055				2	14	\N	jass.manasyan@gmail.com
1278	Տաշիրի թիվ 1 հմ/դ	8	6	ք. Տաշիր	\N	\N	3	1	Դրմեյան Բագրատ	94011504			Պապախչյան Արմեն	94223898				7	9	\N	jass.manasyan@gmail.com
1279	Սարատովկայի մ/դ	8	6	գ. Սարատովկա	\N	\N	3	2	Մարդոյան Ռիմա	98907165			Մադոյան Նարինե	77977625				6	6	\N	jass.manasyan@gmail.com
1280	Աբովյանի թիվ 1 հտ/դ	8	7	ք. Աբովյան	\N	\N	3	1	Տաթևիկ Շիրինյան	93549367			Ռոզա-գործավար	77564055	Հովհաննիսյան Լիպարիտ	077497746		2	3	\N	jass.manasyan@gmail.com
1281	Աբովյանի թիվ 8 հմ/դ	8	7	ք. Աբովյան, Սարալանջ	\N	\N	3	1	Լուսինե Բաղդասարյան	93301247			Լիլիթ Պետրոսյան	77433400				2	6	\N	jass.manasyan@gmail.com
1282	Աբովյանի Ն. Վանյանի անվ. թիվ 5 մ/դ	8	7	ք. Աբովյան, 2-րդ միկրոշրջան	\N	\N	3	1	Էմին Եղիազարյան	93593232								\N	\N	\N	jass.manasyan@gmail.com
1283	Եղվարդի թիվ 3 հմ/դ	8	7	ք. Եղվարդ, Երևանյան 7	40.3085060000000013	44.4763420000000025	3	1	Հայկանուշ Հովհաննիսյան	93722969			Գևորգյան Կարմեն	98360909				\N	\N	\N	\N
1284	Եղվարդի Հ. Թադևոսյանի անվ. թիվ 2 հմ/դ	8	7	ք. Եղվարդ, Սաֆարյան 88	40.3211889999999968	44.4816819999999993	3	1	Աբգարյան Վարվառա	94254597			Վալենտինա Բաբայան	77807577				\N	\N	\N	\N
1285	Բալահովիտի Ի. Վիրաբյանի անվ. մ/դ	8	7	գ. Բալահովիտ	\N	\N	3	1	Խաչատրյան Թ.	91795657			Ե. Մնացականյան	93197115				\N	\N	\N	sonahdavtyan@gmail.com
1286	Գեղաշենի մ/դ	8	7	գ. Գեղաշեն	\N	\N	3	2	Նաիրա Բաբայան	98090608			Մակարյան Հասմիկ	94537923				15	27	\N	sonahdavtyan@gmail.com
1287	Զովքի Գ. Շահինյանի անվ. մ/դ	8	7	գ. Զովք	40.2078920000000011	44.6935689999999965	3	2	Առաքելյան Շողիկ	77827011			Ավչյան Անահիտ	77904598				1	7	\N	\N
1288	Կոտայքի Ս. Վարդանյանի անվ. մ/դ	8	7	գ. Կոտայք	\N	\N	3	2	Անժելլա Կիրակոսյան	55526222			Հռիփսիմե Թադևոսյան	55741929				2	15	\N	sonahdavtyan@gmail.com
1289	Աբովյանի Խ. Աբովյանի անվ. թիվ 1 ա/դ	8	7	ք. Աբովյան, Բարեկամության 9	\N	\N	3	1	Ս. Հանիսյան	99865883			Լուսինե Սարգսյան	93614640	91614640			\N	\N	\N	jass.manasyan@gmail.com
1290	Աբովյանի թիվ 2 հմ/դ	8	7	ք. Աբովյան, Տարտուի 1	\N	\N	3	1	Հովհաննսիյան Սվետլաննա	91338222			Լիլիթ	91090696				11	28	\N	jass.manasyan@gmail.com
1291	Աբովյանի թիվ 4 ա/դ	8	7	ք. Աբովյան, Ռոսիա 26	\N	\N	3	1	Ն. Քեշիշյան	98036246			Կարինե	055 578582				\N	\N	\N	jass.manasyan@gmail.com
1292	Աբովյանի թիվ 6 ա/դ	8	7	ք. Աբովյան, Սարալանջ	\N	\N	3	1	Վարդանյան Հովհաննես	93045002			Մարիետա Պողոսյան	077 23-90-91				\N	\N	\N	jass.manasyan@gmail.com
1293	Աբովյանի թիվ 7 հմ/դ	8	7	ք. Աբովյան, 2-րդ միկրոշրջան	\N	\N	3	1	Գասպարյան Գոհար	77215191			Աստղիկ	98004737				2	31	\N	jass.manasyan@gmail.com
1294	Աբովյանի կթհ	8	7	ք. Աբովյան, ուսանողական թ	\N	\N	3	1	Դաղբալյան Անահիտ	99900433			Պողոսյան Մարիամ	94252303				15	68	\N	jass.manasyan@gmail.com
1295	Մայակովսկու Հր. Հովհաննիսյանի անվ. մ/դ	8	7	գ. Մայակովսկի	\N	\N	3	2	Տանիմա. Ղազանչյան	93508347	41830393		Մարգարյան Լուսինե	41080021				6	10	\N	sonahdavtyan@gmail.com
1296	Ջրաբերի մ/դ	8	7	գ. Ջրաբեր	\N	\N	3	2	Հայրապետյան Արամայիս	94459356			Մարինա	55122076				5	6	\N	sonahdavtyan@gmail.com
1297	Բյուրեղավանի գիշերօթիկ հաստատություն	8	7	ք. Բյուրեղավան	\N	\N	3	1	Գալստյան Մարինա	22265180	93750401	095567219	Անի Ավագյան 	43187719				1	15	\N	jass.manasyan@gmail.com
1298	Բյուրեղավանի թիվ 2 հմ/դ	8	7	ք. Բյուրեղավան	\N	\N	3	1	Սարգսյան Մերի	99992105	02265440		Ռուզան Մելիքյան	98562160				6	20	\N	jass.manasyan@gmail.com
1299	Բյուրեղավանի Ս. Վարդանյանի անվ. թիվ 1 ա/դ	8	7	ք. Բյուրեղավան	\N	\N	3	1	Խաչիկյան Կարինե	94507225			Հերմինե	091077759				17	39	\N	jass.manasyan@gmail.com
1300	Ջրառատի մ/դ	8	7	գ. Ջրառատ	\N	\N	3	2	Բեգլարյան Ալեքսան	91693749			Բեգլարյան Գուրգեն	95708092				\N	\N	\N	sonahdavtyan@gmail.com
1301	Սոլակի մ/դ	8	7	գ. Սոլակ	\N	\N	3	2	Դավթյան Լիդա	22325726	94200117		Արմինե Ասատրյան	77488477				\N	\N	\N	sonahdavtyan@gmail.com
1302	Քաղսի մ/դ	8	7	գ. Քաղսի	\N	\N	3	2	Մելքոնյան Վաչագան	93651790								\N	\N	\N	sonahdavtyan@gmail.com
1303	Ֆանտանի մ/դ	8	7	գ. Ֆանտան	\N	\N	3	2	Աբրահամյան Նարինե	77808810			Գայանե Կոստանդյան	94682505				10	10	\N	sonahdavtyan@gmail.com
1304	Հրազդանի Ա. Իսահակյանի անվ. թիվ 9 հմ/դ	8	7	ք. Հրազդան, Միկրոշրջան	\N	\N	3	1	Շաբոյան Ժանետա	22363077	94247004		Սարդարյան Հասմիկ	94112216				\N	\N	\N	jass.manasyan@gmail.com
1305	Հրազդանի Ա. Մռավյանի անվ. թիվ 4 հմ/դ	8	7	ք. Հրազդան, Շահումյան 170	\N	\N	3	1	Նահապետյան Արևիկ	22362314	98123012		Սուսաննա Հովասյան	94001063				\N	\N	\N	jass.manasyan@gmail.com
1306	Հրազդանի Ե. Չարենցի անվ. թիվ 2 հմ/դ	8	7	ք. Հրազդան, Կոստանյան 1	\N	\N	3	1	Սուսաննա Ալեքսանյան	22324743	93246454		Էվելինա Առաքելյան	94312851				\N	\N	\N	jass.manasyan@gmail.com
1307	Հրազդանի թիվ 14 հմ/դ	8	7	ք. Հրազդան, Կենտրոն	\N	\N	3	1	Բավեյան Անդրանիկ	94910460	22363022		Անի	98333564				11	11	\N	jass.manasyan@gmail.com
1308	Հրազդանի Հ. Թումանյանի անվ. թիվ 5 հմ/դ	8	7	ք. Հրազդան, Ջրառատ թաղամաս	\N	\N	3	1	Տիգրան Բակլաճյան	94910520			Աստղիկ Գալստյան	93174700				8	8	\N	jass.manasyan@gmail.com
1309	Հրազդանի Հ. Օրբելու անվ. թիվ 13 ա/դ	8	7	ք. Հրազդան, Կենտրոն	\N	\N	3	1	Հարությունյան Հասմիկ	22326404	93584210		Ալեքսանյան Արտյոմ	93157614				\N	\N	\N	jass.manasyan@gmail.com
1310	Հրազդանի Հ. Պարոնյանի անվ. թիվ 12 հմ/դ	8	7	ք. Հրազդան, Միկրոշրջան	\N	\N	3	1	Միքայելյան Գագիկ	22334556	77574575		Օհանյան Մարիամ	98777116				\N	\N	\N	jass.manasyan@gmail.com
1311	Հրազդանի Պ. Սևակի անվ. թիվ 8 հմ/դ	8	7	ք. Հրազդան, Կենտրոն	\N	\N	3	1	Գրիգորյան Գևորգ	93268683	22325907		Ղուշչյան վարսենիկ	22325907	77333515			20	20	\N	jass.manasyan@gmail.com
1312	Հրազդանի Վ. Սարոյանի անվ. թիվ 11 մ/դ	8	7	ք. Հրազդան, Միկրոշրջան	\N	\N	3	1	Զաքարյան Մելսիկ	22322851	94082299		Սահակյան Նաիրա	94400335				\N	\N	\N	jass.manasyan@gmail.com
1313	Հրազդանի Վ. Մայակովսկու անվ. թիվ 10 ա/դ	8	7	ք. Հրազդան, Միկրոշրջան	\N	\N	3	1	Բարսեղյան Վլադիմիր	22333720	93805202		Դավթյան Արմենուհի	91171967				\N	\N	\N	jass.manasyan@gmail.com
1314	Հրազդանի Րաֆֆու անվ. թիվ 7 մ/դ	8	7	ք. Հրազդան, Կաքավաձոր	\N	\N	3	2	Հասմիկ Ասատրյան	22360645	93237697		Գոհար Միքայելյան	93681234				\N	\N	\N	sonahdavtyan@gmail.com
1315	Կարենիսի մ/դ	8	7	գ. Կարենիս	\N	\N	3	2	Խաչատրյան Նշան	93868429	22360012		Աբրահամյան Հասմիկ	94759878				3	3	\N	hasmik@hf.am
1316	Չարենցավանի Ե. Չարենցի անվ. թիվ 5 հմ/դ	8	7	ք. Չարենցավան, VI թաղ.	\N	\N	3	1	Խաչատրյան Ալլա	93857985	22642355		Նարինե	98046534				8	10	\N	jass.manasyan@gmail.com
1317	Չարենցավանի թիվ 2 հմ/դ	8	7	ք. Չարենցավան, V թաղ.	\N	\N	3	1	Գասպարյան Անատոլի	91232319	22641652		Անահիտ Միրզոյան	77660644				5	12	\N	jass.manasyan@gmail.com
1318	Չարենցավանի թիվ 6 հմ/դ	8	7	ք. Չարենցավան, II միկրոթաղ	\N	\N	3	1	Փանոսյան Արմինե	93731336			Կիրակոսյան Անուշ	77364374				20	20	\N	jass.manasyan@gmail.com
1319	Չարենցավանի Մ. Մաշտոցի անվ. թիվ 1 ա/դ	8	7	ք. Չարենցավան, I Ա թաղ.	\N	\N	3	1	Փանոսյան Գայանե	94527885			Լուսինե	93340134				5	5	\N	jass.manasyan@gmail.com
1320	Չարենցավանի Ս. Ավանյանի անվ. թիվ 4 հմ/դ	8	7	ք. Չարենցավան, IV թաղ.,  շինարարների 4	\N	\N	3	1	Խանսամանյան Տիգրան	93599112			Հասմիկ Պարսամյան	93260946				23	23	\N	jass.manasyan@gmail.com
1321	Զորավանի մ/դ	8	7	գ. Զորավան	40.3547190000000029	44.526921999999999	3	2	Հովհաննիսյան Հենրիետա	93973797			Շողիկ Սարգսյան	77502648				\N	\N	\N	\N
1322	Նոր Հաճնի թիվ 2 ա/դ	8	7	ք. Նոր Հաճն, Է. Տոռոզյանի 13	\N	\N	3	1	Սիլվա Վանեսյան	93327762			Կիրակոսյան Մարինե	94968617				\N	\N	\N	jass.manasyan@gmail.com
1323	Մրգաշենի մ/դ	8	7	գ. Մրգաշեն	\N	\N	3	2	Գրիգոր Գրիգորյան	93354408			Թևանյան Մանուշակ	93975776				7	12	\N	sonahdavtyan@gmail.com
1324	Քանաքեռավանի մ/դ	8	7	գ. Քանաքեռավան	40.246259000000002	44.531210999999999	3	2	Կարապետյան Գոհար	91367011	96199555		Մարինե	99170733				2	11	\N	\N
1325	Նոր Հաճնի թիվ 3 հմ/դ	8	7	ք. Նոր Հաճն, Է. Տոռոզյան	\N	\N	3	1	Գարիկ Աբրահամյան	91942397			Արմինե Աղայան	99838858				\N	\N	\N	jass.manasyan@gmail.com
1326	Նոր Հաճնի Մեծ Մուրադի թիվ 4 հմ/դ	8	7	ք. Նոր Հաճն, Շահումյան 1	\N	\N	3	1	Հայկանուշ Պետրոսյան	98204447			Հարությունյան Կարինե	93975428				15	15	\N	jass.manasyan@gmail.com
1327	Թեղենիքի Վ. Ջինիշյանի անվ. մ/դ	8	7	գ. Թեղենիք	\N	\N	3	2	Գրիգորյան Լաուրա	98106306			Սուսաննա	77403481				4	4	\N	sonahdavtyan@gmail.com
1328	Ազատանի մ/դ	8	8	գ. Ազատան	\N	\N	3	2	Ոսկանյան Համլետ	95008568	94121412		Կիլիկյան Նատալյա	94726246	94155481			2	33	\N	jass.manasyan@gmail.com
1329	Ախուրիկի մ/դ	8	8	գ. Ախուրիկ	\N	\N	3	2	Գասպարյան Վահիդա	95008615	91471261		Արփինե Դարբինյան	098040217 				3	3	\N	jass.manasyan@gmail.com
1330	Ախուրյանի թիվ 1 հմ/դ	8	8	գ. Ախուրյան	\N	\N	3	1	Ենգոյան Աննա	95008569	91451306		Սերոբյան Աննա	99192424				\N	\N	\N	jass.manasyan@gmail.com
1331	Ախուրյանի թիվ 2 հմ/դ	8	8	գ. Ախուրյան	\N	\N	3	1	Մուշեղյան Նարինե	95009272	91777687		Հասմիկ Սաֆարյան	93903543				2	4	\N	jass.manasyan@gmail.com
1332	Ախուրյանի Ն. Աղբալյանի անվ. ա/դ	8	8	գ. Ախուրյան	\N	\N	3	1	Պապիկյան Խանում	95009271	93380917		Քրիստինե Հարությունյան	98011228				\N	\N	\N	vahram@hf.am
1333	Այգաբացի մ/դ	8	8	գ. Այգաբաց	\N	\N	3	2	Հուրոյան Հռիփսիկ	93844176			Հուրոյան Սիսակ	93078537				\N	\N	\N	jass.manasyan@gmail.com
1334	Առափիի մ/դ	8	8	գ. Առափի	\N	\N	3	2	Նազարյան Ստեփան	95009267	98203933		Մանիկ Նազարյան	98640565				\N	\N	\N	jass.manasyan@gmail.com
1335	Արևիկի մ/դ	8	8	գ. Արևիկ	\N	\N	3	2	Թորոյան Հակոբ	93182848			Արմինե Դիլբարյան	094470167				3	9	\N	jass.manasyan@gmail.com
1336	Բայանդուրի մ/դ	8	8	գ. Բայանդուր	\N	\N	3	2	Մարտիրոսյան Կարեն	094098020	91098021	95009261	Գրիգորյան Սոֆյա	98567224				2	3	\N	jass.manasyan@gmail.com
1337	Գետքի մ/դ	8	8	գ. Գետք	\N	\N	3	2	Հերմինե Թադևոսյան	98558604			Մոսոյան Թամարա	094756318				2	5	\N	jass.manasyan@gmail.com
1338	Երազգավորսի մ/դ	3	8	գ. Երազգավորս	\N	\N	3	2	Մխիթարյան Արամ	95009254	93018207		Սահակյան Անի	98931317				2	2	\N	jass.manasyan@gmail.com
1339	Կամոյի Շիրազի անվ. մ/դ	8	8	գ. Կամո	\N	\N	3	2	Էդվարդ Դրմեյան	95009251	94917562		Մերի Հակոբյան	94010311				\N	\N	\N	jass.manasyan@gmail.com
1340	Կապսի մ/դ	8	8	գ. Կապս	\N	\N	3	2	Խոջումյան Նելլի			77438305	Նունե Մարգարյան	94196968				2	5	\N	jass.manasyan@gmail.com
1341	Կառնուտի մ/դ	8	8	գ. Կառնուտ	\N	\N	3	2	Հովհաննիսյան Հայկուհի	093858435			Ծառուկյան Սյուզի	77407565				1	6	\N	jass.manasyan@gmail.com
1342	Հայկավանի մ/դ	8	8	գ. Հայկավան	\N	\N	3	2	Կարեն Գալստյան	094091282			Մուրադյան Գայանե	077004169				6	8	\N	jass.manasyan@gmail.com
1343	Հացիկի մ/դ	8	8	գ. Հացիկ	\N	\N	3	2	Սարիբեկյան Աստղիկ	093267126	95009227		Արմինե Մարգարյան	55768688				1	7	\N	jass.manasyan@gmail.com
1344	Հովիտի մ/դ	8	8	գ. Հովիտ	\N	\N	3	2	Սանդրոսյան Էմմա	95009218	93403985		Կարինե Հակոբյան	93229108				\N	2	\N	jass.manasyan@gmail.com
1345	Հովունու մ/դ	8	8	գ. Հովունի	\N	\N	3	2	Հակոբյան Հասմիկ	95009216	98181390		Ռիմա Ղանդիլյան	777624454				\N	\N	\N	jass.manasyan@gmail.com
1346	Ղարիբջանյանի մ/դ	8	8	գ. Ղարիբջանյան	\N	\N	3	2	Յայլոյան Վաղարշակ	95009214	94052211		Հակոբյան Անահիտ	77052211				1	1	\N	jass.manasyan@gmail.com
1347	Մայիսյանի մ/դ	8	8	գ. Մայիսյան	\N	\N	3	2	Կարախանյան Վարդան	95009212	93628926		Գարնիկ Ղամբարյան	098506028				\N	\N	\N	sarmen@hf.am
1348	Մարմաշենի մ/դ	8	8	գ. Մարմաշեն	\N	\N	3	2	Մխիթարյան Հրաչիկ	95009198	91572056		Մխիթար Աննա	91324152				5	9	\N	jass.manasyan@gmail.com
1349	Նոր Ախուրյանի հմ/դ	8	8	գ. Ախուրյան	\N	\N	3	2	Սահակյան Մերուժան	95009197	55792043		Մելքոնյան Հռիփսիմե 	94556022				1	2	\N	jass.manasyan@gmail.com
1350	Շիրակի մ/դ	8	8	գ. Շիրակ	\N	\N	3	2	Հասմիկ Վարդանյան	95009192	93316459		Ռոզա Համբարձումյան	093016564				1	6	\N	jass.manasyan@gmail.com
1351	Ջաջուռի մ/դ	3	8	գ. Ջաջուռ	\N	\N	3	2	Թամարա Սուվարյան	95009189	91165774		Արմինե Սարգսյան	94339851				2	2	\N	jass.manasyan@gmail.com
1352	Ջրառատի մ/դ	8	8	գ. Ջրառատ	\N	\N	3	2	Սուքիասյան Արա	95009187	93398544				խաչատրյան Հայկանուշ	094503822		2	5	\N	jass.manasyan@gmail.com
1353	Վահրամաբերդի մ/դ	8	8	գ. Վահրամաբերդ	\N	\N	3	2	Թորոսյան Սպարտակ	95009186	93444211		Ռոբերտ Հովսեփյան	93313342				3	10	\N	jass.manasyan@gmail.com
1354	Քեթիի մ/դ	3	8	գ. Քեթի	\N	\N	3	2	Նիկողոսյան Ալիսա	95009185	93632309		Նարինե Խաչատրյան	93241062				1	4	\N	jass.manasyan@gmail.com
1355	Բյուրակնի մ/դ	8	8	գ. Բյուրակն	\N	\N	3	2	Լուսինե Մելիքյան	094 82-12-76			Մելիքյան Առաքել	093384300				3	5	\N	jass.manasyan@gmail.com
1356	Մեղրաշատի մ/դ	8	8	գ. Մեղրաշատ	\N	\N	3	2	Գոհար Մազմանյան	77018289			Արեգնազ Սարգսյան	77018283				1	3	\N	jass.manasyan@gmail.com
1357	Ողջիի մ/դ	8	8	գ. Ողջի	\N	\N	3	2	Գոհար Աբրահամյան	77508282			Աստղիկ Պետրոսյան	98501507				1	1	\N	jass.manasyan@gmail.com
1358	Անիպեմզաի մ/դ	8	8	գ. Անիպեմզա	\N	\N	3	2	Նազարյան Հասմիկ	95009784	93805209		Սուսաննա Ավջյան	077 759-444				1	1	\N	jass.manasyan@gmail.com
1359	Գուսանագյուղի մ/դ	8	8	գ. Գուսանագյուղ	\N	\N	3	2	Մարգարյան Հենրիկ	94821522		95009783	Գասպարյան Համեստ	94586450				1	2	\N	jass.manasyan@gmail.com
1360	Իսահակյանի մ/դ	8	8	գ. Իսահակյան	\N	\N	3	2	Հարությունյան Գնել	95009782	93410129		Ամալյա Արսենյան	98424882				\N	\N	\N	jass.manasyan@gmail.com
1361	Շիրակավանի մ/դ	8	8	գ. Շիրակավան	\N	\N	3	2	Մկրտչյան Ջուլիետա	95009781	93325291		Գևորգյան Ռիմա	94285890				1	1	\N	jass.manasyan@gmail.com
1362	Մարալիկի թիվ 1 մ/դ	8	8	ք. Մարալիկ	\N	\N	3	1	Հովհաննիսյան Շուշանիկ	77929330			Ավդալյան Լիլիթ	0242/2-25-10	55 091977			2	11	\N	jass.manasyan@gmail.com
1363	Նոր Կյանքի մ/դ	8	8	գ. Նոր Կյանք, 7 փողոց 2	\N	\N	3	3	Պետրոսյան Զավեն	95008735	93826437	55565597	Թամարա Պետրոսյան	95240567				2	8	\N	jass.manasyan@gmail.com
1364	Փանիկի մ/դ	8	8	գ. Փանիկ	\N	\N	3	2	Հովհաննես Կարապետյան	77616618			Լեյլի Ներսիսյան	93876497				22	42	\N	jass.manasyan@gmail.com
1365	Արթիկի թիվ 1 հմ/դ	8	8	ք. Արթիկ, Թումանյան 28	\N	\N	3	1	Մահորյան Սիրական	95008732	94914888		Գայանե Մահորյան	55015919				5	9	\N	jass.manasyan@gmail.com
1366	Արթիկի թիվ 1 հտ/դ	8	8	ք. Արթիկ, Սասունցի Դավթի 1	\N	\N	3	1	Սոնա Նիկողոսյան	94723421			Լիաննա Չաբյան	93702213				2	3	\N	jass.manasyan@gmail.com
1367	Արթիկի թիվ 4 հմ/դ	8	8	ք. Արթիկ, Հակոբյան 8	\N	\N	3	1	Նունե Գրիգորյան	98491900			Նուշիկ Ղազարյան	93225999				4	15	\N	jass.manasyan@gmail.com
1368	Արթիկի թիվ 5 հմ/դ	8	8	ք. Արթիկ, Շինարարների փ. 1	\N	\N	3	1	Պետրոսյան Արսեն	95008763	94821629	94821625	Մարինե Չոբանյան	93852557				3	11	\N	jass.manasyan@gmail.com
1369	Արթիկի թիվ 7 ա/դ	8	8	ք. Արթիկ, Տուֆագործների 15	\N	\N	3	1	Բաբոյան Սերյոժա	95008728	93339747		Չարչյան Նարինե	94621100			դպրոցը փակվել է	\N	\N	\N	jass.manasyan@gmail.com
1370	Արթիկի թիվ 8 հմ/դ	8	8	ք. Արթիկ, Բաղրամյան 19	\N	\N	3	1	Լուսինե Սարգսյան	93126020			Լիաննա Մինասյան	93448878				3	8	\N	jass.manasyan@gmail.com
1371	«Գյումրու Օլիմպիական հերթ. պետ. մարզական քոլեջ»	8	8	ք. Գյումրի, Բուլվարային 10ա	\N	\N	3	1	Հակոբ Փանոսյան	95008483	93101050		Սոֆի Ջեյրանյան	93277757				3	13	\N	jass.manasyan@gmail.com
1372	Գյումրու «Պրոգրեսե համ.-ի հենակ. վարժ.	8	8	ք. Գյումրի, Խրիմյան Հայրիկ խճ. 40ա	\N	\N	3	1	Գոհարիկ Բաղդասարյան	95008486	94222240		Արմինե Խաչատրյան	95694929				\N	\N	\N	jass.manasyan@gmail.com
1373	Գյումրու «Սուրբ թարգմանչածե թիվ 30 հմ/դ	8	8	ք. Գյումրի, Շչեդրինի 7	\N	\N	3	1	Կարեն Ստեփանյան	77434743	95008487		Անահիտ Հակոբյան	93883470				2	5	\N	jass.manasyan@gmail.com
1374	Գյումրու «Տեմպ» վարժարան	8	8	ք. Գյումրի, Մհեր Մկրտչյան 2	\N	\N	3	1	Շուշիկ Վարդանյան	95707071			Նունե Բեգլարյան	0312/4-65-83				15	35	\N	jass.manasyan@gmail.com
1375	Գյումրու «Ֆոտոն» վարժ.	8	8	ք. Գյումրի, Անի թաղամաս Եղիշե Չարենցի փողոց 12	\N	\N	3	1	Մանվել Մովսիսյան	95008491	94331500		Սեդա	 093855877				\N	\N	\N	jass.manasyan@gmail.com
1376	Գյումրու Գ. Նժդեհի անվ. թիվ 17 հմ/դ	8	8	ք. Գյումրի, Ռետինի 2 . միացել Ակադեմիական վարժարանի հետ	\N	\N	3	1	Կարապետ Ներսիսյան	95008492	93324460		Ալլա Կարապետյան	93424276				\N	\N	\N	sarmen@hf.am
1377	Գյումրու թիվ 1 ա/դ (կրթահամալիր)	8	8	ք. Գյումրի, Վ.Աճեմյան 40	\N	\N	3	1	Թադեվոսյան Նաիրա	95008493	93149296		Արփինե	077 208658				\N	\N	\N	jass.manasyan@gmail.com
1378	Գյումրու թիվ 10 հմ/դ	8	8	ք. Գյումրի, Մ. Գորկու 77	\N	\N	3	1	Լիանա Վարդանյան	95008494	94024464		Աշոտ Ադամյան	93116624				\N	\N	\N	jass.manasyan@gmail.com
1379	Գյումրու թիվ 28 հմ/դ	8	8	ք. Գյումրի, Երևանյան խճ.	\N	\N	3	1	Մարիամ Առաքելյան	95008495	94409046		Արաքսյա Հարությունյան	77658458				4	4	\N	jass.manasyan@gmail.com
1380	Գյումրու տնտեսագիտական վարժարան 	8	8	ք. Գյումրի, Վ. Սարգսյան 32	\N	\N	3	1	Ավագյան/Չախոյան/ Նառա	93822075	95008496	95009818	Սուսաննա Համբարձումյան	55787832	Թեհմինե Կարապետյան	98011802		22	22	\N	jass.manasyan@gmail.com
1381	Գյումրու թիվ 42 ա/դ	8	8	ք. Գյումրի, "Մուշ-2" թաղ.	\N	\N	3	1	Գևորգյան Հակոբ	098010923	93056915	Լիաննա	Սյուզաննա Բաբայան	91038906	օպերատոր	094635922	դպրոցը միավորվել է 23-րդ դպրոցի հետ (շենքը չի փոխվել)	1	34	\N	evelina@hf.am
1382	Գյումրու թիվ 43 հմ/դ	8	8	ք. Գյումրի, "Շերամ-2" թաղամաս	\N	\N	3	1	Կարեն Առնաուտյան	95008498	093 -33 -39-82		Աննա Էլլարյան	098637647				\N	\N	\N	sarmen@hf.am
1383	Գյումրու թիվ 44 հմ/դ	8	8	ք. Գյումրի, Շիրակի օդանավ	\N	\N	3	1	Արտաշես Հակոբյան	95008512	94441400		Նունե Շահբազյան	93153571				\N	\N	\N	jass.manasyan@gmail.com
1385	Գյումրու Ղ. Ալիշանի անվ. թիվ 8 մ/դ	8	8	ք. Գյումրի, Լիսինյան 6	\N	\N	3	1	Արարատ Սահակյան	95008481	91735343		Ալվարդ Ազիզյան	93308434				\N	\N	\N	jass.manasyan@gmail.com
1386	Գյումրու Ղ. Աղայանի անվ. թիվ 19 հմ/դ	8	8	ք. Գյումրի, Վ. Սարգսյան 26	\N	\N	3	1	Նարինե Մեսրոպյան	95008479	94342311		Սվետլանա Աթոյան	77303798				1	5	\N	jass.manasyan@gmail.com
1387	Գյումրու Մ. Խորենացու անվ.  թիվ 37 ա/դ	8	8	ք. Գյումրի, Չարենցի 12	\N	\N	3	1	Աստղիկ Ավետիսյան	95008478	93144114	0312/3-48-07	Պետրոսյան Երվանդ	98114452				\N	\N	\N	jass.manasyan@gmail.com
1388	Գյումրու մտավոր թերզարգացում ունեցող երեխաների թ. 3 հտ/դ	8	8	ք. Գյումրի, Խրիմյան Հայրիկ 1	\N	\N	3	1	Տիգրան Գուլյան	95008476	94050513		Սեդա Գուլյան	94050513				\N	\N	\N	jass.manasyan@gmail.com
1389	Գյումրու Վազգեն Ա-ի անվ. թիվ 27 մ/դ	8	8	ք. Գյումրի, Գարեգին Ա 2	\N	\N	3	1	Կարինե Լալազարյան	94151419	94151419	0312 42337	Աննա Մաքեյան	093831704				1	12	\N	jass.manasyan@gmail.com
1390	Գյումրու Րաֆֆու անվ. թիվ 32 հմ/դ	8	8	ք. Գյումրի, Հնոցավան փ. 	\N	\N	3	1	Արմինե Սուքիասյան	95009895	96999110	77342379	Նաիրա Գևորգյան	94821320				3	9	\N	jass.manasyan@gmail.com
1391	Գյումրու Օյունջյան հմ/դ	8	8	ք. Գյումրի, Մհեր Մկրտչյանի 47	\N	\N	3	1	Հասմիկ Անդրիասյան	94920021		95009869	Նարինե Գևորգյան	93420830				5	7	\N	jass.manasyan@gmail.com
1392	Գյումրու Ֆ. Վերֆելի անվ. թիվ 40 մ/դ	8	8	ք. Գյումրի, Ավստրիական,Վերֆելի հր. 4	\N	\N	3	1	Ալեքսանյան Արսեն	098922922	0312/63697	95009867	Հերմինե Հարությունյան	09529-21-27		 094719015		5	6	\N	jass.manasyan@gmail.com
1393	Գյումրու «Բալատոն» ա/դ	8	8	ք. Գյումրի, Վ. Սարգսյան փ. 15	\N	\N	3	1	Հովհաննիսյան Արուսյակ	95009857	99147337	55147373	Հայկանուշ Գրիգորյան	91210791			դպրոցը փակվել է	\N	\N	\N	jass.manasyan@gmail.com
1394	Գյումրու թիվ 6 հմ/դ	3	8	ք. Գյումրի, Թումանյան 20	\N	\N	3	1	Արտաշես Սարգսյան	95009864	94901096		Կարեն Սարգսյան	94961096				17	17	\N	jass.manasyan@gmail.com
1395	Գյումրու Բայրոնի անվ. թիվ 20 մ/դ	8	8	ք. Գյումրի, Մ. Թետչերի 1	\N	\N	3	1	Հարությունյան Գրիգոր	95009849	94500232	31233682	Նունե Ենգոյան	55912595				8	12	\N	jass.manasyan@gmail.com
1396	Գյումրու Գ. Նարեկացու անվ. թիվ 9 հմ/դ	8	8	ք. Գյումրի, Հաղթանակի պողոտա 40	\N	\N	3	1	Մովսիսյան Անահիտ	95009846	93449755		Նարինե Հովհաննիսյան	91342922				\N	\N	\N	jass.manasyan@gmail.com
1397	Գյումրու Գ. Սարյանի անվ. թիվ 24 հմ/դ	8	8	ք. Գյումրի, Ա. Շիրակացի 173	\N	\N	3	1	Հակոբ Հակոբյան	95009843	93197565		Անժելա Հակոբյան	94814166				\N	\N	\N	jass.manasyan@gmail.com
1398	Գյումրու ԳՄԻ հենակետային Ակադեմիական վարժարան	8	8	ք. Գյումրի, Վ. Սարգսյան 13	\N	\N	3	1	Լևոն Սեխպոսյան	41581434	 91581434		Սաթենիկ Վարդանյան	94848413	Կարապետյան Ալլա	093424276		1	11	\N	jass.manasyan@gmail.com
1399	Գյումրու Գր. Լուսավորիչի անվ. թիվ 31 հմ/դ	8	8	ք. Գյումրի, Խ.Հայրիկի 1-ին թաղ.	\N	\N	3	1	Արթուր Ղազարյան	95009839	98465354		Սվետլանա Կուչկոյան	93576947				\N	\N	\N	jass.manasyan@gmail.com
1400	Գյումրու Ե. Չարենցի անվ. թիվ 25 հմ/դ	8	8	ք. Գյումրի, Պուշկինի 101	\N	\N	3	1	Ստեփանյան Գագիկ	95009838	93114407		Մարինե Գրիգորյան	91610567				\N	\N	\N	jass.manasyan@gmail.com
1402	Գյումրու թիվ 23 մ/դ	8	8	ք. Գյումրի, Շիրակացի փ., 8-րդ զինվորական թաղամաս	\N	\N	3	1	Գևորգյան Հակոբ	098010923	23 մ/դ-ին միավորվելա 41		Օպերատոր	094635922				\N	\N	\N	evelina@hf.am
1403	Գյումրու Ավ. Իսահակյանի անվ. թիվ 26 ա/դ	8	8	ք. Գյումրի, Տիգրան Մեծի 27	\N	\N	3	1	Սեփոսյան Գագիկ	041677710 		95009834	Սիրանուշ Բեգջանյան	093 44-99-05				22	36	\N	jass.manasyan@gmail.com
1405	Գյումրու թիվ 38 հմ/դ	8	8	ք. Գյումրի, Բուլվարային 3	\N	\N	3	1	Արմինե Նիկողոսյան	77520663			Մարինե Մխիթարյան	94504981				8	10	\N	jass.manasyan@gmail.com
1406	Գյումրու թիվ 45 ա/դ	8	8	ք. Գյումրի, Սպենդիարով 10ա	\N	\N	3	1	Վարդանյան Աստղիկ	95009832	93773736		Եղոյան Արմինե	093 91-74-01				\N	\N	\N	jass.manasyan@gmail.com
1407	Գյումրու թիվ 7 մ/դ	8	8	ք. Գյումրի, Ա. Մանուկյան 4	\N	\N	3	1	Կարապետյան Գագիկ	95009831	93471245		Լուսինե Ղուկասյան	98475138				\N	\N	\N	jass.manasyan@gmail.com
1408	Գյումրու Մ. Մաշտոցի անվ. թիվ 29 հմ/դ	8	8	ք. Գյումրի, Մ. Մանուշյան 7	\N	\N	3	1	Գայանե Բիչախչյան	95009829	0312/36703	93354949	Նելլի Առաքելյան	94762420				4	17	\N	jass.manasyan@gmail.com
1409	Գյումրու թիվ 11 հմ/դ ՊՈԱԿ	8	8	ք. Գյումրի, Անի թաղ., Արամ Խաչատրյան  27	\N	\N	3	1	Գրիգորյան Արմենուհի	055099960	 		Լարիսա Ալեքսանյան	98661080	095210958			6	6	\N	jass.manasyan@gmail.com
1410	Գյումրու Պ. Սևակի անվ. թիվ 18 մ/դ	8	8	ք. Գյումրի, Ս. Լազոյի 2	\N	\N	3	1	Ալեքսանյան Շողիկ	093855301			Հերիքնազ Ալեքսանյան	093 63-06-39				2	32	\N	jass.manasyan@gmail.com
1411	Գյումրու Ռ. Թուֆենքյանի անվ. թիվ 5 հմ/դ	8	8	ք. Գյումրի, Մատնիշյան 301	\N	\N	3	1	Թահմազյան Մարինե	95009772	77051177		Արմինե Էլոյան	99717719				\N	\N	\N	jass.manasyan@gmail.com
1412	Գյումրու Վ. Թեքեյանի անվ. թիվ 2 ա/դ	8	8	ք. Գյումրի, Գ. Նժդեհի 11	\N	\N	3	1	Պետրոսյան Հովհաննես	95009826	93190013		Սուսաննա	55631347				\N	\N	\N	jass.manasyan@gmail.com
1413	Գյումրու Վ. Համբարձումյանի անվ. թիվ 4 հմ/դ	8	8	ք. Գյումրի, Կամոյի 173	\N	\N	3	1	Համբարձումյան Զարիկ	94845440		95009825	Գայանե Հովհաննիսյան	098712757		10		3	9	\N	jass.manasyan@gmail.com
1414	Գյումրու Վ. Տերյանի անվ. թիվ 15 հմ/դ	8	8	ք. Գյումրի, Զ. Եսայան 34ա	\N	\N	3	1	Համբարձումյան Սեդա	95009824	77707575		Արմենուհի Հարությունյան	94750387				1	10	\N	jass.manasyan@gmail.com
1415	Ակների մ/դ	8	9	գ. Ակներ	\N	\N	3	2	Ամարյան Էմմա	93789954	95004569		Առաքելյան Անաիդա	093027456				2	11	\N	sonahdavtyan@gmail.com
1416	Հարթաշենի մ/դ	8	9	գ. Հարթաշեն	\N	\N	3	2	Ա. Պողոսյան	94815052			Վարդուշ Մկրտչյան	77794913				6	7	\N	sonahdavtyan@gmail.com
1417	Քարահունջի մ/դ	8	9	գ. Քարահունջ	\N	\N	3	1	Սվետլաննա Շամիրյան	95006187	91532418		Արմեն Մկրտչյան	93702825				4	10	\N	sonahdavtyan@gmail.com
1418	Գորիսի Բակունցի անվ. թիվ 1 ա/դ	8	9	ք. Գորիս, Անկախության 58	\N	\N	3	1	Մովսիսյան Կարինե	28423871	95006169	077414372	Անուշ Բաղդասարյան	43870999				20	45	\N	jass.manasyan@gmail.com
1419	Գորիսի թիվ 2 հմ/դ	8	9	ք. Գորիս, Կապանի 34	\N	\N	3	1	Ակունց Սիրուշ	95006171	94204904		Ն. Դրդիրյան	93232023				10	12	\N	jass.manasyan@gmail.com
1420	Գորիսի թիվ 4 ա/դ	8	9	ք. Գորիս, Գրիգոր Տաթևացի 18	\N	\N	3	1	Արմինե Շեգունց	95004639	93961747		Լուսինե Շեգունց	93407813				1	52	\N	jass.manasyan@gmail.com
1421	Գորիսի թիվ 5 հմ/դ	8	9	ք. Գորիս, Բեգլարյանների 2/13	\N	\N	3	1	Արևիկ Մաքունց	094997544			Նինել Նահապետյան	77720970				8	8	\N	jass.manasyan@gmail.com
1422	Գորիսի Յու. Բախշյանի անվ. թիվ 3 հմ/դ	8	9	ք. Գորիս, Սյունիքի 183	\N	\N	3	1	Կարապետյան Կարմեն	95001552	91241903		Նունե Շեգունց	94006501				12	22	\N	jass.manasyan@gmail.com
1423	Գորիսի Ս. Խանզադյանի անվ. թիվ 6 հմ/դ	8	9	ք. Գորիս, Գետափնյա 1	\N	\N	3	1	Աշոտ Գևորգյան	93604445			Պլուզ Աղաբեկյան	93945425				4	10	\N	jass.manasyan@gmail.com
1424	Բարձրավան	4	9	գ. Բարձրավան	\N	\N	3	2										\N	\N	\N	\N
1425	Խոտի մ/դ	8	9	գ. Խոտ	\N	\N	3	2	Ալիսա Մինասյան	77994131			Լուսինե Մինասյան	92994133				6	12	\N	sonahdavtyan@gmail.com
1426	Հարժիսի մ/դ	8	9	գ. Հարժիս	\N	\N	3	2	Նորայր Եսայան	93714011	Անահիտ Ջալալյան	98883452						14	15	\N	sonahdavtyan@gmail.com
1427	Շինուհայրի մ/դ	8	9	գ. Շինուհայր	\N	\N	3	2	Գրիգորյան Շիրազ	95004548	93351858		Հարությունյան Հարություն	55390039				1	14	\N	sonahdavtyan@gmail.com
1428	Քաջարանի թիվ 1 մ/դ	8	9	ք. Քաջարան, Խանջյան 7	\N	\N	3	1	Գևորգյան Ե.	93649042	95006194		Վիկտորիա Հայրապետյան	77820938				\N	\N	\N	jass.manasyan@gmail.com
1429	Քաջարանի թիվ 2 մ/դ	8	9	ք. Քաջարան, Աբովյան 12	\N	\N	3	1	Գրիգորյան Ռաֆաել	93000607	95006193		Հովհաննիսյան Շաքե		93990219			\N	\N	\N	jass.manasyan@gmail.com
1430	Երևանի բժշկահոգեբանամանկա­վար­ժական գնահատման կենտրոնի Կապանի մասնաճյուղ հտ. հմ/դ	8	9	ք. Կապան, Լեն. հանքեր	\N	\N	3	1	Առաքելյան Լեռնիկ	28525421	95006178	93157777	Զարուհի Առաքելյան	93925651				\N	\N	\N	jass.manasyan@gmail.com
1431	Կապանի թիվ 5 հմ/դ	8	9	ք. Կապան, Բաղաբերդ թաղ. 27	\N	\N	3	1	Սիրանուշ Հարությունյան	95006179	93438540		Ղազարյան Ռիտա	94553762				17	18	\N	jass.manasyan@gmail.com
1432	Կապանի թիվ 1 հմ/դ	8	9	ք. Կապան, Լեռնագործների 16	\N	\N	3	1	Լուսինե Զաքարյան	94520072			Լուսինե Հարությունյան	91768949				9	10	\N	jass.manasyan@gmail.com
1433	Կապանի թիվ 10 մ/դ	8	9	ք. Կապան, Շինարարներ 19	\N	\N	3	1	Արթուր Հակոբյան	95006174	93986880		Մերի Միրզոյան	93972492				8	12	\N	jass.manasyan@gmail.com
1434	Կապանի թիվ 11 մ/դ	8	9	ք. Կապան, Կավարտ բանավան	\N	\N	3	4	Նելլի Կոստանդյան	95006198	94006065		Անի Աբրահամյան	98999098				3	11	\N	sonahdavtyan@gmail.com
1435	Կապանի թիվ 12 հմ/դ	8	9	ք. Կապան, Բարաբաթում բանավան	\N	\N	3	4	Ավանեսյան Անահիտ	28524790	93612290	95001554	Մարտիրոսյան Անդրանիկ	77051077				2	4	\N	sonahdavtyan@gmail.com
1436	Կապանի թիվ 13 հմ/դ	8	9	ք. Կապան, Ձորքի թաղամաս	\N	\N	3	1	Զավեն Ստեփանյան	94111150	95002113		Սուսաննա Օհանջանյան	93679406				10	10	\N	jass.manasyan@gmail.com
1437	Կապանի թիվ 2 ա/դ	8	9	ք. Կապան, Մելիք Ստեփանյան 5	\N	\N	3	1	Ռիտա Օվչյան	93627404			Ռուզաննա Բալայան	93624111				25	\N	\N	jass.manasyan@gmail.com
1438	Կապանի թիվ 3 հտ/կթհ	8	9	ք. Կապան, Սպանդարյան 4	\N	\N	3	1	Ռիտա Դավթյան	95001312	96435413	0285 23429	Նունե Ոսկանյան	93648181				\N	\N	\N	jass.manasyan@gmail.com
1439	Կապանի թիվ 3 մ/դ	8	9	ք. Կապան, Ա. Մանուկյան 7	\N	\N	3	1	Արթուր Մնացականյան	93933233			Ալվարդ Անդրեասյան	98905088				12	20	\N	jass.manasyan@gmail.com
1440	Կապանի թիվ 6 հմ/դ	8	9	ք. Կապան, Մ. Հարությունյան 5-Ա	\N	\N	3	1	Մարինե Դավթյան	943782955	95004647		Մարգարիտա Դավթյան	94355759				12	13	\N	jass.manasyan@gmail.com
1441	Կապանի թիվ 7 հմ/դ	8	9	ք. Կապան, Շահումյան 16-Ա	\N	\N	3	4	Հովսեփյան Կարինե	94212276	94212276		Աննա Հարությունյան 	93902226				9	19	\N	sonahdavtyan@gmail.com
1442	Կապանի թիվ 9 ա/դ	8	9	ք. Կապան, թիվ Ավետիսյան 14	\N	\N	3	1	Արուս Միրզոյան	93212462			Նառա Թևանյան	94441412				20	42	\N	jass.manasyan@gmail.com
1443	Արծվանիկի մ/դ	8	9	գ. Արծվանիկ	\N	\N	3	2	Կարո Անդրեասյան	94908044	95006192		Նելլի Հովհաննիսյան	94901075				4	10	\N	sonahdavtyan@gmail.com
1444	Սյունիքի մ/դ	8	9	գ. Սյունիք	\N	\N	3	2	Լիլիթ Առաքելյան	94064813			Նելլի Խաչատրյան	94394079				5	7	\N	sonahdavtyan@gmail.com
1445	Կապանի թիվ 4 մ/դ	8	9	ք. Կապան, Վաչագան բանավան	\N	\N	3	2	Էլմիրա Զաքարյան	95006189	94815798		Ավանեսյան Սուսաննա	77004958				3	4	\N	sonahdavtyan@gmail.com
1446	Ագարակի մ/դ (Մեղրի)	3	9	ք. Ագարակ	\N	\N	3	1	Էռնա Բարխուդարյան	95002394	98126492	43666555	Աննա Գասպարյան	94941230				5	35	\N	jass.manasyan@gmail.com
1447	Մեղրու թիվ 1 մ/դ	8	9	ք. Մեղրի, Ադելյան 1	\N	\N	3	1	Սիմոն Սարգսյան	95002441	93062205		Լուսյա Մանուկյան	77042729				\N	\N	\N	jass.manasyan@gmail.com
1448	Մեղրու թիվ 2 մ/դ	8	9	ք. Մեղրի, Զ. Անդրանիկի 10	\N	\N	3	1	Մերի Հակոբյան	95002458	77193969		Ալվարդ Ստեփանյան	77093039				\N	\N	\N	jass.manasyan@gmail.com
1449	Գորայքի մ/դ	8	9	գ. Գորայք	\N	\N	3	2	Մարտուն Թադևոսյան	95002795	93018873		Մոնիկա Հարությունյան, (օպերատոր-Դավիթ Ջանունց)	77388770				4	4	\N	sonahdavtyan@gmail.com
1450	Ծղուկի մ/դ	8	9	գ. Ծղուկ	\N	\N	3	2	Աննա Հակոբյան	93633359			Հայրապետյան Սեյրան	98679892				4	4	\N	sonahdavtyan@gmail.com
1451	Ախլաթյանի մ/դ	8	9	գ. Ախլաթյան	\N	\N	3	2	Հակոբյան Ջուլիետա	77655586			Վլադիկ Մինասյան	93830727				1	8	\N	sonahdavtyan@gmail.com
1452	Անգեղակոթի մ/դ	8	9	գ. Անգեղակոթ	\N	\N	3	2	Պետրոսյան Անահիտ	95002674	98394913		Արթուր Մովսիսյան	41141044				2	22	\N	sonahdavtyan@gmail.com
1453	Բնունիսի հմ/դ	8	9	գ. Բնունիս	\N	\N	3	2	Նազարյան Գոհար	95002796	77707585		Արմինե Հովհաննիսյան	93214835				2	2	\N	sonahdavtyan@gmail.com
1454	Բռնակոթի մ/դ	8	9	գ. Բռնակոթ	\N	\N	3	2	Բալասանյան Գագիկ	95002776	93374977		Հայրապետյան Լուսինե	93772239				5	7	\N	sonahdavtyan@gmail.com
1455	Իշխանասարի հմ/դ	8	9	գ. Իշխանասար	\N	\N	3	2	Մովսիսյան Լիաննա	95002935	93043301		Վարդանյան Արփինե	77657037				2	2	\N	sonahdavtyan@gmail.com
1456	Շաքիի մ/դ	8	9	գ. Շաքի	\N	\N	3	1	Հարությունյան Վաղինակ	95002928	93197519		Արմինե Առաքելյան	93644113				9	9	\N	sonahdavtyan@gmail.com
1457	Ույծի մ/դ	8	9	գ. Ույծ	\N	\N	3	2	Նիկողոսյան Արմիկ	95002918	93016398		Խաղումյան Հմայակ	95591122				8	8	\N	sonahdavtyan@gmail.com
1458	Սառնակունքի մ/դ	8	9	գ. Սառնակունք	\N	\N	3	2	Վարդանյան Անուշավան	95002393	93024068		Սահինյան Սալվինա	98139660				4	4	\N	sonahdavtyan@gmail.com
1459	Վաղատինի մ/դ	8	9	գ. Վաղատին	\N	\N	3	2	Բաբայան Վազգեն	95002593	93313031		Հրանուշ Աթայան	93408952	094433353			4	5	\N	sonahdavtyan@gmail.com
1460	Տոլորսի մ/դ	3	9	գ. Տոլորս	\N	\N	3	2	Բադալյան Երանուհի	95002625	77055806		Դանիելյան Հասմիկ	94042968				3	3	\N	sonahdavtyan@gmail.com
1461	Սիսիանի թիվ 2 hմ/դ	8	9	ք. Սիսիան, Շիրվանզադե 7	\N	\N	3	1	Ազարումյան Հրանտ	95002669	93613100		Արշա;ույս Օհանյան	77559570				17	18	\N	jass.manasyan@gmail.com
1462	Սիսիանի թիվ 3 ա/դ	8	9	ք. Սիսյան, Մյասնիկյան 8	\N	\N	3	1	Ներսիսյան Նաիրա	95002775	77382865		Սնեցունց Սիրուև	93467744				21	50	\N	jass.manasyan@gmail.com
1463	Սիսիանի թիվ 4 hմ/դ	8	9	ք. Սիսիան, Շահամիրյան 61	\N	\N	3	1	Ստեփանյան Նարիրա	95002829	93487802		Ռուզաննա Առաքելյան	98814963	94284228			16	16	\N	jass.manasyan@gmail.com
1464	Սիսիանի թիվ 5 hմ/դ	8	9	ք. Սիսիան, Նար-Դոսի 1	\N	\N	3	1	Ալեքսանյան Հովիկ	93013477	95002853		Թունյան Անի	93815258				3	14	\N	jass.manasyan@gmail.com
1465	Եղեգնաձորի թիվ 2 հմ/դ	8	10	ք. Եղեգնաձոր, Նարեկացու փող., 12 շենք	\N	\N	3	1	Սարգսյան Անահիտ	95006164	99622362		Լիլիթ Կարապետյան	93105936				16	51	\N	jass.manasyan@gmail.com
1466	Եղեգնաձորի վարժ.	8	10	ք. Եղեգնաձոր, Վահան տեր-Առաքելյան 10	\N	\N	3	1	Աբրահամյան Վահան	94450920	95006165		Հասմիկ Դավթյան	93991339				14	17	\N	jass.manasyan@gmail.com
1467	Ջերմուկի թիվ 2 ա/դ	8	10	ք. Ջերմուկ, Ձախ ափ	\N	\N	3	1	Արսենյան Արմինե	95006167	93036331	55575222	Լիլիթ Բաբայան	94333742				16	48	\N	jass.manasyan@gmail.com
1468	Վայքի վարժ.	8	10	ք. Վայք, Միասնիկյան 1ա	\N	\N	3	1	Արամ Արամյան	98493700			Հասմիկ Գրիգորյան	98811808				3	15	\N	jass.manasyan@gmail.com
1469	Բերդի թիվ 1 հմ/դ	8	11	ք. Բերդ, Լևոն Բեկի 3	\N	\N	3	1	Վիրաբյան Արտուշ	95004513	94832532							10	11	\N	jass.manasyan@gmail.com
1470	Բերդի թիվ 2 ա/դ	3	11	ք. Բերդ, Հ. Նահապետի 22ա	\N	\N	3	1	Մելիքյան Արթուր	95004534	93777347		Լեռնուհի Մելիքյան	77171302				\N	\N	\N	jass.manasyan@gmail.com
1471	Բերդի թիվ 4 հմ/դ	8	11	ք. Բերդ, Ստեփանյան 13	\N	\N	3	1	Աբգարյան Անահիտ	95004352	93612316		Լիլիտ Շարյան	94339923				9	13	\N	jass.manasyan@gmail.com
1472	Դիլիջանի թիվ 5 մ/դ	8	11	ք. Դիլիջան Շամախյան 1	\N	\N	3	1	Անանյան Հովհաննես	95004523	94904097		Մերի Մինասյան					10	21	\N	jass.manasyan@gmail.com
1473	Ակնաղբյուրի հմ/դ	8	11	գ. Ակնաղբյուր	\N	\N	3	2	Թիրաբյան Էդիկ	95004519	94060540		Դավիթ Թիրաբյան	77404320				\N	\N	\N	jass.manasyan@gmail.com
1474	Աչաջրի մ/դ	8	11	գ. Աչաջուր	\N	\N	3	2	Ղալթախչյան Սուրեն	95004518	93555745		Կարինե Աղինյան	93555745				\N	\N	\N	jass.manasyan@gmail.com
1475	Գանձաքարի մ/դ	8	11	գ. Գանձաքար	\N	\N	3	2	Մատինյան Սամվել	95004374	91911577		Վանուհի Մելիքսեթյան	93084564				\N	\N	\N	jass.manasyan@gmail.com
1476	Գետահովիտի մ/դ	8	11	գ. Գետահովիտ	\N	\N	3	2	Հարություն Ղազարյան	95004373	77034851		Շողեր Ղազարյան	77208077				\N	\N	\N	jass.manasyan@gmail.com
1477	Ենոքավանի մ/դ	8	11	գ. Ենոքավան	\N	\N	3	2	Աշոտ Ղազարյան	91751593			Նարինե	55932600				\N	\N	\N	jass.manasyan@gmail.com
1478	Լուսաձորի հմ/դ	3	11	գ. Լուսաձոր	\N	\N	3	2	Սարդարյան Արմեն	95005853	94522707		Հասմիկ Այվազյան	93696070				\N	\N	\N	jass.manasyan@gmail.com
1479	Սևքարի մ/դ	8	11	գ. Սևքար	\N	\N	3	2	Նաիրա Թամանյան	95004529	94732245		Անժելա Հայրապետյան	94162466				\N	\N	\N	jass.manasyan@gmail.com
1480	Դիլիջանի թիվ 2 հմ/դ	8	11	ք. Դիլիջան Կալինինի137	\N	\N	3	1	Մարինե Մելինյան	96905055			Նաիրա Պողոսյան	94526376				18	23	\N	jass.manasyan@gmail.com
1481	Իջևանի Գ. Էդիլյան անվ. թիվ 3 հմ/դ	8	11	ք. Իջևան, Թուխիկյան 25	\N	\N	3	1	Հրայր Պողոսյան	0263 3072	098 522256		Մարիամ Այդինյան	99964960				\N	\N	\N	jass.manasyan@gmail.com
1482	Իջևանի թիվ 2 ա/դ	8	11	ք. Իջևան, Թատերական 3	\N	\N	3	1	Խոջայան Արմեն	95005854	77791911							\N	\N	\N	jass.manasyan@gmail.com
1483	Իջևանի թիվ 4 հմ/դ	8	11	ք. Իջևան, Նալբանդյան 1	\N	\N	3	1	Խառատյան Ռոզա	95004536	94005450		Կարապետյան Լիլիթ	94070400				\N	\N	\N	jass.manasyan@gmail.com
1484	Իջևանի թիվ 5 հմ/դ	8	11	ք. Իջևան, Երիտասարդական 3	\N	\N	3	1	Ստեփան Կարապետյան	95004538	93670007							\N	\N	\N	jass.manasyan@gmail.com
1485	Իջևանի Ս. Սարգսյանի անվ. թիվ 1 հմ/դ	8	11	ք. Իջևան, Իջևանյան 8	\N	\N	3	1	Աշոտ Փաշինյան	263-32254				263-32212				\N	\N	\N	jass.manasyan@gmail.com
1486	Իջևանի վարժ.	8	11	ք. Իջևան, Անկախության	\N	\N	3	1	Ամիրյան Հասմիկ	95001561	94520011		Նարինե Մարտիրոսյան	93057605				\N	\N	\N	jass.manasyan@gmail.com
1487	Այգեհովիտի մ/դ	8	11	գ. Այգեհովիտ	\N	\N	3	1	Մելքումյան Արմեն	93614422			Ալվարդ	77694419				\N	\N	\N	jass.manasyan@gmail.com
1488	Դիտավանի հմ/դ	3	11	գ. Դիտավան	\N	\N	3	2	Արմեն Հախվերդյան	95003882	77808660		Արշակ Ավետիսյան	94075353				\N	\N	\N	jass.manasyan@gmail.com
1489	Սարիգյուղի մ/դ	8	11	գ. Սարիգյուղ	\N	\N	3	2	Փաշինյան Գառնիկ	95008934	94700825		Լուիզա Ռեվազյան	93672089				\N	\N	\N	jass.manasyan@gmail.com
1490	Ն. Կարմիր Աղբյուրի մ/դ	8	11	գ. Ն. Կարմիր Աղբյուր	\N	\N	3	2	Ադամյան Իվան (նոր` Նառա Պապյան)	95001995	77771158		Լևոն Միրզոյան					\N	37	\N	jass.manasyan@gmail.com
1491	Չինչինի մ/դ	8	11	գ. Չինչին	\N	\N	3	2	Հայրապետյան Անդրանիկ	95001373	093 672704							\N	\N	\N	Armen.hayrapetyan@hf.am
1492	Վ. Կարմիր Աղբյուրի մ/դ	8	11	գ. Վ. Կ. Աղբյուր	\N	\N	3	2	Անահիտ Ջուլհակյան	094813571			Լիա Բադալյան	093152722	Անահիտ Եսայան	094572901		15	15	\N	sarmen@hf.am
1493	Բերդի ա/ու	8	11	ք. Բերդ	\N	\N	3	1	Ավալյան Աննա	95001357	94952552	26721332	Լուսինե Այվազյան	0267/21332				8	8	\N	jass.manasyan@gmail.com
1494	Բերդի թիվ 3 հմ/դ	8	11	ք. Բերդ, Մաշտոցի 14	\N	\N	3	1	Թումանյան Ռուզան	95001326	93673893		Լիանա Քոսակյան					10	12	\N	jass.manasyan@gmail.com
1495	Բերդի վարժ.	8	11	ք. Բերդ, Սայաթ Նովա 2	\N	\N	3	1	Մանուչարյան Վեներա	95001325	95505659							\N	\N	\N	jass.manasyan@gmail.com
1496	Աշտարակի Վ. Պետրոսյան անվ. հմ/դ	8	1	ք. Աշտարակ, Գեներալ Սաֆար	\N	\N	3	1	Գևորգյան Գրիշա	93-20-02-85	02323 6706		Գագիկ Կարապետյան	93709257				2	5	\N	jass.manasyan@gmail.com
1497	Ծաղկահովիտի մ/դ	8	1	գ. Ծաղկահովիտ	\N	\N	3	2	Եղիշե Անտոնյան	55414232			Հովհաննիսյան Նարինե	93881083				6	12	\N	sonahdavtyan@gmail.com
1498	Նորաշենի մ/դ	8	1	գ. Նորաշեն	\N	\N	3	2	Մուքոյան Գառնիկ	93899511	95006368		Հասմիկ Մխիթարյան	93849839				2	8	\N	sonahdavtyan@gmail.com
1499	Ռյա Թազայի մ/դ	8	1	գ. Ռյա Թազա	\N	\N	3	2	Աթաշյան Դավիթ	94826022	95006369		Ռուսլան Աթաշյան	94826020				1	7	\N	sonahdavtyan@gmail.com
1500	Ներքին Սասնաշենի մ/դ	8	1	գ. Ներքին Սասնաշեն	\N	\N	3	2	Մելքոնյան Հովիկ	055 593-640	93593640		Սարգիս Մելքոնյան	95006432				10	10	\N	sonahdavtyan@gmail.com
1501	Այգուտի մ/դ	8	4	գ. Այգուտ	\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
1502	Երևանի «Արգենտինյան Հանրապետության» թիվ 76 հմ/դ	8	5	Բաղրամյան 52	\N	\N	3	1	Նարինե Ադամյան	265777	77770007	95006795	Սուսաննա Մուրադյան	91795266				12	12	\N	jass.manasyan@gmail.com
1503	Երևանի «Մխիթար Սեբաստացի» կթհ	8	5	Ա. Բաբաջանյան 25	\N	\N	3	1		94431099			Սենչ	93328186				1	6	\N	jass.manasyan@gmail.com
1504	Երևանի «Վարդանանց ասպետներ» թիվ 106 հմ/դ	8	5	Ն/ն Նանսենի 11	\N	\N	3	1	Վարդանյան Մարինե	93611993	632590		Եղիկյան Նարինե					10	10	\N	jass.manasyan@gmail.com
1505	Երևանի «Օլիմպոս» կթհ	8	5	Գ. Հովսեփյան 6	\N	\N	3	1	Գրիգորյան Վահրամ	91414142			Գայանե Ղազարյան	77437753				\N	\N	\N	jass.manasyan@gmail.com
1506	Երևանի Ա. Շիրակացու անվ. Ճեմարան տ/դ	8	5	Նոր-Նորք , Ա. Միկոյան 35	\N	\N	3	1	Ալիխանյան Աշոտ	95006783	91401546	010640102	Խաչիկ Տիգրանյան	77707901				10	50	\N	jass.manasyan@gmail.com
1507	Երևանի Ա. Արմենակյանի անվ. թիվ 26 մ/դ	8	5	Նորք 5-րդ փողոց 51 շ.	\N	\N	3	1	Արմենակյան Արմենակ	650106	95006784	95377788	Արմենակյան Մարիամ	093645368 հաշվապահ	77654824			3	9	\N	jass.manasyan@gmail.com
1508	Երևանի Ա. Խանջյանի անվ. թիվ 53 հմ/դ	8	5	Տիգրան Մեծի 26	\N	\N	3	1	Ս. Սարգսյան	562764			Լուսինե	41929247				18	17	\N	jass.manasyan@gmail.com
1509	Երևանի Ա. Ղարիբյանի անվ. թիվ 142 ա/դ	8	5	Գյուլիքեվխյան 33	\N	\N	3	1	Միրզոյան Արմանուշ	91635950	95006786	635950	Դոխոյան Սիրանուշ	96672189	672189			13	21	\N	jass.manasyan@gmail.com
1510	Երևանի Ա. Միկոյանի անվ. թիվ 166 հմ/դ	8	5	Ն/Ն5-րդ զանգված Մառի 8	\N	\N	3	1	Քուշկյան Մարգարիտ	91924750			Մարինե	93591318				24	27	\N	jass.manasyan@gmail.com
1511	Երևանի Ա. Չեխովի անվ. թիվ 55 հմ/դ	8	5	Բաղրամյան 16	\N	\N	3	1	Սարուխանյան Գայանե	95006789	91202006							\N	\N	\N	jass.manasyan@gmail.com
1512	Երևանի Բ. Ժամկոչյանի անվ. թիվ 119 ա/դ	8	5	Տիգրան Մեծ 64	\N	\N	3	1	Կարապետյան Հովհաննես	99909290	573740		Մելքոնյան Անուշ	99432226				\N	\N	\N	jass.manasyan@gmail.com
1513	Երևանի բժշկահոգեբանամանկավարժական գնահատման կենտրոնի հտ. հմ/դ	8	5	Քաջազնունի 12	\N	\N	3	1	Կատինյան Վարդուշ	95006792				077702245				\N	\N	\N	sarmen@hf.am
1514	Երևանի Գ. Զոհրապի անվ. թիվ 43 ա/դ	8	5	Նոր-Արեշ 9-րդ փ. 54 շ.	\N	\N	3	1	Կիրակոսյան Անահիտ	94456824			Գայանե	99605602				40	90	\N	jass.manasyan@gmail.com
1515	Երևանի Ադդարյանի անվ. թիվ 133 հմ/դ	8	5	Ն/Ն 2-րդ զծ. Մոլդովական փ	\N	\N	3	1	Վ. Սամվելյան	91362757			Լիաննա Մինասյան	77797610				\N	\N	\N	jass.manasyan@gmail.com
1516	Երևանի Դ. Դեմիրճյանի անվ. թիվ 27 հմ/դ	8	5	Արտաշիսյան 52	\N	\N	3	1	Սարգսյան Սուսաննա	95750175	420573		Սոնա Խաչատրյան	93834625				40	40	\N	jass.manasyan@gmail.com
1517	Երևանի Դ. Վարուժանի անվ. թիվ 89 հմ/դ	8	5	Սեբաստիա 19	\N	\N	3	1	Օ. Պետրոսյան	95006765	98252256		Արմինե Աջարյան	93977297				\N	\N	\N	jass.manasyan@gmail.com
1518	Երևանի Ե. Չարենցի անվ. թիվ 67 հմ/դ	8	5	Ամիրյան 9	\N	\N	3	1	Անահիտ Խեչումյան	55484448	538780		Մարիամ Սարգսյան	95749060				13	13	\N	jass.manasyan@gmail.com
1519	Երևանի ԵՊՀ-ին առընթեր Ա. Շահինյանի անվան ֆիզ.մաթ. վարժ.	8	5	Ազատության պող. 2-րդ նրբանցք թիվ 9	\N	\N	3	1	Նավասարդյան Հայկազ	95011055	95006775							\N	\N	\N	jass.manasyan@gmail.com
1520	Երևանի Շիրազի անվ. թիվ 169 հմ/դ	8	5	Աերացիա	\N	\N	3	1	Մալոյան Սուսաննա	99402554	95006774	460209	Քամալյան Իզաբելլա	99467669				12	21	\N	jass.manasyan@gmail.com
1521	Երևանի թիվ 100 հմ/դ	8	5	Մարգարյան 9	\N	\N	3	1	Ա. Օհանովա	95551525			Սարսյան Ալվարդ	55340681				\N	\N	\N	jass.manasyan@gmail.com
1522	Երևանի թիվ 102 հմ/դ	8	5	Ֆուչիկի 2 նրբ.11	\N	\N	3	1	հայրապետյան Ռուզաննա	95006771	344333		Նարիեն Ղազարյան	94033068	99033068	91033068		\N	\N	\N	jass.manasyan@gmail.com
1523	Երևանի թիվ 104 հմ/դ	8	5	Աճառյան 5	\N	\N	3	1	Նիկոյան Հայկանուշ	093131470	618450		Աթայան Անահիտ	094546101				18	18	\N	jass.manasyan@gmail.com
1524	Երևանի թիվ 116 հմ/դ	8	5	Արարատյան 2 զանգված	\N	\N	3	1	Հովհաննիսյան Թագուհի	95006768	77773432	771201	Վահե Մելքոնյան	55722277	43770768			6	8	\N	jass.manasyan@gmail.com
1525	Երևանի Հ. Բժշկյանցի անվ. թիվ 129 հմ/դ	8	5	Հրաչյա Քոչար 29	\N	\N	3	1	Լիանա Պետրոսյան	223196	95006759		Անուշ	99508077				8	37	\N	jass.manasyan@gmail.com
1526	Երևանի թիվ 14 հտ. մ/դ	8	5	Մամիկոնյանց 31	\N	\N	3	1	Ահարոնյան Ալեքսան	91481791	95006761		Անի	96111129				11	14	\N	jass.manasyan@gmail.com
1527	Երևանի թիվ 15 հտ. մ/դ	8	5	Նորքի այգիներ 193	\N	\N	3	1	Ավետիսյան Աշոտ	651060	95006762	094/401045	Գուրգեն Խանումյան	94421997				\N	\N	\N	jass.manasyan@gmail.com
1528	Երևանի թիվ 154 հմ/դ	8	5	Ֆրունզե 4	\N	\N	3	1	Արշակյան Սուսաննա	447302	91788629		Հարությունյան Մարինա	55982478				19	26	\N	jass.manasyan@gmail.com
1529	Երևանի թիվ 156 հմ/դ	8	5	Շիրազի 11	\N	\N	3	1	Խաչատրյան Անժելա	95006756	345049		Վարդանյան Սուսաննա	345049				\N	\N	\N	jass.manasyan@gmail.com
1530	Երևանի թիվ 16 հտ. մ/դ	8	5	Աճառյան 40	\N	\N	3	1	Նորեկյան Կարինե	010612840			Գեղամ Խաչատրյան	55150535				3	11	\N	jass.manasyan@gmail.com
1531	Երևանի թիվ 163 հմ/դ	8	5	Նոր-Նորքի 6-րդ զ. Գյուրջյ	\N	\N	3	1	Նարինե Վարթերեսյան	10660104			Բադալյան Արուսյակ	91631241				12	25	\N	jass.manasyan@gmail.com
1532	Երևանի թիվ 17 հտ. մ/դ	8	5	Մոլդովական 41	\N	\N	3	1	Հարությունյան Ամալյա	91540178	620674		Նելի Թովմասյան	94545359				1	11	\N	jass.manasyan@gmail.com
1533	Երևանի թիվ 187 մ/դ	8	5	Ջրվեժ, «Մայակե թաղամաս, թ	\N	\N	3	1	Ղևոնդյան Վյաչեսլավ	91308686	95006561		Գայանե Ալեքսանյան	94640466	91337723			31	31	\N	jass.manasyan@gmail.com
1534	Երևանի թիվ 192 հմ/դ	8	5	2 թաղամաս	\N	\N	3	1	Թադևոսյան Ալվարդ	369880	95006572	77733759	Մանուշակ Մկոյան	77916891	360584			\N	\N	\N	jass.manasyan@gmail.com
1535	Երևանի թիվ 198 հեղինակային ա/դ	8	5	Նոր Նորքի 9-րդ զանգված 13	\N	\N	3	1	Արտաշես Թորոսյան	91202119	667250	95006574	Թուրոսյան Խաչիկ	91195615				69	69	\N	jass.manasyan@gmail.com
1536	ԵՊԲՀ-ի Հերացի ավագ դպրոց	8	5	Հ. Ներսիսյանի 3	\N	\N	3	\N	Նարինե Սարգսյան	285360			Անի	98326686				40	42	\N	jass.manasyan@gmail.com
1537	Երևանի թիվ 45 հմ/դ	8	5	Նոր - Արեշ 26 փ. 45 շ.	\N	\N	3	1	Տիգրան Փաշյան	454021	091/458510		Վարսիկ	99201003				8	8	\N	jass.manasyan@gmail.com
1538	Երևանի թիվ 62 ա/դ	8	5	1 զանգված	\N	\N	3	1	Սողոմոնյան Մարինե	091008463	634520		Տիգրան Ձախոյան	55637459		091637459		50	76	\N	jass.manasyan@gmail.com
1539	Երևանի թիվ 8 հտ. մ/դ	8	5	Ծարավ աղբյուրի 14	\N	\N	3	1	Խեբոյան Վարդուհի	91285351	95006581		Հերմինե	91562301				\N	\N	\N	jass.manasyan@gmail.com
1540	Երևանի թիվ 99 հմ/դ	8	5	Ներքին Չարբախ 3-րդ փող. 1	\N	\N	3	1	Մարգարյան Լիլիթ	98428481	420291		Անահիտ Քոսակյան	94611061				15	15	\N	jass.manasyan@gmail.com
1541	Երևանի Գալստյանի անվ. թիվ 83 ա/դ	8	5	Օրբելի 63	\N	\N	3	1	Մ. Պապոյան	95006586	99888050		Միրզոյան Մարիամ	94115510	91754492			25	228	\N	jass.manasyan@gmail.com
1542	Երևանի Հ. Իսակովի անվ. թիվ 132 հմ/դ	8	5	Ա. Խաչատրյան 28	\N	\N	3	1	Վիկտորիա Սուքիասյան	321144			Անուշ Մասնուկյան	55530591				15	40	\N	jass.manasyan@gmail.com
1543	Երևանի Կարապենցի անվ. թիվ 6 հմ/դ	8	5	Սասունցի-Դավթի 2	\N	\N	3	1	Վարդանյան Սիրանուշ	55033066	453800		Սվետլաննա Սիմոնյան	95280329				\N	\N	\N	jass.manasyan@gmail.com
1544	Երևանի Հ. Հայրապետյանի անվ թիվ 78 հմ/դ	8	5	Բաղրամյան 59ա	\N	\N	3	1	Ազնիվ Միրզոյան	91422413	95006714	225836	Անահիտ Գալֆայան	77250266	55250266			8	23	\N	jass.manasyan@gmail.com
1545	Երևանի Պողոսյանի անվան թիվ 82 հմ/դ	8	5	Մամիկոնյանց 33	\N	\N	3	1	Լիլիթ Ասլանյան	95950927	233481		Հովհաննիսյան Լուսինե	94827771				5	15	\N	jass.manasyan@gmail.com
1546	Երևանի Օշականի անվ. թիվ 172 հմ/դ	8	5	Մ. Բաղրամյան պող. 59ա	\N	\N	3	1	Մկրտչյան Գայանե	010225834			Նարինե Առաքելյան	98270678				16	16	\N	jass.manasyan@gmail.com
1547	Երևանի Լեոյի անվ. թիվ 65 ա/դ	8	5	Ֆրունզե 56	\N	\N	3	1	Ռաֆայել Բարսեղյան	480922			Նազելի	94168807				33	33	\N	jass.manasyan@gmail.com
1548	Երևանի Խ. Դաշտենցի անվ. թիվ 114 ա/դ	8	5	Հանրապետության 73	\N	\N	3	1	Կոստանյան Ռուզաննա	91402755	527412		Ալիսա	95900066				1	102	\N	jass.manasyan@gmail.com
1549	Երևանի Խրիմյան Հայրիկի անվ. թիվ 10 հմ/դ	8	5	Չարենցի 75	\N	\N	3	1	Գայանե Մարտիրոսյան	559771			Սիրանուշ	99692919				5	6	\N	jass.manasyan@gmail.com
1550	Երևանի Հանրապետական թիվ 1 հտ/կթ.	8	5	Վարդաշեն 6-րդ փողոց	\N	\N	3	1	Նարինե Հովհաննիսյան	451421			Հռիփսիմե	91007544				14	26	\N	jass.manasyan@gmail.com
1551	Երևանի ՀՀ Գյուղ. ակադեմիայի վարժ. ա/դ	8	5	Կորյունի 19, ՀՊԱՀ-ի 5-րդ	\N	\N	3	1	Ռոբերտ Սարգսյան	141581434			Հակոբյան Անահիտ	91957707				6	16	\N	jass.manasyan@gmail.com
1552	Երևանի Մ. Իշխանի անվ. թիվ 5 հմ/դ	8	5	Փ. Բյուզանդի 107	\N	\N	3	1	է. Հովհաննիսյան	533661			Ռաֆաել Խաչատրյան	91651583				17	17	\N	jass.manasyan@gmail.com
1553	Երևանի Պ. Յավորովի անվ. թիվ 131 հմ/դ	8	5	Արզումանյան 22	\N	\N	3	1	Սուսաննա Դավթյան	99428969			Ալլա	83336756				12	15	\N	jass.manasyan@gmail.com
1554	Երևանի Ջոն Կիրակոսյանի անվ. թիվ 20 հմ/դ	8	5	Այգեստան 94	\N	\N	3	1	Անահիտ Խոսրովյան	552881								\N	\N	\N	jass.manasyan@gmail.com
1555	Երևանի Ռ. Միրոյանի անվ. թիվ 77 հմ/դ	8	5	Ադոնցի 11	\N	\N	3	1	Նառա Պետրոսյան	93421755	232491		Մարիեն Հովհաննիսյան	93285734				11	15	\N	jass.manasyan@gmail.com
1556	Երևանի Ս. Կապուտիկյանի անվ. թիվ 145 հմ/դ	8	5	Հովսեփ-Էմինի 8	\N	\N	3	1	Գայանե Աղասարյան	262422			Լուսինե	98207219				6	12	\N	jass.manasyan@gmail.com
1557	Երևանի Ս. Սպանդարյանի անվ. թիվ 24 հմ/դ	8	5	Պարոնյան 3	\N	\N	3	1	Ն. Ավետիսյան	584721			Տաթևիկ	584721				10	16	\N	jass.manasyan@gmail.com
1558	Երևանի Սախարովի անվ. թիվ 69 հմ/դ	8	5	Արարատյան 26	\N	\N	3	1	Մարիաննա Մելյան	077555473	95007817	462031	Գայանե	93887216				13	13	\N	jass.manasyan@gmail.com
1559	Երևանի Վ. Սարոյանի անվ. թիվ 138 հմ/դ	8	5	Մարգարյան 2 նրբ. 30ա	\N	\N	3	1	Հովհաննիսյան Լուիզա	344800	91373232		Անաիդա Նեսիսյան	93695777				\N	\N	\N	jass.manasyan@gmail.com
1560	Երևանի Վ. Դավթյանի անվ. թիվ149 ա/դ	8	5	Հովսեփ Էմինի նրբ. 4	\N	\N	3	1	Գ. Գալստյան	95007819	99458472	237220	Լուսինե Հարությունյան	98207219				\N	\N	\N	jass.manasyan@gmail.com
1561	Երևանի Վ. Պետրոսյանի անվ. թիվ 51 հմ/դ	8	5	Զարյան 23	\N	\N	3	1	Ալիսա Ղազարյան	232183			Առուշանյան Սվետլանա	94009816	41053000			29	29	\N	jass.manasyan@gmail.com
1562	Երևանի Տ. Շևչենկոյի անվ. թիվ 42 ա/դ	8	5	Մաշտոցի 5/2	\N	\N	3	1	Թումանյան Էլեանորա	535641			Ռուբինա	535641				44	44	\N	jass.manasyan@gmail.com
1563	Երևանի ֆ. Նանսենի անվ. թիվ 150 հմ/դ	8	5	Ն/Ն 4-րդ 1-ին հատված զ. Բ	\N	\N	3	1	Հայրապետյան Մանյակ	91487735			Էլիգումյան Գոհար	93903998				28	28	\N	jass.manasyan@gmail.com
1564	Ախթալայի թիվ 1 մ/դ	8	6	ք. Ախթալա, Շահումյան 10	\N	\N	3	1	Ճիճիլյան Լ.		93405605		Դավոյան Հերմինե	95007458	94405605			\N	\N	\N	jass.manasyan@gmail.com
1565	Թումանյանի Խ. Աբովյանի անվ. մ/դ	8	6	ք. Թումանյան, 2 մաս.	\N	\N	3	3	Անահիտ Ռամազյան	94554060			Մխեյան Լիանա	94973941				11	11	\N	sonahdavtyan@gmail.com
1566	Կաթնաջրի մ/դ	8	6	գ. Կաթնաջուր	\N	\N	3	2	Էդվարդ Ասատրյան	91067033	98067033		Մարիաննա Եղշատյան	94320527				3	9	\N	jass.manasyan@gmail.com
1567	Հարթագյուղի մ/դ	8	6	գ. Հարթագյուղ	\N	\N	3	2	Հունանյան Սամվել	94809054			Անժելա Մկրտչյան	77204880				1	12	\N	jass.manasyan@gmail.com
1568	Մեծ Պառնիի Մ. Մելքոնյանի անվ. մ/դ	8	6	գ. Մեծ Պառնի	\N	\N	3	2	Հրաչ Փիլոյան	93462236	025562001		Սարգիս Փիլոյան	77064191				2	14	\N	jass.manasyan@gmail.com
1569	Սպիտակի Ալ. Մյասնիկյանի անվ թիվ 1 մ/դ	8	6	ք. Սպիտակ, Մյասնիկյան	\N	\N	3	1	Մարիետա Ավետիսյան	95007448			Սուսաննա Թումանյան	96070314				10	14	\N	jass.manasyan@gmail.com
1570	Ագարակի մ/դ	8	6	գ. Ագարակ	\N	\N	3	2	Վարդունյան Հայկ	91044288	94044288		Խուբլարյան Նվարդ	77046446				2	11	\N	jass.manasyan@gmail.com
1571	Կուրթանի մ/դ	8	6	գ. Կուրթանի	\N	\N	3	2	Վանիչկա Նալբանդյան	55110756	94449596		Անուշ Ստեփանյան	95172495				4	10	\N	jass.manasyan@gmail.com
1572	Վանաձորի Ա. Գրիբոյեդովի անվ. թիվ 11 ա/դ	8	6	ք. Վանաձոր, Ազատամարտիկների պուրակ	\N	\N	3	1	Նարինե Սահակյան	91222770			Մխիթարյան Աննա	93629551				15	52	\N	jass.manasyan@gmail.com
1573	Առինջի Կ. Ծառուկյանի անվ. մ/դ	8	7	գ. Առինջ	40.2310450000000017	44.5700720000000032	3	1	Գրիգորյան Սահակ	91350630	620480		Ռուզաննա	91624845				32	32	\N	\N
1574	Արզնիի մ/դ	8	7	գ. Արզնի	\N	\N	3	2	Սիմոնովնա Սոֆիա	91415344			Կրիստինա	77738232				7	17	\N	sonahdavtyan@gmail.com
1575	Ձորաղբյուրի մ/դ	8	7	գ. Ձորաղբյուր,  Լուսավորության 25	40.202058000000001	44.6466920000000016	3	1	Կարապետյան Նարինե	55071163			Մուրադյան Արմենուհի	77216934				18	18	\N	jass.manasyan@gmail.com
1576	Ջրվեժի հմ/դ	8	7	գ. Ջրվեժ	40.1870750000000001	44.5920819999999978	3	1	Վարդանյան Լլիթ	91539228			Կոբալյան Հերմինե	99811224				\N	\N	\N	\N
1577	Աբովյանի Վ. Համբարձումյանի անվ. թիվ 10 հմ/դ	8	7	ք. Աբովյան, Ս. Մնացականյանի 5	\N	\N	3	1	Անահիտ Ստեփանյան	77051929			Ասատրյան Արեգնազ	95687006				22	35	\N	jass.manasyan@gmail.com
1578	Բջնիի Թումանյանի անվ. մ/դ	8	7	գ. Բջնի	\N	\N	3	2	Յաշա Սահակյան	91313131	094313144		Սոնա	77552230				12	26	\N	sarmen@hf.am
1579	Մեղրաձորի Հակոբյանի անվ. մ/դ	8	7	գ. Մեղրաձոր	\N	\N	3	2	Հրաչ Սարգսյան	93121244			Արևիկ	94341491				\N	\N	\N	sonahdavtyan@gmail.com
1580	Ծաղկաձորի մ/դ	8	7	ք. Ծաղկաձոր, Մայիսյան 14	\N	\N	3	1	Եգորյան Սուսաննա	22360255	77320108		Ռուզաննա Ավետիսյան	93386128				2	5	\N	jass.manasyan@gmail.com
1581	Հրազդանի Ա. Շիրակացու անվ. թիվ 6 հմ/դ	8	7	ք. Հրազդան, Վանատուր թաղ, Զորավար Անդրանիկի 396	\N	\N	3	1	Ղազարյան Գրիշա	22324753	93254793		Մանուշ Վարդանյան	91459121				\N	\N	\N	jass.manasyan@gmail.com
1582	Հրազդանի Խ. Աբովյանի անվ. թիվ 1 ա/դ	8	7	ք. Հրազդան, Երևանյան 5	\N	\N	3	1	Մովսիսյան Գոհար	91491496	22324215		Մկրտչյան Գրետա					\N	\N	\N	jass.manasyan@gmail.com
1583	Չարենցավանի թիվ 3 հմ/դ	8	7	ք. Չարենցավան, Լենինի 22	\N	\N	3	1	Կարապետյան Լուսինե	22644582	94426742		Աստղիկ	95799998				9	9	\N	jass.manasyan@gmail.com
1584	Զովունիի Ռ. Բաղդասարյանի անվ. մ/դ	8	7	գ. Զովունի	40.2350330000000014	44.5063109999999966	3	1	Ղազարյան Վարդան	94503544			Հասմիկ Սեղբոսյան	55064686				\N	\N	\N	\N
1585	Նոր Արտամետի մ/դ	8	7	գ. Նոր Արտամետ	\N	\N	3	2	Մելքոն Կարապետյան	55921959	95395395		Սարգսյան Հայկանուշ	55332538	91008266			3	8	\N	sonahdavtyan@gmail.com
1586	Նոր Գեղիի թիվ 1 մ/դ	8	7	գ. Նոր Գեղի, Ց. Խաչատրյան	\N	\N	3	2	Բաբախանյան Ն.	93500279			Պապյան Հասմիկ	99232909				\N	\N	\N	sonahdavtyan@gmail.com
1587	Պռոշյանի Պ. Ղևոնդյանի անվ. մ/դ	3	7	գ. Պռոշյան	40.2470780000000019	44.4185719999999975	3	1	Մարգարիտ Ավետիսյան	93183803			Անահիտ Հակոբյան	93312655				1	34	\N	\N
1588	Քասախի Ա. Հովհաննիսյանի անվ. թիվ 2 մ/դ	8	7	գ. Քասախ	40.2362830000000002	44.4575469999999981	3	1	Ղազարյան Պայծառ	55131960	94196013		Գևորգյան Անդրանիկ	194980111				\N	\N	\N	\N
1589	Եղվարդի Գր. Հակոբյանի անվ. թիվ 1 ա/դ	8	7	ք. Եղվարդ, Չարենցի փ. 54	40.3147639999999967	44.4771610000000024	3	1	Սիմոնյան Ռազմիկ	93541207			Սիմոնյան Վարդգես	93800270				\N	\N	\N	\N
1590	Նոր Հաճնի թիվ 1 հմ/դ	8	7	ք. Նոր Հաճն, Չարենցի 20	\N	\N	3	1	Ն. Վարդանյան	55959390			Մանուշակ Պողոսյան	98713893				\N	\N	\N	jass.manasyan@gmail.com
1591	Բագրավանի մ/դ	8	8	գ. Հատիս	\N	\N	3	3	Հարությունյան Հռիփսիմե	94158383			Ժենյա Հովսեփյան	093143562				1	2	\N	jass.manasyan@gmail.com
1592	Մարալիկի թիվ 2 մ/դ	8	8	ք. Մարալիկ,Կոլտնտեսականների 2	\N	\N	3	1	Գևորգյան Ռոզա	95009773	94845513		Նաիրա Գասպարյան	93055850				2	3	\N	jass.manasyan@gmail.com
1593	Մեծ Սեպասարի մ/դ	8	8	գ. Մեծ Սեպասար	\N	\N	3	2	Հրանտիկ Մելիքյան	95008746	77950486		Հրանտիկ Մելիքյան	95008746	77950486			\N	\N	\N	jass.manasyan@gmail.com
1594	Սարատակի մ/դ	8	8	գ. Սարատակ	\N	\N	3	2	Միքայել Ղավուզյան	94474241			Մարիամ Նիկոլյան	77946616				1	13	\N	jass.manasyan@gmail.com
1595	Արթիկի թիվ 2 հմ/դ	8	8	ք. Արթիկ, Անկախության 15	\N	\N	3	1	Սուսաննա Պետոյան	98639261	94912240		Ալվարդ Պետիկյան	93968850				1	10	\N	jass.manasyan@gmail.com
1596	Արթիկի թիվ 3 ա/դ	8	8	ք. Արթիկ, Աբովյան 10	\N	\N	3	1	Աշոտ Վարագյան	95008781	77204863		Զարուհի Պետրոսյան	93668826				10	22	\N	jass.manasyan@gmail.com
1597	Արթիկի թիվ 6 հմ/դ	8	8	ք. Արթիկ, Շիրազի 8	\N	\N	3	1	Դավթյան Աղունիկ	95008779	94958724		Նազիկ Երանոսյան	93653019				1	9	\N	jass.manasyan@gmail.com
1598	Խնձորեսկի մ/դ	8	9	գ. Խնձորեսկ	\N	\N	3	2	Վալենտինա Բալայան	95004643	94223380		Սրապունց Սոնա	093931905				5	19	\N	sonahdavtyan@gmail.com
1599	Կոռնիձորի մ/դ	8	9	գ. Կոռնիձոր	\N	\N	3	2	Սուսաննա Հովհաննիսյան	95004656	093468626		Նառա Գրիգորյան	94442286				3	8	\N	sonahdavtyan@gmail.com
1600	Վերիշենի մ/դ	8	9	գ. Վերիշեն	\N	\N	3	1	Արամ Բաբայան	93258947			Լիլիա Միրզոյան	77057674				7	13	\N	sonahdavtyan@gmail.com
1601	Տաթևի Սուրեն Առաքելյանի անվ. մ/դ	8	9	գ. Տաթև	\N	\N	3	2	Մովսիսյան Նորվարդ	28497471	94515337	95002957	Գայանե Պողոսյան	93605954				1	11	\N	sonahdavtyan@gmail.com
1602	Տեղի թիվ 1 մ/դ	8	9	գ. Տեղ	\N	\N	3	2	Սլավիկ Գրիգորյան	95002946	93003890		Մ․ Խաչունց 	077993227				3	11	\N	sonahdavtyan@gmail.com
1686	Ձորաղբյուր	4	7		40.2039970000000011	44.6367440000000002	3	1									կայանն ապամոնտաժվել է	\N	\N	\N	jass.manasyan@gmail.com
1603	Գորիսի թիվ 1 հտ. հմ/դ	8	9	ք. Գորիս, Արզումանյան 7	\N	\N	3	1	Շալունց Հերմինե	98023754			Անուշ Դալլաքյան	98998544				1	11	\N	jass.manasyan@gmail.com
1604	Վաղատուրի մ/դ	8	9	գ. Վաղատուր	\N	\N	3	4	Վարազդատ Խաչատրյան	094820172			Սերգեյ Սամվելյան	077659718				5	6	\N	sonahdavtyan@gmail.com
1605	Նորավանի մ/դ	8	9	գ. Նորավան	\N	\N	3	3	Արամ Անդրեասյան	95002857	93018795		Սուրեն Շահնազարյան	99006551				4	4	\N	sonahdavtyan@gmail.com
1606	Շաղաթի մ/դ	8	9	գ. Շաղատ	\N	\N	3	2	Հարությունյան Արամ	094386062			Նաիրա Եփրեմյան	77136381				6	12	\N	sonahdavtyan@gmail.com
1607	Սիսիանի թիվ 1 hմ/դ	8	9	ք. Սիսիան, Կամոյի 3	\N	\N	3	1	Դավթյան -Սարգսյան Գոհար	93656358	95002881		Լուսիկ Դովլաթյան	94797641	77039998			3	10	\N	jass.manasyan@gmail.com
1608	Սիսիանի թիվ 1 հտ. հմ/դ	8	9	ք. Սիսիան, Կամոյի 5	\N	\N	3	1	Հերմինե Դավթյան	94773707			Հասմիկ Հակոբյան	93573785				3	4	\N	jass.manasyan@gmail.com
1609	Աղավնաձորի մ/դ	8	10	գ. Աղավնաձոր	\N	\N	3	2	Մանուկյան Նահապետ	95006145	94726908		Սուսաննա Գրիգորյան	94870894				15	17	\N	sonahdavtyan@gmail.com
1610	Արենիի մ/դ	8	10	գ. Արենի	\N	\N	3	2	Հայրապետյան Ավետ	95006143	93933780		Ռիտա Ավագյան	94519379				23	25	\N	sonahdavtyan@gmail.com
1611	Արփիի մ/դ	8	10	գ. Արփի	\N	\N	3	2	Արա Հովսեփյան	93763173			Մարինե Աթանակինյան	93802866				11	12	\N	sonahdavtyan@gmail.com
1612	Խաչիկի մ/դ	8	10	գ. Խաչիկ	\N	\N	3	2	Խաչատրյան Քաջիկ	93283698			Սոնա Մակարյան	093837526				13	15	\N	sonahdavtyan@gmail.com
1613	Մալիշկայի թիվ 1 մ/դ	8	10	գ. Մալիշկա	\N	\N	3	2	Մարգարյան Արմեն	95006138	93840230		Գալուստ Դովլաթյան	77916133	77916134			2	15	\N	sonahdavtyan@gmail.com
1614	Մալիշկայի թիվ 2 մ/դ	8	10	գ. Մալիշկա	\N	\N	3	2	Հասմիկ Դավթյան	95006139	93454563		Աննա Արսենյան	94584666	93555726			12	30	\N	sonahdavtyan@gmail.com
1615	Վերնաշենի մ/դ	8	10	գ. Վերնաշեն	\N	\N	3	2	Հարությունյան Համլետ	95006137	93385556	91532187	Ստեփան Ստեփանյան	77023125				9	9	\N	sonahdavtyan@gmail.com
1616	Եղեգնաձորի  ա/դ	8	10	ք. Եղեգնաձոր, Շահումյան 12	\N	\N	3	1	Հարությունյան Կարինե	95006131	98387555		Քրիստինե Մխիթարյան	93970455				27	49	\N	jass.manasyan@gmail.com
1617	Եղեգնաձորի թիվ 1 հմ/դ	8	10	ք. Եղեգնաձոր, Վայքի փ., 4 շենք	\N	\N	3	1	Անուշ Թարվերդյան	94099566			Ժաննա Պետրոսյան	94766867				13	22	\N	jass.manasyan@gmail.com
1618	Զառիթափի Ա. Մելիքյանի անվ. մ/դ	8	10	գ. Զառիթափ	\N	\N	3	2	Կարինե Գևորգյան	98555082			Հովհաննիսյան Կիմա	77398002				10	15	\N	sonahdavtyan@gmail.com
1619	Հերհերի մ/դ	8	10	գ. Հերհեր	\N	\N	3	2	Ոսկանյան Երվանդ	95006113	93836503		Նաիրա Բաղդասարյան	93086335				10	11	\N	sonahdavtyan@gmail.com
1620	Ջերմուկի թիվ 1 հմ/դ	8	10	ք. Ջերմուկ, Շահումյան 7	\N	\N	3	1	Սարգսյան Լուսիկ	95005898	94381836		Մովսիսյան Արտակ	94007141				9	35	\N	jass.manasyan@gmail.com
1621	Ջերմուկի թիվ 3 հմ/դ	8	10	գ. Կեչուտ	\N	\N	3	2	Ստեփան Ստեփանյան	95005864	94703370	94703370	Վիլսոն Սարգսյան	94795485				10	25	\N	sonahdavtyan@gmail.com
1622	Վայքի թիվ 1 ա/դ	8	10	ք. Վայք, Շահումյամ 93	\N	\N	3	1	Հակոբյան Թարո	93318070	95005859		Հասմիկ Գրիգորյան	98811808				14	14	\N	jass.manasyan@gmail.com
1623	Վայքի թիվ 2 հմ/դ	8	10	ք. Վայք, Ալավերդյան 17	\N	\N	3	1	Մնացականյան Հովիկ	94221292			Քնարիկ Ստեփանյան	28221020	94458822			14	18	\N	jass.manasyan@gmail.com
1624	Ազատամուտի մ/դ	8	11	գ. Ազատամուտ	\N	\N	3	1	Հակոբյան Լարիսա	95004161	93119144		Մարգարիտ Բադալյան	77734347				\N	\N	\N	jass.manasyan@gmail.com
1625	Գոշի թիվ 1 մ/դ	8	11	գ. Գոշ	\N	\N	3	3	Ամիրխանյան Հայկազ	95004173	93093211		Շուշանիկ Ամիրխանյան	94261300				10	10	\N	jass.manasyan@gmail.com
1626	Դիլիջանի թիվ 1 ա/դ	8	11	ք. Դիլիջան փ. Մյասնիկյան 61	\N	\N	3	1	Արամյան Արա	95001495	91744257		Ալլա Թումանյան					12	40	\N	jass.manasyan@gmail.com
1627	Դիլիջանի թիվ 4 հմ/դ	8	11	ք. Դիլիջան Շահումյան 6	\N	\N	3	1	Էրիկա Անանյան	94230369			Լաուրա Դավթյան					5	10	\N	jass.manasyan@gmail.com
1628	Արճիսի մ/դ	8	11	գ. Արճիս	\N	\N	3	2	Մուսայելյան Հենրիկ	95001775	94446099		Մակարյան Սեդա	91809684				\N	\N	\N	jass.manasyan@gmail.com
1629	Բերդավանի մ/դ	8	11	գ. Բերդավան	\N	\N	3	2	Ասատրյան Արևիկ	95001954	93449599		Անահիտ Բարխուդարյան	55263788				\N	\N	\N	jass.manasyan@gmail.com
1630	Կողբի թիվ 2 մ/դ	8	11	գ. Կողբ	\N	\N	3	1	Նազարյան Կարեն	95001751	98764242		Մանիկ Ազատյան	55030317				\N	\N	\N	jass.manasyan@gmail.com
1631	Կողբի Ջ. Կարախանյանի անվ. թիվ 1 մ/դ	8	11	գ. Կողբ	\N	\N	3	2	Ղարագյոզյան Մարինե	95001952	93730873		Արմինե Ազատյան	98108204				10	40	\N	jass.manasyan@gmail.com
1632	Ոսկեվանի մ/դ	8	11	գ. Ոսկեվան	\N	\N	3	2	Մամյան Գարիկ		93703870		Վլադիմիր Զալինյան	91778416				1	9	\N	jass.manasyan@gmail.com
1633	Պտղավանի մ/դ	8	11	գ. Պտղավան	\N	\N	3	2	Կոպիյան Էլմիրա	95002117	94918276		Աշխեն Ավետյան	77409102				\N	\N	\N	jass.manasyan@gmail.com
1634	Նոյեմբերյանի թիվ 1 ա/դ	8	11	ք. Նոյեմբերյան, Դպրոցականների 13	\N	\N	3	1	Գիշյան Ռուբիկ	95001837	94925892		Արևիկ Աղբալյան	94022289				\N	\N	\N	jass.manasyan@gmail.com
1635	Նոյեմբերյանի թիվ 2 հմ/դ	8	11	ք. Նոյեմբերյան, Դպրոցականների 15	\N	\N	3	1	Ալեքսանյան Փարսադամ	95003823	94013173		Լուսինե Հովհաննիսյան	94301044				\N	\N	\N	jass.manasyan@gmail.com
1687	Քուչակ	5	1		40.5231720000000024	44.390697000000003	3	1										\N	\N	\N	jass.manasyan@gmail.com
1636	Այգեպարի մ/դ	8	11	գ. Այգեպար	\N	\N	3	5	Արզումանյան Արևիկ	93913253	95001854		Հովիկ Անդրիասյան					5	19	\N	jass.manasyan@gmail.com
1637	Արծվաբերդի Բ. Աղաբաբյանի անվ.մ/դ	8	11	գ. Արծվաբերդ	\N	\N	3	2	Մխիթարյան Արտաշես	95001856	94107066		Զորաբյան Լիանա	93018575				10	22	\N	jass.manasyan@gmail.com
1638	Մովսեսի մ/դ	8	11	գ. Մովսես	\N	\N	3	4	Ադամյան Ռուզաննա	95001583	98610461		Լիանա Ապերյան	94353523				4	26	\N	jass.manasyan@gmail.com
1639	Նորաշենի մ/դ	8	11	գ. Նորաշեն	\N	\N	3	4	Մխիթարյան Գագիկ	95001663	77121777		Մելինե Այվազյան					7	11	\N	jass.manasyan@gmail.com
1640	Տիգրանաշենի մ/դ	8	2	գ. Տիգրանաշեն	\N	\N	3	2	Անդրեասյան Գայանե	77870093			Անդրեասյան Կարապետ	77008890				1	4	\N	sonahdavtyan@gmail.com
1641	Վահագնաձորի հմ/դ	8	6	գ. Վահագնաձոր	\N	\N	3	3	Անահիտ Ջումարդյան	94671484	55611484		Աիդա Պետրոսյան	95775557				3	4	\N	jass.manasyan@gmail.com
1642	Ահնիձորի հմ/դ	8	6	գ. Ահնիձոր	\N	\N	3	5	Համլետ Մաթևոսյան	98013303			Հայկ Մաթևոսյան	93186999				2	3	\N	jass.manasyan@gmail.com
1643	Ծաղկաշատի հմ/դ	8	6	գ. Ծաղկաշատ	\N	\N	3	5	Անահիտ Մուսայելյան	93928580			Պարանյան Վիկտորիա	77936963				\N	\N	\N	jass.manasyan@gmail.com
1644	Կարմիր Աղեգու հմ/դ	8	6	գ. Կարմիր Աղեկ	\N	\N	3	2	Միկոյան Սիրանուշ	93435230	43083757		Արփինե Մարգարյան 	55929375				5	5	\N	jass.manasyan@gmail.com
1645	Ջիլիզայի մ/դ	8	6	գ. Ջիլիզա	\N	\N	3	5	Թունյան Սաթենիկ	93645089								\N	\N	\N	jass.manasyan@gmail.com
1646	Ձորամուտի մ/դ	8	6	գ. Ձորամուտ	\N	\N	3	3	Սուսաննա Պողոյան	93816412	91816412		Պողոյան Նահապետ	98565213				3	7	\N	jass.manasyan@gmail.com
1647	Պրիվոլնոյեյի մ/դ	8	6	գ. Պրիվոլնոյե	\N	\N	3	5	Ֆյոդորովա Աննա	93077462			Գրիգորյան Էմիլ	91909225				1	5	\N	jass.manasyan@gmail.com
1648	Հատիսի մ/դ	8	7	գ. Հատիս	\N	\N	3	5	Ադելաիդա Եփրեմյան	93359189			Վահագ Մելիքյան	94116150				1	3	\N	sonahdavtyan@gmail.com
1649	Սառնաղբյուրի մ/դ	8	8	գ. Սառնաղբյուր	\N	\N	3	3	Հակոբյան Հմայակ	95006316	93850051		Կարինե Վարդանյան	94845114				3	14	\N	jass.manasyan@gmail.com
1650	Արևիսի հմ/դ	8	9	գ. Արևիս	\N	\N	3	5	Գրիգորյան Ռիտա	95006315	94374753		Լուսինե Գյուրջյան	94392500				1	2	\N	sonahdavtyan@gmail.com
1651	Խոզնավարի մ/դ	8	9	գ. Խոզնավար	\N	\N	3	5	Վ. Զաքարյան	77037363			Ա. Հայրապետյան	77668499				2	5	\N	sonahdavtyan@gmail.com
1652	Խնածախի մ/դ	8	9	գ. Խնածախ	\N	\N	3	2	Ալբերտ Աղաջանյան	28490172	95006313	93 764505	Մ. Մինասյան	77890363				2	13	\N	sonahdavtyan@gmail.com
1653	Գեղիի մ/դ	8	9	գ. Գեղի	\N	\N	3	5	Խորեն Տեր-Ստեփանյան	95006312	93996361		Ալեն Ղուկասյան	98330023				3	4	\N	sonahdavtyan@gmail.com
1654	Շվանիձորի մ/դ	8	9	գ. Շվանիձոր	\N	\N	3	4	Անահիտ Զաքարյան	95006297	77995433		Ռ.Ստեփանյան	98051169				\N	\N	\N	sonahdavtyan@gmail.com
1655	Նռնաձորի մ/դ	8	9	գ. Նռնաձոր	\N	\N	3	5	Գրիգորյան Սուսաննա	95006296	94105818		Աննա Բաբայան	77917133				1	6	\N	sonahdavtyan@gmail.com
1656	Գողթանիկի հմ/դ	8	10	գ. Գողթանիկ	\N	\N	3	2	Ասատրյան Անահիտ	94305857	95006285		Շուշամիկ Հունանյան	98647174				5	6	\N	sonahdavtyan@gmail.com
1657	Հորսի հմ/դ	8	10	գ. Հորս	\N	\N	3	2	Վարդանյան Մխիթար	028121485	99178090		Գայանե Մանասերյան	028121468				2	3	\N	sonahdavtyan@gmail.com
1658	Գոշի թիվ 2 հմ/դ	8	11	գ. Գոշ	\N	\N	3	3	Հովհաննիսյան Անահիտ	95006287	77551565		Արմեն Սարգսյան	94551569				\N	\N	\N	sonahdavtyan@gmail.com
1659	Բարեկամավանի մ/դ	8	11	գ. Բարեկամավան	\N	\N	3	5	Ազատյան Աստղիկ	95006289	94902049		Հրանտ Աբովյան	77870779				\N	\N	\N	sonahdavtyan@gmail.com
1660	Կալավանի մ/դ	8	4	գ. Կալավան	\N	\N	3	5	Քեշիշյան Զվարթ	95006291	93149993		Ղուկասյան Հովիկ	0265/60113	077446388			\N	\N	\N	sarmen@hf.am
1661	Սյունիքի տարածաշրջանային պետական քոլեջ	8	9	ք. Կապան, Արզումանյան 11	\N	\N	3	1	Անժելա Մաքյան	93749173			Ղոնյան Մերի	94731286				14	30	\N	jass.manasyan@gmail.com
1662	Վայոց ձորի տարածաշրջանային պետական քոլեջ	8	10	ք. Եղեգնաձոր, Սպանդարյան 3	\N	\N	3	1	Արգամ Դովլաթյան	93750602			Վան Միքաելյան	98768718				8	10	\N	jass.manasyan@gmail.com
1663	Խնձորուտի մ/դ	8	10	գ. Խնձորուտ	\N	\N	3	2	Համլետ Օհանյան	094-82-86-01	28294115	09465-75-96	Հրայր Օհանյան	94574761				17	23	\N	sonahdavtyan@gmail.com
1664	ՀՖ Պահեստ	6	5	Պարոնյան 8/8	\N	\N	3	\N										\N	\N	\N	\N
1665	ՀՖ Գրասենյակ	7	5	Պարոնյան 8/9	\N	\N	3	\N										\N	\N	\N	\N
1666	Փարաքար	4	3	գ.Փարաքար	40.1637259999999969	44.4150380000000027	3	1	Սիրեկան Սահակյան	55221172	94221172							\N	\N	\N	\N
1671	Ոսկեթաս	4	1		40.4439940000000036	43.9450110000000009	3	2										\N	\N	\N	jass.manasyan@gmail.com
1672	Տիգրանաշեն	4	2		39.7856140000000025	44.9451079999999976	3	2										\N	\N	\N	jass.manasyan@gmail.com
1673	Զովաշեն	1	2		39.829895999999998	44.9936849999999993	3	1										\N	\N	\N	jass.manasyan@gmail.com
1674	Լանջաղբյուր	5	4		40.2668329999999983	45.1372670000000014	3	2										\N	\N	\N	jass.manasyan@gmail.com
1675	Սեմյոնովկա (Սևան լեռնանցք)	1	4		40.6574200000000019	44.9314499999999981	3	1										\N	\N	\N	jass.manasyan@gmail.com
1676	Բերքաբեր	4	11		41.0551060000000021	45.1468289999999968	3	2										\N	\N	\N	sonahdavtyan@gmail.com
1677	Չինչին (Նոր)	1	11		\N	\N	3	2										\N	\N	\N	sonahdavtyan@gmail.com
1678	Չինարի	5	11		40.8491530000000012	45.5541109999999989	3	2										\N	\N	\N	sonahdavtyan@gmail.com
1679	Քարկոփ	2	11		41.1806079999999994	44.8603809999999967	3	2										\N	\N	\N	sonahdavtyan@gmail.com
1692	Աշոտավանի մ/դ	8	9	գ. Աշոտավան	\N	\N	3	2	Հովհաննիսյան Էդգար	98585848			Հարությունյան Աստղիկ	77431430	28395143			2	5	\N	\N
1693	Մուցք	4	9	գ․Մուցք	\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
1694	Բարձրավանի մ/դ	8	9	գ. Բարձրավան	\N	\N	3	2	Էդիկ Հովհաննիսյան	95004541	28439218	94423689	Աննա Սահակյան	98004167				1	4	\N	\N
1695	Եղվարդ	4	9	գ. Եղվարդ	\N	\N	3	2										\N	\N	\N	\N
1696	Սյունիք	4	9	գ․ Սյունիք	\N	\N	3	2										\N	\N	\N	vahram@hf.am
1697	Ձագեձոր (TV Tower)	1	9	գ․ Ձագեձոր	\N	\N	3	2										\N	\N	\N	jass.manasyan@gmail.com
1698	FastNet	13	5	Նալբանդյան 7/15	\N	\N	\N	\N										\N	\N	\N	\N
1699	Սևանի Վազգենյան հոգևոր դպրանոց	8	4	Սևանի թերակղզի	\N	\N	3	2						094 876646				\N	\N	\N	sarmen@hf.am
1701	Արմաշ Client-Ռադիկ	4	2		\N	\N	\N	2										\N	\N	\N	jass.manasyan@gmail.com
1702	Լանջառ Client-Պետիկ	4	2		\N	\N	\N	2										\N	\N	\N	jass.manasyan@gmail.com
1703	Երևանի տարածաշրջանային թիվ 2 պետական քոլեջ	8	5	Նոր Նորքի 2-րդ միկրոշրջան, Մոլդովական փող., 37ա շենք	\N	\N	\N	1	Հայրապետյան Կառլեն	010672301			Բաբայան Անդրանիկ	93315401				10	50	\N	jass.manasyan@gmail.com
1704	Վահե Մելքոնյան	14	3		\N	\N	\N	\N	Վահե Մելքոնյան	077508009	095958316							\N	\N	\N	\N
1705	Արթուր Մավյան	14	5		\N	\N	\N	\N	Արթուր Մավյան	099633733	095958339							\N	\N	\N	\N
1706	Գևորգ Արշակյան	14	3		\N	\N	\N	\N	Գևորգ Արշակյան	099791197	095958854							\N	\N	\N	\N
1707	Վարդան Հարությունյան	14	6		\N	\N	\N	\N	Վարդան Հարությունյան	093789514	055789514							\N	\N	\N	\N
1708	Թաթուլ Մելքոնյան	14	7		\N	\N	\N	\N	Թաթուլ Մելքոնյան	094378825	095958842							\N	\N	\N	\N
1709	Ռոբերտ Պողոսյան	14	2		\N	\N	\N	\N	Ռոբերտ Պողոսյան	077205663	095958841							\N	\N	\N	\N
1710	Վարդան Ավետիսյան	14	9		\N	\N	\N	\N	Վարդան Ավետիսյան	094003925	095958843							\N	\N	\N	\N
1711	Սուրեն Կարապետյան	14	8		\N	\N	\N	\N	Սուրեն Կարապետյան	098237723	095958849							\N	\N	\N	\N
1712	Արարատ Թիրաբյան	14	11		\N	\N	\N	\N	Արարատ Թիրաբյան	094480104	095958319							\N	\N	\N	\N
1713	Արմեն Գալստյան	14	9		\N	\N	\N	\N	Արմեն Գալստյան	096676679	095958335							\N	\N	\N	\N
1714	Վիկտր Պողոսյան	14	2		\N	\N	\N	\N	Վիկտր Պողոսյան	077888883								\N	\N	\N	\N
1715	Թաթուլ Մկրտչյան	14	1		\N	\N	\N	\N	Թաթուլ Մկրտչյան	093605559	095958340							\N	\N	\N	\N
1716	Արման Արոյան	14	8		\N	\N	\N	\N	Արման Արոյան	098751074	095958331							\N	\N	\N	\N
1718	Գյումրու տնտեսագիտական վարժ. (մասնաճյուղ)	8	8	ք. Գյումրի, Կիրովականյան 21	\N	\N	\N	1	Նառա Ավագյան 	93822075			Սուսաննա Համբարձումյան	55787832				8	20	\N	jass.manasyan@gmail.com
1719	Երևանի ինֆորմատիկայի պետական քոլեջ ՊՈԱԿ	8	5	Մամիկոնյանց փ․ 52	\N	\N	3	1	Ռոբերտ Աբրահամյան	236252			Դմիտրի	93387786				100	150	Armen.hayrapetyan@hf.am	jass.manasyan@gmail.com
1720	Web	13	5		\N	\N	\N	\N										\N	\N	jass.manasyan@gmail.com	\N
1721	ԿՏԱԿ	13	5		\N	\N	\N	\N										\N	\N	vahram@hf.am	\N
1722	Գյումրու թիվ 3 ա/դ	8	8	ք. Գյումրի, Թումանյան փող., 85 շենք	\N	\N	3	1	Կարեն Դարբինյան	312-51863								\N	\N	jass.manasyan@gmail.com	\N
1723	Ալեքսան Կիրակոսյան	14	8	\N	\N	\N	\N	\N	Ալեքսան Կիրակոսյան	094823355		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1725	Երևանի Վ. Թոթովենցի անվ. թիվ 57 հմ/դ	8	5	Ագաթանգեղոսի 7ա	\N	\N	3	1	Նաիրա Տողանյան	527826			Արմինե	97942886				13	13	jass.manasyan@gmail.com	\N
1726	Հայկ Օհանյան	\N	5		\N	\N	\N	\N	Հայկ Օհանյան	099999335	095999335							\N	\N	vahram@hf.am	\N
949	Վաղարշապատի թիվ 2 հտ/դ	8	3	ք. Վաղարշապատ, Զվարթնոց թաղամաս	40.1720129999999997	44.3301069999999982	3	1		077008777								3	\N	\N	Armen.hayrapetyan@hf.am
349	Փամբակի մ/դ	8	4	գ. Փամբակ	\N	\N	3	2	Թովմասյան Գարուն	95007539	098-23-39-38	093836364	Թովմասյան Մագդա	93921008				\N	\N	\N	sarmen@hf.am
\.


--
-- TOC entry 3340 (class 0 OID 16568)
-- Dependencies: 239
-- Data for Name: Site_Type; Type: TABLE DATA; Schema: public; Owner: inventory
--

COPY public."Site_Type" ("Site_Type_ID", "Site_Type_Name") FROM stdin;
1	TV Tower
2	New Tower
3	School AP
4	Building AP
5	Ucom AP
6	HF Stock
7	HF Office
8	School
11	Ambulatory
13	Partner Stock
14	Technician Stock
\.


--
-- TOC entry 3341 (class 0 OID 16575)
-- Dependencies: 240
-- Data for Name: Speedy; Type: TABLE DATA; Schema: public; Owner: inventory
--

COPY public."Speedy" ("Speedy_ID", "Speedy_Name", "Measure_ID") FROM stdin;
5	Մալուխ UTP Cat. 5e	5
6	Մալուխ FTP Cat. 5e	5
7	Հոսանքի մալուխ 2x1.5	5
8	Հոսանքի մալուխ 2x2.5	5
9	Մեկուսիչ ժապավեն	6
10	Պլաստմասե ձգիչ 3.6x300	6
11	Պլաստմասե ձգիչ 7.6x550	6
12	Խրոցակ	6
13	Ճոպան 3մմ	5
14	RP TNC Male Connector (bullet переходник)	6
15	RJ 45 UTP միացուցիչ	6
16	Հոսանքի եռաբաշխիչ	6
17	Հոսանքի երկբաշխիչ	6
18	Ամրակ պլաստի (Скоба)	6
19	Անկյունակ	6
20	Վարդակ	6
21	Մետաղե խողովակ	5
22	Ճոպանի ձգիչ	6
23	Սնուցման բլոկ PoE	6
24	RJ 45 FTP միացուցիչ	6
25	Անջատիչ LEGRA 32A	6
26	Տափօղակ	7
27	Պնդօղակ	7
28	Գայլիկոն 12 մմ	6
29	Մարտկոց W 72AH/L3 (- +)	6
30	Մարտկոց W 60AH/L2 (- +)	6
31	Պլաստմասե ձգիչ 7.6x60	6
32	Սիրոյ ռեզին	6
\.


--
-- TOC entry 3342 (class 0 OID 16582)
-- Dependencies: 241
-- Data for Name: Speedy_Stock; Type: TABLE DATA; Schema: public; Owner: inventory
--

COPY public."Speedy_Stock" ("Speedy_Stock_ID", "Site_ID", "Speedy_ID", "Count") FROM stdin;
19	1664	6	560
20	1664	9	36
21	1664	8	310
22	1664	7	100
23	1714	8	40
24	1664	10	1600
25	1664	11	300
26	1708	9	2
27	1708	11	100
28	1708	8	10
29	1707	9	10
30	1707	10	200
31	1664	24	500
32	1664	15	690
33	1707	15	100
34	1664	12	20
35	1664	13	170
36	1664	14	50
37	1704	15	176
38	1706	15	97
39	1665	15	10
40	1716	10	100
41	1716	13	30
42	1705	15	200
43	332	15	1
44	962	15	1
45	331	15	1
46	875	15	4
47	915	15	4
48	1704	8	128
49	1708	15	200
50	1664	18	0
51	1664	16	0
52	1664	21	0
53	1664	25	0
54	1664	26	0
55	1664	27	0
56	1664	28	0
57	1704	21	0
58	1704	18	0
59	1704	16	0
60	1704	25	0
61	1704	26	0
62	1704	27	0
63	1704	28	0
64	1664	23	0
65	1707	23	1
66	1664	29	0
67	1704	29	0
68	1664	30	0
69	1704	30	0
70	1716	15	200
71	1704	24	0
72	731	8	12
73	731	15	6
74	731	18	1
75	731	16	1
76	731	25	1
77	731	26	0.0800000000000000017
78	731	27	0.220000000000000001
79	731	28	1
80	731	21	6
81	1664	32	8
82	1664	31	800
83	1664	5	245
84	1704	5	278
85	81	29	3
86	81	30	1
87	1705	8	100
88	1705	11	100
89	1705	10	100
90	1705	9	2
91	1714	5	60
92	1714	15	100
93	1708	6	50
94	85	5	4
95	1	15	4
96	85	15	6
97	1716	8	100
98	1716	11	100
99	886	5	23
100	1715	15	100
101	1712	5	305
102	1712	15	100
103	1715	5	305
104	1716	5	305
\.


--
-- TOC entry 3343 (class 0 OID 16587)
-- Dependencies: 242
-- Data for Name: Speedy_Transfer; Type: TABLE DATA; Schema: public; Owner: inventory
--

COPY public."Speedy_Transfer" ("Speedy_Transfer_ID", "Speedy_ID", "Count", "From_Site_ID", "To_Site_ID", "Date", "Description", "Technician_ID", "Assigner_ID", "Creator", "LastModifier") FROM stdin;
40	6	610	\N	1664	2017-10-23	Գնում NԲ6374115300	9	3	\N	\N
41	9	50	\N	1664	2017-10-23	Գնում NԲ6374115300	9	3	\N	\N
42	8	200	\N	1664	2017-10-23	Գնում NԲ6374115300	9	3	\N	\N
43	7	100	\N	1664	2017-10-23	Գնում NԲ6374115300	9	3	\N	\N
44	8	40	1664	1714	2017-11-28		17	3	\N	\N
45	10	2000	\N	1664	2017-10-23	Գնում NԲ6374115300	9	3	\N	\N
46	11	400	\N	1664	2017-10-23	Գնում NԲ6374115300	9	3	\N	\N
47	9	2	1664	1708	2017-11-30		20	3	\N	\N
48	11	100	1664	1708	2017-11-30		20	3	\N	\N
49	8	10	1664	1708	2017-11-30		20	3	\N	\N
50	9	10	1664	1707	2017-12-05		25	3	\N	\N
51	10	200	1664	1707	2017-12-05		25	3	\N	\N
52	24	500	\N	1664	2017-12-05	գնում	9	3	\N	\N
53	15	2000	\N	1664	2017-12-05	գնում	9	3	\N	\N
54	15	100	1664	1707	2017-12-05		25	3	\N	\N
55	12	20	\N	1664	2017-10-23	Գնում NԲ6374115300	9	3	\N	\N
56	13	200	\N	1664	2017-10-23	Գնում NԲ6374115300	9	3	\N	\N
57	14	50	\N	1664	2017-10-20	Գնում NԱ8455656494	3	2	\N	\N
58	15	100	1664	1704	2017-12-13		7	3	\N	\N
59	15	100	1664	1706	2017-12-13		8	3	\N	\N
60	15	10	1664	1665	2017-12-18		6	4	jass.manasyan@gmail.com	\N
61	10	100	1664	1716	2017-12-25		16	3	jass.manasyan@gmail.com	\N
62	13	30	1664	1716	2017-12-25		16	3	jass.manasyan@gmail.com	vahram@hf.am
63	15	100	1664	1705	2018-01-15		9	3	jass.manasyan@gmail.com	\N
64	15	1	1706	332	2017-12-18	սխալմունք է, այս դպրոցում այս ամսաթվով միացուցիչ չի օգտագործվել	8	3	jass.manasyan@gmail.com	jass.manasyan@gmail.com
65	15	1	1706	962	2017-12-14		8	3	jass.manasyan@gmail.com	\N
66	15	1	1706	331	2017-12-18		8	3	jass.manasyan@gmail.com	\N
67	15	4	1704	875	2018-02-05		7	3	jass.manasyan@gmail.com	\N
68	15	4	1704	915	2018-01-31		7	3	jass.manasyan@gmail.com	\N
69	8	40	1664	1704	2018-02-21		7	3	jass.manasyan@gmail.com	\N
70	15	100	1664	1708	2018-02-22		20	3	jass.manasyan@gmail.com	\N
71	18	1	\N	1664	2018-02-23	գնում N3086194174	7	3	jass.manasyan@gmail.com	jass.manasyan@gmail.com
72	16	1	\N	1664	2018-02-23	գնում N3086194174	7	3	jass.manasyan@gmail.com	jass.manasyan@gmail.com
73	21	6	\N	1664	2018-02-23	գնում NԱ3387863621	7	3	jass.manasyan@gmail.com	\N
74	25	1	\N	1664	2018-02-23	գնում N3086194174	7	3	jass.manasyan@gmail.com	\N
75	26	0.0800000000000000017	\N	1664	2018-02-23	գնում N3086194174	7	3	jass.manasyan@gmail.com	\N
76	27	0.220000000000000001	\N	1664	2018-02-23	գնում N3086194174	7	3	jass.manasyan@gmail.com	\N
77	28	1	\N	1664	2018-02-23	գնում N3086194174	7	3	jass.manasyan@gmail.com	\N
78	21	6	1664	1704	2018-02-23		7	3	jass.manasyan@gmail.com	\N
79	18	1	1664	1704	2018-02-23		7	3	jass.manasyan@gmail.com	\N
80	16	1	1664	1704	2018-02-23		7	3	jass.manasyan@gmail.com	\N
81	25	1	1664	1704	2018-02-23		7	3	jass.manasyan@gmail.com	\N
82	26	0.0800000000000000017	1664	1704	2018-02-23		7	3	jass.manasyan@gmail.com	\N
83	27	0.220000000000000001	1664	1704	2018-02-23		7	3	jass.manasyan@gmail.com	\N
84	28	1	1664	1704	2018-02-23		7	3	jass.manasyan@gmail.com	\N
85	23	1	\N	1664	2018-02-27	գնում NԲ8651861984	25	3	jass.manasyan@gmail.com	\N
86	23	1	1664	1707	2018-02-27		25	3	jass.manasyan@gmail.com	\N
87	29	3	\N	1664	2018-02-27	գնում NԱ0609357769	7	3	jass.manasyan@gmail.com	jass.manasyan@gmail.com
88	29	3	1664	1704	2018-02-27		7	3	jass.manasyan@gmail.com	\N
89	30	1	\N	1664	2018-02-27	գնում NԱ0609357769	7	3	jass.manasyan@gmail.com	\N
90	30	1	1664	1704	2018-02-27		7	3	jass.manasyan@gmail.com	\N
91	15	100	1664	1716	2018-03-13		16	3	evelina@hf.am	\N
93	15	100	1664	1704	2018-03-13		7	3	evelina@hf.am	\N
94	8	12	1704	731	2018-02-20		7	3	jass.manasyan@gmail.com	\N
95	15	6	1704	731	2018-02-20		7	3	jass.manasyan@gmail.com	\N
96	18	1	1704	731	2018-02-20		7	3	jass.manasyan@gmail.com	\N
97	16	1	1704	731	2018-03-20		7	3	jass.manasyan@gmail.com	\N
98	25	1	1704	731	2018-02-20		7	3	jass.manasyan@gmail.com	\N
99	26	0.0800000000000000017	1704	731	2018-03-20		7	3	jass.manasyan@gmail.com	\N
100	27	0.220000000000000001	1704	731	2018-03-20		7	3	jass.manasyan@gmail.com	\N
101	28	1	1704	731	2018-02-20		7	3	jass.manasyan@gmail.com	\N
102	21	6	1704	731	2018-03-20		7	3	jass.manasyan@gmail.com	\N
103	32	8	\N	1664	2018-03-27	գնում Բ4050136290	9	3	jass.manasyan@gmail.com	\N
104	31	800	\N	1664	2018-03-27	գնում Բ4050136290	9	3	jass.manasyan@gmail.com	\N
105	11	200	\N	1664	2018-03-27	գնում Բ8471755573	9	3	jass.manasyan@gmail.com	\N
106	8	500	\N	1664	2018-03-27	գնում Բ8471755573	9	3	jass.manasyan@gmail.com	\N
107	5	1525	\N	1664	2018-03-27	գնում  Բ8471755573	9	3	jass.manasyan@gmail.com	\N
108	5	305	1664	1704	2018-03-29		7	3	jass.manasyan@gmail.com	\N
109	8	100	1664	1704	2018-03-29		7	3	jass.manasyan@gmail.com	\N
110	29	3	1704	81	2018-02-27		7	3	jass.manasyan@gmail.com	\N
111	30	1	1704	81	2018-02-27		7	3	jass.manasyan@gmail.com	\N
112	8	100	1664	1705	2018-04-04		9	3	jass.manasyan@gmail.com	\N
113	11	100	1664	1705	2018-04-04		9	3	jass.manasyan@gmail.com	\N
114	10	100	1664	1705	2018-04-04		9	3	jass.manasyan@gmail.com	\N
115	9	2	1664	1705	2018-04-04		9	3	jass.manasyan@gmail.com	\N
116	5	60	1664	1714	2018-04-09		17	3	hasmik@hf.am	\N
117	15	100	1664	1714	2018-04-09		17	3	hasmik@hf.am	\N
118	15	100	1664	1705	2018-04-10		9	3	hasmik@hf.am	\N
119	6	50	1664	1708	2018-04-11		20	3	hasmik@hf.am	\N
120	5	4	1704	85	2018-04-06		7	3	hasmik@hf.am	\N
121	15	4	1704	1	2018-04-10		7	3	hasmik@hf.am	\N
122	15	6	1704	85	2018-04-06		7	3	hasmik@hf.am	\N
123	8	100	1664	1716	2018-04-13		16	3	hasmik@hf.am	\N
124	11	100	1664	1716	2018-04-13		16	3	hasmik@hf.am	\N
125	5	23	1704	886	2018-04-12		7	3	hasmik@hf.am	\N
126	15	100	1664	1715	2018-04-19		12	3	hasmik@hf.am	\N
127	15	100	1664	1708	2018-04-20		20	3	hasmik@hf.am	\N
128	5	305	1664	1712	2018-04-27		22	3	hasmik@hf.am	\N
129	15	100	1664	1712	2018-04-27		22	3	hasmik@hf.am	\N
130	5	305	1664	1715	2018-05-03		12	3	hasmik@hf.am	\N
131	5	305	1664	1716	2018-05-08		16	3	hasmik@hf.am	\N
132	15	100	1664	1716	2018-05-08		16	3	hasmik@hf.am	\N
\.


--
-- TOC entry 3344 (class 0 OID 16594)
-- Dependencies: 243
-- Data for Name: Transfer_Status; Type: TABLE DATA; Schema: public; Owner: inventory
--

COPY public."Transfer_Status" ("Transfer_Status_ID", "Transfer_Status_Name") FROM stdin;
1	Open
2	Close
\.


--
-- TOC entry 3345 (class 0 OID 16601)
-- Dependencies: 244
-- Data for Name: Worker; Type: TABLE DATA; Schema: public; Owner: inventory
--

COPY public."Worker" ("Worker_ID", "Worker_Name", "Worker_Position_ID", "Phone_Work", "Phone_Pers", "Email_Work", "Email_Pers", "Region_ID") FROM stdin;
1	Մուրադ Մուրադյան	2	095412884	094990661	mourad@hf.am	test@test.ts	5
2	Մարիա Ասմանգուլյան	4	095556810	094990672	maria@hf.am	test@test.ts	5
3	Սիրեկան Սահակյան	3	055221172	094221172	sirekan@hf.am	test@test.ts	5
4	Վահրամ Մարտինյան	1	095556820	093120440	vahram@hf.am	test@test.ts	5
5	Արմեն Հայրապետյան	10	095958347	093117339	a.hayrapetyan@hf.am	anonymbox555@gmail.com	5
6	Արմեն Սարգսյան	10	095556818	094990671	sarmen@hf.am	sarmen32@gmail.com	5
7	Վահե Մելքոնյան	5	095958316	077508009	vahmelk@gmail.com	vahmelk@mail.ru	3
8	Գևորգ Արշակյան	5	095958854	099791197	arshakyangevorg121284@gmail.com	arshakyangevorg@mail.ru	3
9	Արթուր Մավյան	5	095958339	099633733	amavyan1980@gmail.com	mavyan1980@gmail.com	5
12	Թաթուլ Մկրտչյան	5	095958340	093605559	mkrtchyantatul3@gmail.com	tatulmcrtchyan@mail.ru	1
13	Հայկ Օհանյան	5	095999335	099999335	haiko31@gmail.com		5
14	Արմենակ Այվազյան	9	055505450	094990676			5
15	Վիլեն Մամյան	8	095958320	055771141	mamyanvilen@gmail.com	vilen_mamyan@yahoo.com	11
16	Արման Արոյան	5	095958331	098751074	armanaroyan77@gmail.com		8
17	Վիկտր Պողոսյան	5		077888883	taronvik4@gmail.com	taronvik1@gmail.com	2
18	Արթուր Պետրոսյան	8	095958332	077428309	arturpetrosyan090981@gmail.com	artur_petrosyan0@mail.ru	8
19	Սուրեն Կարապետյան	5	095958849	098237723	Surensurenyanc@gmail.com	suren_karapetyan@mail.ru	8
20	Թաթուլ Մելքոնյան	5	095958842	094378825	tatul.melqonyan@gmail.com	tatul_melkonian@yahoo.com	7
21	Արմեն Գալստյան	5	095958335	096676679	agalstyan676@gmail.com	armenarmo@mail.ru	9
22	Արարատ Թիրաբյան	5	095958319	094480104	1ahqe1@gmail.com	ahqe@mail.ru	11
23	Վարդան Ավետիսյան	5	095958843	094003925	vardanavetisyan70620@gmail.com	vardan_av70@mail.ru	9
24	Ռոբերտ Պողոսյան	5	095958841	077205663	robertpoghosyan63@gmail.com		2
25	Վարդան Հարությունյան	5	055789514	093789514		harvar2017@gmail.com	6
27	Ալեքսան Կիրակոսյան	5		094823355		alexkirakosyan26@gmail.com	8
\.


--
-- TOC entry 3346 (class 0 OID 16608)
-- Dependencies: 245
-- Data for Name: Worker_Position; Type: TABLE DATA; Schema: public; Owner: inventory
--

COPY public."Worker_Position" ("Worker_Position_ID", "Worker_Position_Name") FROM stdin;
1	Admin
2	Ղեկավար
3	Տեխնիկական ղեկավար
4	Ֆինանսական ղեկավար
5	Տեխնիկ
8	Ազատված տեխնիկ
9	Աջակցող մասնագետ
10	Գրասենյակային աշխատակից
\.


--
-- TOC entry 3319 (class 0 OID 16430)
-- Dependencies: 218
-- Data for Name: __EFMigrationsHistory; Type: TABLE DATA; Schema: public; Owner: inventory
--

COPY public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") FROM stdin;
20170728103548_IdentityAdded	1.1.2
\.


--
-- TOC entry 3377 (class 0 OID 0)
-- Dependencies: 196
-- Name: AspNetRoleClaims_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: inventory
--

SELECT pg_catalog.setval('public."AspNetRoleClaims_Id_seq"', 1, false);


--
-- TOC entry 3378 (class 0 OID 0)
-- Dependencies: 197
-- Name: AspNetUserClaims_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: inventory
--

SELECT pg_catalog.setval('public."AspNetUserClaims_Id_seq"', 1, false);


--
-- TOC entry 3379 (class 0 OID 0)
-- Dependencies: 198
-- Name: Connection_Type_Connection_Type_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: inventory
--

SELECT pg_catalog.setval('public."Connection_Type_Connection_Type_ID_seq"', 8, true);


--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 199
-- Name: Frequency_Frequency_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: inventory
--

SELECT pg_catalog.setval('public."Frequency_Frequency_ID_seq"', 1003, true);


--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 200
-- Name: Item_Item_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: inventory
--

SELECT pg_catalog.setval('public."Item_Item_ID_seq"', 4137, true);


--
-- TOC entry 3382 (class 0 OID 0)
-- Dependencies: 201
-- Name: Item_Mode_Item_Mode_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: inventory
--

SELECT pg_catalog.setval('public."Item_Mode_Item_Mode_ID_seq"', 5, true);


--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 202
-- Name: Item_Status_Item_Status_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: inventory
--

SELECT pg_catalog.setval('public."Item_Status_Item_Status_ID_seq"', 8, true);


--
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 203
-- Name: Item_Type_Item_Type_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: inventory
--

SELECT pg_catalog.setval('public."Item_Type_Item_Type_ID_seq"', 13, true);


--
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 204
-- Name: Location_Location_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: inventory
--

SELECT pg_catalog.setval('public."Location_Location_ID_seq"', 5438, true);


--
-- TOC entry 3386 (class 0 OID 0)
-- Dependencies: 205
-- Name: Manufacturer_Manufacturer_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: inventory
--

SELECT pg_catalog.setval('public."Manufacturer_Manufacturer_ID_seq"', 50, true);


--
-- TOC entry 3387 (class 0 OID 0)
-- Dependencies: 206
-- Name: Measure_ID; Type: SEQUENCE SET; Schema: public; Owner: inventory
--

SELECT pg_catalog.setval('public."Measure_ID"', 9, true);


--
-- TOC entry 3388 (class 0 OID 0)
-- Dependencies: 207
-- Name: Model_Model_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: inventory
--

SELECT pg_catalog.setval('public."Model_Model_ID_seq"', 144, true);


--
-- TOC entry 3389 (class 0 OID 0)
-- Dependencies: 208
-- Name: Owner_Owner_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: inventory
--

SELECT pg_catalog.setval('public."Owner_Owner_ID_seq"', 10, true);


--
-- TOC entry 3390 (class 0 OID 0)
-- Dependencies: 209
-- Name: Region_Region_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: inventory
--

SELECT pg_catalog.setval('public."Region_Region_ID_seq"', 14, true);


--
-- TOC entry 3391 (class 0 OID 0)
-- Dependencies: 210
-- Name: Site_Site_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: inventory
--

SELECT pg_catalog.setval('public."Site_Site_ID_seq"', 1727, true);


--
-- TOC entry 3392 (class 0 OID 0)
-- Dependencies: 211
-- Name: Site_Type_Site_Type_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: inventory
--

SELECT pg_catalog.setval('public."Site_Type_Site_Type_ID_seq"', 15, true);


--
-- TOC entry 3393 (class 0 OID 0)
-- Dependencies: 212
-- Name: Speedy_ID; Type: SEQUENCE SET; Schema: public; Owner: inventory
--

SELECT pg_catalog.setval('public."Speedy_ID"', 33, true);


--
-- TOC entry 3394 (class 0 OID 0)
-- Dependencies: 213
-- Name: Speedy_Stock_ID; Type: SEQUENCE SET; Schema: public; Owner: inventory
--

SELECT pg_catalog.setval('public."Speedy_Stock_ID"', 104, true);


--
-- TOC entry 3395 (class 0 OID 0)
-- Dependencies: 214
-- Name: Speedy_Transfer_ID; Type: SEQUENCE SET; Schema: public; Owner: inventory
--

SELECT pg_catalog.setval('public."Speedy_Transfer_ID"', 132, true);


--
-- TOC entry 3396 (class 0 OID 0)
-- Dependencies: 215
-- Name: Transfer_Status_Transfer_Status_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: inventory
--

SELECT pg_catalog.setval('public."Transfer_Status_Transfer_Status_ID_seq"', 7, true);


--
-- TOC entry 3397 (class 0 OID 0)
-- Dependencies: 216
-- Name: Worker_Position_Worker_Position_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: inventory
--

SELECT pg_catalog.setval('public."Worker_Position_Worker_Position_ID_seq"', 11, true);


--
-- TOC entry 3398 (class 0 OID 0)
-- Dependencies: 217
-- Name: Worker_Worker_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: inventory
--

SELECT pg_catalog.setval('public."Worker_Worker_ID_seq"', 28, true);


--
-- TOC entry 3042 (class 2606 OID 16674)
-- Name: AspNetRoleClaims AspNetRoleClaims_pkey; Type: CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."AspNetRoleClaims"
    ADD CONSTRAINT "AspNetRoleClaims_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 3045 (class 2606 OID 16677)
-- Name: AspNetRoles AspNetRoles_pkey; Type: CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."AspNetRoles"
    ADD CONSTRAINT "AspNetRoles_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 3048 (class 2606 OID 16680)
-- Name: AspNetUserClaims AspNetUserClaims_pkey; Type: CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."AspNetUserClaims"
    ADD CONSTRAINT "AspNetUserClaims_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 3051 (class 2606 OID 16683)
-- Name: AspNetUserLogins AspNetUserLogins_pkey; Type: CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."AspNetUserLogins"
    ADD CONSTRAINT "AspNetUserLogins_pkey" PRIMARY KEY ("LoginProvider", "ProviderKey");


--
-- TOC entry 3054 (class 2606 OID 16686)
-- Name: AspNetUserRoles AspNetUserRoles_pkey; Type: CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."AspNetUserRoles"
    ADD CONSTRAINT "AspNetUserRoles_pkey" PRIMARY KEY ("UserId", "RoleId");


--
-- TOC entry 3061 (class 2606 OID 16692)
-- Name: AspNetUserTokens AspNetUserTokens_pkey; Type: CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."AspNetUserTokens"
    ADD CONSTRAINT "AspNetUserTokens_pkey" PRIMARY KEY ("UserId", "LoginProvider", "Name");


--
-- TOC entry 3057 (class 2606 OID 16690)
-- Name: AspNetUsers AspNetUsers_pkey; Type: CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."AspNetUsers"
    ADD CONSTRAINT "AspNetUsers_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 3063 (class 2606 OID 16694)
-- Name: Connection_Type Connection_Type_pkey; Type: CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Connection_Type"
    ADD CONSTRAINT "Connection_Type_pkey" PRIMARY KEY ("Connection_Type_ID");


--
-- TOC entry 3065 (class 2606 OID 16696)
-- Name: Frequency Frequency_pkey; Type: CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Frequency"
    ADD CONSTRAINT "Frequency_pkey" PRIMARY KEY ("Frequency_ID");


--
-- TOC entry 3069 (class 2606 OID 16700)
-- Name: Item_Mode Item_Mode_pkey; Type: CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Item_Mode"
    ADD CONSTRAINT "Item_Mode_pkey" PRIMARY KEY ("Item_Mode_ID");


--
-- TOC entry 3071 (class 2606 OID 16702)
-- Name: Item_Status Item_Status_pkey; Type: CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Item_Status"
    ADD CONSTRAINT "Item_Status_pkey" PRIMARY KEY ("Item_Status_ID");


--
-- TOC entry 3073 (class 2606 OID 16704)
-- Name: Item_Type Item_Type_pkey; Type: CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Item_Type"
    ADD CONSTRAINT "Item_Type_pkey" PRIMARY KEY ("Item_Type_ID");


--
-- TOC entry 3067 (class 2606 OID 16698)
-- Name: Item Item_pkey; Type: CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Item"
    ADD CONSTRAINT "Item_pkey" PRIMARY KEY ("Item_ID");


--
-- TOC entry 3075 (class 2606 OID 16706)
-- Name: Location Location_pkey; Type: CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Location"
    ADD CONSTRAINT "Location_pkey" PRIMARY KEY ("Location_ID");


--
-- TOC entry 3077 (class 2606 OID 16708)
-- Name: Manufacturer Manufacturer_pkey; Type: CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Manufacturer"
    ADD CONSTRAINT "Manufacturer_pkey" PRIMARY KEY ("Manufacturer_ID");


--
-- TOC entry 3079 (class 2606 OID 16710)
-- Name: Measure Measure_pkey; Type: CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Measure"
    ADD CONSTRAINT "Measure_pkey" PRIMARY KEY ("Measure_ID");


--
-- TOC entry 3081 (class 2606 OID 16712)
-- Name: Model Model_pkey; Type: CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Model"
    ADD CONSTRAINT "Model_pkey" PRIMARY KEY ("Model_ID");


--
-- TOC entry 3083 (class 2606 OID 16714)
-- Name: Owner Owner_pkey; Type: CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Owner"
    ADD CONSTRAINT "Owner_pkey" PRIMARY KEY ("Owner_ID");


--
-- TOC entry 3085 (class 2606 OID 16716)
-- Name: Region Region_pkey; Type: CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Region"
    ADD CONSTRAINT "Region_pkey" PRIMARY KEY ("Region_ID");


--
-- TOC entry 3089 (class 2606 OID 16720)
-- Name: Site_Type Site_Type_pkey; Type: CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Site_Type"
    ADD CONSTRAINT "Site_Type_pkey" PRIMARY KEY ("Site_Type_ID");


--
-- TOC entry 3087 (class 2606 OID 16718)
-- Name: Site Site_pkey; Type: CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Site"
    ADD CONSTRAINT "Site_pkey" PRIMARY KEY ("Site_ID");


--
-- TOC entry 3093 (class 2606 OID 16724)
-- Name: Speedy_Stock Speedy_Stock_pkey; Type: CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Speedy_Stock"
    ADD CONSTRAINT "Speedy_Stock_pkey" PRIMARY KEY ("Speedy_Stock_ID");


--
-- TOC entry 3095 (class 2606 OID 16726)
-- Name: Speedy_Transfer Speedy_Transfer_pkey; Type: CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Speedy_Transfer"
    ADD CONSTRAINT "Speedy_Transfer_pkey" PRIMARY KEY ("Speedy_Transfer_ID");


--
-- TOC entry 3091 (class 2606 OID 16722)
-- Name: Speedy Speedy_pkey; Type: CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Speedy"
    ADD CONSTRAINT "Speedy_pkey" PRIMARY KEY ("Speedy_ID");


--
-- TOC entry 3097 (class 2606 OID 16728)
-- Name: Transfer_Status Transfer_Status_pkey; Type: CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Transfer_Status"
    ADD CONSTRAINT "Transfer_Status_pkey" PRIMARY KEY ("Transfer_Status_ID");


--
-- TOC entry 3101 (class 2606 OID 16732)
-- Name: Worker_Position Worker_Position_pkey; Type: CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Worker_Position"
    ADD CONSTRAINT "Worker_Position_pkey" PRIMARY KEY ("Worker_Position_ID");


--
-- TOC entry 3099 (class 2606 OID 16730)
-- Name: Worker Worker_pkey; Type: CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Worker"
    ADD CONSTRAINT "Worker_pkey" PRIMARY KEY ("Worker_ID");


--
-- TOC entry 3040 (class 2606 OID 16671)
-- Name: __EFMigrationsHistory __EFMigrationsHistory_pkey; Type: CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT "__EFMigrationsHistory_pkey" PRIMARY KEY ("MigrationId");


--
-- TOC entry 3058 (class 1259 OID 16687)
-- Name: EmailIndex; Type: INDEX; Schema: public; Owner: inventory
--

CREATE INDEX "EmailIndex" ON public."AspNetUsers" USING btree ("NormalizedEmail");


--
-- TOC entry 3043 (class 1259 OID 16672)
-- Name: IX_AspNetRoleClaims_RoleId; Type: INDEX; Schema: public; Owner: inventory
--

CREATE INDEX "IX_AspNetRoleClaims_RoleId" ON public."AspNetRoleClaims" USING btree ("RoleId");


--
-- TOC entry 3049 (class 1259 OID 16678)
-- Name: IX_AspNetUserClaims_UserId; Type: INDEX; Schema: public; Owner: inventory
--

CREATE INDEX "IX_AspNetUserClaims_UserId" ON public."AspNetUserClaims" USING btree ("UserId");


--
-- TOC entry 3052 (class 1259 OID 16681)
-- Name: IX_AspNetUserLogins_UserId; Type: INDEX; Schema: public; Owner: inventory
--

CREATE INDEX "IX_AspNetUserLogins_UserId" ON public."AspNetUserLogins" USING btree ("UserId");


--
-- TOC entry 3055 (class 1259 OID 16684)
-- Name: IX_AspNetUserRoles_RoleId; Type: INDEX; Schema: public; Owner: inventory
--

CREATE INDEX "IX_AspNetUserRoles_RoleId" ON public."AspNetUserRoles" USING btree ("RoleId");


--
-- TOC entry 3046 (class 1259 OID 16675)
-- Name: RoleNameIndex; Type: INDEX; Schema: public; Owner: inventory
--

CREATE UNIQUE INDEX "RoleNameIndex" ON public."AspNetRoles" USING btree ("NormalizedName");


--
-- TOC entry 3059 (class 1259 OID 16688)
-- Name: UserNameIndex; Type: INDEX; Schema: public; Owner: inventory
--

CREATE UNIQUE INDEX "UserNameIndex" ON public."AspNetUsers" USING btree ("NormalizedUserName");


--
-- TOC entry 3102 (class 2606 OID 16733)
-- Name: AspNetRoleClaims AspNetRoleClaims_RoleId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."AspNetRoleClaims"
    ADD CONSTRAINT "AspNetRoleClaims_RoleId_fkey" FOREIGN KEY ("RoleId") REFERENCES public."AspNetRoles"("Id") ON DELETE CASCADE;


--
-- TOC entry 3104 (class 2606 OID 16738)
-- Name: AspNetUserClaims AspNetUserClaims_UserId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."AspNetUserClaims"
    ADD CONSTRAINT "AspNetUserClaims_UserId_fkey" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;


--
-- TOC entry 3106 (class 2606 OID 16743)
-- Name: AspNetUserLogins AspNetUserLogins_UserId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."AspNetUserLogins"
    ADD CONSTRAINT "AspNetUserLogins_UserId_fkey" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;


--
-- TOC entry 3109 (class 2606 OID 16753)
-- Name: AspNetUserRoles AspNetUserRoles_RoleId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."AspNetUserRoles"
    ADD CONSTRAINT "AspNetUserRoles_RoleId_fkey" FOREIGN KEY ("RoleId") REFERENCES public."AspNetRoles"("Id") ON DELETE CASCADE;


--
-- TOC entry 3108 (class 2606 OID 16748)
-- Name: AspNetUserRoles AspNetUserRoles_UserId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."AspNetUserRoles"
    ADD CONSTRAINT "AspNetUserRoles_UserId_fkey" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;


--
-- TOC entry 3127 (class 2606 OID 17472)
-- Name: Location Assigner_ID; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Location"
    ADD CONSTRAINT "Assigner_ID" FOREIGN KEY ("Assigner_ID") REFERENCES public."Worker"("Worker_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3146 (class 2606 OID 17477)
-- Name: Site Connection_Type_ID; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Site"
    ADD CONSTRAINT "Connection_Type_ID" FOREIGN KEY ("Connection_Type_ID") REFERENCES public."Connection_Type"("Connection_Type_ID") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3103 (class 2606 OID 17482)
-- Name: AspNetRoleClaims FK_AspNetRoleClaims_AspNetRoles_RoleId; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."AspNetRoleClaims"
    ADD CONSTRAINT "FK_AspNetRoleClaims_AspNetRoles_RoleId" FOREIGN KEY ("RoleId") REFERENCES public."AspNetRoles"("Id") ON DELETE CASCADE;


--
-- TOC entry 3105 (class 2606 OID 17487)
-- Name: AspNetUserClaims FK_AspNetUserClaims_AspNetUsers_UserId; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."AspNetUserClaims"
    ADD CONSTRAINT "FK_AspNetUserClaims_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;


--
-- TOC entry 3107 (class 2606 OID 17492)
-- Name: AspNetUserLogins FK_AspNetUserLogins_AspNetUsers_UserId; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."AspNetUserLogins"
    ADD CONSTRAINT "FK_AspNetUserLogins_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;


--
-- TOC entry 3110 (class 2606 OID 17497)
-- Name: AspNetUserRoles FK_AspNetUserRoles_AspNetRoles_RoleId; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."AspNetUserRoles"
    ADD CONSTRAINT "FK_AspNetUserRoles_AspNetRoles_RoleId" FOREIGN KEY ("RoleId") REFERENCES public."AspNetRoles"("Id") ON DELETE CASCADE;


--
-- TOC entry 3111 (class 2606 OID 17502)
-- Name: AspNetUserRoles FK_AspNetUserRoles_AspNetUsers_UserId; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."AspNetUserRoles"
    ADD CONSTRAINT "FK_AspNetUserRoles_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;


--
-- TOC entry 3139 (class 2606 OID 17507)
-- Name: Model Frequency_ID; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Model"
    ADD CONSTRAINT "Frequency_ID" FOREIGN KEY ("Frequency_ID") REFERENCES public."Frequency"("Frequency_ID") MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3128 (class 2606 OID 17512)
-- Name: Location From_Site_ID; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Location"
    ADD CONSTRAINT "From_Site_ID" FOREIGN KEY ("From_Site_ID") REFERENCES public."Site"("Site_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3129 (class 2606 OID 17517)
-- Name: Location Item_ID; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Location"
    ADD CONSTRAINT "Item_ID" FOREIGN KEY ("Item_ID") REFERENCES public."Item"("Item_ID") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3114 (class 2606 OID 16768)
-- Name: Item Item_Item_Status_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Item"
    ADD CONSTRAINT "Item_Item_Status_ID_fkey" FOREIGN KEY ("Item_Status_ID") REFERENCES public."Item_Status"("Item_Status_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3130 (class 2606 OID 17522)
-- Name: Location Item_Mode_ID; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Location"
    ADD CONSTRAINT "Item_Mode_ID" FOREIGN KEY ("Item_Mode_ID") REFERENCES public."Item_Mode"("Item_Mode_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3113 (class 2606 OID 16763)
-- Name: Item Item_Model_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Item"
    ADD CONSTRAINT "Item_Model_ID_fkey" FOREIGN KEY ("Model_ID") REFERENCES public."Model"("Model_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3112 (class 2606 OID 16758)
-- Name: Item Item_Owner_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Item"
    ADD CONSTRAINT "Item_Owner_ID_fkey" FOREIGN KEY ("Owner_ID") REFERENCES public."Owner"("Owner_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3131 (class 2606 OID 17527)
-- Name: Location Item_Status_ID; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Location"
    ADD CONSTRAINT "Item_Status_ID" FOREIGN KEY ("Item_Status_ID") REFERENCES public."Item_Status"("Item_Status_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3115 (class 2606 OID 17532)
-- Name: Item Item_Status_ID; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Item"
    ADD CONSTRAINT "Item_Status_ID" FOREIGN KEY ("Item_Status_ID") REFERENCES public."Item_Status"("Item_Status_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3140 (class 2606 OID 17537)
-- Name: Model Item_Type_ID; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Model"
    ADD CONSTRAINT "Item_Type_ID" FOREIGN KEY ("Item_Type_ID") REFERENCES public."Item_Type"("Item_Type_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3126 (class 2606 OID 16813)
-- Name: Location Location_Assigner_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Location"
    ADD CONSTRAINT "Location_Assigner_ID_fkey" FOREIGN KEY ("Assigner_ID") REFERENCES public."Worker"("Worker_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3120 (class 2606 OID 16783)
-- Name: Location Location_From_Site_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Location"
    ADD CONSTRAINT "Location_From_Site_ID_fkey" FOREIGN KEY ("From_Site_ID") REFERENCES public."Site"("Site_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3119 (class 2606 OID 16778)
-- Name: Location Location_Item_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Location"
    ADD CONSTRAINT "Location_Item_ID_fkey" FOREIGN KEY ("Item_ID") REFERENCES public."Item"("Item_ID") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3123 (class 2606 OID 16798)
-- Name: Location Location_Item_Mode_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Location"
    ADD CONSTRAINT "Location_Item_Mode_ID_fkey" FOREIGN KEY ("Item_Mode_ID") REFERENCES public."Item_Mode"("Item_Mode_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3122 (class 2606 OID 16793)
-- Name: Location Location_Item_Status_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Location"
    ADD CONSTRAINT "Location_Item_Status_ID_fkey" FOREIGN KEY ("Item_Status_ID") REFERENCES public."Item_Status"("Item_Status_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3121 (class 2606 OID 16788)
-- Name: Location Location_PhysicalConnected_Item_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Location"
    ADD CONSTRAINT "Location_PhysicalConnected_Item_ID_fkey" FOREIGN KEY ("PhysicalConnected_Item_ID") REFERENCES public."Item"("Item_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3124 (class 2606 OID 16803)
-- Name: Location Location_Technician_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Location"
    ADD CONSTRAINT "Location_Technician_ID_fkey" FOREIGN KEY ("Technician_ID") REFERENCES public."Worker"("Worker_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3125 (class 2606 OID 16808)
-- Name: Location Location_To_Site_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Location"
    ADD CONSTRAINT "Location_To_Site_ID_fkey" FOREIGN KEY ("To_Site_ID") REFERENCES public."Site"("Site_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3118 (class 2606 OID 16773)
-- Name: Location Location_Transfer_Status_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Location"
    ADD CONSTRAINT "Location_Transfer_Status_ID_fkey" FOREIGN KEY ("Transfer_Status_ID") REFERENCES public."Transfer_Status"("Transfer_Status_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3141 (class 2606 OID 17542)
-- Name: Model Manufacturer_ID; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Model"
    ADD CONSTRAINT "Manufacturer_ID" FOREIGN KEY ("Manufacturer_ID") REFERENCES public."Manufacturer"("Manufacturer_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3137 (class 2606 OID 16823)
-- Name: Model Model_Frequency_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Model"
    ADD CONSTRAINT "Model_Frequency_ID_fkey" FOREIGN KEY ("Frequency_ID") REFERENCES public."Frequency"("Frequency_ID") MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3116 (class 2606 OID 17547)
-- Name: Item Model_ID; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Item"
    ADD CONSTRAINT "Model_ID" FOREIGN KEY ("Model_ID") REFERENCES public."Model"("Model_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3136 (class 2606 OID 16818)
-- Name: Model Model_Item_Type_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Model"
    ADD CONSTRAINT "Model_Item_Type_ID_fkey" FOREIGN KEY ("Item_Type_ID") REFERENCES public."Item_Type"("Item_Type_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3138 (class 2606 OID 16828)
-- Name: Model Model_Manufacturer_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Model"
    ADD CONSTRAINT "Model_Manufacturer_ID_fkey" FOREIGN KEY ("Manufacturer_ID") REFERENCES public."Manufacturer"("Manufacturer_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3117 (class 2606 OID 17552)
-- Name: Item Owner_ID; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Item"
    ADD CONSTRAINT "Owner_ID" FOREIGN KEY ("Owner_ID") REFERENCES public."Owner"("Owner_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3132 (class 2606 OID 17557)
-- Name: Location PhysicalConnected_Item_ID; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Location"
    ADD CONSTRAINT "PhysicalConnected_Item_ID" FOREIGN KEY ("PhysicalConnected_Item_ID") REFERENCES public."Item"("Item_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3147 (class 2606 OID 17562)
-- Name: Site Region_ID; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Site"
    ADD CONSTRAINT "Region_ID" FOREIGN KEY ("Region_ID") REFERENCES public."Region"("Region_ID") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3148 (class 2606 OID 17567)
-- Name: Site Responsive_Person_ID; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Site"
    ADD CONSTRAINT "Responsive_Person_ID" FOREIGN KEY ("Responsive_Person_ID") REFERENCES public."Worker"("Worker_ID") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3142 (class 2606 OID 16833)
-- Name: Site Site_Connection_Type_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Site"
    ADD CONSTRAINT "Site_Connection_Type_ID_fkey" FOREIGN KEY ("Connection_Type_ID") REFERENCES public."Connection_Type"("Connection_Type_ID") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3144 (class 2606 OID 16843)
-- Name: Site Site_Region_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Site"
    ADD CONSTRAINT "Site_Region_ID_fkey" FOREIGN KEY ("Region_ID") REFERENCES public."Region"("Region_ID") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3143 (class 2606 OID 16838)
-- Name: Site Site_Responsive_Person_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Site"
    ADD CONSTRAINT "Site_Responsive_Person_ID_fkey" FOREIGN KEY ("Responsive_Person_ID") REFERENCES public."Worker"("Worker_ID") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3145 (class 2606 OID 16848)
-- Name: Site Site_Site_Type_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Site"
    ADD CONSTRAINT "Site_Site_Type_ID_fkey" FOREIGN KEY ("Site_Type_ID") REFERENCES public."Site_Type"("Site_Type_ID") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3149 (class 2606 OID 17572)
-- Name: Site Site_Type_ID; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Site"
    ADD CONSTRAINT "Site_Type_ID" FOREIGN KEY ("Site_Type_ID") REFERENCES public."Site_Type"("Site_Type_ID") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3150 (class 2606 OID 16853)
-- Name: Speedy Speedy_Measure_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Speedy"
    ADD CONSTRAINT "Speedy_Measure_ID_fkey" FOREIGN KEY ("Measure_ID") REFERENCES public."Measure"("Measure_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3152 (class 2606 OID 16863)
-- Name: Speedy_Stock Speedy_Stock_Site_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Speedy_Stock"
    ADD CONSTRAINT "Speedy_Stock_Site_ID_fkey" FOREIGN KEY ("Site_ID") REFERENCES public."Site"("Site_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3151 (class 2606 OID 16858)
-- Name: Speedy_Stock Speedy_Stock_Speedy_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Speedy_Stock"
    ADD CONSTRAINT "Speedy_Stock_Speedy_ID_fkey" FOREIGN KEY ("Speedy_ID") REFERENCES public."Speedy"("Speedy_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3155 (class 2606 OID 16878)
-- Name: Speedy_Transfer Speedy_Transfer_Assigner_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Speedy_Transfer"
    ADD CONSTRAINT "Speedy_Transfer_Assigner_ID_fkey" FOREIGN KEY ("Assigner_ID") REFERENCES public."Worker"("Worker_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3157 (class 2606 OID 16888)
-- Name: Speedy_Transfer Speedy_Transfer_From_Site_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Speedy_Transfer"
    ADD CONSTRAINT "Speedy_Transfer_From_Site_ID_fkey" FOREIGN KEY ("From_Site_ID") REFERENCES public."Site"("Site_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3156 (class 2606 OID 16883)
-- Name: Speedy_Transfer Speedy_Transfer_Speedy_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Speedy_Transfer"
    ADD CONSTRAINT "Speedy_Transfer_Speedy_ID_fkey" FOREIGN KEY ("Speedy_ID") REFERENCES public."Speedy"("Speedy_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3154 (class 2606 OID 16873)
-- Name: Speedy_Transfer Speedy_Transfer_Technician_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Speedy_Transfer"
    ADD CONSTRAINT "Speedy_Transfer_Technician_ID_fkey" FOREIGN KEY ("Technician_ID") REFERENCES public."Worker"("Worker_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3153 (class 2606 OID 16868)
-- Name: Speedy_Transfer Speedy_Transfer_To_Site_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Speedy_Transfer"
    ADD CONSTRAINT "Speedy_Transfer_To_Site_ID_fkey" FOREIGN KEY ("To_Site_ID") REFERENCES public."Site"("Site_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3133 (class 2606 OID 17577)
-- Name: Location Technician_ID; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Location"
    ADD CONSTRAINT "Technician_ID" FOREIGN KEY ("Technician_ID") REFERENCES public."Worker"("Worker_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3134 (class 2606 OID 17582)
-- Name: Location To_Site_ID; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Location"
    ADD CONSTRAINT "To_Site_ID" FOREIGN KEY ("To_Site_ID") REFERENCES public."Site"("Site_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3135 (class 2606 OID 17587)
-- Name: Location Transfer_Status_ID; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Location"
    ADD CONSTRAINT "Transfer_Status_ID" FOREIGN KEY ("Transfer_Status_ID") REFERENCES public."Transfer_Status"("Transfer_Status_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3160 (class 2606 OID 17592)
-- Name: Worker Worker_Position_ID; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Worker"
    ADD CONSTRAINT "Worker_Position_ID" FOREIGN KEY ("Worker_Position_ID") REFERENCES public."Worker_Position"("Worker_Position_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3161 (class 2606 OID 17597)
-- Name: Worker Worker_Region_ID; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Worker"
    ADD CONSTRAINT "Worker_Region_ID" FOREIGN KEY ("Region_ID") REFERENCES public."Region"("Region_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3159 (class 2606 OID 16898)
-- Name: Worker Worker_Region_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Worker"
    ADD CONSTRAINT "Worker_Region_ID_fkey" FOREIGN KEY ("Region_ID") REFERENCES public."Region"("Region_ID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3158 (class 2606 OID 16893)
-- Name: Worker Worker_Worker_Position_ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: inventory
--

ALTER TABLE ONLY public."Worker"
    ADD CONSTRAINT "Worker_Worker_Position_ID_fkey" FOREIGN KEY ("Worker_Position_ID") REFERENCES public."Worker_Position"("Worker_Position_ID") ON UPDATE CASCADE ON DELETE SET NULL;


-- Completed on 2018-05-17 13:01:37 +04

--
-- PostgreSQL database dump complete
--

