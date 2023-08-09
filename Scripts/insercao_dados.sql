-- Inserção em massa de 10 clientes

INSERT INTO Cliente (ID_Cliente, Nome, Telefone, Email)
VALUES
    (1, 'João Silva', '+123456789', 'joao@email.com'),
    (2, 'Maria Santos', '+987654321', 'maria@email.com'),
    (3, 'Pedro Oliveira', '+555555555', 'pedro@email.com'),
    (4, 'Ana Pereira', '+111111111', 'ana@email.com'),
    (5, 'Lucas Souza', '+222222222', 'lucas@email.com'),
    (6, 'Carla Ferreira', '+333333333', 'carla@email.com'),
    (7, 'Marcos Lima', '+444444444', 'marcos@email.com'),
    (8, 'Julia Rodrigues', '+666666666', 'julia@email.com'),
    (9, 'Rafael Almeida', '+777777777', 'rafael@email.com'),
    (10, 'Mariana Costa', '+888888888', 'mariana@email.com');


-- Inserção em massa de 10 veiculos

INSERT INTO Veículo (ID_Veículo, Placa, Marca, Modelo, Ano)
VALUES
    (1, 'ABC123', 'Toyota', 'Corolla', 2022),
    (2, 'XYZ789', 'Ford', 'Focus', 2021),
    (3, 'DEF456', 'Honda', 'Civic', 2020),
    (4, 'GHI789', 'Chevrolet', 'Cruze', 2022),
    (5, 'JKL012', 'Volkswagen', 'Golf', 2021),
    (6, 'MNO345', 'Hyundai', 'Elantra', 2023),
    (7, 'PQR678', 'Nissan', 'Sentra', 2020),
    (8, 'STU901', 'Kia', 'Optima', 2023),
    (9, 'VWX234', 'Mazda', '3', 2022),
    (10, 'YZA567', 'Subaru', 'Impreza', 2023);
    
    
    -- Inserção em massa de 10 serviços
    
    INSERT INTO Serviço (ID_Serviço, Descrição, Preço)
VALUES
    (1, 'Troca de Óleo', 50.00),
    (2, 'Revisão Completa', 200.00),
    (3, 'Alinhamento e Balanceamento', 80.00),
    (4, 'Troca de Pastilhas de Freio', 120.00),
    (5, 'Diagnóstico Eletrônico', 150.00),
    (6, 'Troca de Filtro de Ar', 30.00),
    (7, 'Troca de Bateria', 100.00),
    (8, 'Troca de Amortecedores', 250.00),
    (9, 'Serviço de Ar Condicionado', 90.00),
    (10, 'Troca de Correia Dentada', 160.00);


  -- Inserção em massa de 10 funcionarios

INSERT INTO Funcionário (ID_Funcionário, Nome, Cargo, Salário)
VALUES
    (1, 'Ana Souza', 'Mecânica', 2500.00),
    (2, 'Carlos Oliveira', 'Atendente', 1800.00),
    (3, 'Eduardo Santos', 'Mecânica', 2800.00),
    (4, 'Fernanda Lima', 'Gerente', 3500.00),
    (5, 'Gabriel Silva', 'Atendente', 2000.00),
    (6, 'Isabela Ferreira', 'Mecânica', 2700.00),
    (7, 'José Rodrigues', 'Atendente', 1900.00),
    (8, 'Larissa Oliveira', 'Mecânica', 2600.00),
    (9, 'Mateus Almeida', 'Atendente', 1700.00),
    (10, 'Natalia Costa', 'Mecânica', 2900.00);


  -- Inserção em massa de 10 históricos
  
INSERT INTO Histórico_Serviço (ID_Histórico, ID_Cliente, ID_Veículo, ID_Serviço, ID_Funcionário, Data_Serviço, Observações)
VALUES
    (1, 1, 1, 1, 1, '2023-08-09', 'Troca de óleo e filtro.'),
    (2, 2, 2, 2, 2, '2023-08-10', 'Revisão periódica.'),
    (3, 3, 3, 3, 3, '2023-08-11', 'Alinhamento e balanceamento.'),
    (4, 4, 4, 4, 4, '2023-08-12', 'Troca de pastilhas de freio.'),
    (5, 5, 5, 5, 5, '2023-08-13', 'Diagnóstico de sistema.'),
    (6, 6, 6, 6, 6, '2023-08-14', 'Troca de filtro de ar.'),
    (7, 7, 7, 7, 7, '2023-08-15', 'Troca de bateria.'),
    (8, 8, 8, 8, 8, '2023-08-16', 'Troca de amortecedores.'),
    (9, 9, 9, 9, 9, '2023-08-17', 'Serviço de ar condicionado.'),
    (10, 10, 10, 10, 10, '2023-08-18', 'Troca de correia dentada.');
