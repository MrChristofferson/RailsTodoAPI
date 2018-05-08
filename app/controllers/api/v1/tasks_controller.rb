module Api::V1
    class TasksController < ApplicationController

        def index 
            @tasks = Task.all 

            render json: @tasks.to_json(only: [:name, :priority, :due_date])
        end
        
    end
end
