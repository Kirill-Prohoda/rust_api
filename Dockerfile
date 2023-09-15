# Use an official Rust image as the parent image
FROM rust:latest

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Build the Rust project
RUN cargo build --release

# Expose any necessary ports (if your Rust project is a server)
EXPOSE 8080

# Define the command to run your Rust application
CMD ["./target/release/rust_api"]
