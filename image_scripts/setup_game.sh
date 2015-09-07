#!/bin/bash
# This is a simple script that handles some setup work for new games.

evennia --init mygame
mv mygame/* evennia-game/
cd evennia-game
evennia migrate
echo "We will now create your admin user."
evennia createsuperuser
echo "Setup complete! Run docker-compose up"
