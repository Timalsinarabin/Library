Rails.application.routes.draw do
  # Get /about
  get "about-us", to: "about#index", as: :about

  # Get /main
  root "main#index"

  # login for sign in
  get "sign_in", to: "login#index", as: :sign_in
  post "sign_in", to: "login#profile"
  get "logout", to: "sessions#destroy", as: :logout
  # Register a new user
  get "sign_up", to: "registrations#new", as: :sign_up
  post "sign_up", to: "registrations#create"

  # Dashboard for app
  get "dashboard", to: "dashboard#index"

  # View all books in library
  get "viewbook", to: "viewbooks#viewall", as: :viewall_books

  # Add a book in library
  get "Addbook", to: "addbook#new", as: :add_book
  post "Addbook", to: "addbook#create"

  # Remove a book from library
  get "Removebook", to: "removebook#index", as: :remove_book
  delete "Removebook/:id", to: "removebook#destroy", as: :remove
  # loan book
  get "Loanbook", to: "loanbook#index", as: :loan_book
  post "Loanbook", to: "loanbook#create"

  get "up" => "rails/health#show", as: :rails_health_check
end
