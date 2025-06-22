# Use Keycloak official image
FROM quay.io/keycloak/keycloak:26.2.5

# Set working directory
WORKDIR /opt/keycloak-custom

# Copy realm configuration
COPY ./realm.json /tmp/realm.json

# Copy custom extensions
# COPY ./extensions /opt/keycloak/providers/

# Optional: Copy custom themes
# COPY ./themes/my-theme /opt/keycloak/themes/my-theme

# Start Keycloak in development mode
ENTRYPOINT ["/opt/keycloak-custom/bin/kc.sh"]
CMD ["start-dev"]
