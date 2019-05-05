FROM openjdk:11

RUN git clone https://github.com/rjust/defects4j.git /defects4j
WORKDIR /defects4j

RUN ./init.sh

ENV PATH="/defects4j/framework/bin:${PATH}"

CMD defects4j info -p Lang
