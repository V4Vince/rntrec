Rails.application.routes.draw do
  resources :contracts, except: [:new, :edit]

  resources :units, except: [:new, :edit], shallow: true do
    resources :contracts
  end

  resources :houses, except: [:new, :edit], shallow: true do
    resources :units
  end

  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
