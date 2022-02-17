# Dockerfile
FROM python:3

WORKDIR /app
COPY recruitment recruitment
COPY manage.py requirements.txt db.sqlite3 /app/
RUN pip install -r requirements.txt
# RUN python /app/manage.py collectstatic --noinput

EXPOSE 8001

CMD ["python", "manage.py", "runserver", "0.0.0.0:8001"]
        