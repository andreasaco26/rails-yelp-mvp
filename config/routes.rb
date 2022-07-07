# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "restaurants", to: "restaurants#index"
  get "restaurants/new", to: "restaurants#new"
  post "restaurants", to: "restaurants#create"
  get "restaurants/:id", to: "restaurants#show", as: :restaurant
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
end
