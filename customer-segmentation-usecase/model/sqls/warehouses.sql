-- logical_table: warehouses
-- physical_fqn: icebase.supply_chain.warehouses
-- Cross-table joins: see ../../join_graph.yaml at bundle root (outside model/).
SELECT
  TRY_CAST("warehouse_id" AS DOUBLE) AS warehouse_id,
  "district" AS district,
  CAST("zip_code" AS DOUBLE) AS zip_code,
  CAST("wh_orders_lw" AS DOUBLE) AS wh_orders_lw,
  CAST("wh_orders_lq" AS DOUBLE) AS wh_orders_lq,
  CAST("wh_orders_ly" AS DOUBLE) AS wh_orders_ly,
  CAST("wh_orders_avg_daily" AS DOUBLE) AS wh_orders_avg_daily,
  CAST("wh_orders_l24" AS DOUBLE) AS wh_orders_l24,
  TRY_CAST(TRIM("updated_on") AS TIMESTAMP(6)) AS updated_on
FROM icebase.supply_chain.warehouses
