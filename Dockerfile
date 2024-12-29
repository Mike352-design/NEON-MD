FROM quay.io/sampandey001/secktor

RUN git clone https://github.com/N3onAbyss/NEON-MD.git /root/N3onAbyss

# Clear npm cache and remove node_modules directories
RUN npm cache clean --force
RUN rm -rf /root/N3onAbyss/node_modules

# Install dependencies
WORKDIR /root/N3onAbyss
RUN npm install

# Add additional Steps To Run...
EXPOSE 3000
CMD ["npm","start" ]
# IF YOU ARE MODIFYING THIS BOT DONT CHANGE THIS  RUN rm -rf /root/N3onAbyss/node_modules
