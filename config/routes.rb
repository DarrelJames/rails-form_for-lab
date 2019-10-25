Rails.application.routes.draw do

  resources :school_classes, only: [:new, :create, :show, :edit, :update]
  resources :students, only: [:new, :create, :show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
