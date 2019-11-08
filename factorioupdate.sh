
cd /tmp 
rm linux64*
wget https://factorio.com/get-download/latest/headless/linux64
#cd /usr/local/games/factorio/
tar -xvf linux64

/opt/factorio-init/factorio stop
echo copying files....
pause
cd /tmp/factorio
cp -r -v ./bin /usr/local/games/factorio/factorio/;
cp -r -v ./data /usr/local/games/factorio/factorio/;

cp -r -v ./bin /usr/local/games/factorio/factorio2/;
cp -r -v ./data /usr/local/games/factorio/factorio2/;
echo press enter to start factorio
pause
/opt/factorio-init/factorio start;
/usr/local/games/factorio/factorio2/bin/x64/factorio --config /usr/local/games/factorio/factorio2/config/config.ini --port 34297 --start-server-load-latest --server-settings /usr/local/games/factorio/factorio2/data/server-settings.json;