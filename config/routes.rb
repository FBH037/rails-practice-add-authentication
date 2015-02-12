Rails.application.routes.draw do
  root "events#index"
  resources :events

  get '/sign-up' => 'registrations#new', as: :signup
  post '/sign-up' => 'registrations#create'
  get '/sign-in' => 'authentications#new', as: :signin
  post '/sign-in' => 'authentications#create'
  get '/sign-out' => 'authentications#destroy', as: :signout
end
