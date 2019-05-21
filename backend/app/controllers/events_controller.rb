class EventsController < ApplicationController
    def create 
        event = Event.create(event_params)
    end

    def index
        render json: Event.all
    end

    def show
        render json: current_event
    end
    
    def update
        current_event.update(event_params)
        render json: current_event
    end
    
    def destroy
        current_event.destroy
        render json: current_event
    end
    
    def event_params
        params.permit(:user_id, :business_id)
    end
    
    def define_current_event
        if params[:id]
            @current_event = event.find(params[:id])
        else
            @current_event = event.new
        end
    end
    
    def current_event
        @current_event
    end
end
