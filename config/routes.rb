Rails.application.routes.draw do

  devise_for :users

  resources :users

  resources :opportunities

  unauthenticated do
    root to: 'static_pages#home'
 end
 
 authenticated do
   get 'users/opportunities/new', :to => 'opportunities#new'
 end
  
end
