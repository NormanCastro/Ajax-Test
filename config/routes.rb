Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :empresas do
  	resources :reclamos, only: [:create, :destroy, :update, :edit]
  end	

	devise_for :users


  root 'empresas#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
