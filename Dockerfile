FROM python:3.11

LABEL author="Myk"

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your app’s source
COPY . .

# Heroku provides $PORT; make sure your app binds to it
ENV PORT=${PORT:-8080}

# Launch your web process
ENTRYPOINT ["python3"]
CMD ["app.py"]
