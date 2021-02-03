class LeaguesController < ApplicationController

    def index 
        Leagues = League.all
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

    def workout_exercise_params
        params.permit(:name, :notes, :duration)
    end

end
