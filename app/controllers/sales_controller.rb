class SalesController < ApplicationController
  def new
    @sale = Sale.new
  end

  def create
    @sale = Sale.new(sale_params)
    if @sale.tax
      @sale.total = @sale.value - @sale.discount
    else
      @sale.total = (@sale.value - @sale.discount)*1.19
    end

  end

  def sale_params
    params.require(:sale).permit(:cod,:detail,:category,:value,:discount,:tax,:total)
  end
end
