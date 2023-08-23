Rails.application.routes.draw do
  resources :users
  get '/first_user', to: 'users#first_user'
end
