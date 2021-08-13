# Square API Documentation

> An API only Rails app that allows cross origin resource sharing with a React Redux frontend. The database is structured around three models: `User`, `Hotel`, `Review` and `FavouriteHotel`.
## Endpoints

_Base URL_: `https://square-api-rr.herokuapp.com`

|Description|Method|Endpoint|
|:---|:---|:---|
|Sign up to create an account|POST|`/users`|
|Update user info|PUT|`/users/:user_id`|
|Delete an account|DELETE|`/users/:user_id`|
|Log in to created account|POST|`/login`|
|Log out if logged in|DELETE|`/logout`|
|Create a hotel|POST|`/hotels`|
|Update a hotel|PUT|`/hotels/:hotel_id`|
|Delete a hotel|DELETE|`/hotels/:hotel_id`|
|Fetch hotels list |GET|`/hotels`|
|Fetch hotel reviews |GET|`/hotels/:hotel_id/hotel_reviews`|
|Fecth users favoruite hotel list |GET|`/users/:user_id/favourites`|
|Add hotel to favourites |POST|`/users/:user_id/favourite/hotel`|
|Delete an existing favourite hotel|DELETE|`/users/:user_id/favourite/hotel/:hotel_id`|
|Fetch expenses in a given list|GET|`/lists/:list_id/expenses`|


## Expected Response Status Codes

|Class|Symbol|HTTP status code|
|:---|:---|:---|
|Success|:ok|200|
|Success|:created|201|
|Client Error|:bad_request|400|
|Client Error|:unauthorized|401|
|Server Error|:unprocessable_entity|500|


## Built With
- Ruby 3.0.1
- Rails 6
- Postgresql
- RSpec

## Getting Started

- To get a copy of the API, run `git clone https://github.com/Diegodsha/hotel-api`
- Run `bundle install` to install dependencies
- Start development server by executing `rails s -p 3001`
- Visit the link `http://localhost:3001` on your browser to access resources
- Run `bundle exec rspec` to get test report

## Author
<div align="center">
<img src="https://user-images.githubusercontent.com/70416006/121233844-aff9e800-c858-11eb-99e4-d36b833d3fa9.png">
</div>
<div align="center">
<img src="https://user-images.githubusercontent.com/70416006/121235243-42e75200-c85a-11eb-967d-ea05dd5efe1f.png">
</div>

👤 &nbsp; **Diego Hernández**
- Portfolio: [Portfolio](https://dshagui.com/)
- LinkedIn: [diegoshdezaguilar](https://www.linkedin.com/in/diegoshdezaguilar/)
- GitHub: [@Diegodsha](https://github.com/Diegodsha)
- Twitter: [@diegohdezchimo](https://twitter.com/diegohdezchimo)

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse
