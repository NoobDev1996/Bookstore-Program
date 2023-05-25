# Use a base Python image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the code into the container
COPY . .

# Set the command to run when the container starts
CMD ["python", "bookstore_program.py"]