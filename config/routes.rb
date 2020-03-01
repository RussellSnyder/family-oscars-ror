Rails.application.routes.draw do
  resources :categories do
    resources :nominations
  end 
  resources :families
  resources :awards_ceremonies
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "families#index"
end
