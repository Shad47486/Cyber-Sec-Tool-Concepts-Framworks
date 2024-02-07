# Useful queries & or good to knows

- can write in what you are looking for directly or use the field names & values

- Searching for the domain within a specific index:
  - EX: index=botsv1 example.com

- Seraching for the domain within a specific index & sourcetype:
  - EX: index=botsv1 example.com sourcetype=stream:http
    - Maybe looking for when the threat actor was able to get into our network thru web server means

- Seraching for the domain within a specific index & sourcetype & unusal IP:
  - EX: index=botsv1 example.com src=10.10.10.100 sourcetype=threatactorname

- Query uses the stats function to display the count of the IP addresses in the field src_ip (good Count function):
  - EX: index=botsv1 example.com sourcetype=stream* | stats count(src_ip) as Requests by src_ip | sort - Requests
    - Can be usuful to use with the visualization tab pie chart to get a better visual view
  - After Which you can perform a query to narrow down the results requests to our webserver:
    - EX: index=botsv1 sourcetype=stream:http dest_ip="192.168.250.70(ourwebserver)"

- Narrowing down post requests from an IP:
  - EX: index=botsv1 sourcetype=stream:http dest_ip="192.168.250.70" http_method=POST

- Narrowing down results to see the requests sent to a login portal:
  - EX: index=botsv1 example.com sourcetype=stream:http dest_ip="192.168.250.70"  uri="/example/administrator/example.php"
  - To dig deeper into any login info from the page use:
    - EX: index=botsv1 sourcetype=stream:http dest_ip="192.168.250.70" http_method=POST uri="/example/administrator/example.php" | table _time uri src_ip dest_ip form_data
    - *** To extract all password values found against field passwd in the logs splunk offers a function called rex:**
      - EX: index=botsv1 sourcetype=stream:http dest_ip="192.168.250.70" http_method=POST form_data=*username*passwd* | rex field=form_data "passwd=(?<creds>\w+)"  | table src_ip creds
    - Creating a table to display key fields & values (good addition to add to already existing queries):
      - | table _time src_ip uri http_user_agent creds
        - EX: index=botsv1 sourcetype=stream:http dest_ip="192.168.250.70" http_method=POST form_data=*username*passwd* | rex field=form_data "passwd=(?<creds>\w+)" |table _time src_ip uri http_user_agent creds

- Narrowing down result to help find any traffic coming into our server & containing any .exe or any other file extension:
  - EX: index=botsv1 sourcetype=stream:http dest_ip="192.168.250.70" *.exe
    - For furhter investigation of files make sure to look at if the files was excuted on the server using event ID #'s:
      - EX: index=botsv1 "example.exe" sourcetype="XmlWinEventLog" EventCode=1
        - Event Code 1 is the code for processes creation 
          - More info on sysmon process ID <https://learn.microsoft.com/en-us/sysinternals/downloads/sysmon>
          - Good for finding any events from the installation phase

- Looking at specfic traffic from src and destinatino IPs:
  - EX: index=botsv1 src=192.168.250.70 sourcetype=example dest_ip=23.22.63.114
    - Narrowing down to any files that where used from the IPs
