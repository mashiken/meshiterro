Rails.application.routes.draw do
  root 'post_images#index'
  devise_for :users
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
  	resource :favorites, only: [:create, :destroy]
    resource :post_comments, only: [:create, :edit]
  end
  resources :users, only: [:show, :edit, :update]
end
