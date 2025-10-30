# build Flask app

FROM python:3.13-slim

WORKDIR /app

COPY . /app
RUN python -m venv venv \
    && ./venv/bin/pip install --update pip \
    && ./venv/bin/pip freeze > requirements.txt \
    && ./venv/bin/pip install --no-cache-dir -r requirements.txt
# default /bin/sh dash shell, source 只用于 bash, 使用POSIX 写法
# docker 没必要激活venv, RUN 每层都是独立的环境不会持久化

# Flask default port number 
EXPOSE 5000

CMD ["python", "app.py"]
