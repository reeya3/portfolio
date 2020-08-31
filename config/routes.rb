Rails.application.routes.draw do
  devise_for :users, path:'', path_names: { sign_in: 'signin', sign_up: 'register', sign_out: 'signout' }
  devise_for :views
  resources :portfoliios, expect: [:show]
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
