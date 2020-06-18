Rails.application.routes.draw do

  root to: 'home#index'
  get "/home", to: "home#index"

  get "articles/new", to: "articles#new"
  post "articles", to: "articles#create"
  get "articles/:id", to: "articles#show"

end
