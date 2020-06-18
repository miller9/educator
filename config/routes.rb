Rails.application.routes.draw do

  root to: 'home#index'
  get "home", to: "home#index"

  get "articles", to: "articles#index"
  get "articles/new", to: "articles#new"
  post "articles", to: "articles#create"
  get "articles/:id", to: "articles#show"
  get "articles/:id/edit", to: "articles#edit"
  patch "articles/:id", to: "articles#update", as: :article
  delete "articles/:id", to: "articles#destroy"

end
