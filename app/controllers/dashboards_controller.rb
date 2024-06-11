class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def show
    # @user = User.find(params[???])
    # this will be a user's public profile page
  end

  def profile
    @user = current_user
  end
end
