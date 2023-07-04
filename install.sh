#!/bin/bash
DIR="$HOME/.local/share/icons"
find ./ -type d -name "files" -exec cp -r {} ./ \;
if [ ! -d "$DIR" ]; then
    echo "Directory $DIR does not exist. Creating it now."
    mkdir -p $DIR
    cp -aR ./files/* $DIR/
else
    cp -aR ./files/* $DIR/
fi
rm -rf ./files
gtk-update-cursor-cache