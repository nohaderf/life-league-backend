class LeaguesController < ApplicationController

    def index 
        leagues = League.all
        render json: leagues
    end

    def show
        league = League.find(params[:id])
        render json: league
    end

    def create
        league = League.create(league_params)
        render json: league
    end

    def destroy
        league = League.find(params[:id])
        league.destroy
        render json: league
    end

    private

    def league_params
        params.permit(:name, :notes, :duration)
    end

end
