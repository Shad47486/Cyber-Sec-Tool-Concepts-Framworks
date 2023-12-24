# What is Veloiraptor (VR)?

- Adv open-source endpoint monitoring, digital forensic and cyber response platform.
  - Digital Forensic and Incident Response (DFIR) professionals who needed a powerful and efficient way to hunt for specific artifacts and monitor activities across fleets of endpoints.
    - Unique bc the VR exe can act as a server or a client and it can run on Windows, Linux, and MacOS.
      - Also compatible with cloud file sys, such as AWS EFS and GCP Filestore.
      - Can be deployed on ALOT (OVER ~10000!!) of client endpoints

* COOl NOTE: Rapid 7 & VR work togetherish

## How Does VR work with other sys?

- Using Linux to run the VR as a server & executing a second VR exe to run as an agent on the client side (windows)
  - Client-Server Model:
  - Also thanks to WSL (Windwos Subsystem for Linux)
    - This allows windows to be used as the client-side for the linux VR server to resposne to the VR agent installed on the window client.

## How is VR started?

- When starting VR on OS what comand is used to start the Velocripator Server (Ubuntu Terminal)
  - ./velociraptor-v0.5.8-linux-amd64 --config velociraptor.config.yaml frontend -v
    - If all works well Go to local host given from output, put the ip given or local host in ur broswer of choice (google, ISS, Firfox, etc.)
      - login if needed
        - Refer to documentation if needed for help/troubleshooting
          - [Deployment of VR in different OS][https://docs.velociraptor.app/docs/deployment/#instant-velociraptor]

#
