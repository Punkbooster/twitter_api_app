Rails.application.routes.draw do
  resources :articles
  
  root 'articles#index'

  get 'auth/:provider/callback', to: 'sessions#create'

end
