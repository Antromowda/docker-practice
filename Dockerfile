# Image the container will be built from
FROM node:16-alpine

# Container work directory
WORKDIR /app

# The first . refers to the directory where the Dockerfile is and the second . refers to the Docker container, in that case since i specified in the WORKDIR in /app the second . means /app
# So in this case it'll copy everything that is not ignored in the .dockerignore file into a folder called /app created in the image via WORKDIR
COPY . .

# As soon as the container is up it'll run this command to install every dependencies and devDependencies
RUN yarn

# Not necessary, but imposes which port the container will run
EXPOSE 4000

CMD ["yarn", "dev"]
