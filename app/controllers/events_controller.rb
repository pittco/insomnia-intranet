class EventsController < AdminController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id])
    # @event.destroy
    redirect_to posts_path
  end

end
