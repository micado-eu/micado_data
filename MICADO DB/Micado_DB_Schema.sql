--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2
-- Dumped by pg_dump version 11.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY micadoapp.user_types_translation DROP CONSTRAINT IF EXISTS user_types_translation_lang_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.user_types_translation DROP CONSTRAINT IF EXISTS user_types_translation_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.topic_translation DROP CONSTRAINT IF EXISTS topic_translation_lang_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.topic_translation DROP CONSTRAINT IF EXISTS topic_translation_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.step_translation DROP CONSTRAINT IF EXISTS step_translation_lang_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.step_translation DROP CONSTRAINT IF EXISTS step_translation_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.step DROP CONSTRAINT IF EXISTS step_previous_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.step DROP CONSTRAINT IF EXISTS step_id_process_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.step_document DROP CONSTRAINT IF EXISTS step_document_id_step_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.step_document DROP CONSTRAINT IF EXISTS step_document_id_document_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.ratings DROP CONSTRAINT IF EXISTS ratings_user_tenant_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.ratings DROP CONSTRAINT IF EXISTS ratings_user_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.process_users DROP CONSTRAINT IF EXISTS process_users_id_user_types_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.process_users DROP CONSTRAINT IF EXISTS process_users_id_process_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.process_translation DROP CONSTRAINT IF EXISTS process_translation_lang_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.process_translation DROP CONSTRAINT IF EXISTS process_translation_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.process_topic DROP CONSTRAINT IF EXISTS process_topic_id_topic_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.process_topic DROP CONSTRAINT IF EXISTS process_topic_id_process_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.intervention_types_translation DROP CONSTRAINT IF EXISTS intervention_types_translation_lang_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.intervention_types_translation DROP CONSTRAINT IF EXISTS intervention_types_translation_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.intervention_types DROP CONSTRAINT IF EXISTS intervention_types_fk;
ALTER TABLE IF EXISTS ONLY micadoapp.intervention_processes DROP CONSTRAINT IF EXISTS intervention_processes_process_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.intervention_processes DROP CONSTRAINT IF EXISTS intervention_processes_intervention_type_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.individual_intervention_plan DROP CONSTRAINT IF EXISTS individual_intervention_plan_user_tenant_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.individual_intervention_plan DROP CONSTRAINT IF EXISTS individual_intervention_plan_user_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.individual_intervention_plan_interventions DROP CONSTRAINT IF EXISTS individual_intervention_plan_interventions_validating_user_id_f;
ALTER TABLE IF EXISTS ONLY micadoapp.individual_intervention_plan_interventions DROP CONSTRAINT IF EXISTS individual_intervention_plan_interventions_list_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.individual_intervention_plan_interventions DROP CONSTRAINT IF EXISTS individual_intervention_plan_interventions_intervention_type_fk;
ALTER TABLE IF EXISTS ONLY micadoapp.individual_intervention_plan_interventions DROP CONSTRAINT IF EXISTS individual_intervention_plan_intervention_validating_user_tenan;
ALTER TABLE IF EXISTS ONLY micadoapp.glossary DROP CONSTRAINT IF EXISTS glossary_lang_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.features_flags_translation DROP CONSTRAINT IF EXISTS features_flags_translation_lang_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.features_flags_translation DROP CONSTRAINT IF EXISTS features_flags_translation_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.event_translation DROP CONSTRAINT IF EXISTS event_translation_lang_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.event_translation DROP CONSTRAINT IF EXISTS event_translation_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.event_topic DROP CONSTRAINT IF EXISTS event_topic_id_topic_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.event_topic DROP CONSTRAINT IF EXISTS event_topic_id_process_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.event_event_category DROP CONSTRAINT IF EXISTS event_event_category_id_process_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.event_event_category DROP CONSTRAINT IF EXISTS event_event_category_id_event_category_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.event_category_translation DROP CONSTRAINT IF EXISTS event_category_translation_lang_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.event_category_translation DROP CONSTRAINT IF EXISTS event_category_translation_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.document DROP CONSTRAINT IF EXISTS document_validated_by_user_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.document DROP CONSTRAINT IF EXISTS document_validated_by_tenant_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.document DROP CONSTRAINT IF EXISTS document_user_tenant_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.document DROP CONSTRAINT IF EXISTS document_user_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.document_type_validator DROP CONSTRAINT IF EXISTS document_type_validator_validable_by_tenant_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.document_type_validator DROP CONSTRAINT IF EXISTS document_type_validator_document_type_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.document_type_translation DROP CONSTRAINT IF EXISTS document_type_translation_lang_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.document_type_translation DROP CONSTRAINT IF EXISTS document_type_translation_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.document_pictures DROP CONSTRAINT IF EXISTS document_pictures_fk;
ALTER TABLE IF EXISTS ONLY micadoapp.document DROP CONSTRAINT IF EXISTS document_document_type_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.document DROP CONSTRAINT IF EXISTS document_ask_validate_by_tenant_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp."UM_USER" DROP CONSTRAINT IF EXISTS "UM_USER_UM_TENANT_ID_fkey";
DROP INDEX IF EXISTS micadoapp.intervention_category_pk;
DROP INDEX IF EXISTS micadoapp.id_glossary_title;
DROP INDEX IF EXISTS micadoapp."INDEX_UM_TENANT_UM_DOMAIN_NAME";
ALTER TABLE IF EXISTS ONLY micadoapp.user_types DROP CONSTRAINT IF EXISTS user_types_pkey;
ALTER TABLE IF EXISTS ONLY micadoapp.topic DROP CONSTRAINT IF EXISTS topic_pkey;
ALTER TABLE IF EXISTS ONLY micadoapp.step DROP CONSTRAINT IF EXISTS step_pkey;
ALTER TABLE IF EXISTS ONLY micadoapp.settings DROP CONSTRAINT IF EXISTS settings_pk;
ALTER TABLE IF EXISTS ONLY micadoapp.process DROP CONSTRAINT IF EXISTS process_pkey;
ALTER TABLE IF EXISTS ONLY micadoapp.migrant_app_config DROP CONSTRAINT IF EXISTS migrant_app_config_pkey;
ALTER TABLE IF EXISTS ONLY micadoapp.languages DROP CONSTRAINT IF EXISTS languages_pkey;
ALTER TABLE IF EXISTS ONLY micadoapp.intervention_types DROP CONSTRAINT IF EXISTS intervention_types_pkey;
ALTER TABLE IF EXISTS ONLY micadoapp.intervention_category DROP CONSTRAINT IF EXISTS intervention_category_pkey;
ALTER TABLE IF EXISTS ONLY micadoapp.individual_intervention_plan DROP CONSTRAINT IF EXISTS individual_intervention_plan_pkey;
ALTER TABLE IF EXISTS ONLY micadoapp.glossary DROP CONSTRAINT IF EXISTS glossary_pk;
ALTER TABLE IF EXISTS ONLY micadoapp.features_flags DROP CONSTRAINT IF EXISTS features_flag_pkey;
ALTER TABLE IF EXISTS ONLY micadoapp.event DROP CONSTRAINT IF EXISTS event_pkey;
ALTER TABLE IF EXISTS ONLY micadoapp.event_category DROP CONSTRAINT IF EXISTS event_category_pkey;
ALTER TABLE IF EXISTS ONLY micadoapp.document_type DROP CONSTRAINT IF EXISTS document_type_pkey;
ALTER TABLE IF EXISTS ONLY micadoapp.document DROP CONSTRAINT IF EXISTS document_pk;
ALTER TABLE IF EXISTS ONLY micadoapp.document_pictures DROP CONSTRAINT IF EXISTS document_pictures_pk;
ALTER TABLE IF EXISTS ONLY micadoapp."UM_USER" DROP CONSTRAINT IF EXISTS "UM_USER_pkey";
ALTER TABLE IF EXISTS ONLY micadoapp."UM_USER" DROP CONSTRAINT IF EXISTS "UM_USER_UM_USER_NAME_key";
ALTER TABLE IF EXISTS ONLY micadoapp."UM_USER" DROP CONSTRAINT IF EXISTS "UM_USER_UM_TENANT_ID_key";
ALTER TABLE IF EXISTS ONLY micadoapp."UM_TENANT" DROP CONSTRAINT IF EXISTS "UM_TENANT_pkey";
ALTER TABLE IF EXISTS ONLY micadoapp."UM_TENANT" DROP CONSTRAINT IF EXISTS "UM_TENANT_UM_DOMAIN_NAME_key";
ALTER TABLE IF EXISTS micadoapp.user_types_translation ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.user_types ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.topic_translation ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.topic ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.ratings ALTER COLUMN content_id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.process_users ALTER COLUMN id_user_types DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.process_users ALTER COLUMN id_process DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.process_translation ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.process_topic ALTER COLUMN id_topic DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.process_topic ALTER COLUMN id_process DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.process ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.intervention_types_translation ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.intervention_types ALTER COLUMN category_type DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.intervention_types ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.intervention_processes ALTER COLUMN process_id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.intervention_processes ALTER COLUMN intervention_type DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.individual_intervention_plan_interventions ALTER COLUMN intervention_type DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.individual_intervention_plan_interventions ALTER COLUMN list_id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.individual_intervention_plan ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.glossary ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.features_flags_translation ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.features_flags ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.event_translation ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.event_topic ALTER COLUMN id_topic DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.event_topic ALTER COLUMN id_event DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.event_event_category ALTER COLUMN id_event_category DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.event_event_category ALTER COLUMN id_event DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.event_category_translation ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.event_category ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.event ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.document ALTER COLUMN document_type DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.document ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS micadoapp.user_types_translation_id_seq;
DROP TABLE IF EXISTS micadoapp.user_types_translation;
DROP SEQUENCE IF EXISTS micadoapp.user_types_id_seq;
DROP TABLE IF EXISTS micadoapp.user_types;
DROP SEQUENCE IF EXISTS micadoapp.topic_translation_id_seq;
DROP TABLE IF EXISTS micadoapp.topic_translation;
DROP SEQUENCE IF EXISTS micadoapp.topic_id_seq;
DROP TABLE IF EXISTS micadoapp.topic;
DROP TABLE IF EXISTS micadoapp.step_translation;
DROP TABLE IF EXISTS micadoapp.step_document;
DROP TABLE IF EXISTS micadoapp.step;
DROP TABLE IF EXISTS micadoapp.settings;
DROP SEQUENCE IF EXISTS micadoapp.ratings_content_id_seq;
DROP TABLE IF EXISTS micadoapp.ratings;
DROP SEQUENCE IF EXISTS micadoapp.process_users_id_user_types_seq;
DROP SEQUENCE IF EXISTS micadoapp.process_users_id_process_seq;
DROP TABLE IF EXISTS micadoapp.process_users;
DROP SEQUENCE IF EXISTS micadoapp.process_translation_id_seq;
DROP TABLE IF EXISTS micadoapp.process_translation;
DROP SEQUENCE IF EXISTS micadoapp.process_topic_id_topic_seq;
DROP SEQUENCE IF EXISTS micadoapp.process_topic_id_process_seq;
DROP TABLE IF EXISTS micadoapp.process_topic;
DROP SEQUENCE IF EXISTS micadoapp.process_id_seq;
DROP TABLE IF EXISTS micadoapp.process;
DROP TABLE IF EXISTS micadoapp.migrant_app_config;
DROP TABLE IF EXISTS micadoapp.languages;
DROP SEQUENCE IF EXISTS micadoapp.intervention_types_translation_id_seq;
DROP TABLE IF EXISTS micadoapp.intervention_types_translation;
DROP SEQUENCE IF EXISTS micadoapp.intervention_types_id_seq;
DROP SEQUENCE IF EXISTS micadoapp.intervention_types_category_type_seq;
DROP TABLE IF EXISTS micadoapp.intervention_types;
DROP SEQUENCE IF EXISTS micadoapp.intervention_processes_process_id_seq;
DROP SEQUENCE IF EXISTS micadoapp.intervention_processes_intervention_type_seq;
DROP TABLE IF EXISTS micadoapp.intervention_processes;
DROP TABLE IF EXISTS micadoapp.intervention_category;
DROP SEQUENCE IF EXISTS micadoapp.individual_intervention_plan_interventions_list_id_seq;
DROP SEQUENCE IF EXISTS micadoapp.individual_intervention_plan_intervention_intervention_type_seq;
DROP TABLE IF EXISTS micadoapp.individual_intervention_plan_interventions;
DROP SEQUENCE IF EXISTS micadoapp.individual_intervention_plan_id_seq;
DROP TABLE IF EXISTS micadoapp.individual_intervention_plan;
DROP SEQUENCE IF EXISTS micadoapp.glossary_id_seq;
DROP TABLE IF EXISTS micadoapp.glossary;
DROP SEQUENCE IF EXISTS micadoapp.features_flags_translation_id_seq;
DROP VIEW IF EXISTS micadoapp.features_flags_translated;
DROP TABLE IF EXISTS micadoapp.features_flags_translation;
DROP SEQUENCE IF EXISTS micadoapp.features_flags_id_seq;
DROP TABLE IF EXISTS micadoapp.features_flags;
DROP SEQUENCE IF EXISTS micadoapp.event_translation_id_seq;
DROP TABLE IF EXISTS micadoapp.event_translation;
DROP SEQUENCE IF EXISTS micadoapp.event_topic_id_topic_seq;
DROP SEQUENCE IF EXISTS micadoapp.event_topic_id_event_seq;
DROP TABLE IF EXISTS micadoapp.event_topic;
DROP SEQUENCE IF EXISTS micadoapp.event_id_seq;
DROP SEQUENCE IF EXISTS micadoapp.event_event_category_id_event_seq;
DROP SEQUENCE IF EXISTS micadoapp.event_event_category_id_event_category_seq;
DROP TABLE IF EXISTS micadoapp.event_event_category;
DROP SEQUENCE IF EXISTS micadoapp.event_category_translation_id_seq;
DROP TABLE IF EXISTS micadoapp.event_category_translation;
DROP SEQUENCE IF EXISTS micadoapp.event_category_id_seq;
DROP TABLE IF EXISTS micadoapp.event_category;
DROP TABLE IF EXISTS micadoapp.event;
DROP TABLE IF EXISTS micadoapp.document_type_validator;
DROP VIEW IF EXISTS micadoapp.document_type_translated;
DROP TABLE IF EXISTS micadoapp.document_type_translation;
DROP TABLE IF EXISTS micadoapp.document_type;
DROP TABLE IF EXISTS micadoapp.document_pictures;
DROP SEQUENCE IF EXISTS micadoapp.document_id_seq;
DROP SEQUENCE IF EXISTS micadoapp.document_document_type_seq;
DROP TABLE IF EXISTS micadoapp.document;
DROP TABLE IF EXISTS micadoapp."UM_USER";
DROP TABLE IF EXISTS micadoapp."UM_TENANT";
DROP SCHEMA IF EXISTS micadoapp;
--
-- Name: micadoapp; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA micadoapp;


