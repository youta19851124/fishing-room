Rails.application.routes.draw do
  root to: 'catches#index'
  resources :catches
end