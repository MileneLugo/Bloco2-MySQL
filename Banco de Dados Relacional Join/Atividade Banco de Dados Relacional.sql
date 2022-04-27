-- Atividade 1

create database db_generation_game_online;
use db_generation_game_online;

create table tb_classes(
	id bigint auto_increment,
    classe varchar(255),
    magia boolean,

	Primary Key (id)
);

create table tb_personagens(
	id bigint auto_increment,
	classes_id bigint,
	arma boolean,
    defesa decimal(65),
    ataque decimal (65),
    
    Primary Key (id),
    Foreign Key (classes_id) references tb_classes (id)
);

insert into tb_classes (classe, magia)
value ("Guerreiro", false);

insert into tb_classes (classe, magia)
value ("Feiticeiro", true);

insert into tb_classes (classe, magia)
value ("Barbaro", false);

insert into tb_classes (classe, magia)
value ("Necromante", true);

insert into tb_classes (classe, magia)
value ("Invocador", true );


insert into tb_personagens (classes_id, arma, defesa, ataque)
value (1, true, 1000, 750 );

insert into tb_personagens (classes_id, arma, defesa, ataque)
value (1, true, 2500, 3670 );

insert into tb_personagens (classes_id, arma, defesa, ataque)
value (2, true, 3000, 1780 );

insert into tb_personagens (classes_id, arma, defesa, ataque)
value (2, false, 7030, 7800 );

insert into tb_personagens (classes_id, arma, defesa, ataque)
value (3, true, 9999, 9999 );

insert into tb_personagens (classes_id, arma, defesa, ataque)
value (4, true, 9999, 9999 );

insert into tb_personagens (classes_id, arma, defesa, ataque)
value (4, true, 1780, 780 );

insert into tb_personagens (classes_id, arma, defesa, ataque)
value (5, true, 3570, 2890 );


select * from tb_personagens where ataque > 2000;

select * from tb_personagens where defesa > 1000 and defesa < 2000;

select * from tb_classes where classe like "%C%";

select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classes_id;

select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classes_id where ataque > 7000; 


-- Atividade 2

create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categorias(
	id bigint auto_increment,
    sabor varchar(255),
    tamanho varchar(255),
 
	Primary Key (id)
);

create table tb_pizzas(
	id bigint auto_increment,
    nome varchar(255),
    borda boolean,
    valor decimal(65,2),
    categorias_id bigint,
	
	Primary Key (id),
    Foreign Key (categorias_id) references tb_categorias (id)
);

insert into tb_categorias (sabor, tamanho)
values ("Doce", "Broto"); 

insert into tb_categorias (sabor, tamanho)
values ("Doce", "Grande"); 

insert into tb_categorias (sabor, tamanho)
values ("Salgada", "Broto"); 

insert into tb_categorias (sabor, tamanho)
values ("Salgada", "Grande"); 

insert into tb_categorias (sabor, tamanho)
values ("Salgada", "Familia"); 

insert into tb_categorias (sabor, tamanho)
values ("Doce", "Familia"); 


insert into tb_pizzas (nome, borda, valor, categorias_id)
values ("4 Queijos", false, 54, 4);

insert into tb_pizzas (nome, borda, valor, categorias_id)
values ("Romeu e Julieta", false, 30, 1);

insert into tb_pizzas (nome, borda, valor, categorias_id)
values ("Frango e Catupiry", true, 55, 4);

insert into tb_pizzas (nome, borda, valor, categorias_id)
values ("Camarao", true, 85, 4);

insert into tb_pizzas (nome, borda, valor, categorias_id)
values ("Portuguesa", false, 65, 5);

insert into tb_pizzas (nome, borda, valor, categorias_id)
values ("Brigadeiro", false, 60, 6);

insert into tb_pizzas (nome, borda, valor, categorias_id)
values ("Bacon e Mussarela", false, 35, 3);

insert into tb_pizzas (nome, borda, valor, categorias_id)
values ("Banana", true, 55, 2);


select * from tb_pizzas where valor > 45;

select * from tb_pizzas where valor > 50 and valor < 100;

select * from tb_pizzas where nome like "%M%";

select * from tb_pizzas inner join tb_categorias on tb_categorias.id = tb_pizzas.categorias_id;

select * from tb_pizzas inner join tb_categorias on tb_categorias.id = tb_pizzas.categorias_id where categorias_id = 4; 


