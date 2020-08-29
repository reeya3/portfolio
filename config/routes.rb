Rails.application.routes.draw do
  resources :blogs
  resources :portfoliios, expect: [:show]
  get 'portfoliio/:id', to: 'portfoliios#show', as: 'portfoliio_show'
  #get 'pages/contact'
  #get 'pages/about'
  #get 'pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'

  root to: 'pages#home'

end
