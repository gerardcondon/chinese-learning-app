Rails.application.routes.draw do
  devise_for :users

  resources :lists do
    resources :translations
  end

  # other routes ...
  StaticPagesController.action_methods.each do |action|
    get "/#{action}", to: "static_pages##{action}", as: "#{action}_page"
  end

  root 'static_pages#home'
end
