class EventsController < CommonController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  # GET /my_events
  def my_events
    @events = []

    return unless current_user

    @events = current_user.interested_events.map { |interest| interest.event }
  end

  def unsubscribe

    u = User.find params[:user_id]
    e = Event.find params[:event_id]

    interest = UserInterest.where(user: u, event: e).first
    return unless interest

    respond_to do |format|

      if !interest.destroy
        format.json { render json: 'Você não possui interesse nesse evento.', status: :unprocessable_entity }
      else
        format.json { redirect_to e }
      end

    end

  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new

    @event = Event.new
   

  end

  # GET /events/1/edit
  def edit
    @categories = Category.all.map{ |c| [c.name, c.id] }
  end

  # POST /events
  # POST /events.json
  def create

    @event = Event.new(event_params)
    
    if(@event.category_id == nil)
      @event.category_id = 1
    end

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update

    @event.category_id = params[:category_id]
    super(@event, 'Post atualizado com sucesso', event_params);
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    super(@event, 'Post apagado com sucesso', events_url)
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:image, :title, :description, :start_time, :end_time, :latitude, :longitude, :address, :category_id)
    end
end
