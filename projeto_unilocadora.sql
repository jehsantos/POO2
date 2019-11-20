create database unilocador;

create table endereco (
id int auto_increment primary key,
id_clientes int,
cep int(10),
rua varchar(30), 
bairro varchar(30), 
uf int(10)
);

alter table endereco
add constraint fk_end_cli
foreign key (id_clientes)
references clientes (id);

drop table telefone;

create table telefone (
id int auto_increment primary key,
id_clientes int,
telefone int(12),
celular int(12)
);

alter table telefone
add constraint fk_end_tele
foreign key (id_clientes)
references clientes (id);

select*from endereco;
insert into endereco (cep, rua, bairro,uf) 
values ('72210021', 'Qnm 02 Conjunto a' ,'Celandia Norte', '20');


