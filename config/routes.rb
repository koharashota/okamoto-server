Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    namespace :kinect do
    end
    namespace :pepper do
      resources :trainings, only: [:index] do
      end
    end
  end
end
