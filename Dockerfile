FROM python:2.7
MAINTAINER Greg Taylor <gtaylor@gc-taylor.com>

ADD ./evennia/ /opt/evennia
WORKDIR /opt/evennia
RUN python setup.py install
ADD ./image_scripts/setup_game.sh /opt/
RUN chmod +x /opt/setup_game.sh
WORKDIR /opt/evennia-game

CMD evennia
EXPOSE 4000 4001 8000 8021 8022
VOLUME /opt/evennia-game
