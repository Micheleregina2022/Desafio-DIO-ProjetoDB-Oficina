SELECT
    f.Nome AS Funcionário,
    SUM(s.Preço) AS Total_Vendas
FROM
    Funcionário f
JOIN
    Histórico_Serviço hs ON f.ID_Funcionário = hs.ID_Funcionário
JOIN
    Serviço s ON hs.ID_Serviço = s.ID_Serviço
GROUP BY
    f.ID_Funcionário, f.Nome
ORDER BY
    Total_Vendas DESC
LIMIT 1;
