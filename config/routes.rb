Rails.application.routes.draw do

  devise_for :users

  unauthenticated do
    root to: 'static_pages#home'
 end
 
 authenticated do
   get '/index', :to => 'static_pages#index'
 end
  
end
