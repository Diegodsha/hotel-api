if Rails.env == 'production'
    Rails.application.config.session_store :cookie_store, key: '_square_app', domain: 'https://square-api-rr.herokuapp.com'
else
    Rails.application.config.session_store :cookie_store, key: '_square_app'
end