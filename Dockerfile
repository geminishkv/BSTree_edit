FROM ubuntu:16.04 # Образ из ubuntu:16.04

RUN apt update # обновление пакетов
RUN apt install -yy gcc g++ cmake # установка пакетов g++

COPY . tree-cli/
WORKDIR tree-cli

# предопределение исполнения команд в образе
RUN cmake -H. -B_build 
RUN cmake -H. -B_build -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=_install
RUN cmake --build _build
RUN cmake --build _build --target install
RUN cmake --build _build --target tree-cli

ENV LOG_PATH /home/logs/log.txt

VOLUME /home/logs

WORKDIR _install/bin
WORKDIR _build

CMD ./tree-cli
