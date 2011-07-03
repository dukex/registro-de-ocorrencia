Defesacivil::Application.routes.draw do
  devise_for :users

  resources :categories
  resources :occurrences do
    member do
      #match :map
    end
  end

  root :to => "occurrences#index"
 end
