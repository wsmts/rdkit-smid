FROM continuumio/miniconda3
LABEL maintainer="Wim Smets <wim.smets@cistim.be>"

ENV PYTHONDONTWRITEBYTECODE=true

RUN conda install --yes --freeze-installed \
    nomkl \
    'conda-forge::rdkit' \
    'conda-forge::voila' \
    'tqdm' \
    'ipywidgets' \
    'widgetsnbextension' \
    tini \
    && conda clean -afy \
    && find /opt/conda/ -follow -type f -name '*.a' -delete \
    && find /opt/conda/ -follow -type f -name '*.pyc' -delete \
    && find /opt/conda/ -follow -type f -name '*.js.map' -delete

WORKDIR /opt/notebooks

COPY . .

EXPOSE 8866

ENTRYPOINT ["tini", "-g", "--"]

CMD voila --no-browser --enable_nbextensions=True  --VoilaConfiguration.file_whitelist '.*\.(sdf)'