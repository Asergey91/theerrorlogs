Rails.application.routes.draw do


  get 'welcome/index'
  

  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :users do
    resources :posts
    member do
      get :following, :followers, :edit_photo
    end
  end

 
  
  
  resources :relationships,  only: [:create, :destroy]
  resources :comments, only: [:create, :destroy]
 
  
  get 'edit_photo', to: 'users#edit_photo'
   
  get 'friends_posts', to: 'relationships#index' 
   
  post 'posts/show', to: 'comments#create' 
   root 'welcome#index'

end 