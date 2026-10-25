# syntax=docker/dockerfile:1

FROM python:3.13.17-slim-trixie
WORKDIR /app
COPY ./app app/
COPY ./models models/
COPY requirements.txt .
RUN pip install -r requirements.txt
EXPOSE 8000
CMD ["uvicorn", "app.main:app" ,"--host", "0.0.0.0"]


