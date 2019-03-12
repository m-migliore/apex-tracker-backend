class Api::V1::DropsController < ApplicationController
  def index
    @drops = Drop.all
    render json: @drops
  end
end
