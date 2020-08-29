class PortfoliiosController < ApplicationController
  def index
    @portfoliio_items = Portfoliio.all
  end

  def new
    @portfoliio_item = Portfoliio.new
  end

  def create
    @portfoliio_item = Portfoliio.new(params.require(:portfoliio).permit(:title, :subtitile, :body))
    respond_to do |format|
      if @portfoliio_item.save
        format.html { redirect_to portfoliios_path, notice: 'Portfolio was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
end

