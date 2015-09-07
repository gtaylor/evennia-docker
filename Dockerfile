FROM python:2.7
MAINTAINER Greg Taylor <gtaylor@gc-taylor.com>
WORKDIR /opt
RUN git clone https://github.com/evennia/evennia.git
WORKDIR /opt/evennia
RUN python setup.py install
WORKDIR /opt/
ADD ./image_scripts/setup_game.sh /opt/
RUN chmod +x /opt/setup_game.sh
CMD evennia
WORKDIR /opt/evennia-game
EXPOSE 4000 4001 8000 8021 8022
VOLUME /opt/evennia-game
