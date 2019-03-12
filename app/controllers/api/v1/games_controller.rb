class Api::V1::GamesController < ApplicationController
  #before_action :find_game, only [:show]

  # def show
  #   render json: @game
  # end

  def create
    @game = Game.create(game_params)
    if @game.save
      render json: @game, status: :accepted
    else
      render json: { errors: @game.errors }, status: :unprocessible_entity
    end
  end

  # def update
  #  @game.update(game_params)
  #  if @game.save
  #    render json: @game, status: :accepted
  #  else
  #    render json: { errors: @game.errors }, status: :unprocessible_entity
  #  end
  # end


  private

  def game_params
    params.permit(:time_survived, :kills, :damage, :revives, :respawns, :deaths, :finish, :user_id, :legend_id, :drop_id )
  end
  #
  # def find_game
  #   @game = Game.find(params[:id])
  # end

end
