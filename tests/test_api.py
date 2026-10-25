from fastapi.testclient import TestClient

from app.main import app

client = TestClient(app)

# Test health
def test_health():
    response = client.get("/health/")
    assert response.status_code == 200
    assert response.json() == {"status":"ok"}

# Automatic test for prediction
def test_predict():
    response = client.post("/predict/",json={"sepal_length":5.1,"sepal_width":3.5,"petal_length":1.4,"petal_width":0.2})
    assert response.status_code == 200
    assert response.json() == {"class_id":0}

#
# "sepal_length": 5.1,
# "sepal_width": 3.5,
# "petal_length": 1.4,
# "petal_width": 0.2
#