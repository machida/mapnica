# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'maps#index'  

  namespace :api do
    namespace :maps do 
      resources :searche_year, only: :index, defaults: { format: :json }
      resources :searche_word, only: :index, defaults: { format: :json }
    end
  end

  resources :maps, only: [:index]
end
