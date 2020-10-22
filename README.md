terraform-module-domains
====

# Module that creates hosted zones or records in hosted zone

This module can create either a hosted zone or a domain in a hosted zone, check the inputs for more information


It will create:
- hosted zone or record in hosted zone

## Inputs
Variables |  Optional | Default Value | Example | Description
---|---|---|---|---|
create | no | domain | Set to hosted_zone if you want to create one

### if create is set to record
---|---|---|---|---|
record_name | no | - | record.myhostedzone.com | The record that you want to add to a hosted zone
record_type | no | - | A | A CNAME TXT MX, the type o record that you want to create 
record_to | no | - | 10.10.1.10 | Where this record should point to, use a coma separed for more than one 
record_ttl | no | - | 300 | The ttl for the record

### if create is set to hosted_zone
---|---|---|---|---|
hosted_zone | no | - | myhostedzone.com | The domain for the hosted zone


## Outputs
Variables | Example | Description
---|---|---|
hosted_zone_id | XXXXXXX | The hostedzone created, *null if create is set to domain*

## Dependencies

Variables  | Module | Description
---|---|---|
hosted_zone_id | terraform-module-domains | *only* if create is set to domain
