FROM mysterysd/wzmlx:heroku

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY . .
RUN pip3 install --no-cache-dir -r requirements.txt
RUN rm -rf Dockerfile heroku.yml LICENSE README.md


CMD ["bash", "start.sh"]
