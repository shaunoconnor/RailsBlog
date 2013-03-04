ShaunOConnorBlog::Application.routes.draw do
  
  resources :works

  # Blog
  root to: 'posts#index'
  match '/blog/:page', to: 'posts#index', as: 'blog_page'
  match '/posts.:format', to: 'posts#index'
  match '/posts', to: redirect('/')
  resources :posts, only: [:show]
  resources :tags, only: [:index, :show]

  # Static pages
  match '/about', to: 'pages#about', as: 'about'
  match '/projects', to: 'pages#projects', as: 'projects'

  # Redirects
  match '/blog', to: redirect('/')
  match '/post/:permalink', to: redirect { |params, request| "/posts/#{params[:permalink]}" }
  match '/archive.:format', to: redirect('/blog')
  match '/about.:format', to: redirect('/about')

  # Admin
  namespace :admin do
    root to: 'admin#index'
    resources :posts, only: [:show, :new, :create, :update, :edit, :destroy, :index]
    resources :tags,  only: [:new, :create, :update, :edit, :destroy, :index]
  end
end