-- Atividade 3


create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;

create table tb_categorias(
	id bigint auto_increment,
    tipo varchar(255),
    possui_estoque boolean,

	Primary Key (id)
);

create table tb_produtos(
	id bigint auto_increment,
    marca varchar(255),
    validade varchar(255),
    valor decimal(65,2),
    categorias_id bigint,
    
    Primary Key (id),
    Foreign Key (categorias_id) references tb_categorias (id)
);


insert into tb_categorias (tipo, possui_estoque)
values ("Higiene", true);

insert into tb_categorias (tipo, possui_estoque)
values ("Beleza", false);

insert into tb_categorias (tipo, possui_estoque)
values ("Perfume", true);

insert into tb_categorias (tipo, possui_estoque)
values ("Conveniencia", true);

insert into tb_categorias (tipo, possui_estoque)
values ("Remedio", true);


insert into tb_produtos (marca, validade, valor, categorias_id)
values ("Marcaesta", "04/22", 56.99, 2);

insert into tb_produtos (marca, validade, valor, categorias_id)
values ("Melmel", "04/22", 1.99, 4);

insert into tb_produtos (marca, validade, valor, categorias_id)
values ("Marcamar", "04/22", 25.5, 1);

insert into tb_produtos (marca, validade, valor, categorias_id)
values ("Acram", "04/22", 70, 3);

insert into tb_produtos (marca, validade, valor, categorias_id)
values ("Estamarca", "04/22", 39.99, 3);

insert into tb_produtos (marca, validade, valor, categorias_id)
values ("Oidemer", "04/22", 19.99, 5);

insert into tb_produtos (marca, validade, valor, categorias_id)
values ("Cole", "04/22", 6.99, 4);

insert into tb_produtos (marca, validade, valor, categorias_id)
values ("Demerio", "04/22", 13.50, 5);


select * from tb_produtos where valor > 50;

select * from tb_produtos where valor > 5 and valor < 60;

select * from tb_produtos where marca like "%c%";

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id;

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id where categorias_id = 4;


-- Atividade 4


create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categorias(
	id bigint auto_increment,
    corte varchar(255),
    possui_estoque boolean,

	Primary Key (id)
);


create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255),
    carne_vermelha boolean,
    valor decimal(65,2),
    categorias_id bigint,
	
    Primary Key (id),
    Foreign Key (categorias_id) references tb_categorias (id)
);


insert into tb_categorias (corte, possui_estoque)
values ("Moido", true);

insert into tb_categorias (corte, possui_estoque)
values ("Sassami", true);

insert into tb_categorias (corte, possui_estoque)
values ("Picado", false);

insert into tb_categorias (corte, possui_estoque)
values ("Bife", true);

insert into tb_categorias (corte, possui_estoque)
values ("Inteiro", true);


insert into tb_produtos (nome, carne_vermelha, valor, categorias_id)
values ("Peito de Frango", false, 14.99, 2);

insert into tb_produtos (nome, carne_vermelha, valor, categorias_id)
values ("Acem", true, 39.99, 1);

insert into tb_produtos (nome, carne_vermelha, valor, categorias_id)
values ("Contrafile", true, 51.99, 3);

insert into tb_produtos (nome, carne_vermelha, valor, categorias_id)
values ("Sobrecoxa", false, 16.79, 5);

insert into tb_produtos (nome, carne_vermelha, valor, categorias_id)
values ("Coracao de Frango", true, 24.59, 5);

insert into tb_produtos (nome, carne_vermelha, valor, categorias_id)
values ("Asa de Frango", false, 23.99, 5);

insert into tb_produtos (nome, carne_vermelha, valor, categorias_id)
values ("Pé de Frango", false, 5.99, 5);

insert into tb_produtos (nome, carne_vermelha, valor, categorias_id)
values ("Figado", true, 19, 4);


select * from tb_produtos where valor > 50;

select * from tb_produtos where valor > 50 and valor < 150;

select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id;

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id where carne_vermelha = true;


-- Atividade 5


create database db_construindo_vidas;
use db_construindo_vidas;

create table tb_categorias(
	id bigint auto_increment,
    tipo varchar(255),
	setor decimal(65),
    
    Primary Key (id)
);


