Rails.application.routes.draw do
  get 'article/index'
  get "special", to: "article#index"

  

  root 'article#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