SET default_with_oids = false;

--
-- Name: UM_TENANT; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp."UM_TENANT" (
    "UM_ID" integer NOT NULL,
    "UM_DOMAIN_NAME" character varying(255) NOT NULL,
    "UM_EMAIL" character varying(255),
    "UM_ACTIVE" boolean DEFAULT false,
    "UM_CREATED_DATE" timestamp without time zone NOT NULL,
    "UM_USER_CONFIG" bytea
);


--
-- Name: UM_USER; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp."UM_USER" (
    "UM_ID" integer NOT NULL,
    "UM_USER_NAME" character varying(255) NOT NULL,
    "UM_USER_PASSWORD" character varying(255) NOT NULL,
    "UM_SALT_VALUE" character varying(31),
    "UM_REQUIRE_CHANGE" boolean DEFAULT false,
    "UM_CHANGED_TIME" timestamp without time zone NOT NULL,
    "UM_TENANT_ID" integer DEFAULT 0
);


--
-- Name: document; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.document (
    id smallint NOT NULL,
    document_type smallint NOT NULL,
    user_id integer,
    user_tenant integer,
    ask_validate_by_tenant smallint,
    validated boolean DEFAULT false NOT NULL,
    validation_date timestamp without time zone,
    validated_by_tenant integer,
    validated_by_user integer,
    uploaded_by_me boolean DEFAULT false NOT NULL,
    expiration_date timestamp without time zone
);


