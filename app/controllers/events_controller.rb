class EventsController < ApplicationController

  def index
    events = Event.all

    render json: events
  end

  def create
    event = Event.create(event_params)
    if event.valid?
      render json: event
    else
      render json: {errors: event.errors.full_messages}, status: 422
    end
  end

  def update
    event = Event.find(params[:id])
    if event.update(event_params)
      render json: event
    else
      render json: {errors: event.errors.full_messages}, status: 422
    end
  end

  def destroy
    event = Event.find(params[:id])
    event.delete
  end


  private
    def event_params
      params.permit(:title, :allDay, :start, :end, :user_id)
    end

end
