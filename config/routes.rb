Rails.application.routes.draw do
  root 'home#index'

  resources :trainings, only: [:index, :new, :create, :show, :edit, :update]

  resources :officers, only: [:index, :new, :create, :show, :edit, :update]


end
