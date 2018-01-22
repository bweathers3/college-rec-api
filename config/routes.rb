Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :student_athletes do
        resources :profiles
      end
        resources :academics
        resources :athletics
    end
  end
end
