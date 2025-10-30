# build Flask app

FROM python:3.13-slim

# base image 工作dir
WORKDIR /app

# copy 依赖文件，Docker cache layer可以复用
COPY requirements.txt .

# 安装依赖
RUN pip install --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt
# docker 本身就是隔离环境，没必要使用venv,生产环境推荐

# 复制应用代码到当前 work dir 下
COPY . . 

# Flask default port number 
EXPOSE 5000

# 生产环境 gunicorn 启动，性能和稳定性更好
CMD [ "gunicorn", "-b", "0.0.0.0:5000", "app:app" ]
#CMD ["python", "app.py"]
# 每一次是独立，即使上面RUN有虚拟环境，这里的CMD如果不指定也不会生效
