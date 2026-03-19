Rails.application.routes.draw do
  # Get /about
  get "about-us", to: "about#index", as: :about

  # Get /main
  root "main#index"

  # login for sign in
  get "sign_in", to: "sessions#new", as: :sign_in
  post "sign_in", to: "sessions#profile"
  delete "logout", to: "sessions#destroy", as: :logout

  # Register a new user
  get "sign_up", to: "registrations#new", as: :sign_up
  post "sign_up", to: "registrations#create"

  get "password", to: "passwords#edit", as: :changepassword
  patch "password", to: "passwords#update"

  get "password/reset", to: "password_resets#new", as: :reset_password
  post "password/reset", to: "password_resets#create"
  get "password/reset/edit", to: "password_resets#edit", as: :reset_password_edit
  patch "password/reset/edit", to: "password_resets#update"

  # Dashboard for app
  get "dashboard", to: "dashboard#index"

  # View all books in library
  get "viewbook", to: "viewbooks#viewall", as: :viewall_books
  # Add a book in library
  get "Addbook", to: "addbook#new", as: :add_book
  post "Addbook", to: "addbook#create"

  # Remove a book from library
  get "Removebook", to: "removebook#index", as: :remove_book
  delete "Removebook/:id", to: "removebook#destroy", as: :removebook

  # loan a book
  get "Loanbook", to: "loanbook#index", as: :loan_book
  post "Loanbook", to: "loanbook#create"

  # return a book
  get "viewLoan", to: "viewloan#index", as: :view_loan
  delete "Returbook/:id", to: "returnbook#destroy", as: :returnbook
  get "up" => "rails/health#show", as: :rails_health_check
end
