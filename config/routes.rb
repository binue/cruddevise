Rails.application.routes.draw do
  devise_for :users
  root 'board#index'
  get 'board/index'
  post 'board/create'
  get 'board/new'
  get 'board/edit'
  get 'board/destroy'
  get '/board/destroy/:id' => 'board#destroy'
  get '/board/edit_view/:id' => 'board#edit_view'
  post '/board/edit/:id' => 'board#edit'
  
  post 'board/:post_id/comment_create' => 'board#comment_create'
  get '/board/destroy_reply/:id' => 'board#destroy_reply'
  get '/board/update_reply/:id' => 'board#update_reply'
  post  '/board/reply_update/:id' => 'board#reply_update'
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
