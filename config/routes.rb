Rails.application.routes.draw do
  resources :test
  root 'test#top'
  get 'test/top' => 'test#top'
  get 'test/new' => 'test#new'
  get 'test/index' => 'test#index'
  post 'test/create' => 'test#create'
  get 'test/:id/edit' => 'test#edit'
  post 'test/:id/update' => 'test#update'
  post 'test/:id/destroy' => 'test#destroy'

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
