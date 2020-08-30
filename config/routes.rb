Rails.application.routes.draw do
  resources :portfoliios, expect: [:show,]
  get 'rails-item', to: 'portfoliios#prails'
  get 'portfoliio/:id', to: 'portfoliios#show', as: 'portfoliio_show'

  #get 'pages/contact'
  #get 'pages/about'
  #get 'pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'

  root to: 'pages#home'
  resources :blogs do
    member do
      get :toggle_status
    end
  end

end
