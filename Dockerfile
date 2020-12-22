FROM fusuf/whatsasena:publicbeta

RUN git clone https://github.com/Madhavreddy672/Whatsapp-GroupManagerBot /root/WhatsAsena
RUN mkdir /root/WhatsAsena/bin/
WORKDIR /root/WhatsAsena/

ENV TZ=Europe/Istanbul
RUN apk --no-cache --virtual build-dependencies add \
    python \
    make \
    g++ \
    && npm install \
    && apk del build-dependencies

CMD ["node", "bot.js"]
