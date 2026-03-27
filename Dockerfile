FROM ubuntu:24.04

RUN apt-get update && apt-get install -y \
    git curl build-essential \
    python3 python3-pip python3-venv \
    jq unzip sudo \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/bash sandy \
    && echo "sandy ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER sandy

RUN git clone https://github.com/asdf-vm/asdf.git /home/sandy/.asdf --branch v0.15.0
ENV PATH="/home/sandy/.asdf/shims:/home/sandy/.asdf/bin:${PATH}"

RUN asdf plugin add nodejs && asdf install nodejs 22.22.1 && asdf global nodejs 22.22.1

RUN npm install -g pnpm && asdf reshim nodejs

RUN asdf plugin add golang && asdf install golang 1.24.1 && asdf global golang 1.24.1
ENV PATH="/home/sandy/go/bin:${PATH}"

RUN curl -fsSL https://claude.ai/install.sh | bash
ENV PATH="/home/sandy/.local/bin:${PATH}"

WORKDIR /workspace
CMD ["bash"]
