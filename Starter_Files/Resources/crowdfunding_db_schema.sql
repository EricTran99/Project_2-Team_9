CREATE DATABASE "crowdfunding_db";

CREATE TABLE "contacts" (
    "contact_id" INTEGER NOT NULL PRIMARY KEY,
    "first_name" VARCHAR(50),
    "last_name" VARCHAR(50),
    "email" VARCHAR(100)
);

CREATE TABLE "category" (
    "category_id" VARCHAR(5) NOT NULL PRIMARY KEY,
    "category" VARCHAR(20)
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(10) NOT NULL PRIMARY KEY,
    "subcategory" VARCHAR(20)
);

CREATE TABLE "campaign" (
    "cf_id" INTEGER NOT NULL PRIMARY KEY,
    "contact_id" INTEGER NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
    "company_name" VARCHAR(100),
    "description" VARCHAR(100),
    "goal" REAL,
    "pledged" REAL,
    "outcome" VARCHAR(20),
    "backers_count" INTEGER,
    "country" VARCHAR(5),
    "currency" VARCHAR(5),
    "launched_date" DATE,
    "end_date" DATE,
    "category_id" VARCHAR(6),
	FOREIGN KEY (category_id) REFERENCES category (category_id),
    "subcategory_id" VARCHAR(10),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);