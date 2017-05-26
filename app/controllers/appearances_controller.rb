class AppearancesController < ApplicationController

  def index
    @appearances = Appearance.all
  end

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.new(appearance_params)

    if @appearance.save
      redirect_to appearances_path
    else
      render :new
    end
  end

  def show
  end

  private

    def appearance_params
      params.require(:appearance).permit(:rating, :guest_id, :episode_id)
    end

end
