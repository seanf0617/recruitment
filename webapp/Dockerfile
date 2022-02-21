FROM python:3.9

WORKDIR /srv/recruitment

# Add code
COPY ./recruitment /srv/recruitment

# Install application requirements
ADD ./config/requirements.txt /srv/recruitment/
RUN pip install -r /srv/recruitment/requirements.txt

# Add start script
ADD ./config/start.sh /srv/recruitment/

# Add uWSGI config
ADD ./config/django-uwsgi.ini /etc/uwsgi/django-uwsgi.ini

# Add database check script
ADD ./config/database-check.py /srv/config/database-check.py

# Create django user, will own the Django app. This is needed
# because we defined this, in the uwsgi.ini file
RUN adduser --no-create-home --disabled-login --group --system django
RUN chown -R django:django /srv/recruitment

# Execute start script
RUN echo pwd
CMD ["./start.sh"]
