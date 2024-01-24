FROM python:3.10
WORKDIR /app
COPY ./requirements.txt requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt
COPY . .
CMD ["/bin/bash", "docker-entrypoint.sh"]

# to run the container locally
# CMD ["flask", "run", "--host", "0.0.0.0"]

# to run the container in the deployment site using gunicorn
# CMD ["gunicorn", "--bind", "0.0.0.0:80", "app:create_app()"]