--
-- Name: COLUMN document.user_id; Type: COMMENT; Schema: micadoapp; Owner: -
--

COMMENT ON COLUMN micadoapp.document.user_id IS 'id of the user owner of the document';


--
-- Name: COLUMN document.ask_validate_by_tenant; Type: COMMENT; Schema: micadoapp; Owner: -
--

COMMENT ON COLUMN micadoapp.document.ask_validate_by_tenant IS 'if the document is of a type that is validable here is where the owner can ask a potential validator to validate it';


--
-- Name: COLUMN document.uploaded_by_me; Type: COMMENT; Schema: micadoapp; Owner: -
--

COMMENT ON COLUMN micadoapp.document.uploaded_by_me IS 'this is used to uinderstand if is uploaded by the owner so that he can edit';


--
-- Name: COLUMN document.expiration_date; Type: COMMENT; Schema: micadoapp; Owner: -
--

COMMENT ON COLUMN micadoapp.document.expiration_date IS 'this will be inserted by hand';


--
-- Name: document_document_type_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.document_document_type_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: document_document_type_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.document_document_type_seq OWNED BY micadoapp.document.document_type;


--
-- Name: document_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.document_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: document_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.document_id_seq OWNED BY micadoapp.document.id;


--
-- Name: document_pictures; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.document_pictures (
    id smallint NOT NULL,
    picture text,
    doc_id smallint NOT NULL
);


--
-- Name: document_type; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.document_type (
    id smallint NOT NULL,
    icon text,
    issuer character varying(20),
    model text,
    validable boolean DEFAULT false NOT NULL,
    validity_duration smallint
);


--
-- Name: COLUMN document_type.issuer; Type: COMMENT; Schema: micadoapp; Owner: -
--

COMMENT ON COLUMN micadoapp.document_type.issuer IS 'free text since not all issuers will have a tenant in MICADO';


--
-- Name: COLUMN document_type.validable; Type: COMMENT; Schema: micadoapp; Owner: -
--

COMMENT ON COLUMN micadoapp.document_type.validable IS 'if trhis document can be validated';


--
-- Name: COLUMN document_type.validity_duration; Type: COMMENT; Schema: micadoapp; Owner: -
--

COMMENT ON COLUMN micadoapp.document_type.validity_duration IS 'the duration of the document in days';


--
-- Name: document_type_translation; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.document_type_translation (
    id smallint NOT NULL,
    lang character varying(10),
    document character varying(50),
    description text,
    translation_date timestamp without time zone,
    template_image text
);


--
-- Name: COLUMN document_type_translation.template_image; Type: COMMENT; Schema: micadoapp; Owner: -
--

COMMENT ON COLUMN micadoapp.document_type_translation.template_image IS 'here we save the image of the template of the document, in the translation we could add a commented copy of it';


--
-- Name: document_type_translated; Type: VIEW; Schema: micadoapp; Owner: -
--

CREATE VIEW micadoapp.document_type_translated AS
 SELECT dt.id,
    dt.icon,
    dt.issuer,
    dt.model,
    dt.validable,
    dt.validity_duration,
    dtt.lang,
    dtt.document,
    dtt.description,
    dtt.template_image
   FROM micadoapp.document_type dt,
    micadoapp.document_type_translation dtt
  WHERE (dt.id = dtt.id);


--
-- Name: document_type_validator; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.document_type_validator (
    document_type_id smallint NOT NULL,
    validable_by_tenant integer
);


--
-- Name: TABLE document_type_validator; Type: COMMENT; Schema: micadoapp; Owner: -
--

COMMENT ON TABLE micadoapp.document_type_validator IS 'this table map all the organizations that are eligible to validate that tenant';


--
-- Name: event; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.event (
    id smallint NOT NULL,
    link character varying(70),
    published boolean DEFAULT false NOT NULL,
    publication_date timestamp without time zone
);


--
-- Name: TABLE event; Type: COMMENT; Schema: micadoapp; Owner: -
--

COMMENT ON TABLE micadoapp.event IS 'this is the generic event table for courses, news,  etc that each organization wants to publish';


--
-- Name: event_category; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.event_category (
    id smallint NOT NULL,
    icon text
);


--
-- Name: event_category_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.event_category_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: event_category_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.event_category_id_seq OWNED BY micadoapp.event_category.id;


--
-- Name: event_category_translation; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.event_category_translation (
    id smallint NOT NULL,
    lang character varying(10),
    event_category character varying(20),
    translation_date timestamp without time zone
);


--
-- Name: event_category_translation_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.event_category_translation_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: event_category_translation_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.event_category_translation_id_seq OWNED BY micadoapp.event_category_translation.id;


--
-- Name: event_event_category; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.event_event_category (
    id_event smallint NOT NULL,
    id_event_category smallint NOT NULL
);


--
-- Name: event_event_category_id_event_category_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.event_event_category_id_event_category_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: event_event_category_id_event_category_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.event_event_category_id_event_category_seq OWNED BY micadoapp.event_event_category.id_event_category;


--
-- Name: event_event_category_id_event_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.event_event_category_id_event_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: event_event_category_id_event_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.event_event_category_id_event_seq OWNED BY micadoapp.event_event_category.id_event;


--
-- Name: event_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.event_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: event_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.event_id_seq OWNED BY micadoapp.event.id;


--
-- Name: event_topic; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.event_topic (
    id_event smallint NOT NULL,
    id_topic smallint NOT NULL
);


--
-- Name: event_topic_id_event_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.event_topic_id_event_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: event_topic_id_event_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.event_topic_id_event_seq OWNED BY micadoapp.event_topic.id_event;


--
-- Name: event_topic_id_topic_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.event_topic_id_topic_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: event_topic_id_topic_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.event_topic_id_topic_seq OWNED BY micadoapp.event_topic.id_topic;


--
-- Name: event_translation; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.event_translation (
    id smallint NOT NULL,
    lang character varying(10),
    event character varying(20),
    description text,
    translation_date timestamp without time zone
);


--
-- Name: event_translation_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.event_translation_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: event_translation_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.event_translation_id_seq OWNED BY micadoapp.event_translation.id;


--
-- Name: features_flags; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.features_flags (
    id smallint NOT NULL,
    flag_key text,
    enabled boolean DEFAULT false NOT NULL
);


--
-- Name: features_flags_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.features_flags_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: features_flags_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.features_flags_id_seq OWNED BY micadoapp.features_flags.id;


--
-- Name: features_flags_translation; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.features_flags_translation (
    id smallint NOT NULL,
    lang character varying(10),
    feature character varying(30),
    translation_date timestamp without time zone
);


--
-- Name: features_flags_translated; Type: VIEW; Schema: micadoapp; Owner: -
--

CREATE VIEW micadoapp.features_flags_translated AS
 SELECT f.id,
    f.flag_key,
    f.enabled,
    ft.lang,
    ft.feature
   FROM micadoapp.features_flags f,
    micadoapp.features_flags_translation ft;


--
-- Name: features_flags_translation_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.features_flags_translation_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: features_flags_translation_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.features_flags_translation_id_seq OWNED BY micadoapp.features_flags_translation.id;


