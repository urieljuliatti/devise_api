
# frozen_string_literal: true

require 'api_constraints'

Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    mount_devise_token_auth_for 'User', at: 'auth'

    scope module: :v1,
          constraints: ApiConstraints.new(version: 1, default: false) do
      resources :articles
    end

    scope module: :v2,
          constraints: ApiConstraints.new(version: 2, default: true) do
      resources :articles
      resources :users
    end
  end
end
