class ActorsController < ApplicationController

	def show
		
	end

	def new
		
	end

	def create
		Actor.create(params[:actor])		
	end

	def edit

	end

	def update
	
	end

	private
  
    def actor_params
      params.require(:actor).permit(:name, :year_of_birth, :thumbnail)
    end

end
