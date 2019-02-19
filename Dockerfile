FROM python:3-onbuild
COPY blog .
WORKDIR ./blog
COPY requirements.txt ./
#RUN virtualenv myvenv
#RUN source myvenv/bin/activate
RUN apt-get update
RUN apt-get install -y python python-pip python-dev build-essential
RUN pip3 install --no-cache-dir -r requirements.txt
RUN python3 manage.py makemigrations
RUN python3 manage.py migrate
#RUN python install --no-cache-dir -r requirements.txt
EXPOSE 8080
CMD ["/start.sh"]a
#CMD exec python3 manage.py runserver
CMD exec gunicorn blog.wsgi:application --bind 0.0.0.0:8080 --workers 3


