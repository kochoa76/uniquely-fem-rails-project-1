Rails.application.routes.draw do
root 'application#home'
resources :users
resources :companies



end
