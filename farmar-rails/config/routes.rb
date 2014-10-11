Rails.application.routes.draw do

  get "/", to: "home#index"

  get "/home/login",         to: "home#login"
  post "/home/login",             to: "home#login_now"  

  get "/vendor/new_vendor",         to: "vendors#new_vendor"
  post "/vendor/new_vendor",        to: "vendors#create"
  get "/vendor/:id/vendor_landing", to: "vendors#vendor_landing"
  #something is wrong here

  get "/vendor/:id/edit",           to: "vendors#edit", as: :edit_vendor
  put "/vendor/:id",                to: "vendors#update"
  get "/vendor/:id/destroy_landing",to: "vendors#destroy_landing"
  get "/vendor/:id/destroy",        to: "vendors#destroy"
  get "/product/new_product",       to: "products#new_product", as: :add_product
  post "/product/new_product",      to: "products#create"
  get "/product/:id/product_list",  to: "products#product_list"
  get "/product/:id/edit",          to: "products#edit", as: :edit_product
  put "/product/:id",               to: "products#update"
  get "/product/:id/destroy_landing", to: "products#destroy_landing", as: :delete_product_landing
  get "/product/:id/destroy",       to: "products#destroy", as: :delete_product

  get "/market/new_market",         to: "markets#new_market", as: :add_market
  post "/market/new_market",        to: "markets#create"
  get "/market/:id/edit",           to: "markets#edit", as: :edit_market
  put "/market/:id",                to: "markets#update"

  root "home#index"

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
