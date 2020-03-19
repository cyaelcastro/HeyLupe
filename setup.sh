echo "Hello!, installing HeyLupe!"
echo "Installing Homeassistant"
#Home Assistant Instalation
docker run --init -d --name="home-assistant" -e "TZ=America/Mexico_City" -v $(pwd)/homeassistant/:/config --net=host homeassistant/raspberrypi3-homeassistant:stable
echo "Installing Rhasspy"
#Rhasspy Instalation
docker run -d -p 12101:12101 --restart unless-stopped -v $(pwd)/Rhasspy/profiles:/profiles --device /dev/snd:/dev/snd synesthesiam/rhasspy-server:latest --user-profiles /profiles --profile es

