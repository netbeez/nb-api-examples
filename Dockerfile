FROM jupyter/tensorflow-notebook:ubuntu-20.04 as release

# RUN conda install --quiet --yes \
#     'influxdb-client=1.17.0' && \
#     conda clean --all -f -y && \
#     fix-permissions "${CONDA_DIR}" && \
#     fix-permissions "/home/${NB_USER}"

RUN pip install influxdb-client[ciso] adtk
