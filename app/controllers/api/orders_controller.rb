#coding: utf-8
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
      @order = Order.new(user_id: params[:user_id], seat_id: params[:seat_id])

      if @order.save
        seat = LessonSeat.find(params[:seat_id])
        seat.state = '已订'
        seat.save
        render status: 200, json: { message: 'Save order success', order: @order }
      else
        render status: 404, json: { message: 'Save order failed' }
      end
    end

    def destroy
      @order = Order.find(params[:id])
      @order.state = 'cancel'
      @order.save
      seat = LessonSeat.find(@order.seat_id)
      seat.state = '可选'
      seat.save
      render status: 200, json: { message: 'Cancel order success', order: @order }
    end
  end
end