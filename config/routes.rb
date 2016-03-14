Rails.application.routes.draw do
  post 'reminder', to: 'emails#reminder', as: 'reminder'
  
  post 'update_rating', to: 'saved_links#update_rating', as: 'update_rating'
  
  resources :saved_links, only: [:index]

  get 'update_link', to: 'saved_links#update_link', as: 'update_link'
  
  get 'posts/test'

  get 'posts/test_yaml'

  resources :appointments

  get 'my_clients', to: 'appointments#my_clients', as: 'my_clients'

  # get 'suggestions', to: 'posts#suggestions', as: 'suggestions'

  get 'search', to: 'search#results', as: 'search'

  get 'contact/new'

  post 'contact/send_email'

  resources :conversations do
    resources :chatmessages
  end

  #IP message token
  post 'tokens' => "tokens#create"

  get 'my_answers', to: 'answers#my_answers', as: 'my_answers'

  resources :messages

  resources :answers

  get 'sessions/create'

  get 'sessions/destroy'

  resources :users

  resources :posts

  get 'my_posts', to: 'posts#my_posts', as: 'my_posts'

 get 'auth/:provider/callback', to: 'sessions#create'

 get 'sign_out', to: 'sessions#destroy', as: 'sign_out'

 post 'send', to: 'messages#email_message', as: 'mail'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'posts#index'

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
    # constraints {subdomain: 'api' } do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
    # end
end
