FROM ghcr.io/anonymousx97/docker:main

WORKDIR /app/

RUN git config --global user.email "71930916+dishapatel010@users.noreply.github.com" && \
    git config --global user.name "Nikhil"

EXPOSE 8080 22 8022

CMD bash -c "$(curl -fsSL https://raw.githubusercontent.com/xdwtf/pzp-guild-build/main/start)"
