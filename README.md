# Potência Tech powered by iFood | Ciência de Dados

</br>

## Desafio-DIO-ProjetoDB-Oficina
Este projeto envolve a modelagem e implementação de um banco de dados para uma oficina automotiva, juntamente com consultas SQL para obter informações relevantes. O esquema do banco de dados foi desenvolvido com base em um modelo Entidade-Relacionamento (ER) e posteriormente traduzido para um esquema lógico relacional

</br>

## Ferramentas Utilizadas:

MYSQL Workbench 8.0 CE

</br>

### Esquema do Banco de Dados
O esquema do banco de dados consiste nas seguintes tabelas:

* Tabela Veiculo: Armazena informações sobre os veículos atendidos na oficina.
* Tabela Cliente: Contém informações dos clientes que possuem veículos na oficina.
* Tabela Servico: Registra os tipos de serviços oferecidos pela oficina.
* Tabela Historico_Servico: Mantém o histórico de serviços realizados em veículos.
* Tabela Funcionario: Armazena informações sobre os funcionários da oficina.

</br>

# Consultas SQL (As saídas estão salvas em CSV na pasta Planilhas)

1. Total de Gastos de Cada Cliente no Último Trimestre

```Mysql
SELECT c.nome AS Cliente, SUM(hs.preco) AS TotalGasto
FROM Cliente c
JOIN Historico_Servico hs ON c.id = hs.cliente_id
WHERE hs.data_servico >= DATE_SUB(NOW(), INTERVAL 3 MONTH)
GROUP BY c.nome;
```

2. Serviços Mais Populares

```Mysql
 SELECT s.nome AS Servico, COUNT(hs.id) AS TotalRealizado
 FROM Servico s
 LEFT JOIN Historico_Servico hs ON s.id = hs.servico_id
 GROUP BY s.nome
 ORDER BY TotalRealizado DESC;
 ```

3. Funcionário com a Maior Venda Total

```Mysql
SELECT f.nome AS Funcionario, SUM(hs.preco) AS VendaTotal
FROM Funcionario f
JOIN Historico_Servico hs ON f.id = hs.funcionario_id
GROUP BY f.nome
ORDER BY VendaTotal DESC
LIMIT 1;
```

4. Serviços Mais Frequentes para uma Marca de Veículo

```Mysql
SELECT s.nome AS Servico, COUNT(hs.id) AS TotalRealizado
FROM Servico s
JOIN Historico_Servico hs ON s.id = hs.servico_id
JOIN Veiculo v ON hs.veiculo_id = v.id
WHERE v.marca = 'Toyota'
GROUP BY s.nome
ORDER BY TotalRealizado DESC;
```


 ##### Outras possíveis questões:
         
 - Qual é o total de receita gerada por cada tipo de serviço nos últimos seis meses?
 - Quais são os veículos que mais frequentemente necessitam de serviços de manutenção?
 - Qual é o intervalo médio entre os serviços para diferentes tipos de veículos?
 - Qual é a porcentagem de receita gerada por serviços realizados por funcionários com cargos de "Mecânica" versus "Atendente"?
        

</br></br>
### Autora
Michele Regina Bora