create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255),
    possui_estoque boolean,
    valor decimal (65,2),
    categorias_id bigint,
    
	Primary Key (id),
	Foreign Key (categorias_id) references tb_categorias (id)
);

	insert into tb_categorias (tipo, setor)
	value ("Para Casa", 5);
    
	insert into tb_categorias (tipo, setor)
	value ("Piso", 2 );
    
	insert into tb_categorias (tipo, setor)
	value ("Portas", 4);
    
    insert into tb_categorias (tipo, setor)
	value ("Materiais", 1);
    
    insert into tb_categorias (tipo, setor)
	value ("Tinta", 3);
    
    
    insert into tb_produtos (nome, possui_estoque, valor, categorias_id)
	value ("Suvinil", true, 89.99, 5);
    
    insert into tb_produtos (nome, possui_estoque, valor, categorias_id)
	value ("Lixeira Inox", true, 54.90, 1);
    
    insert into tb_produtos (nome, possui_estoque, valor, categorias_id)
	value ("Piso Porcelanato", true, 149.90, 2);
    
    insert into tb_produtos (nome, possui_estoque, valor, categorias_id)
	value ("Tinta Coral", false, 50, 5);
    
    insert into tb_produtos (nome, possui_estoque, valor, categorias_id)
	value ("Cimento", true, 34.99, 4);
    
    insert into tb_produtos (nome, possui_estoque, valor, categorias_id)
	value ("Porta Elegance", true, 1113.92, 3);
    
    insert into tb_produtos (nome, possui_estoque, valor, categorias_id)
	value ("Porta Sabonete", false, 6.90, 1);
    
    insert into tb_produtos (nome, possui_estoque, valor, categorias_id)
	value ("Porta Toalha", true, 28.82, 1);
    
    
    select * from tb_produtos where valor > 100;

	select * from tb_produtos where valor > 70 and valor < 150;

	select * from tb_produtos where nome like "%c%";

	select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id;

	select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id where possui_estoque = false;
    
    
    -- Atividade 6
    
    create database db_curso_da_minha_vida;
	use db_curso_da_minha_vida;
    
    create table tb_categorias(
    id bigint auto_increment,
    tipo varchar(255),
    promoção boolean,
    
    Primary Key (id)
    );
    
    create table tb_cursos(
    id bigint auto_increment,
    nome varchar(255),
    certificado boolean,
    preço decimal(65,2),
    categorias_id bigint,
    
    Primary Key (id),
    Foreign Key (categorias_id) references tb_categorias (id)
    );
    
    insert into tb_categorias (tipo, promoção)
    value ("Pintura", true);
    
    insert into tb_categorias (tipo, promoção)
    value ("Tecnologia", true);
    
    insert into tb_categorias (tipo, promoção)
    value ("Desenho", false);
    
    insert into tb_categorias (tipo, promoção)
    value ("Animação", false);
    
    insert into tb_categorias (tipo, promoção)
    value ("Costura", true);


	insert into tb_cursos (nome, certificado, preço, categorias_id)
    value ("Pintura Digital", true,  550, 1); 
    
    insert into tb_cursos (nome, certificado, preço, categorias_id)
    value ("Animacao 2D", true, 660, 4);
    
    insert into tb_cursos (nome, certificado, preço, categorias_id)
    value ("Animacao 3D", true, 699.90, 4);
    
    insert into tb_cursos (nome, certificado, preço, categorias_id)
    value ("Bordado", true, 549.90, 5);  
    
    insert into tb_cursos (nome, certificado, preço, categorias_id)
    value ("JavaScript", true, 500, 2);  
    
    insert into tb_cursos (nome, certificado, preço, categorias_id)
    value ("Design de Personagem", true, 600, 3);  
    
    insert into tb_cursos (nome, certificado, preço, categorias_id)
    value ("Iniciante ao Profissional", true, 679.90, 3);  
    
    insert into tb_cursos (nome, certificado, preço, categorias_id)
    value ("Amigurumi", true, 560, 5);  
    
    select * from tb_cursos where preço > 500;

	select * from tb_cursos where preço > 600 and preço < 1000;

	select * from tb_cursos where nome like "%J%";

	select * from tb_cursos inner join tb_categorias on tb_categorias.id = tb_cursos.categorias_id;

	select * from tb_cursos inner join tb_categorias on tb_categorias.id = tb_cursos.categorias_id where categorias_id = 4; 
    