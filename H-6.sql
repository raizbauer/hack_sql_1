-- ################### H6 ################### --

INSERT INTO DISCOUNTS (id_discount, status, percentage) VALUES (1, TRUE, 0.10);
INSERT INTO DISCOUNTS (id_discount, status, percentage) VALUES (2, FALSE, 0.05);
INSERT INTO DISCOUNTS (id_discount, status, percentage) VALUES (3, TRUE, 0.15);

SELECT * FROM DISCOUNTS;

INSERT INTO TAXES (id_tax, percentage) VALUES (1, 0.12);
INSERT INTO TAXES (id_tax, percentage) VALUES (2, 0.08);
INSERT INTO TAXES (id_tax, percentage) VALUES (3, 0.16);

SELECT * FROM TAXES;

INSERT INTO ROLES (id_role, name) VALUES (1, 'Administrador');
INSERT INTO ROLES (id_role, name) VALUES (2, 'Cliente');
INSERT INTO ROLES (id_role, name) VALUES (3, 'Vendedor');

SELECT * FROM ROLES;

INSERT INTO COUNTRIES (id_country, name) VALUES (1, 'Venezuela');
INSERT INTO COUNTRIES (id_country, name) VALUES (2, 'Colombia');
INSERT INTO COUNTRIES (id_country, name) VALUES (3, 'Estados Unidos');

SELECT * FROM COUNTRIES;

INSERT INTO INVOICE_STATUS (status) VALUES (TRUE);
INSERT INTO INVOICE_STATUS (status) VALUES (FALSE);

SELECT * FROM INVOICE_STATUS;

INSERT INTO PAYMENTS (id_payment, type) VALUES (1, 'Efectivo');
INSERT INTO PAYMENTS (id_payment, type) VALUES (2, 'Tarjeta de Crédito');
INSERT INTO PAYMENTS (id_payment, type) VALUES (3, 'Débito');

SELECT * FROM PAYMENTS;

INSERT INTO OFFERS (id_offer, status) VALUES (1, TRUE);
INSERT INTO OFFERS (id_offer, status) VALUES (2, FALSE);

SELECT * FROM OFFERS;

INSERT INTO PRODUCTS (id_discount, id_offer, id_tax, name, details, minimum_stock, maximum_stock, current_stock, price, price_with_tax)
VALUES (1, 1, 1, 'Camiseta', 'Algodón 100%', 5, 10, 7, 20.00, 22.40);
INSERT INTO PRODUCTS (id_discount, id_offer, id_tax, name, details, minimum_stock, maximum_stock, current_stock, price, price_with_tax)
VALUES (2, 2, 2, 'Jeans', 'Negros clasicos', 3, 8, 5, 35.00, 37.80);
INSERT INTO PRODUCTS (id_discount, id_offer, id_tax, name, details, minimum_stock, maximum_stock, current_stock, price, price_with_tax)
VALUES (3, 2, 1, 'Boxers', 'Largos', 2, 6, 4, 50.00, 56.00);

SELECT * FROM PRODUCTS;

INSERT INTO CUSTOMERS (email, id_country, id_role, name, age, password, physical_address)
VALUES ('goku@correo.com', 1, 2, 'goku', 30, 'GohaGotenMilk123', 'Calle Principal, Edificio XYZ');
INSERT INTO CUSTOMERS (email, id_country, id_role, name, age, password, physical_address)
VALUES ('vegeta@correo.com', 2, 2, 'vegeta', 25, 'TeOdioKakarotox100Pre', 'Avenida CorpCasule, Torre A');
INSERT INTO CUSTOMERS (email, id_country, id_role, name, age, password, physical_address)
VALUES ('misterpopo@correo.com', 3, 2, 'popo', 25, 'miclaveSecretaAunMasSecreta', 'Avenida del kaio sama, Torre karin');

SELECT * FROM CUSTOMERS;


--------------------- INVOICES --------------------------

INSERT INTO INVOICES (id_costumer, id_payment, id_invoice_status, date, total_to_pay)
VALUES ('goku@correo.com', 1, 1, '2024-03-29', 0);
INSERT INTO ORDERS (id_invoice, id_product, detail, amount, price)
VALUES (1, 1, 'Camiseta algodon 100%', 2, 20.00);

INSERT INTO INVOICES (id_costumer, id_payment, id_invoice_status, date, total_to_pay)
VALUES ('vegeta@correo.com', 2, 1, '2024-03-29', 0);
INSERT INTO ORDERS (id_invoice, id_product, detail, amount, price)
VALUES (2, 2, 'Jeans negros clasicos', 1, 35.00);

INSERT INTO INVOICES (id_costumer, id_payment, id_invoice_status, date, total_to_pay)
VALUES ('misterpopo@correo.com', 3, 1, '2024-03-29', 0);
INSERT INTO ORDERS (id_invoice, id_product, detail, amount, price)
VALUES (3, 3, 'Boxers largos', 1, 50.00);

SELECT * FROM INVOICES;

-------------------------- DELETE USER --------------------------
DELETE FROM CUSTOMERS WHERE email = 'goku@correo.com';

SELECT * FROM CUSTOMERS;

-------------------------- UPDATE --------------------------

UPDATE CUSTOMERS SET age = 40 WHERE email = 'misterpopo@correo.com';

SELECT * FROM CUSTOMERS;

UPDATE TAXES SET percentage = 0.08 WHERE id_tax = 1;
UPDATE TAXES SET percentage = 0.05 WHERE id_tax = 2;
UPDATE TAXES SET percentage = 0.12 WHERE id_tax = 3;

SELECT * FROM TAXES;

UPDATE PRODUCTS SET price = 21.00 WHERE id_product = 1;
UPDATE PRODUCTS SET price = 32.00 WHERE id_product = 2;
UPDATE PRODUCTS SET price = 45.00 WHERE id_product = 3;

SELECT * FROM PRODUCTS;