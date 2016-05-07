Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    namespace :kinect do
      resources :segments, only: [:create] do
      end
    end
    namespace :pepper do
      resources :directions, only: [:index] do
        collection do
          get :clear
        end
      end
    end
  end
end
