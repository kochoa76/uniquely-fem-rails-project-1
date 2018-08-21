Rails.application.routes.draw do
root 'application#home'
resources :users
resources :companies do
  resources :reviews
end
resources :reviews, only: [:new,:create]

# post '/companies/:company_id/reviews/:id' => "reviews#show"
#
resources :users do
    resources :reviews, only: [:show]
  end



get '/auth/facebook/callback' => 'sessions#create'
get '/signin' => "sessions#new"
post '/signin' => "sessions#create"
get '/signout' => "sessions#destroy"
post '/signout'=> "sessions#destroy"

end
