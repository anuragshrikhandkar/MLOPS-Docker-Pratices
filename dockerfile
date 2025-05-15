FROM python:3.8-slim

WORKDIR /app

#copy the current dir contains into container at /app
COPY . /app

#install any needed package specific in requirements.txtx
RUN pip install --no-catche-dir -r requirements.txt

#Make a port 5000 availabe  the word outside container 
EXPOSE 5000

#define environment variable 
ENV FLASK_APP=app.py

CMD ["flask","run","--host=0.0.0.0"]

