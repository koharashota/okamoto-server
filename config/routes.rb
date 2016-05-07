Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    namespace :kinect do
      resources :segments, only: [:create] do
      end
    end
    namespace :pepper do
      resources :trainings, only: [:index] do
      end
    end
  end
end
