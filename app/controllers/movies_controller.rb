class MoviesController < ApplicationController
  def index
    if params[:title].present?
      @movies = Movie.where('title LIKE ?', "%#{params[:title]}%")
    elsif params[:year].present?
      @movies = Movie.where('year LIKE ?', "%#{params[:year]}%")
    elsif params[:country].present?
      @movies = Movie.where('country LIKE ?', "%#{params[:country]}%")
    elsif params[:genre].present?
      @movies = Movie.where('genre LIKE ?', "%#{params[:genre]}%")
    elsif params[:published_at].present?
      @movies = Movie.where('published_at LIKE ?', "%#{params[:published_at]}%")
    else
      @movies = Movie.order(:release_year => :desc)
    end
    render json: @movies
  end

  def show
    @movie = Movie.find(params[:id])

    render json: @movie
  end

  def create
    @movie = Movie.new(movie_params)

    if Movie.where(:title => @movie.title).exists?
      render json: "#{@movie.title} already exists"
    else
      if @movie.save
        render json: @movie
      else
        render json: @movie.errors, status: :unprocessable_entity
      end
    end
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update(movie_params)
      render json: @movie
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
  
    render json: "{@movie.title} was deleted"
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :year, :country, :genre, :published_at, :description)
  end
end
