FROM node:18
RUN git clone https://github.com/ChatGPTNextWeb/ChatGPT-Next-Web.git
WORKDIR "ChatGPT-Next-Web"
RUN npm i 
RUN npm run build
EXPOSE 3000

#ENV BASE_URL=https://api.openai.com

CMD ["npm", "run", "start"]