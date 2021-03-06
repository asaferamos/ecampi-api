# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api, path: '/' do
    namespace :v1 do
      devise_for :users, controllers: {
        registrations: 'devise/registrations',
        sessions:      'devise/sessions',
        passwords:     'devise/passwords'
      }

      devise_for :admins, controllers: {
        registrations: 'devise/registrations',
        sessions:      'devise/sessions',
        passwords:     'devise/passwords'
      }

      resources :accounts
    end
  end
end
