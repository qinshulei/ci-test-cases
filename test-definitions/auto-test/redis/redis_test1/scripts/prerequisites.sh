#!/bin/bash

. ${APP_ROOT}/toolset/setup/basic_cmd.sh

#By default, it will use apt-get to install packages
INSTALL_CMD="$(tool_add_sudo) apt-get install"
INSTALL_OPTIONS="-y -q"

BUILD_ESSENTIAL="build-essential automake cmake"
#However it will use yum on other platforms such as CentOS
if [ "$(which yum 2>/dev/null)" ] ; then 
    INSTALL_CMD="$(tool_add_sudo) yum install"
    BUILD_ESSENTIAL="automake cmake"
    yum update -y -q
fi

if [ "$(which apt-get 2>/dev/null)" ] ; then
    ${INSTALL_CMD} ${INSTALL_OPTIONS} apt-utils
    apt-get update -y -q 
fi

#Add build and common tools
if [ "$(which yum 2>/dev/null)" ] ; then
    $(tool_add_sudo) yum -y -q install "Devlopment Tools"
fi


${INSTALL_CMD} ${INSTALL_OPTIONS} ${BUILD_ESSENTIAL} 



