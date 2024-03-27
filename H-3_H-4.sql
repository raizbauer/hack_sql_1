CREATE TABLE countries(
  id_country serial PRIMARY KEY,
  name varchar(50) NOT NULL  
);

CREATE TABLE priorities(
  id_priority serial PRIMARY KEY,
  type_name char(20) NOT NULL
);

CREATE TABLE contact_request(
  id_email varchar(50) PRIMARY KEY,
  id_country serial NOT NULL,
  id_priority serial NOT NULL,
  name varchar(50) NOT NULL,
  detail varchar (255) NOT NULL,
  physical_address varchar (255) NOT NULL,
  FOREIGN KEY (id_country) REFERENCES countries (id_country),
  FOREIGN KEY (id_priority) REFERENCES priorities (id_priority)
);
  
-- ####### H4 part ######## --  

INSERT INTO countries (id_country, name) 
  VALUES (1, 'new york'), (2, 'california'), (3, 'boston'), (4, 'chicago'), (5, 'miami');
  
INSERT INTO priorities (id_priority, type_name) 
  VALUES (1, 'VIP PRIORITY'), (2, 'HIGH PRIORITY'), (3, 'MID PRIORITY'), (4, 'COMMON PRIORITY');

INSERT INTO contact_request (id_email, id_country, id_priority, name, detail, physical_address)
VALUES ('fooziman@correo.com', 1, 1, 'fooziman', 'Solicitud de soporte técnico', 'Calle Principal, Edificio Centro'), 
('barziman@correo.com', 2, 2, 'barziman', 'Sistema no responde', 'Avenida Universidad No. 56'),
('goku@correo.com', 3, 3, 'goku', 'Fallas de impresion', 'Avenida Universidad No. 56'),
('vegeta@correo.com', 4, 4, 'vegeta', 'Discrepancia de datos', 'Avenida calicanto, Edificio Este'),
('popo@correo.com', 5, 2, 'popo', 'No hay conexion', 'Avenida reyes,  No. 1');