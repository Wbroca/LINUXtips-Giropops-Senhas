#Desafio2

FROM nginx:alpine

LABEL mantainer="willians.oliveira@outlook.com"

RUN apk update && apk add pip redis && pip install --no-cache-dir -r requirements.txt 

EXPOSE 5000

ENTRYPOINT [ "nginx" ]

CMD ["-g","daemon off;"]


https://www.freecodecamp.org/news/how-to-dockerize-a-flask-app/