Rails.application.routes.draw do
  resources :beers
  resources :styles do
    get :filter, on: :collection
  end
  root "home#index"
end
