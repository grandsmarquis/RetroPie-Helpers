mkdir -v /tmp/list
cd ~/RetroPie/roms/
for D in *; do
    if [ -d "${D}" ]; then
        ls "${D}" > /tmp/list/"${D}".txt
    fi
done
find /tmp/list/ -empty -delete
rm /tmp/list/esconfig.txt
rm /tmp/list/doom.txt 
rm /tmp/list/duke3d.txt 
cd -
zip -j GameList /tmp/list/*txt
