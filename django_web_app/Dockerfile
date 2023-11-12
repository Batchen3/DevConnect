FROM python:3.12-slim

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install -r requirements.txt

RUN pip install crispy-bootstrap4

COPY . .

EXPOSE 8000

CMD ["python", "manage.py","runserver", "0.0.0.0:8000"]