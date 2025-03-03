# Select appropriate image
FROM python:3.11

# Set the working dir
WORKDIR /app

# Copy application files into the working directory
COPY . /app

# Install the deps
RUN pip install -r requirements.txt

# Document the port where traffic is expected by the underlying python application
EXPOSE 5001

# Run these commands to start the application.
CMD ["python", "main.py"]