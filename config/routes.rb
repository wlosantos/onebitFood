require 'api_version_constraint'

Rails.application.routes.draw do

  namespace :api, defaults: { format: :json }, constraints: { subdomain: 'api' }, path: '/' do
    namespace :v1, path: '/', constraints: ApiVersionConstraint.new(version: 1, default: true) do
      resources :categories, only: %i[ index ]
      resources :restaurants, only: %i[ index show ]
      resources :orders, only: %i[ show create ]
      resources :available_cities, only: %i[ index ]
    end
  end

end
