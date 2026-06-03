-- logical_table: shipments
-- physical_fqn: icebase.supply_chain.shipments
-- Cross-table joins: see ../../join_graph.yaml at bundle root (outside model/).
SELECT
  CAST("order_id" AS DOUBLE) AS order_id,
  "shipping_partner" AS shipping_partner,
  TRY_CAST("warehouse_id" AS DOUBLE) AS warehouse_id,
  CAST("interim_units_delivered" AS DOUBLE) AS interim_units_delivered,
  CAST("delivered_date" AS TIMESTAMP(6)) AS delivered_date,
  "status" AS status,
  CAST("units_pending" AS DOUBLE) AS units_pending,
  CAST("expected_delivery_date" AS TIMESTAMP(6)) AS expected_delivery_date,
  CAST("order_fulfillment_date" AS TIMESTAMP(6)) AS order_fulfillment_date,
  "on_time_delivery" AS on_time_delivery,
  CAST("zip_code" AS DOUBLE) AS zip_code
FROM icebase.supply_chain.shipments
