FROM python:3.12.4-slim-bookworm

WORKDIR /app/

# adding email and username to the bot
RUN git config --global user.email "71930916+dishapatel010@users.noreply.github.com" && \
    git config --global user.name "Nikhil"

# Exposing Ports for Web Server
EXPOSE 8080 22 8022
 
# Adding Remote Container Start Command
CMD bash -c "$(curl -fsSL https://raw.githubusercontent.com/dishapatel010/pzp-guild-build/main/start)"
