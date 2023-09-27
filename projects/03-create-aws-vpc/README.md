# Create AWS VPC using Terraform

The AWS Terraform provider allows you to manage resources in AWS. You can create resources provided by a provider by adding resource blocks to Terraform configuration files. The syntax of a resource block resembles the following:

```bash
resource "resource_type" "identifier" {
  argument1 = value1
  argument2 = value2
}
```

The resource*type is a type of resource provided by the provider. The name of the provider of the resource type is always the first part and is a string type. For example, AWS resources all have types beginning with aws*. A list of all supported resource types for the AWS provider is available in the sidebar of the AWS provider page. The identifier is used within Terraform to identify the resource.

To demonstrate how to create a resource with the AWS provider, you will create an Amazon Virtual Private Cloud (VPC) resource using Terraform in this project.

### Steps

1.  Append an aws_vpc resource block to your main.tf Terraform configuration file:

    [main.tf](/projects/03-create-aws-vpc/main.tf)

    The cidr_block is the only required argument for an aws_vpc resource.
    The enable_dns_hostnames and tags arguments are both optional and demonstrate a boolean value (true), and a mapping that includes the Name key.

    The full list of arguments for the aws_vpc resource type is provided on the resource's information page.

2.  Issue the apply command to have Terraform generate a plan that you can review before actually applying:

    ```bash
    terraform plan
    terraform apply
    ```

    The Terraform plan is output and indicates the number of resources to add, change, or destroy. The plan details use the following symbols for each type of action:

    ```bash
    +: Add
    -: Destroy
    ~: Change
    ```

    The + aws_vpc.web_vpc action lists all of the attributes of the resource. The resource attributes are values that you can reference after the resource is created. Some values are known in advance because you specified them as arguments to the resource, or because they have default values, such as enable_dns_support. The values that are known after the resource is created are given the placeholder value.

3.  Accept and apply the execution plan by entering yes at the prompt.
    After the command completes, the ID of the VPC is also given in parentheses.

4.  Use the AWS command-line interface (CLI) to confirm that the VPC has been created with the arguments you specified:

    ```bash
    aws ec2 describe-vpcs --region us-west-2 --filter "Name=tag:Name,Values=Web VPC"
    ```

    The AWS CLI describe-vpcs command you entered lists all of the VPCs in the us-west-2 region with a Name tag that has a value of Web VPC. You can confirm that the Name tag has a Value of Web VPC, and the CidrBlock is `192.168.100.0/24`.

5.  Enter the following command to determine if DNS hostnames support is enabled for the VPC:

    ```bash
    aws ec2 describe-vpc-attribute --region us-west-2 --attribute enableDnsHostnames --vpc-id <VPC_ID>
    ```

    where you should replace <VPC_ID> with the value of the VpcId property in the output of the previous command. The value will resemble vpc-xxxx1234. The output confirms that the DNS hostname support has been enabled as you specified in the Terraform configuration:

### Summary

In this project, we created a VPC resource using the AWS provider. We observed the two-phase plan and apply a strategy that Terraform uses to avoid unintentional changes. You would follow the same approach for any other resource type. The available resource types and arguments are available from the AWS provider documentation.
