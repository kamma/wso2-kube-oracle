FROM wso2is:5.3.0

ARG USER=wso2user
ARG USER_HOME=/home/${USER}

COPY carbon/ ${USER_HOME}/tmp/carbon/
COPY artifacts/* ${USER_HOME}/wso2is-5.3.0/repository/components/lib/

USER root
RUN chown -R ${USER} ${USER_HOME}/
USER ${USER}

EXPOSE 11225 10006 11001 11501 8082 4041
