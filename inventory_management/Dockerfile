FROM python:3.9-slim

# Install SSL libraries
RUN apt-get update && apt-get install -y libssl-dev libpq-dev

# Set the working directory in the container
WORKDIR /inventory_management

# Copy the requirements file into the container
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire inventory_management directory into the container
COPY . /inventory_management

# Set the PYTHONPATH to the working directory
ENV PYTHONPATH=/inventory_management

# Expose port 8001
EXPOSE 8001

# Start the FastAPI app
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8001"]
