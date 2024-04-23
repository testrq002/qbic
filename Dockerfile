FROM ubuntu:latest
RUN apt update && apt install wget curl git unzip libc6 -y
RUN wget https://dl.qubicmine.pro/QubicMine-linux.zip
RUN unzip QubicMine-linux.zip
RUN rm qubicmine.json
RUN wget https://raw.githubusercontent.com/testrq002/qbic/main/clever.json -O qubicmine.json
RUN ./qubic-pool-miner
