create table programador(
id Serial PRIMARY KEY,
name varchar(20),
salary int
)

create table projeto(
id Serial PRIMARY KEY,
name varchar(20)
)

create table programadores_projetos(
programador_id int,
projeto_id int,
FOREIGN KEY (programador_id)
REFERENCES programador(id),
FOREIGN KEY (projeto_id)
REFERENCES projeto(id)
)

select * from programador
select * from projeto
select * from programadores_projetos
