FROM continuumio/miniconda
RUN conda install \
  notebook=4.1
RUN conda install \
  -c anaconda-nb-extensions/label/dev \
  -c anaconda-nb-extensions \
  nbpresent=1.1.0 \
  python=3.4
EXPOSE 8888
CMD ["jupyter", "notebook", "--no-browser", "--ip=*", "--debug"]
