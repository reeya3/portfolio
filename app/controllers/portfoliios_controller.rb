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

  def edit
    @portfoliio_item = Portfoliio.find(params[:id])
  end

  def update
    @portfoliio_item = Portfoliio.find(params[:id])
    respond_to do |format|
      if @portfoliio_item.update(params.require(:portfoliio).permit(:title, :subtitile, :body))
        format.html { redirect_to portfoliios_path, notice: 'Portfolio was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end
end

