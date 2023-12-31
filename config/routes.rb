Rails.application.routes.draw do
  devise_for :users
  root to: 'catches#index'
  resources :catches do
    resources :comments, only: [:create]
    collection do
      get :search
    end
  end
  resources :users, only: [:show, :edit, :update]
  resources :fishes, only: [:index, :show]
end