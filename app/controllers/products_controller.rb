class ProductsController < ApplicationController
  def index
    @cart_items = cart
  end

  def add
    @cart_items = cart
    @cart_items << params[:product]

    cart = @cart_items
    redirect_to :root
  end
end
