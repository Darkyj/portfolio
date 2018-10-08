Rails.application.routes.draw do
  root to: 'pages#home'  

  resources :s_portfolios
  resources :blogs

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

end
