FROM python:2

WORKDIR /usr/src/es_search_exporter

COPY . .

EXPOSE 9145

RUN pip install --no-cache-dir -r requirements.txt && \
    python ./setup.py install && \
    export PYTHONPATH=$PYTHONPATH:/usr/src/es_search_exporter/scripts

CMD [ "python", "./scripts/es_search_exporter" ]

