class ProblemsController < ApplicationController
  def index
    @genre = Genre.includes(:user)
  end

  def new
    @problem = Problem.new
    # @genre = Genre.find(params[:genre_id])
  end

  def create
    @problem = Problem.new(problem_params)
    problem.create(problem_params)

    
    if @problem.save!
      redirect_to root_path, notice: '保存されました'
    else
      render :new
    end

  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def problem_params
    params.require(:problem).permit(:title, :code, :cause, :solution).merge(user_id: current_user.id)
  end


end
