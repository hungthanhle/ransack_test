class ProductsController < ApplicationController

  def index
    @products = Product.ransack(name_cont: "but").result
    # @products = Product.ransack(name_eq: "but").result
  end
end
