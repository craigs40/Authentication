# frozen_string_literal: true

Rails.application.routes.draw do
  get 'posts/new'
  get 'posts/index'
  devise_for :posts
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root 'posts#new', as: :authenticated_root
    end
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  resources :posts, only: %i[new create index show]
end
