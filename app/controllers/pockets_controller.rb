class PocketsController < ApplicationController
  def index
    @pockets = Pocket.all
  end

  def new
    @pocket = Pocket.new
  end

  def create
    pocket = Pocket.new(resource_params)
    pocket.save
    flash[:notice] = 'Pocket has been created'
    redirect_to pockets_path
  end

  def edit
    @pocket = Pocket.find(params[:id])
  end

  def update
    @pocket = Pocket.find(params[:id])
    @pocket.update(resource_params)
    flash[:notice] = 'Pocket has been updated'
    redirect_to pocket_path(@pocket)
  end

  def destroy
    @pocket = Pocket.find(params[:id])
    @pocket.destroy
    flash[:notice] = 'Pocket has been deleted'
    redirect_to pockets_path
  end

  def show
    id = params[:id]
    @pocket = Pocket.find(id)
  end

  private
    def resource_params
      params.require(:pocket).permit(:balance, :student_id, :teacher_id)
    end
end
