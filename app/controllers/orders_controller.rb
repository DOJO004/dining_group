class OrdersController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @order = current_user.orders.build(order_params)

    if @order.save
      redirect_to order_index_path, notice: "Add order success!"
    else
      flash.now[:alert] = @order.errors.full_messages
      render :new
    end
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])

    if @order.update(order_params)
      redirect_to order_path, notice: "Update order success!"
    else
      flash.now[:alert] = "Update order false..."
      render :edit
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
  end

  private

  def order_params
    params.require(:order).permit(:title, :leader)
  end
end
