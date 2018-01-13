# Version: 0.0.1
FROM ubuntu:latest
MAINTAINER trukhinyuri <yuri@trukhin.com>
ENV REFRESHED_AT 2017–12–04-2
RUN apt-get update
RUN apt -y install wget unzip htop mc vim nano
RUN wget http://eu.minexpool.nl/static/mxMiner_0.20.1.zip
RUN unzip mxMiner_0.20.1.zip
RUN mv 'Linux x64' mxminer
RUN chmod +x mxminer/mxminer
RUN mv mxminer/mxminer /bin/mxminer
ENTRYPOINT ["/bin/mxminer", "-l", "eu", "-u", "XFi1K1kFUn2fKZ6LLiv21NTWE1J3SxrgEd.mxminer", "-t 2", "-nf"]
