# aws-static-site-infra

Terraform stack for hosting static personal website in AWS. Networking resources (Certificate Manager, Route 53, CloudFront) need to be manually configured.

Deploy stack via following commands:

```
terraform init
terraform apply -var-file=vars/your_variables.tfvars
```

Site template from [HTML5 UP](https://html5up.net/) under the [Creative Commons Attribution 3.0 License](https://html5up.net/license).