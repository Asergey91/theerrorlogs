Rails.application.routes.draw do


  get 'welcome/index'
  

  devise_for :users

  resources :users
  resources :posts 
  

  
   
  
   
   
   
   
   root 'welcome#index'

end 