Rails.application.routes.draw do
  resources :officers
  resources :students
  resources :other_events_lists
  resources :meeting_lists
  resources :requests
  resources :meeting_participations
  devise_for :admins, controllers: { omniauth_callbacks: 'admins/omniauth_callbacks' }
  devise_scope :admin do
    get 'admins/sign_in', to: 'admins/sessions#new', as: :new_admin_session
    get 'admins/sign_out', to: 'admins/sessions#destroy', as: :destroy_admin_session
  end
  resources :requests do
    member do
      post 'accept'
      post 'deny'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'students#index'
end
