Rails.application.routes.draw do
  root to: 'visitors#index'
  mount Upmin::Engine => '/admin'
  devise_for :users
  resources :users
  resources :projects
  resources :companies
end
