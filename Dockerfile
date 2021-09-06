FROM python:3.9.5

ENV PYTHONUNBUFFERED=1

WORKDIR /code2

RUN pip install -r requirements.txt

COPY . /code2/

EXPOSE 80

CMD exec uwsgi --http :80 --module config.wsgi


