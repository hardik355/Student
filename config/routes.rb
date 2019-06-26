Rails.application.routes.draw do
  
  # get 'welcomes/New'
  # get 'welcomes/Update'
  # get 'welcomes/Show'
  # #get 'sessions/new'
  # get 'login/login'
  # get 'registers/index'
  #  get 'registers/new'
  #  get 'registers/update'
  #  get 'registers/show'
  # root to: 'registers/index'
  
   resources :registers 
   resources :sessions
   resources :welcomes
  
  # get 'registers/:id', to: 'registers#show' ==> Query String Parameter
  # get ':registers/show/:id' => 'registers#show', :as => 'show_registers'  ==> Static Segment
  # get ':registers(/:show(/:2))'   /==> Dynamic 
  #  get 'registers(/:id)', to: :show ==> Bounded 

  # resources :registers do
  #   member do
  #     get 'show'
  #   end
  # end

  # resources :registers do
  #   get 'show', on: :member
  # end
end
