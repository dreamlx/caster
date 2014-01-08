module Api
  class OrdersController < Api::BaseController
    def index

    end
    
    def show
      
    end

    def create
      #TODO 完成订单
      @order = Order.new(user_id: params[:user_id], seat_id: params[:seat_id])
      @order.user = current_user

      if @order.save
        #redirect_to @order, notice: t("success", scope: "flash.controller.create", model: Order.model_name.human)
      else
        #redirect_to credits_path, alert: t("failure", scope: "flash.controller.create", model: Order.model_name.human)
      end

    end
  end
end