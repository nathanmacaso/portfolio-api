if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_portfolio_session", domain: "nathanmacaso-api.herokuapp.com"
else
  Rails.application.config.session_store :cookie_store, key: "_portfolio_session"
end