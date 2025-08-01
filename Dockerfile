FROM python:3.11-alpine

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY app/ .

EXPOSE 5000

CMD ["python", "main.py"]
