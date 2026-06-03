-- logical_table: warehouses_ranking
-- physical_fqn: icebase.supply_chain.warehouses_ranking
-- Cross-table joins: see ../../join_graph.yaml at bundle root (outside model/).
SELECT
  TRY_CAST("warehouse_id" AS DOUBLE) AS warehouse_id,
  CAST("efficiency_score_pct" AS DOUBLE) AS efficiency_score_pct,
  CAST("efficiency_rank" AS DOUBLE) AS efficiency_rank
FROM icebase.supply_chain.warehouses_ranking
