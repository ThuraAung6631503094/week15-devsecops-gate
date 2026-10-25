FROM python:3.12-slim
WORKDIR /app
COPY requirements.txt app.py ./
RUN pip install --no-cache-dir -r requirements.txt
USER root
ENV APP_HOST=0.0.0.0
EXPOSE 8091
CMD ["python", "app.py"]
