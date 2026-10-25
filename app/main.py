from fastapi import FastAPI
from pydantic import BaseModel
from joblib import load

# Input model
class Input(BaseModel):
    sepal_length: float
    sepal_width: float
    petal_length: float
    petal_width: float


app = FastAPI()

# Model loaded once
model = load("models/model.joblib")


@app.post("/predict/")
def predict(input: Input):
    # Input as a list of lists
    X = [[input.sepal_length,input.sepal_width,input.petal_length,input.petal_width]]
    # Prediction
    y_pred = model.predict(X)
    return {"class_id": int(y_pred[0])}

# Health check
@app.get("/health/")
def check():
    return {"status": "ok"}