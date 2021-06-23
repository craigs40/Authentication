# frozen_string_literal: true

Rails.application.routes.draw do
  get 'posts/new'
  get 'posts/index'
  devise_for :posts
  devise_for :users
  root to: 'posts#new'
  resources :posts, only: [:new, :create, :index]
end
