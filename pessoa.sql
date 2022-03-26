create table pessoa(
id Serial PRIMARY KEY,
first_name varchar(20),
last_name varchar(20),
age int
)

create table licenca(
id Serial PRIMARY KEY,
type varchar(20),
valid_from date,
valid_to date,
pessoa_id int,
FOREIGN KEY (pessoa_id)
REFERENCES pessoa(id)
)


select * from pessoa

select * from licenca
