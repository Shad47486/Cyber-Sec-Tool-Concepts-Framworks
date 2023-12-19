signature ftp-username {
    ip-proto == tcp
    ftp /.*USER.*/
    event "FTP Username Input Found!"
}

signature ftp-brute {
    ip-proto == tcp
     payload /.*530.*Login.*incorrect.*/
    event "FTP Brute-force Attempt!"
}

# optimized signature from ftp-admin.sig
# This rule should show us two types of alerts and help us to correlate the events by having "FTP Username Input" and "FTP Brute-force Attempt" event messages