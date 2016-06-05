Rails.application.routes.draw do
  resource :api, only: [:show], format: :json do
    collection do
      get 'favourite'
    end
  end

  root to: 'home#index'
end
