Rails.application.routes.draw do
<<<<<<< HEAD

=======
  get 'guiders_sessions/new'
  get 'sessions/index'
>>>>>>> b235a0c4b9b222e15fa60438e2bfb5e60aa8b29a
  get 'navigator/index'
  post 'navigator/index'
  get 'guiders_login' => 'guiders_sessions#new'
  post 'guiders_login' => 'guiders_sessions#create'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  get    'workspace' => 'sessions#show'#this should be changed into the address of worksspace
<<<<<<< HEAD

  post 'logout' => 'sessions#destroy'
  post 'guiders_logout' => 'guiders_sessions#destroy'

  resources :travelers 
=======
>>>>>>> b235a0c4b9b222e15fa60438e2bfb5e60aa8b29a
  resources :guiders
  resources :travelers do 
    resources :ordered_trips
  end
  resources :trip_goods
  get 'trip_goods/detail/:id' => 'trip_goods#detail'
  resources :ordered_trips
<<<<<<< HEAD
  resources :trip_goods
=======
>>>>>>> b235a0c4b9b222e15fa60438e2bfb5e60aa8b29a
  post 'search_goods' => 'trip_goods#search'
  get 'search_goods' => 'travelers#show'
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'navigator#index'

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
