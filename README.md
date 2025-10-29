# Flask Fullstack Demo with Celery, Redis, MySQL and AWS Elastic Beanstalk

> A full-stack Flask project demonstrating:
> - Flask backend with template pages
> - MySQL integration for persistent data
> - Redis as task queue broker
> - Celery worker for asynchronous tasks
> - GitHub Actions CI/CD deployment to AWS Elastic Beanstalk (Web + Worker)
> - AWS Free Tier friendly setup

---

## 🧩 Features

- **Web Frontend:** User can submit simple tasks through HTML forms (`index.html`).
- **Backend API:** Handles form submissions and queues tasks for background processing.
- **Asynchronous Worker:** Celery worker executes long-running tasks without blocking the web server.
- **MySQL Integration:** Stores persistent data (task results, logs, etc.).
- **Redis Integration:** Serves as a message broker between Flask app and Celery worker.
- **CI/CD:** GitHub Actions automatically deploys updates to AWS Elastic Beanstalk.
- **Template Rendering:** Uses Jinja2 templates for frontend pages (`index.html` & `result.html`).

---

## 📂 Project Structure

