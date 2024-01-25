cd ~/.steam/Steamapps/common/PalServer


mkdir -p ~/.steam/sdk64/
steamcmd +login anonymous +app_update 1007 +quit
cp ~/.steam/Steamapps/common/Steamworks\ SDK\ Redist/linux64/steamclient.so ~/.steam/sdk64/