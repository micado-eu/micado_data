-- public."UM_TENANT" definition

-- Drop table

-- DROP TABLE public."UM_TENANT";

CREATE TABLE public."UM_TENANT" (
	"UM_ID" int4 NOT NULL,
	"UM_DOMAIN_NAME" varchar(255) NOT NULL,
	"UM_EMAIL" varchar(255) NULL,
	"UM_ACTIVE" bool NULL DEFAULT false,
	"UM_CREATED_DATE" timestamp NOT NULL,
	"UM_USER_CONFIG" bytea NULL,
	CONSTRAINT "UM_TENANT_UM_DOMAIN_NAME_key" UNIQUE ("UM_DOMAIN_NAME"),
	CONSTRAINT "UM_TENANT_pkey" PRIMARY KEY ("UM_ID")
);
CREATE INDEX "INDEX_UM_TENANT_UM_DOMAIN_NAME" ON public."UM_TENANT" USING btree ("UM_DOMAIN_NAME");


-- public.document_type definition

-- Drop table

-- DROP TABLE public.document_type;

CREATE TABLE public.document_type (
	id int2 NOT NULL,
	icon text NULL,
	issuer varchar(20) NULL,
	model text NULL,
	CONSTRAINT document_type_pkey PRIMARY KEY (id)
);


-- public.intervention_types definition

-- Drop table

-- DROP TABLE public.intervention_types;

CREATE TABLE public.intervention_types (
	id smallserial NOT NULL,
	CONSTRAINT intervention_types_pkey PRIMARY KEY (id)
);


-- public.languages definition

-- Drop table

-- DROP TABLE public.languages;

CREATE TABLE public.languages (
	lang varchar(10) NOT NULL,
	iso_code varchar(10) NULL,
	"name" varchar(25) NULL,
	CONSTRAINT languages_pkey PRIMARY KEY (lang)
);


-- public.process definition

-- Drop table

-- DROP TABLE public.process;

CREATE TABLE public.process (
	id smallserial NOT NULL,
	link varchar(70) NULL,
	CONSTRAINT process_pkey PRIMARY KEY (id)
);


-- public.topic definition

-- Drop table

-- DROP TABLE public.topic;

CREATE TABLE public.topic (
	id smallserial NOT NULL,
	icon text NULL,
	CONSTRAINT topic_pkey PRIMARY KEY (id)
);


-- public.user_types definition

-- Drop table

-- DROP TABLE public.user_types;

CREATE TABLE public.user_types (
	id smallserial NOT NULL,
	CONSTRAINT user_types_pkey PRIMARY KEY (id)
);


-- public."UM_USER" definition

-- Drop table

-- DROP TABLE public."UM_USER";

CREATE TABLE public."UM_USER" (
	"UM_ID" int4 NOT NULL,
	"UM_USER_NAME" varchar(255) NOT NULL,
	"UM_USER_PASSWORD" varchar(255) NOT NULL,
	"UM_SALT_VALUE" varchar(31) NULL,
	"UM_REQUIRE_CHANGE" bool NULL DEFAULT false,
	"UM_CHANGED_TIME" timestamp NOT NULL,
	"UM_TENANT_ID" int4 NULL DEFAULT 0,
	CONSTRAINT "UM_USER_UM_TENANT_ID_key" UNIQUE ("UM_TENANT_ID"),
	CONSTRAINT "UM_USER_UM_USER_NAME_key" UNIQUE ("UM_USER_NAME"),
	CONSTRAINT "UM_USER_pkey" PRIMARY KEY ("UM_ID"),
	CONSTRAINT "UM_USER_UM_TENANT_ID_fkey" FOREIGN KEY ("UM_TENANT_ID") REFERENCES "UM_TENANT"("UM_ID")
);


-- public."document" definition

-- Drop table

-- DROP TABLE public."document";

CREATE TABLE public."document" (
	id smallserial NOT NULL,
	picture text NULL,
	document_type smallserial NOT NULL,
	user_id int4 NULL,
	user_tenant int4 NULL,
	CONSTRAINT document_document_type_fkey FOREIGN KEY (document_type) REFERENCES document_type(id),
	CONSTRAINT document_user_id_fkey FOREIGN KEY (user_id) REFERENCES "UM_USER"("UM_ID"),
	CONSTRAINT document_user_tenant_fkey FOREIGN KEY (user_tenant) REFERENCES "UM_USER"("UM_TENANT_ID")
);


