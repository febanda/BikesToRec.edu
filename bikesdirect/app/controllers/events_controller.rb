class EventsController < ApplicationController
    def create 
        event = Event.create(event_params)
    end

    def index
        render json: Event.all
    end
end
