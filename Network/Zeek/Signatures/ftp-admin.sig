## This signature will filter by FTP content to investigate CLI inputs of the FTP traffic.
signature ftp-admin {
     ip-proto == tcp
     ftp /.*USER.*dmin.*/
     event "FTP Admin Login Attempt!"
}


# Aim is to detect FTP "admin" login attempts. 
# Helps us identify the admin login attempts and have an idea of possible admin account abuse or compromise events.