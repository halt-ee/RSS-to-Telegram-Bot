FROM python:3.12-slim-bookworm AS app

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app files
COPY . .

ENTRYPOINT ["python", "-u", "telegramRSSbot.py"]
