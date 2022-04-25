FROM fusuf/whatsasena:latest

RUN git clone https://github.com/MRnimaofc2/X-TROID-NIMA /root/X-TROID-NIMA
WORKDIR /root/X-TROID-NIMA/
RUN git clone https://github.com/MRnimaofc2/X-TROID-NIMA
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --ignore-engines

CMD ["node", "bot.js"]
