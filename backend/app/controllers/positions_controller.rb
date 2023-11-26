class PositionsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        positions = Position.all
        p  positions
        render  json:positions
    end

    def show
        position = Position.find(params[:id])
        p  positions
        render  json: position
    end

    def create
        Position.create(comment:params["comment"],latitude:params["latitude"],longitude:params["longitude"])
    end
end
