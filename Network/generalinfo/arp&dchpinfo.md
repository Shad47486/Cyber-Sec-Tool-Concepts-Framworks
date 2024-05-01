# What is Address Resolution Protocol (ARP)? How does it Work?

- ARP is Technology that is responsible for allowing devices to identify themselves on a network.
  - Allows a device to associate its MAC address with an IP address on the network.
    - Each device on a network will keep a log of the MAC addresses associated with other devices.
  - When devices wish to communicate with another, they will send a broadcast to the entire network searching for the specific device.
    - Devices can use the ARP protocol to find the MAC address (and therefore the physical identifier) of a device for communication.

- Each device within a network has a ledger to store information on, which is called a cache.
  - In the context of the ARP protocol, this cache stores the identifiers of other devices on the network.
  - In order to map these two identifiers together (IP address and MAC address), the ARP protocol sends two types of messages:
    - ARP Request
      - When an ARP request is sent, a message is broadcasted to every other device found on a network by the device, asking whether or not the device's MAC address matches the requested IP address.
    - ARP Reply
      - If the device does have the requested IP address, an ARP reply is returned to the initial device to acknowledge this.
  - The initial device will now remember this and store it within its cache (an ARP entry).

## What is Dynamic Host Configuration Protocol (DHCP)? How does it Work?

- A DCHP server allows IP addresses to be assigned either manually or automatically.

- When a device connects to a network, if it has not already been manually assigned an IP address, it sends out a request (DHCP Discover) to see if any DHCP servers are on the network.
  - The DHCP server then replies back with an IP address the device could use (DHCP Offer).
    - The device then sends a reply confirming it wants the offered IP Address (DHCP Request), and then lastly, the DHCP server sends a reply acknowledging this has been completed, and the device can start using the IP Address (DHCP ACK).

- What type of DHCP packet is used by a device to retrieve an IP address?
  - DHCP Discover
- What type of DHCP packet does a device send once it has been offered an IP address by the DHCP server?
  - DHCP Request
- Finally, what is the last DHCP packet that is sent to a device from a DHCP server?
  - DHCP ACK
