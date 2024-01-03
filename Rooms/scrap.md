Investigate the malicious .exe file in VirusTotal. What is the contacted domain name? Enter your answer in defanged format.
Answer format: ******.****

Investigate the http.log file. What is the request name of the downloaded malicious .exe file?
***.***


cat http.log | zeek-cut method host uri status_code client_header_names server_header_names