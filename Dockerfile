# Use an official Python runtime as a parent image
FROM python:3.12-slim-bookworm

# Set the working directory in the container
WORKDIR /app

# Copy the application code into the container
COPY . /app

# Install any dependencies (in this case, none are explicitly needed,
# but this is a good practice for more complex applications)
# RUN pip install --no-cache-dir -r requirements.txt

# Make the script executable (if needed)
# RUN chmod +x your_script_name.py

# Define the command to run the application
CMD ["python", "coffee_shop.py"]
