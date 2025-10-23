#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

reset_common_js() {
    commonfile=$(find $install_dir -name common.js)

    sed -i "s:document\.location\.host.*;:document\.location\.host;:g" "$commonfile"
}

change_common_js() {
    commonfile=$(find $install_dir -name common.js)

    sed -i "s:document\.location\.host:document\.location\.host + \"$path\":g" $commonfile
}

install_config_file() {
    mkdir /etc/owc
    cp ../sources/default_specification.yml /etc/owc/specification.yml

    chown -R $app:$app /etc/owc
}