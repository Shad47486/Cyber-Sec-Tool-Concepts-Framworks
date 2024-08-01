# How to set up Splunk

* The first step would be to log in to the Splunk portal and download the Splunk Enterprise instance from the website
  * Create Administration Account during installation
    * This account will have high privileges, create and manage other accounts, and control all administrative roles.
      * Splunk is installed on port 8000 by default.
        * Now open the browser in the lab and go to the URL HTTP://127.0.0.1:8000\
          * If you are connected with the VPN, then you can also access the newly installed Splunk Instance in your browser by going to  HTTP://MACHINE_IP:8000

## Installing and Configuring Forwarder

* Log into Splunk and Go to Settings -> Forward
* It will show multiple options to configure both forwarding and receiving
  * We want to receive data from the Windows Endpoint, we will click on Configure receiving and then proceed by configuring a new receiving port.
    * By default, the Splunk instance receives data from the forwarder on port 9997.
      * We will configure our Splunk to start listening on port 9997 and Save (can be changed)

### Managing Splunk

* Documentation for turning on/off splunk [Splunk Documentation](<https://docs.splunk.com/Documentation/Splunk/latest/Admin/StartSplunk>)
  * Windows CLI:
    * net start splunkd
    * net stop splunkd
