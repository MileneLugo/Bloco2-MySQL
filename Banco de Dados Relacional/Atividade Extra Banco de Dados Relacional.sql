create database db_quitanda;
use db_quitanda;

create table tb_quitanda(
	id bigint auto_increment,
    marca varchar(255),
    validade varchar(255),
    quantidade bigint,
    valor decimal(65,2),
    id_categoria bigint,
    
    primary key (id),
    foreign key (id) references tb_categoria (id_categoria)
);

insert into tb_quitanda (marca, validade, quantidade, valor, id_categoria)
values ("Estamarca", "06/24", 35, "24.99", 1);

insert into tb_quitanda (marca, validade, quantidade, valor, id_categoria)
values ("Marcaesta", "05/24", 50, "5.5", 2);

insert into tb_quitanda (marca, validade, quantidade, valor, id_categoria)
values ("Umamarca", "08/22", 120, "70.5", 3);

insert into tb_quitanda (marca, validade, quantidade, valor, id_categoria)
values ("Marcamar", "07/23", 185, "12.9", 4);

insert into tb_quitanda (marca, validade, quantidade, valor, id_categoria)
values ("Acram", "---", 140, "800", 5);

create table tb_categoria(
	id_categoria bigint auto_increment,
    categoria varchar (255),
    primary key (id_categoria)
);


insert into tb_categoria (categoria)
values ("Beleza");

insert into tb_categoria (categoria)
values ("Enlatado");

insert into tb_categoria (categoria)
values ("Carne");

insert into tb_categoria (categoria)
values ("Limpeza");

insert into tb_categoria (categoria)
values ("Eletronico");

select * from tb_quitanda;

select * from tb_categoria;

select * from tb_categoria inner join tb_quitanda on tb_categoria.id_categoria = tb_quitanda.id_categoria where tb_quitanda.valor > 50.00;

select * from tb_quitanda where marca like "%a%";

update tb_quitanda set quantidade = "0" where id = 2;
