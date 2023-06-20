   CREATE DATABASE db_generation_game_online;
   
   USE db_generation_game_online;
   
   create table tb__classes(
   id bigint auto_increment,
   nome_personagem varchar(255),
   estilo_jogo varchar(255)not null,
   PRIMARY KEY (id)
);
INSERT INTO tb_classes (nome_personagem,estilo_jogo) values ("Oya", "Guerra");
INSERT INTO tb_classes (nome_personagem,estilo_jogo) values ("Oxum", "Aventura");
INSERT INTO tb_classes (nome_personagem,estilo_jogo) values ("Caboclo", "Caça");

SELECT * FROM tb_classes;

    CREATE TABLE tb_personagens (
	id bigint auto_increment,
    primary key (id),
    nome varchar(255) not null,
    nivel int,
    poder_ataque int,
    poder_defesa int,
    classe_id bigint,
	foreign key (classe_id) REFERENCES tb_classes(id)
    );
    
INSERT INTO tb_personagens(habilidade, nivel, nome_personagem, poder_ataque, poder_defesa, classes_id)
values ("fogo", "senior","oya",50,50,1);
INSERT INTO tb_personagens(habilidade, nivel, nome_personagem, poder_ataque, poder_defesa, classes_id) 
values ("água", "senior", "oxum",10500,7000,3);
INSERT INTO tb_personagens(habilidade, nivel, nome_personagem, poder_ataque, poder_defesa, classes_id) 
values ("fogo", "senior", "xango",1700,1200,2);
INSERT INTO tb_personagens(habilidade, nivel, nome_personagem, poder_ataque, poder_defesa, classes_id)   
values ("flecha", "pleno", "caboclo",17000,14000,2);
INSERT INTO tb_personagens(habilidade, nivel, nome_personagem, poder_ataque, poder_defesa, classes_id)  
values ("memoria", "junior", "mirim",600,278,1);
INSERT INTO tb_personagens(habilidade, nivel, nome_personagem, poder_ataque, poder_defesa, classes_id) 
values ("canto", "pleno", "Karen",9500,7000,3);
INSERT INTO tb_personagens(habilidade, nivel, nome_personagem, poder_ataque, poder_defesa, 	classes_id) 
values ("direção", "senior", "Alex",400,200,2);

SELECT * from tb_personagens;
SELECT * from tb_personagens WHERE poder_ataque > 2000;
SELECT * from tb_personagens WHERE poder_defesa between 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT * FROM tb_personagenstb__classestb__classes
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id;

select * from tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id WHERE classe = "Guerra";
