# Use a base image that includes Hugo and any necessary tools
FROM klakegg/hugo:latest

# Set the working directory inside the container
WORKDIR /src

# Copy the current directory contents into the container at /src
COPY . /src

# Expose port 1313 to the host machine (optional, if you want to serve the site)
EXPOSE 1313

# Default command to run when the container starts
CMD ["hugo", "server", "--bind", "0.0.0.0"]