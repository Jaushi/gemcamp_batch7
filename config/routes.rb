Rails.application.routes.draw do
  root 'welcome#index'
  get 'about_us', to: 'pages#about_us', as: 'about_us'
  get 'contact', to: 'welcome#contact', as: 'contact'
  resources :posts
end