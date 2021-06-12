# cellarmonster api

The cellar monster api runs on ruby version 2.7.3 and uses postgres for its database. To install, run the following commands from the root directory:

```
bundle install
rails db:create
rails db:migrate
# for example seed data
rails db:seed
rails server
```

By default, the server will run on port `3001` (leaving room to run node on `3000`).

## Routes
Here are a few important routes for the application:

### bottles
* `GET /bottles`: show all bottles
* `GET /:by/:term`: show all bottles from a given resource by term. this can be an attribute resource or a search.
* `POST /bottles`: create new bottle resource from posted json object
* `PATCH /bottles/:id`: update the bottle with given id
* `DELETE /bottles/:id`: update the bottle with given id

### attributes
* `GET /countries`: show all countries
* `GET /producers`: show all producers
* `GET /varietals`: show all varietals
* `GET /bins`: show all bins

### orders
* `GET /orders`: show all orders
* `GET /orders/:user_id`: show all orders by user
* `POST /orders`: create new order from posted json object

### users
* `GET /users`: show all users
* `GET /users/:id`: show user by id
* `POST /login`: login user from credentials and create jwt
* `DELETE /logout`: log current user out
* `GET /current_user`: return token of current user for frontend to check against
* `POST /signup`: create new user from json
* `PATCH /signup`: update user from json (id in object)
* `DELETE /signup`: delete by user signified in json object
