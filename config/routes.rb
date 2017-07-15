Rails.application.routes.draw do

  resources :posts
  resources :advertisements

  get 'about' => 'welcome#about'
  get 'contact' => 'welcome#contact'
  get 'faq' => 'welcome#faq'

  root 'welcome#index'
end
