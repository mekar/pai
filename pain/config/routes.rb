Pain::Application.routes.draw do
  get "pages/home"

  get "pages/contact_us"

  get "pages/about_us"

  devise_for :users

  resources :properties, :controller => :properties, :type => 'Property'
  resources :resdential, :controller => :properties, :type => 'Resdential'
  resources :independent_houses, :controller => :properties, :type => 'IndependentHouse'
  resources :apartments, :controller => :properties, :type => 'Apartment'
  resources :villas, :controller => :properties, :type => 'Villa'
  resources :plots, :controller => :properties, :types => 'Plot'
  resources :commercial, :controller => :properties, :type => 'Commercial'
  resources :office_spaces, :controller => :properties, :type => 'OfficeSpace'
  resources :show_rooms, :controller => :properties, :type => 'ShowRoom'
  resources :industrial_lands, :controller => :properties, :type => 'IndustrialLand'
  resources :hotels, :controller => :properties, :type => 'Hotel'
  resources :agricultural_land, :controller => :properties, :type => 'AgriculturalLand'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'pages#home'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
