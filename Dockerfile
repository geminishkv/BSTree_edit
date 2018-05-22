FROM ubuntu:16.04 # Образ из ubuntu:16.04

RUN apt update # обновление пакетов
RUN apt install -yy gcc g++ cmake # установка пакетов g++

COPY . print/ # копирование файлов в директорию print
WORKDIR print # предопределение каталога для исполнения команд
# предопределение исполнения команд в образе
RUN cmake -H. -B_build -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=_install
RUN cmake --build _build
RUN cmake --build _build --target install

ENV LOG_PATH /home/logs/log.txt

VOLUME /home/logs

WORKDIR _install/bin

CMD ./tree-cli
