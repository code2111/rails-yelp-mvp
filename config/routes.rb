Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:new, :create, :index, :edit, :show] do
    resources :reviews, only: [:create, :create, :index]
  end
end
