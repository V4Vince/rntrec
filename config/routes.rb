Rails.application.routes.draw do
  # #(/houses) houses#index and houses#create
  # #(/houses/:id) houses#show, houses#update, houses#destroy
  # resources :houses, except: [:new, :edit], shallow:true do
  #   #(/houses/:house_id/units) unitss#index and units#create
  #   resources :units
  #   #(/houses/:house_id/expenses) expenses#index and expenses#create
  #   resources :expenses
  # end
  #
  # #(/units/:id) units#show, units#update, units#destroy
  # resources :units, except: [:new, :edit], shallow:true do
  #   #(/units/:unit_id/expenses) expenses#index and expenses#create
  #   resources :expenses
  #   #(/units/:unit_id/contracts) contracts#index and contracts#create
  #   resources :contracts
  # end
  #
  # #(/expenses/:expense_id) expenses#destroy and expenses#show
  # resources :expenses, only: [:destroy, :show]
  # #(/contracts/:contract_id) contracts#destroy and contracts#show
  # resources :contracts, only: [:destroy, :show]


  #non nested routes
  resources :houses, except: [:new, :edit] do
    resources :expenses, only: [:index, :create]
  end

  resources :units, except: [:new, :edit], shallow:true do
    resources :expenses, only: [:index, :create]
  end

  resources :expenses, only: [:destroy, :show]
  resources :contracts, only: [:destroy, :show, :index]

  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
