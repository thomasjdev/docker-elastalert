FROM python:2
ENV ELASTALERT_HOME /opt/elastalert

RUN apt-get update && apt-get install -y --no-install-recommends
RUN pip install "elastalert>=0.2.0b2" "elasticsearch>7"

ENV TZ Americas/Los_Angeles

WORKDIR "${ELASTALERT_HOME}"

COPY elastalert "${ELASTALERT_HOME}"

