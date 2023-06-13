# My Children Will Never Deploy Active-Passive

## Quick Start

```bash
cd terraform
terraform init
terraform plan
# This step will take some time ~30 minutes depending on regions
terraform apply --auto-approve
# Deploy the Spring Boot app to location 1
$(terraform output -raw build_deploy1)
# Deploy the Spring Boot app to location 2
$(terraform output -raw build_deploy2)
```
