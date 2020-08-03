
FROM python:stretch

COPY . ./
RUN apt-get update && apt-get install -y \
    && pip install --upgrade pip\
    && pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
