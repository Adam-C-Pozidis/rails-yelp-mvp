Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [ :index, :new, :create ]
  end
  resources :reviews, only: %i[show edit update destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
