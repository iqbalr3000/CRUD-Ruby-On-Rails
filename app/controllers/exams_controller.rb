class ExamsController < ApplicationController
  def index
    @exams = Exam.all
  end

  def new
    @exam = Exam.new
  end

  def create
    exam = Exam.new(resource_params)
    exam.save
    flash[:notice] = 'Exam has been created'
    redirect_to exams_path
  end

  def edit
    @exam = Exam.find(params[:id])
  end

  def update
    @exam = Exam.find(params[:id])
    @exam.update(resource_params)
    flash[:notice] = 'Exam has been updated'
    redirect_to exam_path(@exam)
  end

  def destroy
    @exam = Exam.find(params[:id])
    @exam.destroy
    flash[:notice] = 'Exam has been deleted'
    redirect_to exams_path
  end

  def show
    id = params[:id]
    @exam = Exam.find(id)
  end

  private
    def resource_params
      params.require(:exam).permit(:title, :mapel, :duration, :nilai, :keaktifan, :nilai, :student_id)
    end
end
