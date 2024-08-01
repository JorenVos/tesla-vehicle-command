# Start from the official Go image with version 1.20
FROM golang:1.20-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the entire project into the container
COPY . .

# Download all the dependencies
RUN go get ./...

# Build the application
RUN go build ./...

# Install cmd 
RUN go install ./...

# Run the tesla-http-proxy command by default when the container starts.
CMD ["tesla-http-proxy", "-port", "443", "-key-file", "/certs/com.tesla.3p.private-key.pem", "-host", "0.0.0.0", "-verbose"]