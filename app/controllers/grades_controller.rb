class GradesController < ApplicationController
  before_action :authenticate_admin!

  def index
    @grades = Grade.all
  end

  def show
  end

  def new
    @grade = Grade.new
  end

  def create
    @grade = Grade.new(grade_params)
    @grade.save

    if @grade.save
      flash[:success] = '学年が作成されました。'
      redirect_to grades_path
    else
      render 'grades/new'
    end
  end

  def edit
  end

  def destroy
  end

  private

  def grade_params
    params.require(:grade).permit(:grade_number)
  end
end
