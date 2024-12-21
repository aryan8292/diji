FROM ubuntu:20.04
WORKDIR /app
COPY . /app/
RUN apt-get update && \
    apt-get install -y git python3 python3-pip && \
    apt-get clean
RUN pip3 install --no-cache-dir -r requirements.txt
CMD ["python3", "bot.py"]
