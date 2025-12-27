FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .

RUN pip3 --no-cache-dir install -r requirements.txt

COPY . .

EXPOSE 5000

ENV FLASK_RUN_HOST=0.0.0.0

CMD ["python3","app.py"]

