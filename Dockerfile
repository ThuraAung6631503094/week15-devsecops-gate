FROM python:latest
WORKDIR /app
COPY requirements.txt app.py ./
RUN pip install --no-cache-dir -r requirements.txt
RUN chmod -R 777 /app
USER 65532:65532
ENV APP_HOST=0.0.0.0
EXPOSE 8091
CMD ["python", "app.py"]
