-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/55hvq6
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

DROP TABLE make CASCADE;
DROP TABLE avg_price_2015 CASCADE;
DROP TABLE avg_price_2016 CASCADE;
DROP TABLE avg_price_2017 CASCADE;


CREATE TABLE "make" (
   "id" SERIAL,
   "make" VARCHAR   NOT NULL,
   CONSTRAINT "pk_make" PRIMARY KEY (
       "make"
    )
);

CREATE TABLE "avg_price_2015" (
   "id" SERIAL,
   "make" VARCHAR   NOT NULL,
   "year" INTEGER   NOT NULL,
   "price" INTEGER   NOT NULL,
   CONSTRAINT "pk_avg_price_2015" PRIMARY KEY (
       "id"
    )
);

CREATE TABLE "avg_price_2016" (
   "id" SERIAL,
   "make" VARCHAR   NOT NULL,
   "year" INTEGER   NOT NULL,
   "price" INTEGER   NOT NULL,
   CONSTRAINT "pk_avg_price_2016" PRIMARY KEY (
       "id"
    )
);

CREATE TABLE "avg_price_2017" (
   "id" SERIAL,
   "make" VARCHAR   NOT NULL,
   "year" INTEGER   NOT NULL,
   "price" INTEGER   NOT NULL,
   CONSTRAINT "pk_avg_price_2017" PRIMARY KEY (
       "id"
    )
);

ALTER TABLE "avg_price_2015" ADD CONSTRAINT "fk_avg_price_2015_make" FOREIGN KEY("make")
REFERENCES "make" ("make");

ALTER TABLE "avg_price_2016" ADD CONSTRAINT "fk_avg_price_2016_make" FOREIGN KEY("make")
REFERENCES "make" ("make");

ALTER TABLE "avg_price_2017" ADD CONSTRAINT "fk_avg_price_2017_make" FOREIGN KEY("make")
REFERENCES "make" ("make");



