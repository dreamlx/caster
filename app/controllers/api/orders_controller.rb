module Api
  class OrdersController < Api::BaseController
    def index
      user_id = params[:user_id]
      if user_id.blank?
        @orders = Order.all
      else
        @orders = Order.where(:user_id => user_id)
      end
    end
    
    def show
      @order = Order.find(:id)
    end

    def create
      #TODO 完成订单
      @order = Order.new(user_id: params[:user_id], seat_id: params[:seat_id])

      if @order.save
        render status: 200, json: { message: 'Save order success', order: @order }
      else
        render status: 404, json: { message: 'Save order failed' }
      end

    end
  end
end