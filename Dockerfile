FROM python:3.10-alpine
WORKDIR /app
COPY . /app/
RUN apk add --no-cache git
RUN pip install --no-cache-dir -r requirements.txt
CMD ["python3", "bot.py"]
