## Example 1: Common structure

The `live_infra` and `module` folders are 2 separate repos.

    ├── live_infra
    │   ├── demo
    │   │   ├── example.tfvars
    │   │   ├── main.tf
    │   │   └── vars.tf
    │   ├── dev
    │   │   ├── example.tfvars
    │   │   ├── main.tf
    │   │   └── vars.tf
    │   ├── prod
    │   │   ├── example.tfvars
    │   │   ├── main.tf
    │   │   └── vars.tf
    │   └── test
    │       ├── example.tfvars
    │       ├── main.tf
    │       └── vars.tf
    └── module
        ├── eks
        ├── instance
        ├── rds
        └── vpc


## Example 2: Terraspace Conventions

Structure:

    .
    ├── modules
    │   ├── eks
    │   ├── instance
    │   ├── rds
    │   └── vpc
    └── stacks
        └── infra
            ├── example.tfvars
            ├── main.tf
            └── vars.tf

Terraspace commands:

    TS_ENV=demo terraspace up infra
    TS_ENV=dev  terraspace up infra
    TS_ENV=prod terraspace up infra
    TS_ENV=test terraspace up infra

## Example 3: Terraspace Not Using Env

Structure:

    .
    └── app
        ├── modules
        │   ├── eks
        │   ├── instance
        │   ├── rds
        │   └── vpc
        └── stacks
            ├── demo
            │   ├── example.tfvars
            │   ├── main.tf
            │   └── vars.tf
            ├── dev
            │   ├── example.tfvars
            │   ├── main.tf
            │   └── vars.tf
            ├── prod
            │   ├── example.tfvars
            │   ├── main.tf
            │   └── vars.tf
            └── test
                ├── example.tfvars
                ├── main.tf
                └── vars.tf

Just ignore the use of TS_ENV. Terraspace commands:

    terraspace up demo
    terraspace up dev
    terraspace up prod
    terraspace up test