--
-- Name: glossary; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.glossary (
    id smallint NOT NULL,
    lang character varying(10) NOT NULL,
    title character varying(20),
    description text,
    translation_date timestamp without time zone
);


--
-- Name: glossary_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.glossary_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: glossary_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.glossary_id_seq OWNED BY micadoapp.glossary.id;


--
-- Name: individual_intervention_plan; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.individual_intervention_plan (
    id smallint NOT NULL,
    title character varying(30),
    creation_date timestamp without time zone,
    end_date timestamp without time zone,
    case_manager character varying(30),
    user_id integer,
    user_tenant integer,
    completed boolean DEFAULT false NOT NULL
);


--
-- Name: individual_intervention_plan_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.individual_intervention_plan_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: individual_intervention_plan_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.individual_intervention_plan_id_seq OWNED BY micadoapp.individual_intervention_plan.id;


--
-- Name: individual_intervention_plan_interventions; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.individual_intervention_plan_interventions (
    list_id smallint NOT NULL,
    intervention_type smallint NOT NULL,
    validation_date timestamp without time zone,
    completed boolean,
    validating_user_id integer,
    validating_user_tenant integer,
    assignment_date timestamp without time zone
);


--
-- Name: individual_intervention_plan_intervention_intervention_type_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.individual_intervention_plan_intervention_intervention_type_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: individual_intervention_plan_intervention_intervention_type_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.individual_intervention_plan_intervention_intervention_type_seq OWNED BY micadoapp.individual_intervention_plan_interventions.intervention_type;


--
-- Name: individual_intervention_plan_interventions_list_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.individual_intervention_plan_interventions_list_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: individual_intervention_plan_interventions_list_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.individual_intervention_plan_interventions_list_id_seq OWNED BY micadoapp.individual_intervention_plan_interventions.list_id;


--
-- Name: intervention_category; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.intervention_category (
    id smallint NOT NULL,
    title character varying(30),
    lang character varying(10) NOT NULL
);


--
-- Name: intervention_processes; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.intervention_processes (
    intervention_type smallint NOT NULL,
    process_id smallint NOT NULL
);


--
-- Name: intervention_processes_intervention_type_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.intervention_processes_intervention_type_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: intervention_processes_intervention_type_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.intervention_processes_intervention_type_seq OWNED BY micadoapp.intervention_processes.intervention_type;


--
-- Name: intervention_processes_process_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.intervention_processes_process_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: intervention_processes_process_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.intervention_processes_process_id_seq OWNED BY micadoapp.intervention_processes.process_id;


--
-- Name: intervention_types; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.intervention_types (
    id smallint NOT NULL,
    category_type smallint NOT NULL
);


--
-- Name: intervention_types_category_type_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.intervention_types_category_type_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: intervention_types_category_type_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.intervention_types_category_type_seq OWNED BY micadoapp.intervention_types.category_type;


--
-- Name: intervention_types_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.intervention_types_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: intervention_types_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.intervention_types_id_seq OWNED BY micadoapp.intervention_types.id;


--
-- Name: intervention_types_translation; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.intervention_types_translation (
    id smallint NOT NULL,
    lang character varying(10),
    intervention_title character varying(20),
    description text,
    translation_date timestamp without time zone
);


--
-- Name: intervention_types_translation_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.intervention_types_translation_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: intervention_types_translation_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.intervention_types_translation_id_seq OWNED BY micadoapp.intervention_types_translation.id;


--
-- Name: languages; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.languages (
    lang character varying(10) NOT NULL,
    iso_code character varying(10),
    name character varying(25),
    active boolean DEFAULT false NOT NULL
);


--
-- Name: migrant_app_config; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.migrant_app_config (
    id integer NOT NULL,
    features json
);


--
-- Name: process; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.process (
    id smallint NOT NULL,
    link character varying(70),
    published boolean DEFAULT false NOT NULL,
    publication_date timestamp without time zone
);


--
-- Name: process_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.process_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: process_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.process_id_seq OWNED BY micadoapp.process.id;


--
-- Name: process_topic; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.process_topic (
    id_process smallint NOT NULL,
    id_topic smallint NOT NULL
);


--
-- Name: process_topic_id_process_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.process_topic_id_process_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: process_topic_id_process_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.process_topic_id_process_seq OWNED BY micadoapp.process_topic.id_process;


--
-- Name: process_topic_id_topic_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.process_topic_id_topic_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: process_topic_id_topic_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.process_topic_id_topic_seq OWNED BY micadoapp.process_topic.id_topic;


--
-- Name: process_translation; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.process_translation (
    id smallint NOT NULL,
    lang character varying(10),
    process character varying(20),
    description text,
    translation_date timestamp without time zone
);


--
-- Name: process_translation_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.process_translation_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: process_translation_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.process_translation_id_seq OWNED BY micadoapp.process_translation.id;


--
-- Name: process_users; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.process_users (
    id_process smallint NOT NULL,
    id_user_types smallint NOT NULL
);


--
-- Name: process_users_id_process_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.process_users_id_process_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: process_users_id_process_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.process_users_id_process_seq OWNED BY micadoapp.process_users.id_process;


--
-- Name: process_users_id_user_types_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.process_users_id_user_types_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: process_users_id_user_types_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.process_users_id_user_types_seq OWNED BY micadoapp.process_users.id_user_types;


--
-- Name: ratings; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.ratings (
    user_id integer,
    user_tenant integer,
    content_id smallint NOT NULL,
    content_type integer,
    value integer
);


--
-- Name: ratings_content_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.ratings_content_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ratings_content_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.ratings_content_id_seq OWNED BY micadoapp.ratings.content_id;


--
-- Name: settings; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.settings (
    key character varying NOT NULL,
    value character varying(1500)
);


--
-- Name: step; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.step (
    id smallint NOT NULL,
    previous smallint NOT NULL,
    cost money,
    location_specific boolean,
    location character varying(100),
    location_lon double precision,
    location_lat double precision,
    id_process smallint NOT NULL
);


--
-- Name: step_document; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.step_document (
    id_step smallint NOT NULL,
    id_document smallint NOT NULL,
    is_out boolean NOT NULL,
    cost money
);


--
-- Name: step_translation; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.step_translation (
    id smallint NOT NULL,
    lang character varying(10),
    step character varying(25),
    description text,
    translation_date timestamp without time zone
);


--
-- Name: topic; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.topic (
    id smallint NOT NULL,
    icon text
);


--
-- Name: topic_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.topic_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: topic_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.topic_id_seq OWNED BY micadoapp.topic.id;


--
-- Name: topic_translation; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.topic_translation (
    id smallint NOT NULL,
    lang character varying(10),
    topic character varying(20),
    translation_date timestamp without time zone
);


--
-- Name: topic_translation_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.topic_translation_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: topic_translation_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.topic_translation_id_seq OWNED BY micadoapp.topic_translation.id;


--
-- Name: user_types; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.user_types (
    id smallint NOT NULL
);


--
-- Name: user_types_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.user_types_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_types_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.user_types_id_seq OWNED BY micadoapp.user_types.id;


--
-- Name: user_types_translation; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.user_types_translation (
    id smallint NOT NULL,
    lang character varying(10) NOT NULL,
    user_type character varying(20),
    description text,
    translation_date timestamp without time zone
);


--
-- Name: user_types_translation_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.user_types_translation_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_types_translation_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.user_types_translation_id_seq OWNED BY micadoapp.user_types_translation.id;


--
-- Name: document id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document ALTER COLUMN id SET DEFAULT nextval('micadoapp.document_id_seq'::regclass);


--
-- Name: document document_type; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document ALTER COLUMN document_type SET DEFAULT nextval('micadoapp.document_document_type_seq'::regclass);


--
-- Name: event id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event ALTER COLUMN id SET DEFAULT nextval('micadoapp.event_id_seq'::regclass);


--
-- Name: event_category id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_category ALTER COLUMN id SET DEFAULT nextval('micadoapp.event_category_id_seq'::regclass);


