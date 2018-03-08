Rails.application.routes.draw do
  root 'requests#index'
  resources :requests do
    resources :samples do
      member do
        patch :complete
      end
    end
  end
end
