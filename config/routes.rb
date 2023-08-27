Rails.application.routes.draw do
  devise_for :users
  root to: 'catches#index'
  resources :catches do
    collection do
      get :search
    end
  end
end