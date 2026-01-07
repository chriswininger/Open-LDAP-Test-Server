docker run --rm -d \
  --name openldap \
  -p "1389:389" \
  -p "1636:636" \
  --volume /Users/chriswininger/open-ldap/import-users/user_chris.ldif:/container/service/slapd/assets/config/bootstrap/ldif/50-bootstrap.ldif \
  --env LDAP_ORGANISATION="example" \
  --env LDAP_DOMAIN="example.org" \
  --env LDAP_ADMIN_PASSWORD="adminpassword" \
  --env LDAP_CONFIG_PASSWORD="adminpassword" \
  osixia/openldap:latest --copy-service

