create database cadastro_clientes;
use cadastro_clientes;

create table cliente(
	id_cliente int auto_increment primary key not null,
	nome varchar(50) not null,
    cpf varchar(50) not null,
    rg varchar(50) not null,
    telefone varchar(50) not null,
    endereco varchar(255)
);

create table dependente(
	depen_cod int auto_increment primary key not null,
    id_cliente int not null,
    nome varchar(50) not null,
    cpf varchar(50) not null,
    foreign key (id_cliente) references cliente(id_cliente)
);

insert into cliente(nome, cpf, rg, telefone, endereco)
	values("João","123.456.789-0","98.765.432-0","(15)99786-4283", "Jardim Shangri-lá"),
		  ("Reinaldo","987.765.432-1","89.321.452.-3","(15)99887-4236","Jardim Fogaça"),
          ("Ana", "234.789.654-6","34.987.012-7","(11)9900-1111","Centro"),
          ("Juan","321.456.987-2","12.876.432.-9","(15)99886-4321","R. Nova"),
          ("Helena","213.546.987-9","32.876.953-4","(11)99876-4371","Rio Branco");

insert into dependente(id_cliente, nome, cpf)
values(1, "Pedro", "111.222.333-44"),(1, "Lucas", "222.333.444-55"),
(2, "Mariana", "333.444.555-66"),(2, "Juliana", "444.555.666-77"),
(3, "Paulo", "555.666.777-88"),(4, "Gabriela", "666.777.888-99"),
(4, "Fernando", "777.888.999-00"),(5, "Alice", "888.999.000-11");
      
update cliente
set nome = "João Silva"
where id_cliente = 1;

update cliente
set nome = "Reinaldo Oliveira"
where id_cliente = 2;

update cliente
set nome = "Ana Paula"
where id_cliente = 3;

update cliente
set endereco = "Rua Nova, 123"
where id_cliente = 1;

UPDATE cliente
SET endereco = "Av. Central, 456"
WHERE id_cliente = 2;

UPDATE cliente
SET endereco = "Praça das Flores, 789"
WHERE id_cliente = 3;

UPDATE cliente
SET endereco = "Rua da Liberdade, 101"
WHERE id_cliente = 4;

delete from dependente
where depen_cod = 5; 

DELETE FROM dependente
WHERE depen_cod = 6;

delete from dependente
where depen_cod = 7;

select * from cliente;
select * from dependente;