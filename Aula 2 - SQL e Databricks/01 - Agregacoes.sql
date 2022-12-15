-- Databricks notebook source
SELECT count(*) AS nrLinhasNaoNulas -- Linhas não nulas
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
  COUNT(*) AS nrLinhasNaoNulas, -- Linhas não nulas
  COUNT(idCliente) AS nrIdClienteNaoNulo
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
  COUNT(*) AS nrLinhasNaoNulas, -- Linhas não nulas
  COUNT(idCliente) AS nrIdClienteNaoNulo, -- id de clientes não nulas
  COUNT(distinct idCliente) AS nrIdClientesDistintos -- id de clientes distintos
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
  COUNT(*) AS nrLinhasNaoNulas, -- Linhas não nulas
  COUNT(idCliente) AS nrIdClienteNaoNulo, -- id de clientes não nulas
  COUNT(distinct idCliente) AS nrIdClientesDistintos, -- id de clientes distintos
  COUNT(idClienteUnico) AS nrIdClienteUnico, -- id de clientes unicos
  COUNT(distinct idClienteUnico) AS nrIdClienteUnicoDistintos -- id de clientes unicos distintos
FROM silver_olist.cliente

-- COMMAND ----------

SELECT COUNT(*) 
FROM silver_olist.cliente
WHERE descCidade = 'presidente prudente'

-- COMMAND ----------

SELECT
  AVG(vlPreco) AS avgPreco,
  
  PERCENTILE(vlPreco, 0.5) AS medianPreco,
  
  MAX(vlPreco) AS maxPreco,
  AVG(vlFrete) AS avgFrete,
  MAX(vlFrete) AS maxFrete,
  MIN(vlFrete) AS minFrete
  
FROM silver_olist.item_pedido

-- COMMAND ----------

SELECT *
FROM silver_olist.cliente
WHERE descUF = 'SP'
