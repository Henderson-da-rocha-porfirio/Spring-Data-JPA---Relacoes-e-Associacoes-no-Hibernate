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


// Os passos abaixo podem ser levados em conta, se, e somente se, quiser recomeção os ID's a sua posição inicial.
DROP TABLE cliente
DROP TABLE numero_telefone

ALTER SEQUENCE cliente_id_seq RESTART WITH 1

ALTER SEQUENCE numero_telefone_id_seq RESTART WITH 1

UPDATE cliente SET id=nextval('cliente_id_seq');
UPDATE numero_telefone SET id=nextval('numero_telefone_id_seq');

SELECT * FROM information_schema.sequences
