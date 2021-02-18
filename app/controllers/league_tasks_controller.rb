class LeagueTasksController < ApplicationController

    def index
        leagueTasks = LeagueTask.all
        render json: leagueTasks
    end

    def show
        leagueTask = LeagueTask.find(params[:id])
        render json: leagueTask
    end

    def create
        leagueTask = LeagueTask.create(league_task_params)
        render json: leagueTask
    end

    def destroy
        leagueTask = LeagueTask.find(params[:id])
        leagueTask.destroy
        render json: leagueTask
    end

    private

    def league_task_params
        params.permit(:league_id, :task_id)
    end


end