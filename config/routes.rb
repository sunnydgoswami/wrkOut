Rails.application.routes.draw do
  resources :workouts do
    resources :exercises
  end
  
  get '/search' => 'search#index'
  root 'workouts#index'
end
