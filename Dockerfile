/*FROM python
/*WORKDIR /app
/*ADD . /app
/*RUN pip install -r requirements.txt
/*EXPOSE 80
/*ENV NAME world
/*CMD [“python”, “app.py”]*/
# syntax=docker/dockerfile:1
FROM ubuntu:18.04
COPY . /app
RUN make /app
CMD python /app/app.py
