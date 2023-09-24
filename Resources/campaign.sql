CREATE TABLE "contacts_new" (
    "contact_id" INT NOT NULL,
    "first_name" VARCHAR NOT NULL,
    "last_name" VARCHAR NOT NULL,
    "email" VARCHAR NOT NULL,
    PRIMARY KEY ("contact_id")
);
CREATE TABLE "category" (
    "category_ids" VARCHAR NOT NULL,
    "category" VARCHAR NOT NULL,
    PRIMARY KEY ("category_ids")
);
CREATE TABLE "subcategory" (
    "subcategory_ids" VARCHAR NOT NULL,
    "subcategory" VARCHAR NOT NULL,
    PRIMARY KEY ("subcategory_ids")
);
CREATE TABLE "campaign_cleaned" (
    "cf_id" INT PRIMARY KEY NOT NULL,
    "contact_id" INT NOT NULL,
    "company_name" VARCHAR NOT NULL,
    "description" VARCHAR NOT NULL,
    "goal" DECIMAL NOT NULL,
    "pledged" DECIMAL NOT NULL,
    "outcome" VARCHAR NOT NULL,
    "backers_count" INT NOT NULL,
    "country" VARCHAR NOT NULL,
    "currency" VARCHAR NOT NULL,
    "launch_date" DATE NOT NULL,
    "end_date" DATE NOT NULL,
    "category_ids" VARCHAR NOT NULL,
    "subcategory_ids" VARCHAR NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts_new(contact_id),
    FOREIGN KEY (category_ids) REFERENCES category(category_ids),
    FOREIGN KEY (subcategory_ids) REFERENCES subcategory(subcategory_ids)
);
SELECT * FROM contacts_new;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign_cleaned;

DROP TABLE contacts_new;
DROP TABLE category CASCADE;
DROP TABLE subcategory CASCADE;
DROP TABLE campaign_cleaned;