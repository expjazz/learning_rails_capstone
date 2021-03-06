# frozen_string_literal: true

Rails.application.routes.draw do
  get 'users/new'
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/search', to: 'static_pages#search'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  resources :users do
    resources :inbox_messages
  end
  resources :apartments do
    resources :comments
  end
  post '/likes', to: 'likes#create'

  resources :apartments do
    resources :likes
  end

  resources :tags
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
