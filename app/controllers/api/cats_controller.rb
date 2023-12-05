module Api
  class CatsController < ApplicationController
    before_action :authenticate_user!

    def index
      render :json { :cat => "Meow" }
    end
  end
end
