Rails.application.routes.draw do
  devise_for :users
  root to:"genres#index"
  resources :genres, only: [:new, :create] do
    resources :problems
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
