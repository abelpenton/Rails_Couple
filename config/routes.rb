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
  
  resources :ladys
  resources :mens
  root 'articles#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
