FROM node:18.15.0

# Directory of container
ENV DIRECTORY=/opt/client_extension_frontenddash

# Create directory folder into of container
RUN mkdir $DIRECTORY

# Defined directory of project
WORKDIR $DIRECTORY

# Set user liferay like owner
USER liferay

# Copy files scritps to into of container
COPY --chown=liferay:liferay frontenddash/scripts/dashapp-entrypoint.sh $DIRECTORY/dashapp-entrypoint.sh

# Given permission to file dashapp-entrypoint executable
RUN chmod +x /dashapp-entrypoint.sh

# Add project in directory container
ADD . $DIRECTORY

# Build app
RUN yarn

# Excutable customer entrypoint dash app
ENTRYPOINT ["/dashapp-entrypoint.sh"]

# Run app
CMD ["yarn", "run", "dev"]