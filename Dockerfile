FROM python:3-slim

RUN apt-get -qq update \
    && apt-get install -y --no-install-recommends \
        curl

COPY . .
RUN chmod +x ./loadgen.sh


ENTRYPOINT ./loadgen.sh


