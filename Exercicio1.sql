 CREATE DATABASE rh_empresa;
 
  USE rh_empresa;
  CREATE TABLE rh_empresa(
    id bigint auto_increment,
	nome varchar(255) not null,
    cargo varchar(255) not null,
	idade int,
	salario decimal not null,
    PRIMARY KEY (id)
);

INSERT INTO rh_empresa(nome, cargo, idade, salario) 
values ("Ricardo Moreira Silva", "operador de máquina", 28, 1350);
INSERT INTO rh_empresa(nome, cargo, idade, salario)
values ("Marcelo Pontes Silva", "operador de máquina", 32, 1350);
INSERT INTO rh_empresa(nome, cargo, idade, salario)
values ("João Adalberto Ferreira", "operador de máquina", 50, 1350);
INSERT INTO rh_empresa(nome, cargo, idade, salario)
values ("Anestor Castilho Braga", "operador de máquina", 34, 1350);
INSERT INTO rh_empresa(nome, cargo, idade, salario)
values ("Felipe Valença Pires", "operador de máquina", 29, 1350);
INSERT INTO rh_empresa(nome, cargo, idade, salario)
values ("Renato Julio Adamires", "operador de máquina", 34, 1350);

UPDATE rh_empresa SET salario = 5.00 WHERE id = 1;

UPDATE rh_empresa SET salario = 2000 WHERE id = 1;

SELECT * FROM rh_empresa;

UPDATE rh_empresa SET salario = 2000 WHERE id = 6;

DELETE FROM rh_empresa WHERE id = 18;

SELECT * FROM rh_empresa;

UPDATE rh_empresa SET preco = 2000 WHERE id = 1;

SELECT * FROM rh_empresa;

UPDATE rh_empresa SET preco = 2500 WHERE id = 1;

SELECT * FROM rh_empresa;

UPDATE rh_empresa SET salario = 2500 WHERE id = 1;
SELECT * FROM rh_empresa;

UPDATE rh_empresa SET salario = 2500 WHERE id = 6;

SELECT * FROM rh_empresa;