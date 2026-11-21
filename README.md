# mlops-lab

This project is a personal lab for learning how to serve a machine learning model from scratch, with a focus on the full lifecycle: training, serving, infrastructure, and automation.

The repository is organized around the main aspects involved in serving a model in production: `training/` (train and save the model), `app/` (the API that serves it), `tests/` (automated tests), `models/` (saved model artifacts, not tracked in git), and `infra/` (infrastructure as code).

At the start, the project used FastAPI to expose a trained model through a simple API. From there, it moved to containerizing the app with Docker, and then to managing that container with Terraform. To practice cloud infrastructure without needing a real AWS account yet, the project currently uses a local AWS emulator, simulating a scenario where the service runs in the cloud.

Next steps include uploading the model artifact to cloud storage (S3) via Terraform, and eventually automating training, testing, and deployment with a CI/CD pipeline.

## Setup instructions

(coming soon)