FROM liferay/portal:7.4.3.69-ga69

# Copy configuration portal to into container Liferay Portal 7.4
COPY --chown=liferay:liferay /configs/ /home/liferay/configs/
COPY --chown=liferay:liferay /frontend-to-liferay/dist/*.jar /opt/liferay/deploy

EXPOSE 8000 8080