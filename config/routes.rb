Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations" }

  resources :lists do
    resources :translations
  end

  resources :subscriptions, only: [:create]

  # other routes ...
  StaticPagesController.action_methods.each do |action|
    get "/#{action}", to: "static_pages##{action}", as: "#{action}_page"
  end

  root 'static_pages#home'
end
