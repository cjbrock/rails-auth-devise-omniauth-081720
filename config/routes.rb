Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations', omniauth_callbacks: 'callbacks' }

  resources :sushis do 
    resources :ingredients
  end

  resources :ingredients

  get '/', to: "sushis#home"
  get '/:anything', to: "application#wrong_page"

  root to: "sushis#index"
end
