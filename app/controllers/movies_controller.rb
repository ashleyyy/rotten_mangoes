class MoviesController < ApplicationController

  def index
    @allmovies = Movie.all.page(params[:page]).per(5)
    if params[:search]
      @movies = Movie.search(params[:search])
    else
      @movies = Movie.all
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    restrict_access
    @movie = Movie.new
  end

  def edit
    restrict_access
    @movie = Movie.find(params[:id])
  end

  def create
    restrict_access
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to movies_path, notice: "#{@movie.title} was submitted successfully!"
    else
      render :new
    end
  end

  def update
    restrict_access
    @movie = Movie.find(params[:id])

    if @movie.update_attributes(movie_params)
      redirect_to movie_path(@movie)
    else
      render :edit
    end
  end

  def destroy
    restrict_access
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path
  end

  def movie_params
    params.require(:movie).permit(
      :title, :release_date, :director, :runtime_in_minutes, :remote_image_url, :description, :image
    )
  end

end
