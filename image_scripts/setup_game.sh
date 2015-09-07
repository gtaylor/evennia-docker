#!/bin/bash
# This is a simple script that handles some setup work for new games.

# Some colors for the prettiness.
green=`tput setaf 2`
reset=`tput sgr0`

evennia --init mygame
mv mygame/* evennia-game/
cd evennia-game
evennia migrate
echo "${green}We will now create your admin user.${reset}"
evennia createsuperuser
echo "${green}Setup complete! You may now run: docker-compose up${reset}"
