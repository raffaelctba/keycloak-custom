# Use Keycloak official image
FROM quay.io/keycloak/keycloak:26.2.3

# Set working directory
WORKDIR /opt/keycloak

# Copy realm configuration
COPY ./realm.json /tmp/realm.json

# Copy custom extensions
COPY ./extensions /opt/keycloak/providers/

# Optional: Copy custom themes
# COPY ./themes/my-theme /opt/keycloak/themes/my-theme

# Enable development mode start
ENTRYPOINT ["kc.sh"]
CMD ["start-dev"]
