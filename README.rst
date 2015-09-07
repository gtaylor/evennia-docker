Evennia in Docker
=================

This repo has everything needed to get Evennia running quickly
under Docker_ with docker-compose_.

.. _Docker: https://www.docker.com/
.. _docker-compose: https://docs.docker.com/compose/

Quickstart
----------

:: bash

    # From within evennia-docker...
    # Slap your choice of evennia source in. We'll default to canonical.
    git clone https://github.com/evennia/evennia.git
    # Install the reqs for evennia-docker.
    pip install -r requirements.txt
    # This will build the Docker image.
    docker-compose build
    # Creates your game directory, runs migrations, and sets a superuser
    # up for yourself.
    docker-compose run server bash -c "cd .. && ./setup_game.sh"
    # TODO: chmod the game dir
    # This will bring up the server and the portal.
    docker-compose up
    # Double CTRL+C when you want to stop it.

Legal
-----

The contents of this repository are licensed under the MIT License. See
``LICENSE`` for a copy.
