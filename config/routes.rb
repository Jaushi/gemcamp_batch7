Rails.application.routes.draw do
  root 'welcome#index'
  get 'about_us', to: 'welcome#about_us', as: 'about_us'
  get 'contact', to: 'welcome#contact', as: 'contact'
  resources :posts, only: [:index, :new, :create]
end