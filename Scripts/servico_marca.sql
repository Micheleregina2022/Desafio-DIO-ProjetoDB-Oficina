-- Quais são os serviços mais frequentemente realizados em veículos de determinada marca?

SELECT
    s.Descrição AS Serviço,
    COUNT(hs.ID_Serviço) AS Total_Serviços
FROM
    Serviço s
JOIN
    Histórico_Serviço hs ON s.ID_Serviço = hs.ID_Serviço
JOIN
    Veículo v ON hs.ID_Veículo = v.ID_Veículo
WHERE
    v.Marca = 'Toyota'  -- Substituir 'Toyota' pela marca desejada
GROUP BY
    s.ID_Serviço, s.Descrição
ORDER BY
    Total_Serviços DESC;
