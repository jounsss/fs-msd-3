FROM python:3.5-alpine
# RUN apk add --update python3 py-pip
COPY requirements.txt /src/requirements.txt
RUN pip install -r /src/requirements.txt
COPY app.py /src
COPY buzz /src/buzz
ENV FLASK_APP /src/app.py
EXPOSE 5000
CMD flask run --host=0.0.0.0