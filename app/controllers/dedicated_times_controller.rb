class DedicatedTimesController < ApplicationController

    def index
        dedicatedTimes = DedicatedTime.all 
        render json: dedicatedTimes
    end

    def show 
        dedicatedTime = DedicatedTime.find(params[:id])
        render json: dedicatedTime
    end

    def create
        dedicatedTime = DedicatedTime.create(dedicated_time_params)
        render json: dedicatedTime
    end

    private

    def dedicated_time_params
        params.permit(:task_id, :date, :time_spent)
    end

end
