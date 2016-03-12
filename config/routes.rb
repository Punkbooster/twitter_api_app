Rails.application.routes.draw do
  resources :articles
  
  root 'articles#index'

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]

end
