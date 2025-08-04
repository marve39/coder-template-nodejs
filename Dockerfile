FROM node:20-slim

# Optional: install other common tools
RUN apt-get update && apt-get install -y \
    git curl vim unzip && \
    apt-get clean

# Set working directory
WORKDIR /home/coder

# Default shell
SHELL ["/bin/bash", "-c"]

# Create a non-root user (recommended by Coder)
RUN useradd -m coder && chown -R coder:coder /home/coder

USER coder
