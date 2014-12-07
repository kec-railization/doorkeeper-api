MyGreenSpaceAPI::Application.routes.draw do
  scope module: :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :users, only: [:index]
    end
  end
end
