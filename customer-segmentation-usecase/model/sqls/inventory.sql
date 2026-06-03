-- logical_table: inventory
-- physical_fqn: icebase.supply_chain.inventory
-- Cross-table joins: see ../../join_graph.yaml at bundle root (outside model/).
SELECT
  "sku_name" AS sku_name,
  TRY_CAST("sku_id" AS DOUBLE) AS sku_id,
  TRY_CAST("warehouse_id" AS DOUBLE) AS warehouse_id,
  CAST("quantity_in_stock" AS DOUBLE) AS quantity_in_stock,
  CAST("warehouse_zip_code" AS DOUBLE) AS warehouse_zip_code,
  CAST("reorder_qty" AS DOUBLE) AS reorder_qty,
  "supplier_name" AS supplier_name,
  TRY_CAST("supplier_id" AS DOUBLE) AS supplier_id
FROM icebase.supply_chain.inventory
