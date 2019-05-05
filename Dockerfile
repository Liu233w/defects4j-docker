FROM openjdk:11

RUN apt-get update && \
    apt-get install build-essential && \
    curl -L https://cpanmin.us | perl - --sudo App::cpanminus

RUN git clone https://github.com/rjust/defects4j.git /defects4j
WORKDIR /defects4j

RUN cpanm --installdeps . && ./init.sh

ENV PATH="/defects4j/framework/bin:${PATH}"
CMD defects4j info -p Lang
