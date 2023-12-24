# Using The Client Machines overview (endpoints)

- [Refering to documentation for any questions](<https://docs.velociraptor.app/docs/gui/clients/>)

## Shells 

- VR can use the Client-Server model deployment to use the servers shells (powershell, bash, CMD, or VQL) to exe remotely to the server machine (Linux) from the client side (windows)
  - Thanks to WSL (windows Subsystem for Linux) this remote exe is possible.
    - Click on one of the options and run the command in & click launch

## Interrogate

- Normally Occurs when the client first enrolls, but you can interrogate any client by clicking the interrogate button
  - Provides basic info such as hostname, labels, last seen, ip, & last seen time

## VQL Drilldown

- This displays additional info about the client, such as mem & CPU Usage over 24 hrs timespan
  - May show AD domain if the client is a domain joined machine & the active local acc for the client.
    - Data is represented by 2 colors:
      - Orange: Memory usage
      - Blue: CPU Usage

## Collected

- Helps analyst see the results from the commands exe prev from Remote Shell or others actions
  - Can show Interactions with VFS (Virtual File System)