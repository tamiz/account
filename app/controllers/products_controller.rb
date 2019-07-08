class ProductsController < ApplicationController

	def index
		@product = Product.all
	end

	def create
		@product = Product.new(product_params)
		if @product.save
			redirect_to @product
		else
		  render 'new'
		end
	end