--
-- Name: event_category_translation id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_category_translation ALTER COLUMN id SET DEFAULT nextval('micadoapp.event_category_translation_id_seq'::regclass);


--
-- Name: event_event_category id_event; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_event_category ALTER COLUMN id_event SET DEFAULT nextval('micadoapp.event_event_category_id_event_seq'::regclass);


--
-- Name: event_event_category id_event_category; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_event_category ALTER COLUMN id_event_category SET DEFAULT nextval('micadoapp.event_event_category_id_event_category_seq'::regclass);


--
-- Name: event_topic id_event; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_topic ALTER COLUMN id_event SET DEFAULT nextval('micadoapp.event_topic_id_event_seq'::regclass);


--
-- Name: event_topic id_topic; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_topic ALTER COLUMN id_topic SET DEFAULT nextval('micadoapp.event_topic_id_topic_seq'::regclass);


--
-- Name: event_translation id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_translation ALTER COLUMN id SET DEFAULT nextval('micadoapp.event_translation_id_seq'::regclass);


--
-- Name: features_flags id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.features_flags ALTER COLUMN id SET DEFAULT nextval('micadoapp.features_flags_id_seq'::regclass);


--
-- Name: features_flags_translation id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.features_flags_translation ALTER COLUMN id SET DEFAULT nextval('micadoapp.features_flags_translation_id_seq'::regclass);


--
-- Name: glossary id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.glossary ALTER COLUMN id SET DEFAULT nextval('micadoapp.glossary_id_seq'::regclass);


--
-- Name: individual_intervention_plan id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.individual_intervention_plan ALTER COLUMN id SET DEFAULT nextval('micadoapp.individual_intervention_plan_id_seq'::regclass);


--
-- Name: individual_intervention_plan_interventions list_id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.individual_intervention_plan_interventions ALTER COLUMN list_id SET DEFAULT nextval('micadoapp.individual_intervention_plan_interventions_list_id_seq'::regclass);


--
-- Name: individual_intervention_plan_interventions intervention_type; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.individual_intervention_plan_interventions ALTER COLUMN intervention_type SET DEFAULT nextval('micadoapp.individual_intervention_plan_intervention_intervention_type_seq'::regclass);


--
-- Name: intervention_processes intervention_type; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.intervention_processes ALTER COLUMN intervention_type SET DEFAULT nextval('micadoapp.intervention_processes_intervention_type_seq'::regclass);


--
-- Name: intervention_processes process_id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.intervention_processes ALTER COLUMN process_id SET DEFAULT nextval('micadoapp.intervention_processes_process_id_seq'::regclass);


--
-- Name: intervention_types id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.intervention_types ALTER COLUMN id SET DEFAULT nextval('micadoapp.intervention_types_id_seq'::regclass);


--
-- Name: intervention_types category_type; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.intervention_types ALTER COLUMN category_type SET DEFAULT nextval('micadoapp.intervention_types_category_type_seq'::regclass);


--
-- Name: intervention_types_translation id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.intervention_types_translation ALTER COLUMN id SET DEFAULT nextval('micadoapp.intervention_types_translation_id_seq'::regclass);


--
-- Name: process id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process ALTER COLUMN id SET DEFAULT nextval('micadoapp.process_id_seq'::regclass);


--
-- Name: process_topic id_process; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process_topic ALTER COLUMN id_process SET DEFAULT nextval('micadoapp.process_topic_id_process_seq'::regclass);


--
-- Name: process_topic id_topic; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process_topic ALTER COLUMN id_topic SET DEFAULT nextval('micadoapp.process_topic_id_topic_seq'::regclass);


--
-- Name: process_translation id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process_translation ALTER COLUMN id SET DEFAULT nextval('micadoapp.process_translation_id_seq'::regclass);


--
-- Name: process_users id_process; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process_users ALTER COLUMN id_process SET DEFAULT nextval('micadoapp.process_users_id_process_seq'::regclass);


--
-- Name: process_users id_user_types; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process_users ALTER COLUMN id_user_types SET DEFAULT nextval('micadoapp.process_users_id_user_types_seq'::regclass);


--
-- Name: ratings content_id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.ratings ALTER COLUMN content_id SET DEFAULT nextval('micadoapp.ratings_content_id_seq'::regclass);


--
-- Name: topic id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.topic ALTER COLUMN id SET DEFAULT nextval('micadoapp.topic_id_seq'::regclass);


--
-- Name: topic_translation id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.topic_translation ALTER COLUMN id SET DEFAULT nextval('micadoapp.topic_translation_id_seq'::regclass);


--
-- Name: user_types id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.user_types ALTER COLUMN id SET DEFAULT nextval('micadoapp.user_types_id_seq'::regclass);


--
-- Name: user_types_translation id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.user_types_translation ALTER COLUMN id SET DEFAULT nextval('micadoapp.user_types_translation_id_seq'::regclass);


--
-- Data for Name: UM_TENANT; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp."UM_TENANT" ("UM_ID", "UM_DOMAIN_NAME", "UM_EMAIL", "UM_ACTIVE", "UM_CREATED_DATE", "UM_USER_CONFIG") FROM stdin;
\.


--
-- Data for Name: UM_USER; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp."UM_USER" ("UM_ID", "UM_USER_NAME", "UM_USER_PASSWORD", "UM_SALT_VALUE", "UM_REQUIRE_CHANGE", "UM_CHANGED_TIME", "UM_TENANT_ID") FROM stdin;
\.


--
-- Data for Name: document; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.document (id, document_type, user_id, user_tenant, ask_validate_by_tenant, validated, validation_date, validated_by_tenant, validated_by_user, uploaded_by_me, expiration_date) FROM stdin;
\.


--
-- Data for Name: document_pictures; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.document_pictures (id, picture, doc_id) FROM stdin;
\.


--
-- Data for Name: document_type; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.document_type (id, icon, issuer, model, validable, validity_duration) FROM stdin;
1	\N	\N	\N	f	-1
\.


--
-- Data for Name: document_type_translation; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.document_type_translation (id, lang, document, description, translation_date, template_image) FROM stdin;
1	it	permesso di soggiorno	bla bla	2020-04-14 16:17:39.35	\N
1	en	residence permit	bla bla	2020-04-14 16:17:39.35	\N
\.


--
-- Data for Name: document_type_validator; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.document_type_validator (document_type_id, validable_by_tenant) FROM stdin;
\.


--
-- Data for Name: event; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.event (id, link, published, publication_date) FROM stdin;
\.


--
-- Data for Name: event_category; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.event_category (id, icon) FROM stdin;
\.


--
-- Data for Name: event_category_translation; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.event_category_translation (id, lang, event_category, translation_date) FROM stdin;
\.


--
-- Data for Name: event_event_category; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.event_event_category (id_event, id_event_category) FROM stdin;
\.


--
-- Data for Name: event_topic; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.event_topic (id_event, id_topic) FROM stdin;
\.


--
-- Data for Name: event_translation; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.event_translation (id, lang, event, description, translation_date) FROM stdin;
\.


--
-- Data for Name: features_flags; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.features_flags (id, flag_key, enabled) FROM stdin;
1	FEAT_DOCUMENTS	f
\.


--
-- Data for Name: features_flags_translation; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.features_flags_translation (id, lang, feature, translation_date) FROM stdin;
1	it	Portafoglio documenti	2020-04-14 17:54:28.436
1	en	Document wallet	2020-04-14 17:54:28.436
\.


--
-- Data for Name: glossary; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.glossary (id, lang, title, description, translation_date) FROM stdin;
\.


--
-- Data for Name: individual_intervention_plan; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.individual_intervention_plan (id, title, creation_date, end_date, case_manager, user_id, user_tenant, completed) FROM stdin;
\.


--
-- Data for Name: individual_intervention_plan_interventions; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.individual_intervention_plan_interventions (list_id, intervention_type, validation_date, completed, validating_user_id, validating_user_tenant, assignment_date) FROM stdin;
\.


