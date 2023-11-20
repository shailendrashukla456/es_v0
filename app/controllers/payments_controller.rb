class PaymentsController < ApplicationController
   
   
    def index
      @payments = current_user.payments
    end
  
    def show
        set_payment
    end
  
    private
  
    def set_payment
      @payment = Payment.find(params[:id])
    end
  
    def payment_params
      params.require(:payment).permit(:total_paid, :payment_mode, :date)
    end
  end