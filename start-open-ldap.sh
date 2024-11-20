docker run --rm -d \
  --name openldap \
  -p "1636:1636" \
  --volume /Users/chriswininger/open-ldap/import-users:/import-users \
  --env LDAP_ADMIN_USERNAME=admin \
  --env LDAP_ADMIN_PASSWORD=adminpassword \
  --env LDAP_CUSTOM_LDIF_DIR=/import-users \
        -p "1389:1389" \
  bitnami/openldap:latest


