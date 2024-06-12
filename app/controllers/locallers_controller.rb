class LocallersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @locallers = Localler.includes([:user, :activities]).near(params[:query], 50)
    @locallers = Localler.all if @locallers.empty?
    @activities = Activity.all
    if params[:filter].present?
      @locallers = @locallers.joins(:activities).where(activities: { title: params[:filter] })
    end
    # The `geocoded` scope filters only locallers with coordinates (latitude & longitude)
    @markers = @locallers.geocoded.map do |localler| {
      lat: localler.latitude,
      lng: localler.longitude,
      info_window_html: render_to_string(partial: "info_window", locals: { localler: localler }),
      marker_html: render_to_string(partial: "marker", locals: { localler: localler })
    }
    end
  end

  def new
    @localler = Localler.new
  end

  def create
    # Check if the user has already a localler_id
    if current_user.localler
      redirect_to root_path, alert: "You already are a localler ❤️"
      return
    end
    # Create a new localler
    @localler = Localler.new(localler_params)
    @localler.user = current_user
    if @localler.save
      redirect_to localler_path(@localler)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @chat = Chat.new
    @localler = Localler.find(params[:id])

    # The `geocoded` scope filters only locallers with coordinates
    @markers = [{
      lat: @localler.latitude,
      lng: @localler.longitude,
      info_window_html: "",
      marker_html: render_to_string(partial: "marker", locals: { localler: @localler })
    }]
  end

  def update
    @localler = Localler.find(params[:id])
    @localler.update(localler_params)
  end

  private

  def localler_params
    params.require(:localler).permit(:description, :location, :availability, activity_ids: [])
  end
end
