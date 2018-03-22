Rails.application.routes.draw do
  devise_for :users
  get 'articles/index'
  get "special", to: "articles#index"

  
  resources :articles do
    resources :comments
  end

  resources :users, :only => [:show]
  resource :user, :only => [] do
    member do
      put :update, :as => :update_profile
      get :edit
      get :me
    end
  end

  resources :conversations do
    resources :messages
  end
  
  resources :relationships
  resources :ladys
  resources :mens
  root 'users#me'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
