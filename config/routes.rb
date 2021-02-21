Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
  devise_for :users
  root to: 'pages#home'
  resource :visitors
  get 'update-visitor-needs' => "visitors#update_needs"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
