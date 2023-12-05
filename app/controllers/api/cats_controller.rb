module Api
  class CatsController < ApplicationController
    def index
      render :json { :cat => "Meow" }
    end
  end
end
