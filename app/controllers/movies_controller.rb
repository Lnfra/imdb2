class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show

  end

  def new
    @move = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to @movie, notice: 'Movie was successfully created.'
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @movie.update(movie_params)
      redirect_to @movie, notice: 'Movie was successfully updated.'
    else
      render :edit
    end
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    parms.require(:movie).permit(:title, :summary, :youtube_embeded_id, :thumbnail)
  end

end

