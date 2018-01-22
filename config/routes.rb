Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root route ~ 'controller name#view name'
  root 'posts#index', as: 'home'

  #Regular route
  get 'about' => 'pages#about', as: 'about'

  #Resource
  resources :posts do
    collection do
      get :search
    end
    resources :comments
  end

  # Generates the paths
  # posts_path
  # post_path
  # new_post_path
  # edit_post_path

end
