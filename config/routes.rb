Rails.application.routes.draw do
  resources :stories, except: [:update, :destroy, :edit]
  root to: "pages#index"
  namespace :admin do
    root to: "stories#index"
    resources :stories
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
