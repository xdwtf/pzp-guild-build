FROM python:3.12.4-slim-bookworm

RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    curl \
    wget \
    build-essential \
    net-tools \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /app/

RUN git config --global user.email "71930916+dishapatel010@users.noreply.github.com" && \
    git config --global user.name "Nikhil"

EXPOSE 8080 22 8022

CMD ["bash", "-c", "$(curl -fsSL https://raw.githubusercontent.com/dishapatel010/pzp-guild-build/main/start)"]
