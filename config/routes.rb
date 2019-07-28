Rails.application.routes.draw do
  get 'races/index'
  get 'races/show'
  get 'races/edit'
  get 'races/update'
  get 'races/destroy'
  get 'races/new'
  get 'races/create'
  root "pages#home"
  devise_for :users, controllers: { registrations: "registrations" }
  resources :organisations
  resources :races
  get "/welcome", to: "pages#welcome", as: "welcome"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
