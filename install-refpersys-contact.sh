#!/bin/bash
# SPDX-License-Identifier: AGPL-3.0-or-later
# file install-refpersys-contact.sh on github.com:bstarynk/web-refpersys.git
#
# © Copyright 2020 Basile Starynkevitch
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful, but
#   WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
#   Affero General Public License for more details.
#
#   You should have received a copy of the GNU Affero General Public
#   License along with this program. If not, see
#   <https://www.gnu.org/licenses/>.
#
# Author(s):
#       Basile Starynkevitch <basile@starynkevitch.net>
#
source $HOME/.refpersys-contact

## your $HOME/.refpersys-contact should set environment variables
## $RPSCONTACT_WEB_SERVER (the web server hostname)
## $RPSCONTACT_WEB_FCGI (on that web server, the full path of the
## FastCGI executable)
## and $RPSCONTACT_WEB_CXX could give the C++ compiler
## and $RPSCONTACT_WEB_CXXFLAGS could give compilation flags
## and $RPSCONTACT_WEB_LIBES could give linker flags and libraries 

if [ -z "$RPSCONTACT_WEB_SERVER" ]; then
    echo $0: missing RPSCONTACT_WEB_SERVER > /dev/stderr
    exit 1
fi

if [ -z "$RPSCONTACT_WEB_FCGI" ]; then
    echo $0: missing RPSCONTACT_WEB_FCGI > /dev/stderr
    exit 1
fi

if [ -z "$RPSCONTACT_WEB_CXX" ]; then
    RPSCONTACT_WEB_CXX=g++
fi

if [ -z "$RPSCONTACT_WEB_CXXFLAGS" ]; then
    RPSCONTACT_WEB_CXXFLAGS='-O2 -std=gnu++11 -g -Wall -Wextra'
fi

if [ -z "$RPSCONTACT_WEB_LIBES" ]; then
     RPSCONTACT_WEB_LIBES=
fi
