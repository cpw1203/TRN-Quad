# Start with Ubuntu 24.04
FROM ubuntu:24.04

# Install basic tools
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    git \
    python3 python3-pip \
    neovim \
    # add whatever else your project needs
    && rm -rf /var/lib/apt/lists/*

# (Optional) Install Rust toolchain for Rust-based tools
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

# Example: Install md-tui
RUN cargo install md-tui --locked

# Example: Install Python dependencies
COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# Example: Install project-specific system libs
# RUN apt-get install -y libopencv-dev ...

# Set working directory
WORKDIR /workspace

# Default command
CMD ["/bin/bash"]
