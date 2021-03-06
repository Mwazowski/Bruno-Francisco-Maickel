Rails.application.routes.draw do


  get 'login_admin/login2'

  get 'login_admin/logout2'

 get 'login' => 'login_aluno#index', as: :login_form

 post 'login_aluno/login', as: :login
 get 'logout'=> 'login_aluno#logout', as: :logout

root 'login_aluno#index'

 get "admin"=> 'login_admin#index', as: :loginempresa_form
  post 'login_admin/login2',as: :login2
  get 'logout2'=> 'login_admin#logout2', as: :logout2

	resources :conteudos
	resources :listas
  resources :respostas
	resources :perguntas
  resources :usuarios
	
  
   match 'usuarios/deletar/:id', controller: 'usuarios', action: 'destroy', via: 'get'
   match 'conteudos/deletar/:id', controller: 'conteudos', action: 'destroy', via: 'get'
   match 'listas/deletar/:id', controller: 'listas', action: 'destroy', via: 'get'
   match 'perguntas/deletar/:id', controller: 'perguntas', action: 'destroy', via: 'get'
   match 'perguntas/respostas/deletar/:id', controller: 'respostas', action: 'destroy', via: 'get'
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
