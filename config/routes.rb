Marketnauts::Application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/auth/facebook/callback' => 'users#authenticate'
      post '/auth/sign-out' => 'users#unauthenticate'

      resources :stocks
    end
  end

  # Uncomment when using 'history' as the location in Ember's router
  get '*foo', :to => 'landing#index'
end
