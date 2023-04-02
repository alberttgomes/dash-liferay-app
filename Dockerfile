FROM liferay/portal:7.4.3.69-ga69

LABEL "com.dashboard"=${AUTHOR}

ENV CONFIG_HOME /etc/liferay

RUN mkdir -p $LIFERAY_HOME/artifacts

# Owner directory $LIFERAY
USER liferay

# Copy configuration portal to into container Liferay Portal 7.4
COPY --chown=liferay:liferay configs/local/portal-ext.properties $LIFERAY_HOME/
COPY --chown=liferay:liferay frontend-to-liferay/dist/*.jar $LIFERAY_HOME/artifacts
COPY --chown=liferay:liferay scripts/liferay-entrypoint.sh /opt/liferay/liferay-entrypoint.sh

# Directory Liferay Portal
WORKDIR /opt/liferay/

EXPOSE 8000 8080 8088

# Executable to move frontend jar to into deploy folder
ENTRYPOINT ["/opt/liferay/liferay-entrypoint.sh"]