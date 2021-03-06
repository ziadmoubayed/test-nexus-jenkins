FROM python:3.7.0
LABEL maintainer="Albert Franzi"

ENV MLFLOW_HOME /opt/mlflow
ENV MLFLOW_VERSION 1.9.0
ENV SERVER_PORT 5000
ENV SERVER_HOST 0.0.0.0
ENV FILE_STORE ${MLFLOW_HOME}/fileStore
ENV ARTIFACT_STORE ${MLFLOW_HOME}/artifactStore

#RUN pip install mlflow==${MLFLOW_VERSION} && \
#    mkdir -p ${MLFLOW_HOME}/scripts && \
#    mkdir -p ${FILE_STORE} && \
#    mkdir -p ${ARTIFACT_STORE}

COPY test  ${MLFLOW_HOME}/test
COPY requirements.txt  ${MLFLOW_HOME}/requirements.txt

WORKDIR ${MLFLOW_HOME}
RUN pip install -r ${MLFLOW_HOME}/requirements.txt
CMD ["/bin/bash"]

# COPY scripts/run.sh ${MLFLOW_HOME}/scripts/run.sh
# RUN chmod +x ${MLFLOW_HOME}/scripts/run.sh

# EXPOSE ${SERVER_PORT}/tcp

# VOLUME ["${MLFLOW_HOME}/scripts/", "${FILE_STORE}", "${ARTIFACT_STORE}"]


# ENTRYPOINT ["./scripts/run.sh"]

