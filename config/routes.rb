Rails.application.routes.draw do
  # Get /about
  get "about-us", to: "about#index", as: :about

  # Get /main
  root "main#index"

  # login for sign in
  get "/sign_in", to: "login#index", as: :sign_in
  post "/sign_in", to: "login#profile"

  # Register a new user
  get "/sign_up", to: "registrations#new", as: :sign_up
  post "/sign_up", to: "registrations#create"

  get "/dashboard", to: "dashboard#index"

  get "up" => "rails/health#show", as: :rails_health_check
end
