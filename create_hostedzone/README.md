terraform-module-domains
====

# Module that creates hosted zones in hosted zone

This module will create a hostedzone in route53


It will create:
- hosted zone

## Inputs
Variables |  Optional | Default Value | Example | Description
---|---|---|---|---|
region | yes | us-east-1 | region that the aws provider should use
hosted_zone | no | - | myhostedzone.com | The domain for the hosted zone


## Outputs
Variables | Example | Description
---|---|---|
hosted_zone_id | XXXXXXX | The hostedzone id created

## Dependencies
None
