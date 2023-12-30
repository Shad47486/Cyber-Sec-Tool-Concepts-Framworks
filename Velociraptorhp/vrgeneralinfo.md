# What is Veloiraptor (VR)?

- Adv open-source endpoint monitoring, digital forensic and cyber response platform.
  - Digital Forensic and Incident Response (DFIR) professionals who needed a powerful and efficient way to hunt for specific artifacts and monitor activities across fleets of endpoints.
    - Unique bc the VR exe can act as a server or a client and it can run on Windows, Linux, and MacOS.
      - Also compatible with cloud file sys, such as AWS EFS and GCP Filestore.
      - Can be deployed on ALOT (OVER ~10000!!) of client endpoints
      *** COOl NOTE: Rapid 7 & VR work togetherish**


## How Does VR work with other sys?

- Using Linux to run the VR as a server & executing a second VR exe to run as an agent on the client side (windows)
  - Client-Server Model:
  - Also thanks to WSL (Windwos Subsystem for Linux)
    - This allows windows to be used as the client-side for the linux VR server to resposne to the VR agent installed on the window client.

## How is VR started?

- When starting VR on OS what comand is used to start the Velocripator Server (Ubuntu Terminal)?
  - ./velociraptor-v0.5.8-linux-amd64 --config velociraptor.config.yaml frontend -v
    - If all works well Go to local host given from output, put the ip given or local host in ur broswer of choice (google, ISS, Firfox, etc.)
      - login if needed
        - Refer to documentation if needed for help/troubleshooting
          - [Deployment of VR in different OS](https://docs.velociraptor.app/docs/deployment/#instant-velociraptor)

## What commands are used to add windows as a client (CMD) using a ubuntu terminal?

- velociraptor-v0.5.8-windows-amd64.exe --config velociraptor.config.yaml client -v

## What is the The Virtual File System (VFS)?

- A server side cache of the files on the endpoint.
  - It is merely a familiar GUI to allow inspection of the client’s filesystem.
    - This can prove useful in an incident response scenario where you, the analyst, need to inspect artifacts in a client.
      - [More_info_on_VFS](<https://docs.velociraptor.app/docs/gui/vfs/>)

- In the VFS tab on the left pane, along with the middle pane, there are 4 folders (or accessors, filesystem access drivers):
  - file - uses operating system APIs to access files
  - ntfs - uses raw NTFS parsing to access low level files
  - registry - uses operating system APIs to access the Windows registry
  - artifacts - previously run collections.
    - When any folder is clicked  in the left pane, additional details are displayed in the middle pane. 
      - For example, if the file folder is clicked, a subfolder will appear, which is C:. Now the details in the middle pane change to reflect C:.

- As well as 3 buttons on the top of the middle pane:
  1. Refresh the current directory (sync its listing from the client)
  2. Recursively refresh this directory (sync its listing from the client)
  3. Recursively download this directory from the client


## What is Artifacts (or VQL Modules)?

- Velociraptor allows packaging VQL queries inside mini-programs called Artifacts.
  - An artifact is simply a structured YAML file containing a query, with a name attached to it.
    - This allows Velociraptor users to search for the query by name or description and simply run the query on the endpoint without necessarily needing to understand or type the query into the UI.
    - [More info on VQL](./vrvql.md)
    - [Performing Forensics amalysis with VQL](<https://docs.velociraptor.app/docs/forensic/>)