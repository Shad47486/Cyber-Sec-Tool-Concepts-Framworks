## Useful scripts to run: 
# Basic Directory search:
gobuster dir -u [ip/DNS] -w [wordlist.txt path]
    - ex: gobuster dir -u http://example.com -w /path/to/wordlist.txt

# Ignoring Certain HTTP Status Codes:
gobuster dir -u [ip/DNS] -w [wordlist.txt path] -b [http ERROR]
    - ex: gobuster dir -u http://example.com -w /path/to/wordlist.txt -b 404

# Specifying extensions: 
gobuster dir -u [ip/DNS] -w [wordlist.txt path] -x [sepcific extension (php,html, etc)]
    - ex: gobuster dir -u http://example.com -w /path/to/wordlist.txt -x php,html,txt

# Verbose Output: 
gobuster dir -u [ip/DNS] -w [wordlist.txt path] -v
    - ex: gobuster dir -u http://example.com -w /path/to/wordlist.txt -v


# Saving outputs: 
gobuster dir -u [ip/DNS] -w [wordlist.txt path] > output.txt
    - ex: gobuster dir -u http://example.com -w /path/to/wordlist.txt > output.txt

