FROM node:7
##database connection
ENV GF_DATABASE_TYPE=postgres
ENV GF_DATABASE_HOST=grafana-prod-db.cluster-cprshbdbiooy.us-east-1.rds.amazonaws.com
ENV GF_DATABASE_NAME=grafana_db
ENV GF_DATABASE_USER=grafana
ENV GF_DATABASE_PASSWORD=$DATABASE_PASSWORD
ADD app.js /app.js
ENTRYPOINT ["node", "app.js"]