--
-- Data for Name: intervention_category; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.intervention_category (id, title, lang) FROM stdin;
\.


--
-- Data for Name: intervention_processes; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.intervention_processes (intervention_type, process_id) FROM stdin;
\.


--
-- Data for Name: intervention_types; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.intervention_types (id, category_type) FROM stdin;
\.


--
-- Data for Name: intervention_types_translation; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.intervention_types_translation (id, lang, intervention_title, description, translation_date) FROM stdin;
\.


--
-- Data for Name: languages; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.languages (lang, iso_code, name, active) FROM stdin;
it	it-it	italiano	t
en	en-us	english	t
de	de-de	deutch	t
\.


--
-- Data for Name: migrant_app_config; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.migrant_app_config (id, features) FROM stdin;
1	["FEAT_DOCUMENTS","FEAT_GLOSSARY","FEAT_ASSISTANT","FEAT_SERVICES","FEAT_TASKS","FEAT_DEFAULT"]
\.


--
-- Data for Name: process; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.process (id, link, published, publication_date) FROM stdin;
\.


--
-- Data for Name: process_topic; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.process_topic (id_process, id_topic) FROM stdin;
\.


--
-- Data for Name: process_translation; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.process_translation (id, lang, process, description, translation_date) FROM stdin;
\.


--
-- Data for Name: process_users; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.process_users (id_process, id_user_types) FROM stdin;
\.


--
-- Data for Name: ratings; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.ratings (user_id, user_tenant, content_id, content_type, value) FROM stdin;
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.settings (key, value) FROM stdin;
default_language	it
api_token	eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsIng1dCI6IlpqUm1ZVE13TlRKak9XVTVNbUl6TWpnek5ESTNZMkl5TW1JeVkyRXpNamRoWmpWaU1qYzBaZz09In0.eyJhdWQiOiJodHRwOlwvXC9vcmcud3NvMi5hcGltZ3RcL2dhdGV3YXkiLCJzdWIiOiJhZG1pbkBjYXJib24uc3VwZXIiLCJhcHBsaWNhdGlvbiI6eyJvd25lciI6ImFkbWluIiwidGllciI6IlVubGltaXRlZCIsIm5hbWUiOiJNaWdyYW50QXBwbGljYXRpb24iLCJpZCI6MSwidXVpZCI6bnVsbH0sInNjb3BlIjoiYW1fYXBwbGljYXRpb25fc2NvcGUgZGVmYXVsdCIsImlzcyI6Imh0dHBzOlwvXC9nYXRld2F5Lm1pY2Fkb3Byb2plY3QuZXU6NDQzXC9vYXV0aDJcL3Rva2VuIiwidGllckluZm8iOnsiQnJvbnplIjp7InN0b3BPblF1b3RhUmVhY2giOnRydWUsInNwaWtlQXJyZXN0TGltaXQiOjAsInNwaWtlQXJyZXN0VW5pdCI6bnVsbH19LCJrZXl0eXBlIjoiUFJPRFVDVElPTiIsInN1YnNjcmliZWRBUElzIjpbeyJzdWJzY3JpYmVyVGVuYW50RG9tYWluIjoiY2FyYm9uLnN1cGVyIiwibmFtZSI6IlBvc3RnUkVTVEFQSSIsImNvbnRleHQiOiJcL2RiXC92MDEiLCJwdWJsaXNoZXIiOiJhZG1pbiIsInZlcnNpb24iOiJ2MDEiLCJzdWJzY3JpcHRpb25UaWVyIjoiQnJvbnplIn1dLCJjb25zdW1lcktleSI6InZabFNMbTFnYzVOMzIxbnRIN2Ztd2tONTNvVWEiLCJleHAiOjM3MzAyOTc0MzgsImlhdCI6MTU4MjgxMzc5MSwianRpIjoiYmYyMjBiYjMtNjY3MC00OTA5LWI4OTctOTY2ZDVhZDdhN2M0In0.GORnM7Hfflrv8iNFbBOZoLg7475tnLaXwY2f88My_qVCAupJxqPihM901E5GNQUsL2I7PW9_ymbCPJki0FuaIhdXk4ovso11ghjWDkVH9fUoMm_FElNynOlWp7gPDwtXbS5sNI2nZHflvUmc9IYG70XJG6tWhg4hI8bW0sNr03gkQOjQzbUqSqHb__J_oLJye1IGi657oJUtXnVLSDfRHOKl7w8SATrSiR_K57SkT4xGmpLqYGmbXsoWFJT-FHe1-WVrGBvwk2kqZfjgjDUoUedrDR0F9T_YrVIuPtruGqR4gJGWBuXPciOSHYsGu12Oxg3zC1FwoptN0NA2AZ-oTg
\.


--
-- Data for Name: step; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.step (id, previous, cost, location_specific, location, location_lon, location_lat, id_process) FROM stdin;
\.


--
-- Data for Name: step_document; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.step_document (id_step, id_document, is_out, cost) FROM stdin;
\.


--
-- Data for Name: step_translation; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.step_translation (id, lang, step, description, translation_date) FROM stdin;
\.


--
-- Data for Name: topic; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.topic (id, icon) FROM stdin;
\.


--
-- Data for Name: topic_translation; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.topic_translation (id, lang, topic, translation_date) FROM stdin;
\.


--
-- Data for Name: user_types; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.user_types (id) FROM stdin;
\.


--
-- Data for Name: user_types_translation; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

COPY micadoapp.user_types_translation (id, lang, user_type, description, translation_date) FROM stdin;
\.


--
-- Name: document_document_type_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.document_document_type_seq', 1, false);


--
-- Name: document_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.document_id_seq', 1, false);


--
-- Name: event_category_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.event_category_id_seq', 1, false);


--
-- Name: event_category_translation_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.event_category_translation_id_seq', 1, false);


--
-- Name: event_event_category_id_event_category_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.event_event_category_id_event_category_seq', 1, false);


--
-- Name: event_event_category_id_event_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.event_event_category_id_event_seq', 1, false);


--
-- Name: event_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.event_id_seq', 1, false);


--
-- Name: event_topic_id_event_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.event_topic_id_event_seq', 1, false);


--
-- Name: event_topic_id_topic_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.event_topic_id_topic_seq', 1, false);


--
-- Name: event_translation_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.event_translation_id_seq', 1, false);


--
-- Name: features_flags_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.features_flags_id_seq', 1, false);


--
-- Name: features_flags_translation_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.features_flags_translation_id_seq', 1, false);


--
-- Name: glossary_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.glossary_id_seq', 1, false);


--
-- Name: individual_intervention_plan_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.individual_intervention_plan_id_seq', 1, false);


--
-- Name: individual_intervention_plan_intervention_intervention_type_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.individual_intervention_plan_intervention_intervention_type_seq', 1, false);


--
-- Name: individual_intervention_plan_interventions_list_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.individual_intervention_plan_interventions_list_id_seq', 1, false);


--
-- Name: intervention_processes_intervention_type_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.intervention_processes_intervention_type_seq', 1, false);


--
-- Name: intervention_processes_process_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.intervention_processes_process_id_seq', 1, false);


--
-- Name: intervention_types_category_type_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.intervention_types_category_type_seq', 1, false);


--
-- Name: intervention_types_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.intervention_types_id_seq', 1, false);


--
-- Name: intervention_types_translation_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.intervention_types_translation_id_seq', 1, false);


--
-- Name: process_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.process_id_seq', 1, false);


--
-- Name: process_topic_id_process_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.process_topic_id_process_seq', 1, false);


--
-- Name: process_topic_id_topic_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.process_topic_id_topic_seq', 1, false);


--
-- Name: process_translation_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.process_translation_id_seq', 1, false);


--
-- Name: process_users_id_process_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.process_users_id_process_seq', 1, false);


--
-- Name: process_users_id_user_types_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.process_users_id_user_types_seq', 1, false);


