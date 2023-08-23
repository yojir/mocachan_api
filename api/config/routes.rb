Rails.application.routes.draw do
  resources :users
  resources :remittance_histories
  get '/first_user', to: 'users#first_user'
end
