## Governance context

This data product employs row-level security by implementing segments that filter data based on specific criteria. The segments will ensure that sensitive information is only accessible to authorized user groups, while dimensions containing PII will be subject to masking. This approach allows for effective data governance while maintaining compliance with privacy regulations.

## Sample user groups & YAML

```yaml
user_groups:
  - name: warehouse_manager
    api_scopes:
      - read
    includes:
      - users:id:warehouse_user_1
      - users:id:warehouse_user_2
  - name: fulfillment_analyst
    api_scopes:
      - read
    includes:
      - users:id:fulfillment_user_1
      - users:id:fulfillment_user_2
segments:
  - name: pittsburgh_warehouse
    sql: "{TABLE}.district = 'Pittsburgh'"
    meta:
      secure:
        user_groups:
          includes:
            - warehouse_manager
```

## Suggested mode

`segment_user_groups`

## Role names (reuse in user_groups + segments)

`warehouse_manager`, `fulfillment_analyst`
