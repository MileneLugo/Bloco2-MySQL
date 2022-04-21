-- Atividade 1: Banco de dados para um serviço de RH de uma empresa

create database db_inf;
use db_inf;

-- Determine 5 atributos revelantes dos colaboradores para se trabalhar com o serviço deste RH

create table tb_info(
	id bigint auto_increment,
    nome varchar(255),
    idade int,
    sexo varchar(255),
    cpf varchar(10) not null,
    salario decimal(65),

	Primary Key (id)
);

select * from tb_info;

-- Insira no mínimo 5 registros

insert into tb_info(nome, idade, sexo, cpf, salario)
values ("Lucas Martin", 27, "Masculino", "123456-789", "2400");

insert into tb_info(nome, idade, sexo, cpf, salario)
values ("Valeria Florença", 29, "Feminino", "234567-891", "2650");

insert into tb_info(nome, idade, sexo, cpf, salario)
values ("Albedo Villa", 20, "Outro", "345678-912", "1800");

insert into tb_info(nome, idade, sexo, cpf, salario)
values ("Lucia Carmel", 24, "Feminino", "456789-123", "1800");

insert into tb_info(nome, idade, sexo, cpf, salario)
values ("Alison Silva", 22, "Outro", "567891-234", "2100");

-- Faça um SELECT que retorne todes os colaboradores com o salário maior que 2000

select * from tb_info where salario > 2000;

-- Faça um SELECT que retorne todes os colaboredores com o salário menor que 2000

select * from tb_info where salario < 2000;

-- Atualize um registro desta tabela através de uma query de atualizaçãoptimize

update tb_info set salario = 2100 where id = 3;

select * from tb_info where salario > 2000;

-- Atividade 2: Crie um banco de dados para um e-commerce

create database db_commerce;
use db_commerce;

-- Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce

create table tb_commerce(
	id bigint auto_increment,
    marca varchar(255),
    categoria varchar(255),
    validade varchar(255),
    quantidade bigint,
    valor decimal (65,3),
    
    Primary Key (id)
);

select * from tb_commerce;

-- Insira 8 dados nesta tabela

insert into tb_commerce(marca, categoria, validade, quantidade, valor)
values ("estamarca", "beleza", "06/24", 35, "24.99");

insert into tb_commerce(marca, categoria, validade, quantidade, valor)
values ("marcaesta", "alimentos", "05/22", 50, "5.5");

insert into tb_commerce(marca, categoria, validade, quantidade, valor)
values ("samung", "eletronicos", "---", 150, "4299");

insert into tb_commerce(marca, categoria, validade, quantidade, valor)
values ("umamarca", "limpeza", "04/25", 120, "16.9");

insert into tb_commerce(marca, categoria, validade, quantidade, valor)
values ("marcamar", "alimentos", "07/23", 185, "9.5");

insert into tb_commerce(marca, categoria, validade, quantidade, valor)
values ("acram", "beleza", "06/26", 140, "12.9");

insert into tb_commerce(marca, categoria, validade, quantidade, valor)
values ("filco", "eletronicos", "---", 80, "800");

insert into tb_commerce(marca, categoria, validade, quantidade, valor)
values ("caarm", "eletronicos", "---", 120, "1000");

select * from tb_commerce where valor > 500;

select * from tb_commerce where valor < 500;

update tb_commerce set quantidade = 0 where id = 2;

select * from tb_commerce where valor < 500;

-- Crie um banco de dados para um registro de uma escola

create database db_escola;
use db_escola;

create table tb_aluno(
	id bigint auto_increment,
    nome varchar(255),
    idade int,
    sexo varchar(255),
    classe varchar(255),
    media decimal(65,1),
    
    Primary Key(id)
);

select * from tb_aluno;

insert into tb_aluno(nome, idade, sexo, classe, media)
values ("Valeria", 15, "Feminino", "1 Ano", "8.5");

insert into tb_aluno(nome, idade, sexo, classe, media)
values ("Albedo", 17, "Masculino", "3 Ano", "7");

insert into tb_aluno(nome, idade, sexo, classe, media)
values ("Marcia", 16, "Feminino", "1 Ano", "9");

insert into tb_aluno(nome, idade, sexo, classe, media)
values ("Lucia", 16, "Feminino", "2 Ano", "5.5");

insert into tb_aluno(nome, idade, sexo, classe, media)
values ("Carlos", 15, "Masculino", "2 Ano", "7.5");

insert into tb_aluno(nome, idade, sexo, classe, media)
values ("Geraldo", 16, "Masculino", "2 Ano", "9.5");

insert into tb_aluno(nome, idade, sexo, classe, media)
values ("Lucas", 18, "Masculino", "3 Ano", "8.5");

insert into tb_aluno(nome, idade, sexo, classe, media)
values ("Fernanda", 17, "Feminino", "2 Ano", "7.5");

select * from tb_aluno where media > 7.0;

select * from tb_aluno where media < 7.0;

update tb_aluno set media = 6.5 where id = 5;

select * from tb_aluno where media < 7.0;



