Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }

  resources :users do
    get 'confirm_otp_sent', on: :collection
    get 'verify_otp', on: :member
    post 'process_otp_verification', on: :member
  end

  root 'home#index'
end
