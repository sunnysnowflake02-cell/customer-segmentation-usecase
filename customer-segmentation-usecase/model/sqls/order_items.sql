-- logical_table: order_items
-- physical_fqn: icebase.supply_chain.order_items
-- Cross-table joins: see ../../join_graph.yaml at bundle root (outside model/).
SELECT
  CAST("order_id" AS DOUBLE) AS order_id,
  TRY_CAST("sku_id" AS DOUBLE) AS sku_id,
  "category" AS category,
  CAST("qty" AS DOUBLE) AS qty,
  CAST("price" AS DOUBLE) AS price,
  CAST("total_sale_value" AS DOUBLE) AS total_sale_value
FROM icebase.supply_chain.order_items
