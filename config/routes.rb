Rails.application.routes.draw do
  devise_for :users, path: '',
                     path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'sign_up' },
                     controllers: { registrations: 'users/registrations' }

  root 'friends#index'
  get '/about', to: 'about#index'
  resources :friends
end
