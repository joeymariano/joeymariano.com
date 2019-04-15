Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'welcome#index'

  get 'music', to: 'welcome#music'

  get 'art', to: 'welcome#art'

  get 'code', to: 'welcome#code'

  get 'resume', to: 'welcome#resume'

  get 'contact', to: 'welcome#contact'

end
