# Use an appropriate base image
FROM ubuntu:22.04

# Set the working directory
WORKDIR /app

# Install prerequisites including netcat
RUN apt-get update && \
    apt-get install -y fortune-mod cowsay netcat

# Add /usr/games to PATH
ENV PATH="$PATH:/usr/games"

# Add the script to the image
COPY wisecow.sh /usr/local/bin/wisecow.sh

# Make the script executable
RUN chmod +x /usr/local/bin/wisecow.sh
