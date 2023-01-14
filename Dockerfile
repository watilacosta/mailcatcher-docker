FROM ruby:3.1

RUN gem install mailcatcher --no-document

ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

EXPOSE 1080/tcp
EXPOSE 1025/tcp

CMD mailcatcher --foreground --ip=0.0.0.0

# BUILD CONTAINER: docker build -f Dockerfile . -t "mailcatcher"
# RUN CONTAINER: docker run -it -d -p 1080:1080 -p 1025:1025 --network api_default --name mailcatcher mailcatcher