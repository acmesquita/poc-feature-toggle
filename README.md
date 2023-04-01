## POC Feature Toggle with Rails

<p align="center">
  <img src="https://user-images.githubusercontent.com/15862643/223220640-7d772297-4922-4668-8105-b869e79f6239.png" />
</p>

Imagine a scenario where it is necessary to create a new functionality and to maintain the delivery flow, it will be necessary to gradually release it to customers. For this, we can use the Feature Flag solution, which aims to inform whether the user can view it.

### Functionality

- Create feature with resources
- Disconnect resources to feature
- Connect resources to feature
- List all features
- Delete feature
- Show a feature
- Authentication
- Endpoint public api to ask whether feature flag is active

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
