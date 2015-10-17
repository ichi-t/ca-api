class GetOrderController < ApplicationController
  def  index
    @request = Order.where(orderId: params[:orderid])
    # Jbuilder.encode do |json|
    #   render json.my_order @request
    # end

    render json: @request

    # render :json => @request
           
    # render :text => "testing.."
  end
end
