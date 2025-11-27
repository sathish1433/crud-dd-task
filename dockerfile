#use node image
FROM node:20

#set a project working directory
WORKDIR /app

#copy the project directory
COPY . .

# Install frontend dependencies
RUN cd backend && npm install

# Install frontend dependencies
RUN cd frontend && npm install

# Angular needs to be global
RUN npm install -g @angular/cli

#start the start.sh file
CMD ["sh","start.sh"]

EXPOSE 8081

