ARG BUILD_FROM
FROM $BUILD_FROM

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

RUN apk add --update docker openrc
RUN rc-update add docker boot

CMD [ "/run.sh" ]