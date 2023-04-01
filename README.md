## POC Feature Toggle with Rails

### Getting Starting

Install dependencies

```
bundle install
```

Prepare database

```
rails db:prepare
```

Start server

```
./bin/dev
```

Or you can using Docker

```
docker compose build
```

Prepare database

```
docker compose run --rm web bundle exec rails db:prepare
```

Start server

```
docker compose up
```
