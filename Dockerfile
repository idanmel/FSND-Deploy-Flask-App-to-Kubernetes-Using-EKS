FROM python:stretch

COPY main.py requirements.txt /app/
WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]