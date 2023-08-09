-- Quais são os serviços mais populares entre os veículos da oficina?

SELECT
    s.Descrição AS Serviço,
    COUNT(hs.ID_Serviço) AS Total_Serviços

FROM
    Serviço s
LEFT JOIN
    Histórico_Serviço hs ON s.ID_Serviço = hs.ID_Serviço
GROUP BY
    s.ID_Serviço, s.Descrição
ORDER BY
    Total_Serviços DESC;
