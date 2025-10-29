# build Flask app

FROM python:3.13-slim

WORKDIR /app

COPY . /app
RUN pip freeze > requirements.txt && pip install --no-cache-dir -r requirements.txt

# Flask default port number 
EXPOSE 5000

CMD ["python", "app.py"]
