#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

change_common_js() {
    commonfile=$(find $install_dir -name common.js)

    sed -i "s:document.location.host:document.location.host + \"$path\":g" $commonfile
}
