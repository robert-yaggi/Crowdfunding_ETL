-- Project 2: Table Schema for Crowd Funding DB 


-- Drop the table if it exists
DROP TABLE if exists category ;

-- Create the category table
CREATE TABLE category(
	category_id VARCHAR(40) PRIMARY KEY,
	category VARCHAR(40) NOT NULL
); 

-- Drop the table if it exists
DROP TABLE if exists subcategory;

-- Create the subcategory table
CREATE TABLE subcategory(
	subcategory_id VARCHAR(40) PRIMARY KEY,
	subcategory VARCHAR(40) NOT NULL
);

-- Drop the table if it exists
DROP TABLE if exists contacts;

-- Create the contacts table
CREATE TABLE contacts(
	contact_id int PRIMARY KEY,
	first_name VARCHAR(40) NOT NULL,
	last_name VARCHAR(40) NOT NULL,
	email VARCHAR(60) NOT NULL
);

-- Drop the table if it exists
DROP TABLE if exists campaign;

-- Create the campaign table
CREATE TABLE campaign(
	cf_id int PRIMARY KEY,
	contact_id int NOT NULL,
	company_name VARCHAR(40) NOT NULL,
	description VARCHAR (400) NOT NULL,
	goal NUMERIC(10,2) NOT NULL,
	pledged NUMERIC(10,2) NOT NULL,
	outcome VARCHAR (40) NOT NULL,
	backers_count int NOT NULL,
	country VARCHAR (40) NOT NULL,
	currency VARCHAR (40) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NULL,
	category_id VARCHAR (40) NOT NULL,
	subcategory_id VARCHAR (40) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id),
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id)
);

SELECT *
FROM contacts;

SELECT *
FROM category;

SELECT *
FROM subcategory;

SELECT *
FROM campaign; 
