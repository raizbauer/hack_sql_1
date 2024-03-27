create table countries(
  id_country serial primary key,
  name varchar(50) not null  
);

create table priorities(
  id_priority serial primary key,
  type_name char(20) not null
);

create table contact_request(
  id_email varchar(50) primary key,
  id_country serial not null,
  id_priority serial not null,
  name varchar(50) not null,
  detail char (50),
  physical_address varchar (250),
  FOREIGN KEY (id_country) REFERENCES countries (id_country),
  FOREIGN KEY (id_priority) REFERENCES priorities (id_priority)
  )
  
  
  insert into countries (id_country, name) 
  values (1, 'fooziman'), (2, 'barziman'), (3, 'goku'), (4, 'vegeta'), (5, 'popo'); 