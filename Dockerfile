FROM busybox
##database connection
ARG DATABASE_PASSWORD
ENV DATABASE_TYPE=postgres
ENV DATABASE_HOST=grafana-prod-db.cluster-cprshbdbiooy.us-east-1.rds.amazonaws.com
ENV DATABASE_NAME=grafana_db
ENV DATABASE_USER=grafana
ENV MY_DATABASE_PASSWORD=$DATABASE_PASSWORD