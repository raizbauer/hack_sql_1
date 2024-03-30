CREATE TABLE DISCOUNTS (
  id_discount SERIAL PRIMARY KEY,
  status BOOLEAN,
  percentage FLOAT
);

CREATE TABLE TAXES (
  id_tax SERIAL PRIMARY KEY,
  percentage FLOAT
);

CREATE TABLE ROLES (
  id_role SERIAL PRIMARY KEY,
  name VARCHAR (50)
);

CREATE TABLE COUNTRIES (
  id_country SERIAL PRIMARY KEY,
  name VARCHAR (50)
);

CREATE TABLE INVOICE_STATUS (
  id_invoice_status SERIAL PRIMARY KEY,
  status BOOLEAN
);

CREATE TABLE PAYMENTS (
  id_payment SERIAL PRIMARY KEY,
  type VARCHAR (50)
);

CREATE TABLE OFFERS (
  id_offer SERIAL PRIMARY KEY,
  status BOOLEAN
);

CREATE TABLE PRODUCTS (
  id_product SERIAL PRIMARY KEY,
  id_discount SERIAL NOT NULL,
  id_offer SERIAL NOT NULL,
  id_tax SERIAL NOT NULL,
  name VARCHAR (50) NOT NULL,
  details VARCHAR (50) NOT NULL,
  minimum_stock INT NOT NULL,
  maximum_stock INT NOT NULL,
  current_stock INT NOT NULL,
  price FLOAT NOT NULL,
  price_with_tax FLOAT NOT NULL,
  FOREIGN KEY (id_discount) REFERENCES DISCOUNTS (id_discount),
  FOREIGN KEY (id_offer) REFERENCES OFFERS (id_offer),
  FOREIGN KEY (id_tax) REFERENCES TAXES (id_tax)
);

CREATE TABLE CUSTOMERS (
  email VARCHAR (150) PRIMARY KEY,
  id_country SERIAL NOT NULL,
  id_role SERIAL NOT NULL,
  name VARCHAR (50) NOT NULL,
  age INT NOT NULL,
  password VARCHAR (255) NOT NULL,
  physical_address VARCHAR (255) NOT NULL,
  FOREIGN KEY (id_country) REFERENCES COUNTRIES (id_country),
  FOREIGN KEY (id_role) REFERENCES ROLES (id_role)
);

CREATE TABLE PRODUCTS_CUSTOMERS (
  id_product SERIAL NOT NULL,
  id_costumer VARCHAR NOT NULL,
  FOREIGN KEY (id_costumer) REFERENCES CUSTOMERS (email),
  FOREIGN KEY (id_product) REFERENCES PRODUCTS (id_product)
);

CREATE TABLE INVOICES (
  id_invoice SERIAL PRIMARY KEY,
  id_costumer VARCHAR NOT NULL,
  id_payment SERIAL NOT NULL,
  id_invoice_status SERIAL NOT NULL,
  date DATE NOT NULL,
  total_to_pay FLOAT,
  FOREIGN KEY (id_invoice) REFERENCES INVOICES (id_invoice),
  FOREIGN KEY (id_costumer) REFERENCES CUSTOMERS (email) ON DELETE CASCADE,
  FOREIGN KEY (id_payment) REFERENCES PAYMENTS (id_payment),
  FOREIGN KEY (id_invoice_status) REFERENCES INVOICE_STATUS (id_invoice_status)
);

CREATE TABLE ORDERS (
  id_order SERIAL PRIMARY KEY,
  id_invoice SERIAL NOT NULL,
  id_product SERIAL NOT NULL,
  detail VARCHAR (255) NOT NULL,
  amount INT NOT NULL,
  price FLOAT NOT NULL,
  FOREIGN KEY (id_invoice) REFERENCES INVOICES (id_invoice) ON DELETE CASCADE,
  FOREIGN KEY (id_product) REFERENCES PRODUCTS (id_product)
);