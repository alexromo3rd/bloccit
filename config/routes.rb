Rails.application.routes.draw do
  get 'posts/index'

  get 'posts/show'

  get 'posts/new'

  get 'posts/edit'

  get 'welcome/index'

  get 'welcome/about'
  
  get 'welcome/contact'

  root 'welcome#index'
end
