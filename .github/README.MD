# Terraflops Terraform Module
 
### AWS CloudFront Custom Origin

This is an intermediate module used in the definition of a CloudFront distribution. This module
defines a custom origin allowing for type safety/default values not afforded by Terraform objects
natively. This module does not produce any resources, any simply rearranged the input parameters
into a form that can be iterated easily when creating the CloudFront distribution.

#### Example usage

```hcl-terraform
module "example" {
  source = "git::https://github.com/TerraFlops/aws-cloudfront-origin-custom?ref=v1.0"
  ...
}
```
