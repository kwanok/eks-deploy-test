# Use Debian-based minimal Python 3.13 image
FROM python:3.13-slim-bookworm

# Set environment variables
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PIP_NO_CACHE_DIR=1

# Set working directory
WORKDIR /app

# Copy application files
COPY ./main.py /app/

# Install dependencies
RUN pip install --no-cache-dir fastapi uvicorn

# Expose port 80
EXPOSE 80

# Run application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
