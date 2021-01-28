create database if not exists GrupoLaravel;
create table produtos(
id int not null auto_increment primary key,
nome varchar (20),
quantidade int,
preco float (6,2));

alter table produtos
add constraint `produtos_id_categoria_fk`
foreign key (id_categoria) references categoria (id_categoria);

insert into produtos (nome, quantidade, preco)
values
('Computador','1','6000.00'),  ('Fone','4','350.00'), ('pendrive','3','30.00');
update produtos set id_categoria = 3 where id = 3;

select * from produtos;
desc produtos;
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------

create table pedidos(
id_pedidos int not null auto_increment primary key,
id_cliente varchar (20),
total float (7,2));

insert into pedidos (id_cliente, total)
values ('001', 380.00), ('002', 6380.00), ('003', 12000.00);

select * from pedidos;
desc pedidos;
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------

create table categoria(
id_categoria int not null auto_increment primary key,
nome_categoria varchar (21)
);

insert into categoria (nome_categoria)
values ('grande'), ('medio'), ('pequeno');

select * from categoria;
desc categoria;

--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------

alter table produtos modify quantidade float; /** Alterando o tipo de 'int' para 'float'**/
select * from produtos where id = 2; /** Buscando o pruduto pelo ID**/
select * from produtos where nome like '%n%'; /** Buscando o produto por qualquer caracter**/
select * from produtos where id between 1 and 5; /** Buscando o produto pelo intervalo de IDs**/

--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------

/** 
Resumo
'%' na frente do caracter significa que não importa a quantidade de caracteres que existam antes da letra a ser selecionada
'%' após o caracter significa que não importa a quantidade de caracteres que existam depois da letra a ser selecionada
'_' na frente do caracter significa está pulando o primeiro caracter e está dando a busca a partir do 2º caracter
'% %' na frente e após o caracter significa que não importa a quantidade de caracteres que existam antes ou depois da letra (vai buscar qualquer item que contenha aquela letra)
**/
