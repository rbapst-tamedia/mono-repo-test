FROM python:3.12-slim

WORKDIR /app

COPY src /app
COPY requirements.txt /app

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

# Define environment variable
ENV MY_APP_PORT=5000

# Run main.py when the container launches
CMD ["python", "src/main.py"]
