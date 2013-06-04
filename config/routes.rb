HowTo::Engine.routes.draw do
  resources :sections

  resources :contents
  root :to => "faq#show"
end
