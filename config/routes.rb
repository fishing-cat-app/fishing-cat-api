# frozen_string_literal: true

::Rails.application.routes.draw do
  namespace :api do
    resources :current_user, :only => :index
  end

  devise_for :users, :path => "", :path_names => {
    # changes the default route names given by devise
    :sign_in => "login",
    :sign_out => "logout",
    :registration => "signup"
  },
  # points to our own controllers that will inherit from devise
  :controllers => {
    :sessions => "users/sessions",
    :registrations => "users/registrations"
  }
end
