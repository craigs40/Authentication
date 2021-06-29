# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :posts, only: %i[new create index]
  resources :users, only: [:index]
  root 'posts#new'
end
