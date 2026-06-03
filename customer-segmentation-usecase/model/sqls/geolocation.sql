-- logical_table: geolocation
-- physical_fqn: icebase.supply_chain.geolocation
-- Cross-table joins: see ../../join_graph.yaml at bundle root (outside model/).
SELECT
  CAST("zip_code" AS DOUBLE) AS zip_code,
  CAST("latitude" AS DOUBLE) AS latitude,
  CAST("longitude" AS DOUBLE) AS longitude
FROM icebase.supply_chain.geolocation
