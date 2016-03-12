Rails.application.routes.draw do
  resources :articles
  
  root 'articles#index'

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]

  match 'signout', to: 'sessions#destroy', via: [:get, :post], as: 'signout'

  match 'auth/failure', to: redirect('/'), via: [:get, :post]

end
