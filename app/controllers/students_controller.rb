class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    student = Student.new(resource_params)
    student.save
    flash[:notice] = 'Student has been created'
    redirect_to students_path
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(resource_params)
    flash[:notice] = 'Student has been updated'
    redirect_to student_path(@student)
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    flash[:notice] = 'Student has been deleted'
    redirect_to students_path
  end

  def show
    id = params[:id]
    @student = Student.find(id)
  end

  private
    def resource_params
      params.require(:student).permit(:name, :username, :age, :kelas, :address, :city, :NIK)
    end
end
