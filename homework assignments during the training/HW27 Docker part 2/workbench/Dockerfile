
FROM linuxserver/mysql-workbench

ENV FOLDER "/opt/lesson27/"


RUN useradd lesson27 --home-dir=${FOLDER};
RUN mkdir ${FOLDER}; 


COPY --chown=lesson27:lesson27 ./* ${FOLDER}

EXPOSE 3000