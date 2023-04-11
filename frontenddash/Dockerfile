FROM node:18.15.0

# Create directory folder into of container
RUN mkdir /opt/client_extension_frontenddash \
    chmod 777 /opt/client_extension_frontenddash

# Defined directory of project
WORKDIR /opt/client_extension_frontenddash

# Set user liferay like owner
USER liferay

# Copy files scritps to into of container
COPY --chown=liferay:liferay frontenddash/scripts/dashapp-entrypoint.sh /opt/client_extension_frontenddash/dashapp-entrypoint.sh

# Given permission to file dashapp-entrypoint executable
RUN chmod +x /dashapp-entrypoint.sh

# Add project in directory container
ADD . /opt/client_extension_frontenddash

EXPOSE 5173

# Build app
RUN yarn

# Excutable customer entrypoint dash app
ENTRYPOINT ["/dashapp-entrypoint.sh"]

# Run app
CMD ["yarn", "run", "dev"]