class PortfoliiosController < ApplicationController
  def index
    @portfoliio_items = Portfoliio.all
  end

  def prails
    @rails_items = Portfoliio.rails
  end

  def new
    @portfoliio_item = Portfoliio.new
    3.times { @portfoliio_item.technologies.build }
  end

  def create
    @portfoliio_item = Portfoliio.new(params.require(:portfoliio).permit(:title, :subtitle, :body,
                       technologies_attributes: [:name]))
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

  def show
    @portfoliio_item = Portfoliio.find(params[:id])
  end

  def destroy
    @portfoliio_item = Portfoliio.find(params[:id])
    @portfoliio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfoliios_path, notice: 'Portfolio was successfully destroyed.' }
    end
  end
end

