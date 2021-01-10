class ThemesController < ApplicationController
  def index
    @date = Date.today
    @themes = Theme.all
  end

  def new
    @themes = Theme.all
  end

  def create
    theme = Theme.create(theme_params)
    redirect_to :index
  end



  private
  def theme_params
    params.permit(:subject)
  end
end
