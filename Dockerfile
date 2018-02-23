FROM python:2

WORKDIR /usr/src/es_search_exporter

COPY . .

EXPOSE 9145

RUN export PYTHONPATH=$PYTHONPATH:/usr/src/es_search_exporter/scripts && \
    python ./setup.py install

CMD [ "python", "./scripts/es_search_exporter" ]