--
-- Name: ratings_content_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.ratings_content_id_seq', 1, false);


--
-- Name: topic_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.topic_id_seq', 1, false);


--
-- Name: topic_translation_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.topic_translation_id_seq', 1, false);


--
-- Name: user_types_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.user_types_id_seq', 1, false);


--
-- Name: user_types_translation_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.user_types_translation_id_seq', 1, false);


--
-- Name: UM_TENANT UM_TENANT_UM_DOMAIN_NAME_key; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp."UM_TENANT"
    ADD CONSTRAINT "UM_TENANT_UM_DOMAIN_NAME_key" UNIQUE ("UM_DOMAIN_NAME");


--
-- Name: UM_TENANT UM_TENANT_pkey; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp."UM_TENANT"
    ADD CONSTRAINT "UM_TENANT_pkey" PRIMARY KEY ("UM_ID");


--
-- Name: UM_USER UM_USER_UM_TENANT_ID_key; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp."UM_USER"
    ADD CONSTRAINT "UM_USER_UM_TENANT_ID_key" UNIQUE ("UM_TENANT_ID");


--
-- Name: UM_USER UM_USER_UM_USER_NAME_key; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp."UM_USER"
    ADD CONSTRAINT "UM_USER_UM_USER_NAME_key" UNIQUE ("UM_USER_NAME");


--
-- Name: UM_USER UM_USER_pkey; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp."UM_USER"
    ADD CONSTRAINT "UM_USER_pkey" PRIMARY KEY ("UM_ID");


--
-- Name: document_pictures document_pictures_pk; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document_pictures
    ADD CONSTRAINT document_pictures_pk PRIMARY KEY (id);


--
-- Name: document document_pk; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document
    ADD CONSTRAINT document_pk PRIMARY KEY (id);


--
-- Name: document_type document_type_pkey; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document_type
    ADD CONSTRAINT document_type_pkey PRIMARY KEY (id);


--
-- Name: event_category event_category_pkey; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_category
    ADD CONSTRAINT event_category_pkey PRIMARY KEY (id);


--
-- Name: event event_pkey; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event
    ADD CONSTRAINT event_pkey PRIMARY KEY (id);


--
-- Name: features_flags features_flag_pkey; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.features_flags
    ADD CONSTRAINT features_flag_pkey PRIMARY KEY (id);


--
-- Name: glossary glossary_pk; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.glossary
    ADD CONSTRAINT glossary_pk PRIMARY KEY (id, lang);


--
-- Name: individual_intervention_plan individual_intervention_plan_pkey; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.individual_intervention_plan
    ADD CONSTRAINT individual_intervention_plan_pkey PRIMARY KEY (id);


--
-- Name: intervention_category intervention_category_pkey; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.intervention_category
    ADD CONSTRAINT intervention_category_pkey PRIMARY KEY (id);


--
-- Name: intervention_types intervention_types_pkey; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.intervention_types
    ADD CONSTRAINT intervention_types_pkey PRIMARY KEY (id);


--
-- Name: languages languages_pkey; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.languages
    ADD CONSTRAINT languages_pkey PRIMARY KEY (lang);


--
-- Name: migrant_app_config migrant_app_config_pkey; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.migrant_app_config
    ADD CONSTRAINT migrant_app_config_pkey PRIMARY KEY (id);


--
-- Name: process process_pkey; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process
    ADD CONSTRAINT process_pkey PRIMARY KEY (id);


--
-- Name: settings settings_pk; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.settings
    ADD CONSTRAINT settings_pk PRIMARY KEY (key);


--
-- Name: step step_pkey; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.step
    ADD CONSTRAINT step_pkey PRIMARY KEY (id);


--
-- Name: topic topic_pkey; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.topic
    ADD CONSTRAINT topic_pkey PRIMARY KEY (id);


--
-- Name: user_types user_types_pkey; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.user_types
    ADD CONSTRAINT user_types_pkey PRIMARY KEY (id);


--
-- Name: INDEX_UM_TENANT_UM_DOMAIN_NAME; Type: INDEX; Schema: micadoapp; Owner: -
--

CREATE INDEX "INDEX_UM_TENANT_UM_DOMAIN_NAME" ON micadoapp."UM_TENANT" USING btree ("UM_DOMAIN_NAME");


--
-- Name: id_glossary_title; Type: INDEX; Schema: micadoapp; Owner: -
--

CREATE UNIQUE INDEX id_glossary_title ON micadoapp.glossary USING btree (title);


--
-- Name: intervention_category_pk; Type: INDEX; Schema: micadoapp; Owner: -
--

CREATE UNIQUE INDEX intervention_category_pk ON micadoapp.intervention_category USING btree (id);


--
-- Name: UM_USER UM_USER_UM_TENANT_ID_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp."UM_USER"
    ADD CONSTRAINT "UM_USER_UM_TENANT_ID_fkey" FOREIGN KEY ("UM_TENANT_ID") REFERENCES micadoapp."UM_TENANT"("UM_ID");


--
-- Name: document document_ask_validate_by_tenant_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document
    ADD CONSTRAINT document_ask_validate_by_tenant_fkey FOREIGN KEY (ask_validate_by_tenant) REFERENCES micadoapp."UM_USER"("UM_TENANT_ID");


--
-- Name: document document_document_type_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document
    ADD CONSTRAINT document_document_type_fkey FOREIGN KEY (document_type) REFERENCES micadoapp.document_type(id);


--
-- Name: document_pictures document_pictures_fk; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document_pictures
    ADD CONSTRAINT document_pictures_fk FOREIGN KEY (doc_id) REFERENCES micadoapp.document(id) ON DELETE CASCADE;


--
-- Name: document_type_translation document_type_translation_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document_type_translation
    ADD CONSTRAINT document_type_translation_id_fkey FOREIGN KEY (id) REFERENCES micadoapp.document_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: document_type_translation document_type_translation_lang_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document_type_translation
    ADD CONSTRAINT document_type_translation_lang_fkey FOREIGN KEY (lang) REFERENCES micadoapp.languages(lang) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: document_type_validator document_type_validator_document_type_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document_type_validator
    ADD CONSTRAINT document_type_validator_document_type_id_fkey FOREIGN KEY (document_type_id) REFERENCES micadoapp.document_type(id);


--
-- Name: document_type_validator document_type_validator_validable_by_tenant_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document_type_validator
    ADD CONSTRAINT document_type_validator_validable_by_tenant_fkey FOREIGN KEY (validable_by_tenant) REFERENCES micadoapp."UM_TENANT"("UM_ID");


--
-- Name: document document_user_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document
    ADD CONSTRAINT document_user_id_fkey FOREIGN KEY (user_id) REFERENCES micadoapp."UM_USER"("UM_ID");


--
-- Name: document document_user_tenant_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document
    ADD CONSTRAINT document_user_tenant_fkey FOREIGN KEY (user_tenant) REFERENCES micadoapp."UM_USER"("UM_TENANT_ID");


--
-- Name: document document_validated_by_tenant_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document
    ADD CONSTRAINT document_validated_by_tenant_fkey FOREIGN KEY (validated_by_tenant) REFERENCES micadoapp."UM_USER"("UM_TENANT_ID");


--
-- Name: document document_validated_by_user_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document
    ADD CONSTRAINT document_validated_by_user_fkey FOREIGN KEY (validated_by_user) REFERENCES micadoapp."UM_USER"("UM_ID");


