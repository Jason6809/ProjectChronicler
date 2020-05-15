Rails.application.routes.draw do
  root "contacts#index"

  devise_for :admins

  resources :contacts, only: [:index, :show, :create]

  get "dashboard", to: "admins#index"
  delete "dashboard/delete_all", to: "admins#destroy_all"
end

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
