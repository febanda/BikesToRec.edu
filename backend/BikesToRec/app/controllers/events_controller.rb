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
    
end
