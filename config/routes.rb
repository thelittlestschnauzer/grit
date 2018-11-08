Rails.application.routes.draw do

  root to: 'home#index'
  
  devise_for :users, path: 'auth', path_names: { sign_in: 'login', 
  												 sign_out: 'logout',
  												 sign_up: 'signup',
  												 registration: 'register' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
