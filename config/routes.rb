Rails.application.routes.draw do
  resources :beers
  root "home#index"
end
