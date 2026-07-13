FROM geopython/pygeoapi:latest

RUN /venv/bin/python3 -m pip install --no-cache-dir \
        https://github.com/internetofwater/pygeoapi/archive/refs/heads/dev.zip

RUN /venv/bin/python3 -m pip install --no-cache-dir \
        https://github.com/cgs-earth/pygeoapi-plugins/archive/refs/heads/master.zip


COPY pygeoapi.config.yml /pygeoapi/local.config.yml
