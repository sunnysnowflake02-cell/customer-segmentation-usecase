-- logical_table: orders
-- physical_fqn: icebase.supply_chain.orders
-- Cross-table joins: see ../../join_graph.yaml at bundle root (outside model/).
SELECT
  CAST("order_id" AS DOUBLE) AS order_id,
  TRY_CAST(TRIM("order_creation_date") AS TIMESTAMP(6)) AS order_creation_date,
  CAST("customer_id" AS DOUBLE) AS customer_id,
  CAST("delivery_address" AS VARCHAR) AS delivery_address,
  CAST("zip_code" AS DOUBLE) AS zip_code,
  TRY_CAST(TRIM("delivery_date_chosen") AS TIMESTAMP(6)) AS delivery_date_chosen
FROM icebase.supply_chain.orders
