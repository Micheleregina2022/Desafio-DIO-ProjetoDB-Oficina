-- Qual é o total de gastos de cada cliente em serviços durante o último trimestre? 

SELECT
    c.Nome AS Cliente,
    SUM(s.Preço) AS Total_Gasto
FROM
    Cliente c
JOIN
    Histórico_Serviço hs ON c.ID_Cliente = hs.ID_Cliente
JOIN
    Serviço s ON hs.ID_Serviço = s.ID_Serviço
WHERE
    hs.Data_Serviço >= DATE_SUB(NOW(), INTERVAL 3 MONTH)
GROUP BY
    c.ID_Cliente, c.Nome;
