FROM microsoft/aspnet

COPY project.json /app/
WORKDIR /app
RUN ["dnu", "restore"]
COPY . /app

EXPOSE 5001
ENTRYPOINT ["dnx", "-p", "project.json", "web"]
