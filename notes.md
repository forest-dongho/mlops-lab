## Done
- Project structure (app/, training/, tests/, models/)
- Training script (iris dataset, LogisticRegression, saved with joblib)
- FastAPI app: /health and /predict endpoints
- Automatic tests with pytest + TestClient
- Dockerfile: image builds and runs correctly
  - tested /health and /predict against the running container (curl)

## Next session
- Open an AWS account (if not done yet)
  - enable MFA on the root account
  - create a separate IAM user to work with day to day
  - set a budget alarm
  - configure the AWS CLI
- Install Terraform
- Write first Terraform file: create an S3 bucket for the model artifact
- Later (not now):
  - move Terraform state to a remote S3 backend
  - ECR for the Docker image
  - Lambda using the container image
  - IAM role with least-privilege permissions
  - GitHub Actions pipeline