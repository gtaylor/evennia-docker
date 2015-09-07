#!/bin/bash

evennia --init mygame
mv mygame/* evennia-game/
cd evennia-game
evennia migrate
evennia -i start server
echo "Setup complete! Run docker-compose up"
