Rails.application.routes.draw do
  get 'formes/index'
  get 'formes/new'
  get 'formes/create'
  get 'formes/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :formes, only: [:index, :new, :create, :destroy]   
  root "formes#index"
end
