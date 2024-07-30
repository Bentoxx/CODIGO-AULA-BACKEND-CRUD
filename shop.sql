create database shop;

CREATE TABLE "categories" (
  "id" serial NOT NULL,
  "description" text NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT now(),
  PRIMARY KEY ("id")
);

CREATE TABLE "products" (
  "id" serial NOT NULL,
  "name" text NOT NULL,
  "description" text,
  "price" int4 NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT now(),
  "category_id" int4 NOT NULL,
  PRIMARY KEY ("id"),
  CONSTRAINT "products_categories_id_fk" FOREIGN KEY ("category_id") REFERENCES "categories" ("id")
);