# build Flask app

FROM python:3.13-slim

WORKDIR /app

COPY . /app
RUN pip freeze > requirements.txt \
    && pip install --no-cache-dir -r requirements.txt
# docker 本身就是隔离环境，没必要使用venv,生产环境推荐

# Flask default port number 
EXPOSE 5000

CMD ["python", "app.py"]
# 每一次是独立，即使上面RUN有虚拟环境，这里的CMD如果不指定也不会生效
