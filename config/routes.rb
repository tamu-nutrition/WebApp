Rails.application.routes.draw do
  resources :students do
    get '/students/update/' => 'students#update', :as => :update_student
  end
  devise_for :admins, controllers: { omniauth_callbacks: 'admins/omniauth_callbacks' }
  devise_scope :admin do
    get 'admins/sign_in', to: 'admins/sessions#new', as: :new_admin_session
    get 'admins/sign_out', to: 'admins/sessions#destroy', as: :destroy_admin_session
  end
  resources :participations do
    get '/participations/new' => 'participations#new', :as => :new_participation
  end
  resources :events
  resources :people
  resources :requests
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'people#index'
end
