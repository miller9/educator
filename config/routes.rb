Rails.application.routes.draw do

  devise_for :educators
  root to: 'home#index'
  get "home", to: "home#index"


  resources :articles do
    get "educator/:educator_id", to: "articles#from_author", on: :collection
  end


end
