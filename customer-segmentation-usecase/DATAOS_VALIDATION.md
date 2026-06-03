## CADP YAML validation / repair

### Round 1 — validate
**Valid:** True
**Notes:** —


**Stopped:** validation passed.


---

# DataOS artifact validation (LLM)

**Overall:** PASS

## Join graph
All join edges connect approved tables with valid join columns. Relationships are appropriately defined as many-to-one, and all joins are within the same schema.

## SQL / Lens YAML
All SQL references use load_sql(logical_name) correctly. Dimension types are valid and conform to the expected types: boolean, number, string, time.

## Consumer data product YAML
The consumer data product YAML references the lens name and source FQNs consistently and sensibly.
