class LocallersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]

  def index
    @locallers = Localler.all

    # The `geocoded` scope filters only locallers with coordinates
    @markers = @locallers.geocoded.map do |localler|
      {
        lat: localler.latitude,
        lng: localler.longitude
      }
    end

    @activities = Activity.all
    if params[:filter].present?
      @locallers = @locallers.joins(:activities).where(activities: {title: params[:filter]})
    end
  end

  def new
    @localler = Localler.new
  end

  def create
    @localler = Localler.new(localler_params)
    @localler.user = current_user
    if @localler.save
      redirect_to localler_path(@localler)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @localler = Localler.find(params[:id])
  end

  private

  def localler_params
    params.require(:localler).permit(:description, :location, :availability, activity_ids: [])
  end
end
