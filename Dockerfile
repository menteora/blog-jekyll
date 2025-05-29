FROM ruby:3.2

# install Jekyll and bundler
RUN gem install jekyll bundler

# create non-root user
RUN useradd -m jekyll

WORKDIR /app

USER jekyll

ENTRYPOINT ["jekyll", "serve", "--watch", "--force_polling"]
