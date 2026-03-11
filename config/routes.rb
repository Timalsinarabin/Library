Rails.application.routes.draw do
  # Get /about
  get "about-us", to: "about#index", as: :about

  # Get /main
  root "main#index"

  # Get /profile
  get "/profile", to: "profile#index"

  # Register a new user
  get "/sign_up", to: "registrations#new", as: :sign_up
  post "/sign_up", to: "registrations#create"

  get "up" => "rails/health#show", as: :rails_health_check
end
