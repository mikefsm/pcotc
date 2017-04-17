Rails.application.routes.draw do
  root 'home#index'

  resources :officers, only: [:index]
end
