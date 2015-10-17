class GetOrderController < ApplicationController
  def  index
    @request.unshift request:true if @request = Order.where(orderId: params[:orderid])
    
    # @data = []

    render json: @request
    
  end
end
