class ActorsController < ApplicationController

  def show

  end

  def new
    @actor = Actor.new
  end

  def create
    @actor = Actor.new(actor_params)
    if @actor.save
      redirect_to @actor, notice: 'Actor was successfully created.'
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @actor.update(actor_params)
      redirect_to @actor, notice: 'Actor was successfully updated.'
    else
      render :edit
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @actor = Actor.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def actor_params
    params.require(:actor).permit(:name, :year_of_birth, :thumbnail)
  end


end
