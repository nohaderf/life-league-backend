class UserLeaguesController < ApplicationController

    def index 
        userLeagues = UserLeague.all
        render json: userLeagues
    end

    def show
        userLeague = UserLeague.find(params[:id])
        render json: userLeague
    end

    def create
        userLeague = UserLeague.create(user_league_params)
        render json: userLeague
    end

    def destroy
        userLeague = UserLeague.find(params[:id])
        userLeague.destroy
        render json: userLeague
    end

    private

    def user_league_params
        params.permit(:user_id, :league_id, :rank)
    end

end
