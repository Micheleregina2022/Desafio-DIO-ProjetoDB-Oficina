-- Criação das tabelas
CREATE TABLE Cliente (
    ID_Cliente INT PRIMARY KEY,
    Nome VARCHAR(100),
    Telefone VARCHAR(20),
    Email VARCHAR(100)
);
CREATE TABLE Veículo (
    ID_Veículo INT PRIMARY KEY,
    Placa VARCHAR(10),
    Marca VARCHAR(50),
    Modelo VARCHAR(50),
    Ano INT
);

CREATE TABLE Serviço (
    ID_Serviço INT PRIMARY KEY,
    Descrição VARCHAR(200),
    Preço DECIMAL(10, 2)
);

CREATE TABLE Funcionário (
    ID_Funcionário INT PRIMARY KEY,
    Nome VARCHAR(100),
    Cargo VARCHAR(50),
    Salário DECIMAL(10, 2)
);

CREATE TABLE Histórico_Serviço (
    ID_Histórico INT PRIMARY KEY,
    ID_Cliente INT,
    ID_Veículo INT,
    ID_Serviço INT,
    ID_Funcionário INT,
    Data_Serviço DATE,
    Observações TEXT,
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente),
    FOREIGN KEY (ID_Veículo) REFERENCES Veículo(ID_Veículo),
    FOREIGN KEY (ID_Serviço) REFERENCES Serviço(ID_Serviço),
    FOREIGN KEY (ID_Funcionário) REFERENCES Funcionário(ID_Funcionário)
);
