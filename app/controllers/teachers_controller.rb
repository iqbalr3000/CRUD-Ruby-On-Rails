class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def create
    teacher = Teacher.new(resource_params)
    teacher.save
    flash[:notice] = 'Teacher has been created'
    redirect_to teachers_path
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def update
    @teacher = Teacher.find(params[:id])
    @teacher.update(resource_params)
    flash[:notice] = 'Teacher has been updated'
    redirect_to teacher_path(@teacher)
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy
    flash[:notice] = 'Teacher has been deleted'
    redirect_to teachers_path
  end

  def show
    id = params[:id]
    @teacher = Teacher.find(id)
  end

  private
    def resource_params
      params.require(:teacher).permit(:nik, :name, :age, :kelas, :mapel)
    end
end
