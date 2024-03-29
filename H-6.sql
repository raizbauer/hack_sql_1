-- ################### H6 ################### --

INSERT INTO DISCOUNTS (id_discount, status, percentage) VALUES (1, TRUE, 0.10);
INSERT INTO DISCOUNTS (id_discount, status, percentage) VALUES (2, FALSE, 0.05);
INSERT INTO DISCOUNTS (id_discount, status, percentage) VALUES (3, TRUE, 0.15);

INSERT INTO TAXES (id_tax, percentage) VALUES (1, 0.12);
INSERT INTO TAXES (id_tax, percentage) VALUES (2, 0.08);
INSERT INTO TAXES (id_tax, percentage) VALUES (3, 0.16);

INSERT INTO ROLES (id_role, name) VALUES (1, 'Administrador');
INSERT INTO ROLES (id_role, name) VALUES (2, 'Cliente');
INSERT INTO ROLES (id_role, name) VALUES (3, 'Vendedor');

INSERT INTO COUNTRIES (id_country, name) VALUES (1, 'Venezuela');
INSERT INTO COUNTRIES (id_country, name) VALUES (2, 'Colombia');
INSERT INTO COUNTRIES (id_country, name) VALUES (3, 'Estados Unidos');

INSERT INTO INVOICE_STATUS (status) VALUES (TRUE);
INSERT INTO INVOICE_STATUS (status) VALUES (FALSE);

INSERT INTO PAYMENTS (id_payment, type) VALUES (1, 'Efectivo');
INSERT INTO PAYMENTS (id_payment, type) VALUES (2, 'Tarjeta de Crédito');
INSERT INTO PAYMENTS (id_payment, type) VALUES (3, 'Débito');

INSERT INTO OFFERS (id_offer, status) VALUES (1, TRUE);
INSERT INTO OFFERS (id_offer, status) VALUES (2, FALSE);


INSERT INTO PRODUCTS (id_discount, id_offer, id_tax, name, details, minimum_stock, maximum_stock, current_stock, price, price_with_tax)
VALUES (1, 1, 1, 'Camiseta', 'Algodón 100%', 5, 10, 7, 20.00, 22.40);
INSERT INTO PRODUCTS (id_discount, id_offer, id_tax, name, details, minimum_stock, maximum_stock, current_stock, price, price_with_tax)
VALUES (2, 2, 2, 'Jeans', 'Negros clasicos', 3, 8, 5, 35.00, 37.80);
INSERT INTO PRODUCTS (id_discount, id_offer, id_tax, name, details, minimum_stock, maximum_stock, current_stock, price, price_with_tax)
VALUES (3, 2, 1, 'Boxers', 'Largos', 2, 6, 4, 50.00, 56.00);