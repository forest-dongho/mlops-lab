## Done
- Terraform (local, Docker provider):
  - docker_image built from local Dockerfile
  - docker_container running the image, ports mapped correctly
  - variables.tf + variables.auto.tfvars: no more hardcoded values
  - verified terraform plan / apply / destroy cycle

## Next session
- If AWS account is ready:
  - finish account setup (MFA, IAM user, budget alarm, CLI)
  - write first real Terraform file for AWS: create an S3 bucket for the model
- If not yet:
  - try an `output` block (e.g. print the container's image_id after apply)
  - try adding a docker_network resource and attaching the container to itg