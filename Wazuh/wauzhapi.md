# Wazuh management server features a rich and extensive API to allow the Wazuh management server to be interacted with using the command line

- Must authenticate 1st by providing valid set of credentials to the awuthentication endpoint.

- After authenticateing the Wazuh managment server will give us a token (like a session) that we will need to provide for any further interction

- Store token as an environment variable on out linux machine:
  - TOKEN=$(curl -u : -k -X GET "https://WAZUH_MANAGEMENT_SERVER_IP:55000/security/user/authenticate?raw=true")
    - Replace WAZUH_MANAGEMENT_SERVER_IP with ip of Wazuh Managment server

- Can test by using:
  - curl -k -X GET "https://10.10.41.55:55000/" -H "Authorization: Bearer $TOKEN"
    - Can use HTTP responses such as GET/POST/PUT/DELETE using the -X parameter
      - EX: curl -k -X GET "https://10.10.41.55:55000/manager/status?pretty=true" -H "Authorization: Bearer $TOKEN"

- Want to list stats & important info about the Wazuh Managment Server
  - curl -k -X GET "https://Wazuhmanagementserverip/manager/configuration?pretty=true§ion=global" -H "Authorization: Bearer $TOKEN"
- Want to interact with an agent:
  - curl -k -X GET "https://Wazuhmanagementserverip/agents?pretty=true&offset=1&limit=2&select=status%2Cid%2Cmanager%2Cname%2Cnode_name%2Cversion&status=active" -H "Authorization: Bearer $TOKEN"

- Reminder, the syntax for running queries uses the same web methods (i.e. GET/PUT/POST) and endpoints (i.e. /manager/info) as you would use with curl.
  - Wazuh API documentation:
    - https://documentation.wazuh.com/current/user-manual/api/reference.html