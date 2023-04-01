FROM liferay/portal:7.4.3.69-ga69

ENV CONFIG_HOME /etc/liferay

RUN mkdir -p $LIFERAY_HOME/artifacts

# Copy configuration portal to into container Liferay Portal 7.4
COPY --chown=liferay:liferay configs/local/portal-ext.properties $LIFERAY_HOME/
COPY --chown=liferay:liferay frontend-to-liferay/dist/*.jar $LIFERAY_HOME/artifacts

WORKDIR /opt/liferay/

EXPOSE 8000 8080

LABEL key="author" value=${AUTHOR}

# ENTRYPOINT [ "executable" ]