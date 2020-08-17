class WelcomeController < ApplicationController
    def index
        render json: { status: 200, message: "Gig App Api" }
      end
end
