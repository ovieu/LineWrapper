Rails.application.routes.draw do
  resources :results, only: [:new, :create]
  root 'results#new'
  get '/results', to: 'results#new'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
