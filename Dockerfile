ARG BUILD_FROM
FROM $BUILD_FROM

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh
RUN curl -fsSL https://get.docker.com -o /get-docker.sh

CMD [ "/run.sh" ]