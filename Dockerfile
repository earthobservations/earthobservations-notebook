# Copyright (c) Earthobservations Development Team.
# Distributed under the terms of the MIT License.

ARG BASE_CONTAINER=scioquiver/notebooks:cgspatial-notebook
FROM $BASE_CONTAINER

LABEL maintainer="Earthobservations Developers <earthobservations@panodata.org>"

RUN pip install \
    luftdatenpumpe \
    phenodata \
    wetterdienst \
    wradlib

USER $NB_USER

WORKDIR $HOME


# Add RUN statements to install packages as the $NB_USER defined in the base images.

# Add a "USER root" statement followed by RUN statements to install system packages using apt-get,
# change file permissions, etc.

# If you do switch to root, always be sure to add a "USER $NB_USER" command at the end of the
# file to ensure the image runs as a unprivileged user by default.
