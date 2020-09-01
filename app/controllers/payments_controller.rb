class PaymentsController < ApplicationController
  def index
    @payments = Payment.all
  end

  def new
    @payment = Payment.new
  end

  def create
    payment = Payment.new(resource_params)
    payment.save
    flash[:notice] = 'Pocket has been created'
    redirect_to payments_path
  end

  def edit
    @payment = Payment.find(params[:id])
  end

  def update
    @payment = Payment.find(params[:id])
    @payment.update(resource_params)
    flash[:notice] = 'Pocket has been updated'
    redirect_to payment_path(@payment)
  end

  def destroy
    @payment = Payment.find(params[:id])
    @payment.destroy
    flash[:notice] = 'Pocket has been deleted'
    redirect_to payments_path
  end

  def show
    id = params[:id]
    @payment = Payment.find(id)
  end

  private
    def resource_params
      params.require(:payment).permit(:id_transaction, :status, :upload)
    end
end
