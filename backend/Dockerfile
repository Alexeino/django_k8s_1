FROM python:3.9


RUN apt-get update -y \
    && apt-get install postgresql-client -y 

ENV PYTHONUNBUFFERED 1
RUN mkdir /home/app
WORKDIR /home/app

COPY . .
RUN chmod +x /home/app/migrate.sh
RUN pip install -r requirements.txt

# Providing Database default is ARG other provide with --build-arg DATABASE_URL=?

ENV DATABASE_URL=${DATABASE_URL}

ENTRYPOINT [ "/home/app/migrate.sh" ]