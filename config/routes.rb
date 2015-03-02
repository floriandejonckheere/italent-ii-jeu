Rails.application.routes.draw do

  resources :cardsets do
    resources :cards
  end

  resources :categories

  root :to => redirect('/cardsets')
end
