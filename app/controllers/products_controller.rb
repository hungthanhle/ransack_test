class ProductsController < ApplicationController

  def index
    # http://localhost:3000/products?q=but&page=1 <- SAI
    # http://localhost:3000/products?q%5Bname_cont%5D=but&commit=Search
    # http://localhost:3000/products?q[name_cont]=but&commit=Search&page=1
    @q = Product.ransack(params[:q])
    # @products = @q.result
    @products = @q.result.page(params[:page]).per(1)
    if !params[:q].nil?
      render json: @products
    end
  end
end
