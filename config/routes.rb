Rails.application.routes.draw do
  get 'users/index'
  get 'main/index'
  resources :articles #стать сайта
  root 'main#index'
  resources :articles do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
