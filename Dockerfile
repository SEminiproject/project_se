FROM python:3.10.4

ENV PYTHONUNBUFFERED=1

WORKDIR /app 

COPY requirements.txt /app/

COPY ./ /app/

RUN pip install -r requirements.txt

EXPOSE 8000

CMD [ "python","manage.py","runserver"]