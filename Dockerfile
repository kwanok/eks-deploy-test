FROM --platform=linux/arm64 python:3.13-alpine

WORKDIR /app
COPY ./main.py /app/

RUN pip install --no-cache-dir fastapi uvicorn

EXPOSE 80
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
