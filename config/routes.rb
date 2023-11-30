# frozen_string_literal: true

::Rails.application.routes.draw do
  namespace :api do
    resources :current_user, :only => :index
  end

  devise_for :users, :path => "", :path_names => {
    :sign_in => "login",
    :sign_out => "logout",
    :registration => "signup"
  },
  :controllers => {
    :sessions => "users/sessions",
    :registrations => "users/registrations"
  }
end