--
-- Name: event_category_translation event_category_translation_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_category_translation
    ADD CONSTRAINT event_category_translation_id_fkey FOREIGN KEY (id) REFERENCES micadoapp.event_category(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: event_category_translation event_category_translation_lang_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_category_translation
    ADD CONSTRAINT event_category_translation_lang_fkey FOREIGN KEY (lang) REFERENCES micadoapp.languages(lang) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: event_event_category event_event_category_id_event_category_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_event_category
    ADD CONSTRAINT event_event_category_id_event_category_fkey FOREIGN KEY (id_event_category) REFERENCES micadoapp.event_category(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: event_event_category event_event_category_id_process_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_event_category
    ADD CONSTRAINT event_event_category_id_process_fkey FOREIGN KEY (id_event) REFERENCES micadoapp.event(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: event_topic event_topic_id_process_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_topic
    ADD CONSTRAINT event_topic_id_process_fkey FOREIGN KEY (id_event) REFERENCES micadoapp.event(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: event_topic event_topic_id_topic_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_topic
    ADD CONSTRAINT event_topic_id_topic_fkey FOREIGN KEY (id_topic) REFERENCES micadoapp.topic(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: event_translation event_translation_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_translation
    ADD CONSTRAINT event_translation_id_fkey FOREIGN KEY (id) REFERENCES micadoapp.event(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: event_translation event_translation_lang_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_translation
    ADD CONSTRAINT event_translation_lang_fkey FOREIGN KEY (lang) REFERENCES micadoapp.languages(lang) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: features_flags_translation features_flags_translation_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.features_flags_translation
    ADD CONSTRAINT features_flags_translation_id_fkey FOREIGN KEY (id) REFERENCES micadoapp.features_flags(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: features_flags_translation features_flags_translation_lang_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.features_flags_translation
    ADD CONSTRAINT features_flags_translation_lang_fkey FOREIGN KEY (lang) REFERENCES micadoapp.languages(lang) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: glossary glossary_lang_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.glossary
    ADD CONSTRAINT glossary_lang_fkey FOREIGN KEY (lang) REFERENCES micadoapp.languages(lang) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: individual_intervention_plan_interventions individual_intervention_plan_intervention_validating_user_tenan; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.individual_intervention_plan_interventions
    ADD CONSTRAINT individual_intervention_plan_intervention_validating_user_tenan FOREIGN KEY (validating_user_tenant) REFERENCES micadoapp."UM_USER"("UM_TENANT_ID");


--
-- Name: individual_intervention_plan_interventions individual_intervention_plan_interventions_intervention_type_fk; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.individual_intervention_plan_interventions
    ADD CONSTRAINT individual_intervention_plan_interventions_intervention_type_fk FOREIGN KEY (intervention_type) REFERENCES micadoapp.intervention_types(id);


--
-- Name: individual_intervention_plan_interventions individual_intervention_plan_interventions_list_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.individual_intervention_plan_interventions
    ADD CONSTRAINT individual_intervention_plan_interventions_list_id_fkey FOREIGN KEY (list_id) REFERENCES micadoapp.individual_intervention_plan(id);


--
-- Name: individual_intervention_plan_interventions individual_intervention_plan_interventions_validating_user_id_f; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.individual_intervention_plan_interventions
    ADD CONSTRAINT individual_intervention_plan_interventions_validating_user_id_f FOREIGN KEY (validating_user_id) REFERENCES micadoapp."UM_USER"("UM_ID");


--
-- Name: individual_intervention_plan individual_intervention_plan_user_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.individual_intervention_plan
    ADD CONSTRAINT individual_intervention_plan_user_id_fkey FOREIGN KEY (user_id) REFERENCES micadoapp."UM_USER"("UM_ID");


--
-- Name: individual_intervention_plan individual_intervention_plan_user_tenant_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.individual_intervention_plan
    ADD CONSTRAINT individual_intervention_plan_user_tenant_fkey FOREIGN KEY (user_tenant) REFERENCES micadoapp."UM_USER"("UM_TENANT_ID");


--
-- Name: intervention_processes intervention_processes_intervention_type_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.intervention_processes
    ADD CONSTRAINT intervention_processes_intervention_type_fkey FOREIGN KEY (intervention_type) REFERENCES micadoapp.intervention_types(id);


--
-- Name: intervention_processes intervention_processes_process_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.intervention_processes
    ADD CONSTRAINT intervention_processes_process_id_fkey FOREIGN KEY (process_id) REFERENCES micadoapp.process(id);


--
-- Name: intervention_types intervention_types_fk; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.intervention_types
    ADD CONSTRAINT intervention_types_fk FOREIGN KEY (category_type) REFERENCES micadoapp.intervention_category(id);


--
-- Name: intervention_types_translation intervention_types_translation_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.intervention_types_translation
    ADD CONSTRAINT intervention_types_translation_id_fkey FOREIGN KEY (id) REFERENCES micadoapp.intervention_types(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: intervention_types_translation intervention_types_translation_lang_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.intervention_types_translation
    ADD CONSTRAINT intervention_types_translation_lang_fkey FOREIGN KEY (lang) REFERENCES micadoapp.languages(lang) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: process_topic process_topic_id_process_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process_topic
    ADD CONSTRAINT process_topic_id_process_fkey FOREIGN KEY (id_process) REFERENCES micadoapp.process(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: process_topic process_topic_id_topic_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process_topic
    ADD CONSTRAINT process_topic_id_topic_fkey FOREIGN KEY (id_topic) REFERENCES micadoapp.topic(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: process_translation process_translation_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process_translation
    ADD CONSTRAINT process_translation_id_fkey FOREIGN KEY (id) REFERENCES micadoapp.process(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: process_translation process_translation_lang_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process_translation
    ADD CONSTRAINT process_translation_lang_fkey FOREIGN KEY (lang) REFERENCES micadoapp.languages(lang) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: process_users process_users_id_process_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process_users
    ADD CONSTRAINT process_users_id_process_fkey FOREIGN KEY (id_process) REFERENCES micadoapp.process(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: process_users process_users_id_user_types_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process_users
    ADD CONSTRAINT process_users_id_user_types_fkey FOREIGN KEY (id_user_types) REFERENCES micadoapp.user_types(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ratings ratings_user_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.ratings
    ADD CONSTRAINT ratings_user_id_fkey FOREIGN KEY (user_id) REFERENCES micadoapp."UM_USER"("UM_ID");


--
-- Name: ratings ratings_user_tenant_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.ratings
    ADD CONSTRAINT ratings_user_tenant_fkey FOREIGN KEY (user_tenant) REFERENCES micadoapp."UM_USER"("UM_TENANT_ID");


--
-- Name: step_document step_document_id_document_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.step_document
    ADD CONSTRAINT step_document_id_document_fkey FOREIGN KEY (id_document) REFERENCES micadoapp.document_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: step_document step_document_id_step_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.step_document
    ADD CONSTRAINT step_document_id_step_fkey FOREIGN KEY (id_step) REFERENCES micadoapp.step(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: step step_id_process_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.step
    ADD CONSTRAINT step_id_process_fkey FOREIGN KEY (id_process) REFERENCES micadoapp.process(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: step step_previous_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.step
    ADD CONSTRAINT step_previous_fkey FOREIGN KEY (previous) REFERENCES micadoapp.step(id);


--
-- Name: step_translation step_translation_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.step_translation
    ADD CONSTRAINT step_translation_id_fkey FOREIGN KEY (id) REFERENCES micadoapp.step(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: step_translation step_translation_lang_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.step_translation
    ADD CONSTRAINT step_translation_lang_fkey FOREIGN KEY (lang) REFERENCES micadoapp.languages(lang) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: topic_translation topic_translation_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.topic_translation
    ADD CONSTRAINT topic_translation_id_fkey FOREIGN KEY (id) REFERENCES micadoapp.topic(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: topic_translation topic_translation_lang_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.topic_translation
    ADD CONSTRAINT topic_translation_lang_fkey FOREIGN KEY (lang) REFERENCES micadoapp.languages(lang) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: user_types_translation user_types_translation_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.user_types_translation
    ADD CONSTRAINT user_types_translation_id_fkey FOREIGN KEY (id) REFERENCES micadoapp.user_types(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: user_types_translation user_types_translation_lang_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.user_types_translation
    ADD CONSTRAINT user_types_translation_lang_fkey FOREIGN KEY (lang) REFERENCES micadoapp.languages(lang) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

