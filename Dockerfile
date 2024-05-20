# Use the official Golang image
FROM golang:1.19

# Set the working directory inside the container
WORKDIR /app

# Copy the source code into the container
COPY . .

# Build the Go application
RUN go mod tidy
RUN go build -o main .

# Define the command to run the application
CMD ["./main"]