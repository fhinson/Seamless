Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'base#home'

  resources :users, only: [:create] do
    member do
      get :get_shoe
      get :set_name
      get :set_gender
      get :set_sport
      get :set_music
    end
  end

end
