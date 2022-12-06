# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

### Execution steps

- Step 1

Clone this project

```bash
    git clone git@github.com:gusbdev/my-docker-rails-template.git
```

- Step 2

Enter into clone folder and build docker image

```bash
    docker build .
```

- Step 3

To generate a Ruby On Rails application, run:

```bash
    docker-compose run web rails new . — force — database=postgresql
```

- Step 4

After replacing the referred files in the terminal, run:

```bash
    docker-compose build
```

- Step 5

In the folder config, find _config.yml_ and replace the content with the folowing configuration

```yml
default: &default
  adapter: postgresql
  encoding: unicode
  host: db
  username: postgres
  password: root
  pool: 5

development:
  <<: *default
  database: example_app_development

test:
  <<: *default
  database: example_app_test
```

- Step 6

Add this in the Gemfile

```ruby
    gem 'pg', '0.18.4'
```

- Step 7

Build with docker-compose again

```bash
    docker-compose build
```

- Step 8

Up application

```bash
docker-compose up -d
```

- Step 9

Create database

```bash
    docker-compose run web rake db:create
```
