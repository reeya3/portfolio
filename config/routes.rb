Rails.application.routes.draw do
  resources :blogs
  resources :portfoliios
  get 'pages/contact'
  get 'pages/about'
  get 'pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
