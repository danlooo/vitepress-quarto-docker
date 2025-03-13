docker build -t buildenv .
docker run -v /var/run/docker.sock:/var/run/docker.sock -v $PWD/docs:/work buildenv quarto render .
npm run docs:dev
