class PositionsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index:
        positions = Position.all
        p  positions
        return json:positions
    end

    def show:
        position = Position.find()
        p  positions
        return json: position
    end

    def create:
        Position.create(comment:params["comment"],latitude:params["latitude"],longitude:params["longitude"])
    end
end
