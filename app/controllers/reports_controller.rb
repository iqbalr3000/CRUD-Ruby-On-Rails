class ReportsController < ApplicationController
  def index
    @reports = Report.all
  end

  def new
    @report = Report.new
  end

  def create
    report = Report.new(resource_params)
    report.save
    flash[:notice] = 'Report has been created'
    redirect_to reports_path
  end

  def edit
    @report = Report.find(params[:id])
  end

  def update
    @report = Report.find(params[:id])
    @report.update(resource_params)
    flash[:notice] = 'Report has been updated'
    redirect_to report_path(@report)
  end

  def destroy
    @report = Report.find(params[:id])
    @report.destroy
    flash[:notice] = 'Report has been deleted'
    redirect_to reports_path
  end

  def show
    id = params[:id]
    @report = Report.find(id)
  end

  private
    def resource_params
      params.require(:report).permit(:title, :hasil, :mapel, :teacher_id, :student_id, :date)
    end
end
