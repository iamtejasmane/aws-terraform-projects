# Configure AWS provider

### Steps

1. Make a directory for organizing your Terraform configuration, and change into it:

```bash
mkdir infra && cd infra
```

2. Create a Terraform configuration file declaring the AWS provider:

   [main.tf](/projects/02-configure-providers/main.tf)

- The terraform block contains a required_providers object with aws defined.
- The source location defines the address of the provider you intend to use.
- The version constraint defines the specific provider version.
- The provider keyword is followed by the name of the provider you want to use.
- The name aws is a string and all strings must be enclosed in double-quotes in HCL.
- Argument values are assigned using an equal sign =.
- Any text following a # is a comment
- The region is the only required argument for the aws provider. An example of an optional argument for the AWS provider is access_key and secret_key credentials. Because you are using an EC2 instance to run Terraform, Terraform is able to use the IAM instance profile to authenticate any requests to AWS.

3. Initialize the working directory by running the init command:

```bash
terraform init
```

In addition to downloading referenced providers, the init command downloads any referenced modules from the Terraform registry when modules are included in the configuration.

4. List all of the directories to see what the init command has created:

```bash
ls -A
```

The .terraform directory stores the downloaded AWS provider plugin in .terraform/providers/registry.terraform.io/hashicorp/
aws/3.48.0/linux_amd64/:

The .terraform directory will also store any other data terraform needs later on for managing your infrastructure.

### Summary

In this project Step, we configured the AWS Terraform provider. We use the init command to download the AWS provider plugin. With the plugin downloaded, we are now able to manage resources provided by the provider.
