# == Route Map
#
#           Prefix Verb   URI Pattern                 Controller#Action
#          rails_g GET    /rails/g(.:format)          rails#g
# rails_controller GET    /rails/controller(.:format) rails#controller
#   rails_Captions GET    /rails/Captions(.:format)   rails#Captions
#            users POST   /users(.:format)            users#create
#         new_user GET    /users/new(.:format)        users#new
#             user GET    /users/:id(.:format)        users#show
#                  DELETE /users/:id(.:format)        users#destroy
#          session POST   /session(.:format)          sessions#create
#      new_session GET    /session/new(.:format)      sessions#new
#                  DELETE /session(.:format)          sessions#destroy
#         pictures GET    /pictures(.:format)         pictures#index
#                  POST   /pictures(.:format)         pictures#create
#      new_picture GET    /pictures/new(.:format)     pictures#new
#          picture GET    /pictures/:id(.:format)     pictures#show
#         captions POST   /captions(.:format)         captions#create
#      new_caption GET    /captions/new(.:format)     captions#new
#

Rails.application.routes.draw do

  get 'rails/g'

  get 'rails/controller'

  get 'rails/Captions'

  resources :users, only: [:new, :create, :destroy, :show]
  resource :session, only: [:new, :create, :destroy]
  resources :pictures, only: [:show, :index, :new, :create]
  resources :captions, only: [:new, :create]


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
