-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "contacts" (
    "contact_id" INT(4)   NOT NULL,
    "first_name" VARCHAR(30)   NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "email" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "campaingn" (
    "cf_id" INT(5)   NOT NULL,
    "contact_id" INT($)   NOT NULL,
    "company_name" VARCHAR(30)   NOT NULL,
    "description" VARCHAR(90)   NOT NULL,
    "goal" INT   NOT NULL,
    "pledged" INT   NOT NULL,
    "outcome" VARCHAR(10)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(2)   NOT NULL,
    "currency" VARCHAR(3)   NOT NULL,
    "launched_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCHAR(4)   NOT NULL,
    "subcategory_id" VARCHAR(8)   NOT NULL,
    CONSTRAINT "pk_campaingn" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "category" (
    "category_id" VARCHAR(4)   NOT NULL,
    "category_name" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(8)   NOT NULL,
    "subcategory_name" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

ALTER TABLE "campaingn" ADD CONSTRAINT "fk_campaingn_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaingn" ADD CONSTRAINT "fk_campaingn_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaingn" ADD CONSTRAINT "fk_campaingn_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");

