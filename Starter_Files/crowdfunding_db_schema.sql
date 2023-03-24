CREATE TABLE contacts (
	contact_id INT NOT NULL PRIMARY KEY,
	first_name VARCHAR (100),
	last_name VARCHAR (100),
	email VARCHAR (300)
);



CREATE TABLE Subcategory ( 
	subcategory_id VARCHAR(50) PRIMARY KEY,
	subcategory VARCHAR(100)
);



CREATE TABLE category ( 
	category_id VARCHAR(50)PRIMARY KEY,
	category VARCHAR(100)
);


CREATE TABLE campaign ( 
	cf_id INT PRIMARY KEY,
	contact_id INT REFERENCES Contacts.contact_id
	company_name VARCHAR(100)
	description VARCHAR(100)
	goal FLOAT
	pledged FLOAT
	outcome VARCHAR(50)
	backers_count INT
	country VARCHAR(10)
	currency VARCHAR(10)
	launch_date DATE
	end_date DATE
	category_id VARCHAR(50) REFERENCES Category.category_id
	subcategory_id VARCHAR(50) REFERENCES Subcategory.subcategory_id