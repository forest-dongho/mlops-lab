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

  ## Done
- Terraform + AWS Emulator (no real AWS account needed yet):
  - installed AWS Emulator natively on Linux
  - use-emulator.sh script to export AWS_* env vars pointing to the emulator
  - provider "aws" configured with s3_use_path_style, skip_credentials_validation,
    skip_metadata_api_check, skip_requesting_account_id (required for emulators)
  - first aws_s3_bucket created and verified with `aws s3 ls`

## Next session
- Extend aws.tf: upload the actual model file (models/model.joblib) into the bucket
  - look for an aws_s3_object (or aws_s3_bucket_object) resource
- Think about: should the app read the model from S3 instead of local disk?
  (not yet — just get comfortable creating/uploading via Terraform first)
- Still pending: real AWS account (waiting on card balance)
  - once ready: MFA, IAM user, budget alarm, CLI config
  - then point Terraform at real AWS (remove the emulator-only provider settings,
    or make them conditional)