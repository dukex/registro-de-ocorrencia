Defesacivil::Application.routes.draw do
  devise_for :users
  resources :occurrences
  resources :categories
  root :to => "occurrences#index"
end
