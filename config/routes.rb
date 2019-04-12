Rails.application.routes.draw do
  get 'welcome/index'
 
  resources :users do
  resources :articles
end
  

  root 'welcome#index'
end
