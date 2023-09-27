# Install Terraform on EC2

In this project you will learn how to install terraform on EC2 instance.

## Steps

### Create EC2 instance

1. Create an EC2 instance using AWS console.
2. Connect to instance using EC2 instance Connect.

### Install terraform on EC2

1. Download a release package:

```bash
    wget https://releases.hashicorp.com/terraform/1.0.1/terraform_1.0.1_linux_amd64.zip
```

This project uses version 1.0.1 of Terraform to ensure consistent behavior even as newer versions are released. The most recent version of Terraform for all platforms can be found on Terraform's downloads page.

2. Extract the zip archive containing the Terraform binary to the /usr/local/bin directory:

```bash
sudo unzip terraform_1.0.1_linux_amd64.zip -d /usr/local/bin/
```

/usr/local/bin is included in the PATH environment variable allowing you to run terraform from any directory.

3. Remove the release package:

```bash
rm terraform_1.0.1_linux_amd64.zip
```

4. Confirm Terraform version 1.0.1 is installed:

```terraform
terraform version
```

### Summary

In this project Step, we installed Terraform into a directory available in your PATH.
