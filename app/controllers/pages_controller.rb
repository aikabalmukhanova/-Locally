class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home]

  def home
    @home = true
  end

  def chat
    @chat = true
  end
end
