# What is Subnetting?

- Subnetting is the term given to splitting up a network into smaller, miniature networks within itself.
  - Subnetting is achieved by splitting up the number of hosts that can fit within the network, represented by a number called a subnet mask.
    - As we can recall, an IP address is made up of four sections called octets.
    - The same goes for a subnet mask which is also represented as a number of four bytes (32 bits), ranging from 0 to 255 (0-255).
  - Subnetting provides a range of benefits, including:
    - Efficiency, Security, & Full control
  - Subnets use IP addresses in three different ways:
    - Identify the network address
    - Identify the host address
    - Identify the default gateway

## Different Types of IP Addresses

- Network Address
  - This address identifies the start of the actual network and is used to identify a network's existence.
    - EX: With the IP address of 192.168.1.100 will be on the network identified by 192.168.1.0
      - 192.168.1.0

- Host Address
  - An IP address here is used to identify a device on the subnet
    - EX: A device will have the network address of 192.168.1.1
      - 192.168.1.100

- Default Gateway
  - The default gateway address is a special address assigned to a device on the network that is capable of sending information to another network
    - EX: Any data that needs to go to a device that isn't on the same network (i.e. isn't on 192.168.1.0) will be sent to this device.
      - These devices can use any host address but usually use either the first or last host address in a network (.1 or .254)
        - 192.168.1.254

- Subnets
