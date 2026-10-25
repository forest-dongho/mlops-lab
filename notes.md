## Next session
- Write app/main.py: /health endpoint + /predict endpoint (POST, Pydantic model)
- Load model from models/model.joblib via env var MODEL_PATH
- Write tests/test_api.py

## Next session
- Write Dockerfile for the FastAPI app
- Decide what to COPY into the image (app/, models/, requirements.txt — not training/ or tests/)
- Read model path from an environment variable instead of hardcoding it
- Build and run the image locally, test /health and /predict again