class EventsController < AdminController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
    render 'edit'
  end

  def create
    @event = Event.create event_params 

    if @event.valid?
      redirect_to '/admin/events' 
    else
      flash[:alert] = @event.errors.full_messages
      render 'edit'
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update event_params 

    if @event.valid?
      redirect_to '/admin/events' 
    else
      flash[:alert] = @event.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to '/admin/events' 
  end

  private

  def event_params
    params.require(:event).permit(:name, :challonge_id, :starts_at, :ends_at)
  end

end
