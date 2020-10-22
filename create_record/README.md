terraform-module-domains
====

# Module that creates records in hostedzone

This module can create a domain in a hosted zone, check the inputs for more information


It will create:
- hosted zone or record in hosted zone

## Inputs
Variables |  Optional | Default Value | Example | Description
---|---|---|---|---|
region | yes | us-east-1 | region that the aws provider should use
record_name | no | - | record.myhostedzone.com | The record that you want to add to a hosted zone
record_type | no | - | A | A CNAME TXT MX, the type o record that you want to create 
record_to | no | - | 10.10.1.10 | Where this record should point to, use a coma separed for more than one 
record_ttl | yes | 300 | 300 | The ttl for the record

## Outputs
None


## Dependencies

Variables  | Module | Description
---|---|---|
hosted_zone_id | terraform-module-domains | path create_hostedzone
