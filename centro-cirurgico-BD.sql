create database centro_cirugurgico_bd;

USE centro_cirugurgico_bd;

create table tbl_especilidade(
	cod_especialidade INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	nome_especialidade VARCHAR(100) NOT NULL
);

create table tbl_paciente(
	cod_paciente INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	nome_paciente VARCHAR(500) NOT NULL,
    telefone_paciente VARCHAR(10) NULL,
    celular_paciente VARCHAR(11) NOT NULL,
    email_paciente VARCHAR(100) NOT NULL,
    telefone_responsavel VARCHAR(11) NOT NULL
);

create table tbl_medico(
	cod_medico INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	nome_medico VARCHAR(500) NOT NULL,
    telefone_medico VARCHAR(10) NULL,
    celular_medico VARCHAR(11) NOT NULL,
    email_medico VARCHAR(100) NOT NULL,
    cod_especialidade INT UNSIGNED NOT NULL
);

create table tbl_insumos (
	cod_insumos INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    cod_paciente INT UNSIGNED NOT NULL,
	nome_insumos VARCHAR(500) NOT NULL,
    quantidade_insumos DECIMAL(10,2)
);

create table tbl_sala (
	cod_sala INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    cod_especialidade INT UNSIGNED NOT NULL,
	nro_sala VARCHAR(10) NOT NULL
);

create table tbl_agenda (
	cod_agenda INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    cod_sala INT UNSIGNED NOT NULL,
    cod_medico INT UNSIGNED NOT NULL,
    cod_paciente INT UNSIGNED NOT NULL,
    data_cirurgia VARCHAR (10) NOT NULL,
    status_cirurgia ENUM ('agendado', 'concluído', 'cancelado')
);

#drop database centro_cirugurgico_bd;