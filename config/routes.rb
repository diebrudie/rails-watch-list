Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ('/')
  root 'lists#index'

  resources :lists, only: %i[new show create index destroy] do
    resources :bookmarks, only: %i[new create destroy]
  end

  # resources :reviews, only: [:destroy]
end
