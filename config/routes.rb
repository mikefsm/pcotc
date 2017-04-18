Rails.application.routes.draw do
  root 'home#index'

  resources :officers, only: [:index, :new, :create, :show, :edit, :update]
end
