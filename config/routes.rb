Rails.application.routes.draw do

  root to: 'users#dashboard'
  
  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout' }

  resources :opportunities

#   unauthenticated do
#     root to: 'static_pages#home'
#  end
  
end
