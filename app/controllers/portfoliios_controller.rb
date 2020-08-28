class PortfoliiosController < ApplicationController
  def index
    @portfoliio_items = Portfoliio.all
  end
end
