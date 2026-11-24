FROM python:3.10-slim

LABEL maintainer="VadymVolynko"

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

RUN pip install --no-cache-dir requests

COPY app/ .

CMD ["python", "main.py"]
