create table cliente(
id SERIAL PRIMARY KEY,
name varchar(20)
)

create table numero_telefone(
id SERIAL PRIMARY KEY,
cliente_id int,
number varchar(20),
type varchar(20),
FOREIGN KEY (cliente_id)
REFERENCES cliente(id)
)

select * from cliente

select * from numero_telefone
