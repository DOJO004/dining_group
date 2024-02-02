class OrderDetailsController < ApplicationController
  def create
    @details = current_user.order_details.build(order_detail_params)
    @details.order_id = params[:order_id]

    if @details.save
      redirect_to order_path(id: params[:order_id]), notice: "訂餐成功!"
    else
      redirect_to order_path(id: params[:order_id]), alert: "請在嘗試一次。"
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @detail = OrderDetail.find(params[:id])
    @detail.destroy
    redirect_to order_path(id: params[:id])
  end

  private

  def order_detail_params
    params.require(:order_detail).permit(:food_name, :price, :amount, :order_id)
  end
end
