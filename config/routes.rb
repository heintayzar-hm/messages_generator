Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'root#index'
  namespace :api do
    resources :messages
    get 'random-messages', to: 'messages#random'
  end
  get '*path', to: 'root#index', via: :all

end
