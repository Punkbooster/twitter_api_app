Rails.application.routes.draw do
  resources :articles
  
  root 'atricles#index'

end
