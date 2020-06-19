Rails.application.routes.draw do

  resources :types
  devise_for :educators
  root to: 'home#index'
  get "home", to: "home#index"

  get "perfil", to:"educators#edit"

  resources :articles do
    get "educator/:educator_id", to: "articles#from_author", on: :collection
  end


end
