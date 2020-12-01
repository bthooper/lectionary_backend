Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :lectionaries, only: [:index, :show] do
    resources :schedules, only: [:index, :show] do 
      resources :seasons, only: [:index, :show] do
        resources :days, only: [:index, :show] do
          resources :readings, only: [:index, :show]
        end
      end
    end
  end


end
