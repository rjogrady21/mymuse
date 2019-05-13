Rails.application.routes.draw do
  get 'poems', to: 'poems#index'
  get 'books', to: 'books#index'
  get 'films', to: 'films#index'
  get 'plays', to: 'plays#index'
  get 'arts', to: 'arts#index'
end
