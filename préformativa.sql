Create database Voo_1e;
use  Voo_1e;

create table Aeronave (
id_nave int primary key  auto_increment not null,
nome_nave varchar (100) not null,
destino varchar (100) not null,
comunicador varchar (100) not null
);

create table Passageiro (
id_pass int primary key  auto_increment not null,
nome_pass varchar (100) not null,
endereco varchar (100) not null,
telefone  varchar (100)  not null,
id_nave int,
foreign key (id_nave) references Aeronave(id_nave)
);

insert into Aeronave (nome_nave,destino,comunicador)
 values ("Password","Paris","Gustavo"),
		("Disney","Orlando","Isabella"),
        ("Latam","China","Matarrazo"),
		("Gol","Parana","Guilherme"),
		("Azul","Africa","Lucas");
  

insert into Passageiro (nome_pass,endereco,telefone)
 values ("Isabella","Rua Rosa","9876-7543"),
		("Gustavo","Rua Azul","9876-1543"),
        ("Giovana","Rua Amarelo","9876-9543"),
		("Guilherme","Rua verde","9876-8543"),
		("Lucas","Rua Vermelha","9872-6543");
        
select * from Aeronave;

select * from Passageiro;

/* MODIFICAR */
update Passageiro 
set nome_pass = "Isabel"
where id_pass = 1;

update Aeronave 
set nome_nave = "branca"
where id_nave = 3;

delete from Passageiro
where id_pass = 5;

create view VW_Passageiro_voa as
select
Passageiro.nome_pass as nome_pass,
Aeronave.nome_nave as nave_Nome,
Aeronave.destino as destino
from 
Passageiro 
inner join 
Aeronave on Passageiro.id_pass = Aeronave.id_nave;

select * from VW_Passageiro_voa;



