Rails.application.routes.draw do
  get "about-us", to: "about#index", as: :about
  get "sign_up", to: "registrations#new"
  get "sign_in", to: "sessions#new"
  root to: "main#index"
  post "sign_up", to: "registrations#create"
  post "sign_in", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  get "/auth/twitter/callback", to: "omniauth_callbacks#twitter"
  resources :twitter_accounts
  resources :tweets

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
