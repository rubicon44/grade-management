class GroupsController < ApplicationController
  before_action :authenticate_admin!

  def index
  end

  def show
    @grade = Grade.find(params[:id])
    @groups = Group.where("grade_id = '#{@grade.id}'")
  end

  def new
    @group = Group.new
    @grade = Grade.find(params[:grade_id])
  end

  def create
    @group = Group.new(group_params)
    @group.grade_id = params[:grade_id] unless params[:grade_id].blank?
    @group.save

    if @group.save
      flash[:success] = 'クラスが作成されました。'
      redirect_to group_path(@group.grade_id)
    else
      render 'groups/new'
    end
  end

  def edit
  end

  def destroy
  end

  private

  def group_params
    params.require(:group).permit(:group_number, :grade_id)
  end
end
