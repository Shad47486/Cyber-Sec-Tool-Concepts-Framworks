# Zeek Package Manager helps users install third-party scripts and plugins to extend Zeek functionalities with ease.

- Is installed with zeek and can be used with 'zkg' command
  - Users can load, remove, update, & create packages with the "zkg" tool

## Basic of 'zkg' command

- zkg install package_path
  - Install a package. Example (zkg install zeek/j-gras/zeek-af_packet-plugin).

- zkg install git_url
  - Install package. Example (zkg install https://github.com/corelight/ztest).

- zkg list
  - List installed package.

- zkg remove
  - Remove installed package.

- zkg refresh
  - Check version updates for installed packages.

- zkg upgrade
  - Update installed packages.


## Different Packages that can be installed

- Cleartext Submission of Password package:
  - zkg install zeek/cybera/zeek-sniffpass
    - package creates alerts for cleartext passwords found in HTTP traffic.

## Loading/executing packages in different ways

- Calling with script
  - zeek -Cr http.pcap sniff-demo.zeek
- View script contents
  - cat sniff-demo.zeek
  - @load /opt/zeek/share/zeek/site/zeek-sniffpass
- Calling from path
  - zeek -Cr http.pcap /opt/zeek/share/zeek/site/zeek-sniffpass
- Calling with package name
  - zeek -Cr http.pcap zeek-sniffpass
