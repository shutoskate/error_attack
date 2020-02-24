class GenresController < ApplicationController

  def index
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(genre_params)
    @genre.user_id = current_user.id
    # binding.pry
    if @genre.save!
      redirect_to root_path, notice: '保存されました'
    else
      render :new
    end
  end

  private
  def genre_params
    params.require(:genre).permit(:language)
  end


end
