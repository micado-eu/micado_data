CREATE TYPE "products_status" AS ENUM (
  'out_of_stock',
  'in_stock',
  'running_low'
);

CREATE TYPE "housing_types" AS ENUM (
  'shared_apartment',
  'house',
  'social_housing'
);

CREATE TYPE "housing_status" AS ENUM (
  'seeking',
  'registered',
  'other'
);

CREATE TYPE "health_status" AS ENUM (
  'public_insurance',
  'private_insurance',
  'social_welfare',
  'not_insured'
);

CREATE TYPE "education_status" AS ENUM (
  'primary_school',
  'middle_school',
  'high_school',
  'vocational_school',
  'graduate_school',
  'post_graduate_school'
);

CREATE TYPE "labour_status" AS ENUM (
  'full_time_employed',
  'part_time_employed',
  'work_school',
  'seeking',
  'underage'
);

CREATE TABLE "users" (
  "id" SERIAL PRIMARY KEY,
  "full_name" varchar,
  "created_at" timestamp,
  "country_code" int,
  "facebook" email,
  "twitter" email,
  "age" int NOT NULL,
  "housing_id" int NOT NULL,
  "education_id" int NOT NULL,
  "transversal_id" int NOT NULL,
  "health_id" int NOT NULL,
  "labour_id" int NOT NULL
);

CREATE TABLE "housing" (
  "id" int PRIMARY KEY,
  "status" housing_status,
  "address" varchar,
  "housing_type" housing_types
);

CREATE TABLE "education" (
  "id" int PRIMARY KEY,
  "status" education_status
);

CREATE TABLE "transversal" (
  "id" int PRIMARY KEY,
  "status" transversal_status
);

CREATE TABLE "health" (
  "id" int PRIMARY KEY,
  "status" housing_status
);

CREATE TABLE "labour" (
  "id" int PRIMARY KEY,
  "status" labour_status
);

CREATE TABLE "world_countries" (
  "country_code" int PRIMARY KEY,
  "name" varchar,
  "region" varchar
);

ALTER TABLE "users" ADD FOREIGN KEY ("country_code") REFERENCES "world_countries" ("country_code");

ALTER TABLE "health" ADD FOREIGN KEY ("id") REFERENCES "users" ("health_id");

ALTER TABLE "transversal" ADD FOREIGN KEY ("id") REFERENCES "users" ("transversal_id");

ALTER TABLE "education" ADD FOREIGN KEY ("id") REFERENCES "users" ("education_id");

ALTER TABLE "labour" ADD FOREIGN KEY ("id") REFERENCES "users" ("labour_id");

ALTER TABLE "housing" ADD FOREIGN KEY ("id") REFERENCES "users" ("housing_id");
