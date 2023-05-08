FROM node:18.15.0

# Create directory folder into of container
RUN mkdir /client_extension_frontenddash 

# Defined directory of project
WORKDIR /client_extension_frontenddash

# Copy files scritps to into of container
COPY --chown=liferay:liferay /scripts/dashapp-entrypoint.sh /client_extension_frontenddash/

# Given permission to file dashapp-entrypoint executable
RUN chmod +x /client_extension_frontenddash/dashapp-entrypoint.sh

# Add project in directory container
ADD . /client_extension_frontenddash

EXPOSE 5173

# Build app
RUN yarn

# Run app
CMD ["yarn", "run", "dev"]