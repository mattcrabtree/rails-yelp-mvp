Rails.application.routes.draw do
  resources :restaurants do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :reviews, only: [:new, :create]
  end

  namespace :admin do
    resources :restaurants, only: [:index]
  end
end
