
CREATE DATABASE projeto_salas character set utf8mb4 collate utf8mb4_unicode_ci;
USE projeto_salas;

-- Tabela de usuários (quem reserva a sala)
CREATE TABLE Usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    senha VARCHAR(100) NOT NULL
);

-- Tabela de salas (todas as salas cadastradas)
CREATE TABLE Salas (
    id_sala INT AUTO_INCREMENT PRIMARY KEY,
    andar VARCHAR(10) NOT NULL,
    nome_sala VARCHAR(100) NOT NULL,
    tipo_sala VARCHAR(50),
    capacidade INT NOT NULL
);

-- Tabela de reservas (liga usuário e sala)
CREATE TABLE Reservas (
    id_reserva INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_sala INT NOT NULL,
    data_reserva DATE NOT NULL,
    horario_inicio TIME NOT NULL,
    horario_fim TIME NOT NULL,
    periodo VARCHAR(20), -- manhã, tarde, noite
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_sala) REFERENCES Salas(id_sala)
);
