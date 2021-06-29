FROM freqtradeorg/freqtrade:stable

# Setup env
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONFAULTHANDLER 1
ENV PATH=/home/ftuser/.local/bin:$PATH
ENV FT_APP_ENV="docker"

COPY --chown=ftuser:ftuser . /freqtrade
WORKDIR /freqtrade

RUN pip install -e . --user --no-cache-dir --no-build-isolation \
  && freqtrade install-ui

ENTRYPOINT ["freqtrade"]
# Default to trade mode
CMD [ "trade" ]
