Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :student_athletes
        resources :profiles
        resources :academics
    end
  end
end
