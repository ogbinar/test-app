# Start from a lightweight Python image
FROM python:3.11-alpine⁠

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set work directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copy app files
COPY . .

# Expose the port Heroku will bind to
EXPOSE $PORT

# Use gunicorn as the entrypoint (Heroku sets $PORT)
CMD ["gunicorn", "--bind", "0.0.0.0:$PORT", "app:app"]