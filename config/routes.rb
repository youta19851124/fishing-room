Rails.application.routes.draw do
  root to: 'catches#index'
  resources :catches do
    collection do
      get :search
    end
  end
end