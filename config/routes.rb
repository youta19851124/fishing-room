Rails.application.routes.draw do
  root to: 'catches#index'
  resources :catches, only: [:index, :new, :create, :destroy, :show, :edit]
end