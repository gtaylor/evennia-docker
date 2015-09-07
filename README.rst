Evennia in Docker
=================

This will eventually be everything needed to get Evennia running quickly
under Docker_ with docker-compose_.

.. _Docker: https://www.docker.com/
.. _docker-compose: https://docs.docker.com/compose/

Quickstart
----------

*NOTE: This isn't 100% working just yet.*
::

    pip install -r requirements.txt
    docker-compose build
    docker-compose run server bash -c "cd .. && ./setup_game.sh"
    # TODO: chmod the game dir
    docker-compose up

Legal
-----

The contents of this repository are licensed under the MIT License. See
``LICENSE`` for a copy.
