import redis, json, os

REDIS_HOST = os.getenv("REDIS_HOST", 'redis')

#REDIS_POOL = redis.ConnectionPool(host='127.0.0.1', port=6379, encoding='utf-8', max_connections=50)
REDIS_POOL =redis.ConnectionPool(host=REDIS_HOST, port=6379, encoding='utf-8', max_connections=50)
TASK_QUEUE = 'task_todo_list'
RESULT_QUEUE = 'task_result_dict'


def append(task_id: int):
    conn = redis.Redis(connection_pool=REDIS_POOL)
    conn.lpush(TASK_QUEUE, task_id)