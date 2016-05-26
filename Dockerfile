FROM andrewosh/binder-base

USER root

RUN apt-get update
RUN apt-get install -y libfreetype6-dev libfontconfig1-dev

USER main

RUN conda install -yq \
  conda-build==1.19 \
  conda==3.19.1

COPY ./environment.yml /tmp/environment.yml
RUN conda env update --file /tmp/environment.yml

RUN conda install -c anaconda-nb-extensions nbpresent
