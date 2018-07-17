Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :student_athletes do
          resources :profiles
          resources :academics
          resources :athletics
        end
      end
    end
  end
end