-- public.document_type_translation definition

-- Drop table

-- DROP TABLE public.document_type_translation;

CREATE TABLE public.document_type_translation (
	id int2 NOT NULL,
	lang varchar(10) NULL,
	"document" varchar(20) NULL,
	description text NULL,
	CONSTRAINT document_type_translation_id_fkey FOREIGN KEY (id) REFERENCES document_type(id) ON UPDATE CASCADE ON DELETE CASCADE
);


-- public.glossary definition

-- Drop table

-- DROP TABLE public.glossary;

CREATE TABLE public.glossary (
	id smallserial NOT NULL,
	lang varchar(10) NOT NULL,
	title varchar(20) NULL,
	description text NULL,
	CONSTRAINT glossary_lang_fkey FOREIGN KEY (lang) REFERENCES languages(lang) ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE UNIQUE INDEX id_glossary_title ON public.glossary USING btree (title);


-- public.intervention_processes definition

-- Drop table

-- DROP TABLE public.intervention_processes;

CREATE TABLE public.intervention_processes (
	intervention_type smallserial NOT NULL,
	process_id smallserial NOT NULL,
	CONSTRAINT intervention_processes_intervention_type_fkey FOREIGN KEY (intervention_type) REFERENCES intervention_types(id),
	CONSTRAINT intervention_processes_process_id_fkey FOREIGN KEY (process_id) REFERENCES process(id)
);


-- public.intervention_types_translation definition

-- Drop table

-- DROP TABLE public.intervention_types_translation;

CREATE TABLE public.intervention_types_translation (
	id smallserial NOT NULL,
	lang varchar(10) NULL,
	intervention_title varchar(20) NULL,
	description text NULL,
	CONSTRAINT intervention_types_translation_id_fkey FOREIGN KEY (id) REFERENCES intervention_types(id) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT intervention_types_translation_lang_fkey FOREIGN KEY (lang) REFERENCES languages(lang) ON UPDATE CASCADE ON DELETE CASCADE
);


-- public.process_topic definition

-- Drop table

-- DROP TABLE public.process_topic;

CREATE TABLE public.process_topic (
	id_process smallserial NOT NULL,
	id_topic smallserial NOT NULL,
	CONSTRAINT process_topic_id_process_fkey FOREIGN KEY (id_process) REFERENCES process(id) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT process_topic_id_topic_fkey FOREIGN KEY (id_topic) REFERENCES topic(id) ON UPDATE CASCADE ON DELETE CASCADE
);


-- public.process_translation definition

-- Drop table

-- DROP TABLE public.process_translation;

CREATE TABLE public.process_translation (
	id smallserial NOT NULL,
	lang varchar(10) NULL,
	process varchar(20) NULL,
	description text NULL,
	CONSTRAINT process_translation_id_fkey FOREIGN KEY (id) REFERENCES process(id) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT process_translation_lang_fkey FOREIGN KEY (lang) REFERENCES languages(lang) ON UPDATE CASCADE ON DELETE CASCADE
);


-- public.process_users definition

-- Drop table

-- DROP TABLE public.process_users;

CREATE TABLE public.process_users (
	id_process smallserial NOT NULL,
	id_user_types smallserial NOT NULL,
	CONSTRAINT process_users_id_process_fkey FOREIGN KEY (id_process) REFERENCES process(id) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT process_users_id_user_types_fkey FOREIGN KEY (id_user_types) REFERENCES user_types(id) ON UPDATE CASCADE ON DELETE CASCADE
);


-- public.ratings definition

-- Drop table

-- DROP TABLE public.ratings;

CREATE TABLE public.ratings (
	user_id int4 NULL,
	user_tenant int4 NULL,
	content_id smallserial NOT NULL,
	content_type int4 NULL,
	value int4 NULL,
	CONSTRAINT ratings_user_id_fkey FOREIGN KEY (user_id) REFERENCES "UM_USER"("UM_ID"),
	CONSTRAINT ratings_user_tenant_fkey FOREIGN KEY (user_tenant) REFERENCES "UM_USER"("UM_TENANT_ID")
);


-- public.step definition

-- Drop table

-- DROP TABLE public.step;

CREATE TABLE public.step (
	id int2 NOT NULL,
	previous int2 NOT NULL,
	"cost" money NULL,
	location_specific bool NULL,
	"location" varchar(100) NULL,
	location_lon float8 NULL,
	location_lat float8 NULL,
	id_process int2 NOT NULL,
	CONSTRAINT step_pkey PRIMARY KEY (id),
	CONSTRAINT step_id_process_fkey FOREIGN KEY (id_process) REFERENCES process(id) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT step_previous_fkey FOREIGN KEY (previous) REFERENCES step(id)
);


-- public.step_document definition

-- Drop table

-- DROP TABLE public.step_document;

CREATE TABLE public.step_document (
	id_step int2 NOT NULL,
	id_document int2 NOT NULL,
	is_out bool NOT NULL,
	"cost" money NULL,
	CONSTRAINT step_document_id_document_fkey FOREIGN KEY (id_document) REFERENCES document_type(id) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT step_document_id_step_fkey FOREIGN KEY (id_step) REFERENCES step(id) ON UPDATE CASCADE ON DELETE CASCADE
);


-- public.step_translation definition

-- Drop table

-- DROP TABLE public.step_translation;

CREATE TABLE public.step_translation (
	id int2 NOT NULL,
	lang varchar(10) NULL,
	step varchar(25) NULL,
	description text NULL,
	CONSTRAINT step_translation_id_fkey FOREIGN KEY (id) REFERENCES step(id) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT step_translation_lang_fkey FOREIGN KEY (lang) REFERENCES languages(lang) ON UPDATE CASCADE ON DELETE CASCADE
);


-- public.topic_translation definition

-- Drop table

-- DROP TABLE public.topic_translation;

CREATE TABLE public.topic_translation (
	id smallserial NOT NULL,
	lang varchar(10) NULL,
	topic varchar(20) NULL,
	CONSTRAINT topic_translation_id_fkey FOREIGN KEY (id) REFERENCES topic(id) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT topic_translation_lang_fkey FOREIGN KEY (lang) REFERENCES languages(lang) ON UPDATE CASCADE ON DELETE CASCADE
);


-- public.user_intervention_list definition

-- Drop table

-- DROP TABLE public.user_intervention_list;

CREATE TABLE public.user_intervention_list (
	id smallserial NOT NULL,
	title varchar(30) NULL,
	creation_date timestamp NULL,
	user_id int4 NULL,
	user_tenant int4 NULL,
	CONSTRAINT user_intervention_list_pkey PRIMARY KEY (id),
	CONSTRAINT user_intervention_list_user_id_fkey FOREIGN KEY (user_id) REFERENCES "UM_USER"("UM_ID"),
	CONSTRAINT user_intervention_list_user_tenant_fkey FOREIGN KEY (user_tenant) REFERENCES "UM_USER"("UM_TENANT_ID")
);


-- public.user_intervention_list_interventions definition

-- Drop table

-- DROP TABLE public.user_intervention_list_interventions;

CREATE TABLE public.user_intervention_list_interventions (
	list_id smallserial NOT NULL,
	intervention_type smallserial NOT NULL,
	validation_date timestamp NULL,
	completed bool NULL,
	validating_user_id int4 NULL,
	validating_user_tenant int4 NULL,
	CONSTRAINT user_intervention_list_intervention_validating_user_tenant_fkey FOREIGN KEY (validating_user_tenant) REFERENCES "UM_USER"("UM_TENANT_ID"),
	CONSTRAINT user_intervention_list_interventions_intervention_type_fkey FOREIGN KEY (intervention_type) REFERENCES intervention_types(id),
	CONSTRAINT user_intervention_list_interventions_list_id_fkey FOREIGN KEY (list_id) REFERENCES user_intervention_list(id),
	CONSTRAINT user_intervention_list_interventions_validating_user_id_fkey FOREIGN KEY (validating_user_id) REFERENCES "UM_USER"("UM_ID")
);


-- public.user_types_translation definition

-- Drop table

-- DROP TABLE public.user_types_translation;

CREATE TABLE public.user_types_translation (
	id smallserial NOT NULL,
	lang varchar(10) NOT NULL,
	user_type varchar(20) NULL,
	description text NULL,
	CONSTRAINT user_types_translation_id_fkey FOREIGN KEY (id) REFERENCES user_types(id) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT user_types_translation_lang_fkey FOREIGN KEY (lang) REFERENCES languages(lang) ON UPDATE CASCADE ON DELETE CASCADE
);
