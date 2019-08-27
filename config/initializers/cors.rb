Rails.application.config.middleware.insert_before 0, Rack::Cors do
  # local development
  allow do
    origins "http://localhost:3000"
    resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
  end

  # for production (heroku domain)
  # allow do
  #   origins "https://nathanmacaso.herokuapp.com"
  #   resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
  # end
end