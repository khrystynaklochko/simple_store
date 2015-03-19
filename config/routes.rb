Rails.application.routes.draw do

  devise_for :users
  get '/admin', to: redirect('/admin/categories')
  namespace :admin do
    resources :categories
    resources :products
  end

  resources :categories, only: [:index, :show], path: '/'
  resources :products, only: [:show] do
    resources :reviews, only: [:create, :edit, :update, :destroy]
  end
end