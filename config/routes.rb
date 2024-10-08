Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  resources :prototypes, only: [:index, :new, :create, :edit, :update, :show, :destroy ]do
    resources :comments, only: :create
  end
  resources :users, only: :show 
end
