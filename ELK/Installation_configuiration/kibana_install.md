# How to install Kibana?

* Run the following command dpkg -i kibana as a root user to install the Kibana on the server.
  * It will take 1-2 minutes to get installed.

* We will use the following commands to make the Kibana service persistent.
  * systemctl daemon-reload
  * systemctl enable kibana.service
  * systemctl start kibana.service

* Now that we have installed Kibana successfully, let’s check its status to see if it's installed and running properly.
  * systemctl status kibana.service
*Some other files to be considerate of*
* The /etc/kibana path typically contains the configuration files for Kibana, an open-source data visualization and exploration tool.
  * Two important files are explained below:
    * kibana.yml: This is the main configuration file for Kibana.
      * It contains various settings to customize Kibana’s behavior, such as the Elasticsearch server URL, server host and port, logging options, security configurations, and more.
      * You can modify this file to tailor Kibana to your specific environment.
      * kibana.keystore: This file securely stores sensitive configuration settings, such as passwords and API keys.
        * The kibana.keystore file provides a safer alternative to storing sensitive information in plain text within the kibana.yml file.
        * It is encrypted and can be managed using the bin/kibana-keystore command-line tool.

* To configure Kibana, open the kibana.yml using the command nano kibana.yml and go to the System: Kibana Server section.
  * Uncomment the following two variables and make the changes to server.host:
    * server.port: 5601 => Kibana runs on port 5601 by default.
    * server.host: "0.0.0.0" => This is important to note that; if the server IP is changed, it should be updated here.
      * The server's IP does not change in a production environment; in that case, this parameter will not be changed often.

* Once the changes are made, and the config file is saved, its time to restart the Kibana server using the following command:\
  * systemctl restart kibana.service

* Open the browser, and go to 10.10.62.165:5601; we will see a Kibana Interface.
  * We will need to generate an enrollment token for the Kibana instance using the following command:
    * /usr/share/elasticsearch/bin/elasticsearch-create-enrollment-token -s kibana
  * It will show a randomly generated token. Enter the token in the space and press Enter.
    * It will ask for the elastic credentials.
      * There are the same credentials that were generated during the installation of Elasticsearch:
        * [elasticsearch example of what to look for](</ELK/configurationandexamples/elasticsearchexample.md>)
  * Next, it will ask for the verification code, which can be obtained by running this command /usr/share/kibana/bin/kibana-verification-code
