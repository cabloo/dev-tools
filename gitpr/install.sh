#!/bin/bash

while true; do
    echo -n "Path to python scripts directory (e.g. /home/zane/scripts/python): "
    read SCRIPTS_DIR
    if [ -z "$SCRIPTS_DIR" ]; then
        echo "Quitting"
        exit 0
    fi

    if [ ! -d "$SCRIPTS_DIR" ]; then
        if mkdir -p "$SCRIPTS_DIR" 2>/dev/null; then
            break
        else
            echo "Could not create directory $SCRIPTS_DIR. Please try another."
        fi
    else
        break
    fi
done

while true; do
    echo -n "Please follow this link and generate a GitHub Access Token: "
    echo "https://github.com/settings/tokens/new?scopes=repo&description=Git%20Pull%20Request"
    echo -n "Please input the generated GitHub Access Token: "
    read ACCESS_TOKEN

    if [ -z $ACCESS_TOKEN ]; then
        echo "Quitting"
        exit 0
    fi

    break
done

script_dest="$SCRIPTS_DIR/gitpr.py"
shell_dest="/usr/local/bin/gitpr"
cp "gitpr.py" "$script_dest"
sed -i.bak s/your_github_access_token/$ACCESS_TOKEN/ "$script_dest"
sudo cp "gitpr" "$shell_dest"
sudo sed -i.bak s@your_gitpr_location@$script_dest@ "$shell_dest"
