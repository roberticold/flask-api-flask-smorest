# CONTRIBUTING

## How to create the Dockerfile 
"""
FROM python:3.11
EXPOSE 5000
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
CMD ["flask", "run", "--host", "0.0.0.0"]
"""

## How to build the Dockerfile image from the Dockerfile
"""
docker build -t IMAGE_NAME .
"""
## How to run the Dockerfile locally from the image
"""
docker run -dp 5005:5000 -w /app -v ${PWD}:/app IMAGE_NAME
"""

