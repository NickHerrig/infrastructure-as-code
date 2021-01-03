# Nebullam Terraform Codebase
This repository is responsible for configuration and state of all 
Nebullam's cloud resources. 

# Setup 
```shell
export TF_VAR_do_token={digital_ocean_token}
```

# The Workflow

## [terraform init](https://www.terraform.io/docs/commands/init.html)
to initalize the terraform project run a 

```shell
terraform init
```

## [terraform plan](https://www.terraform.io/docs/commands/plan.html)
to create an execution plan, run a

```shell
terraform plan -out=infra.out 
```


## [terraform apply](https://www.terraform.io/docs/commands/apply.html)
to apply infastructure from the execution plan, run a

```shell
terraform apply "infra.out" 
```

## [terraform destroy](https://www.terraform.io/docs/commands/destroy.html)

to destroy infastructure , run a

```shell
terraform destroy
```
