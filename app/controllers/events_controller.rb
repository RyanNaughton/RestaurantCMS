class EventsController < ApplicationController

  def index
    @events = Event.order("'created_at' DESC").page(params[:page])
    render :layout => false
  end

  def create
    @event = Event.new

    respond_to do |format|
      if @event.save
        format.js
      else
        format.json { render :json => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    object = params[:dom_id].to_model
    data = params.select { |k,v| k.in? object.class.attribute_names }
    object.update_attributes(data)
    render :nothing => true
  end

  def destroy
    @object = Event.find(params[:id])
    respond_to do |format|
      if @object.destroy
        format.js
      else
        format.json { render :json => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

end
