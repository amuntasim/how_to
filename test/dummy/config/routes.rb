Rails.application.routes.draw do

    namespace :mercury do
      resources :images
    end

  mount Mercury::Engine => '/'

  mount HowTo::Engine => "/how_to"
end
