FROM tf_sber

LABEL maintainer='Mikhail.Gasanov@skoltech.ru'

RUN DEBIAN_FRONTEND='noninteractive' apt-get update && apt-get upgrade -y --no-install-recommends && \
    DEBIAN_FRONTEND='noninteractive' apt-get install -y --no-install-recommends liblapack-dev liblapack3 libopenblas-base

COPY requirements.txt .

RUN pip3 install -r requirements.txt
RUN pip3 install maxvolpy
