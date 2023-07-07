 docker run -itd --name books_app -p 8000:8000 -e DJANGO_SECRET_KEY=JRbDNDJ_1y2nbc6PJ9qOPAWBljiHwiSesiHPkP00pC0 -e DEBUG=False -e DJANGO_SUPERUSER_PASSWORD=django_password alexeino/books:v1

 export DATABASE_URL=psql://django_user:django_password@aws-postgres-1.cwjzzbpwwn4f.us-east-1.rds.amazonaws.com:5432/db_books