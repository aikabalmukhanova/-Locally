class LocallersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]

  def index
    @locallers = Localler.all
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
