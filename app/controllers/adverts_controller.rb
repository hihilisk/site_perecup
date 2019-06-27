class AdvertsController < ApplicationController
  def index
    @advert = Advert.all
  end

  def new
    @categories = Category.all
    @advert = Advert.new
    @check_list = CheckList.new
  end

  def create
    @categories = Category.all
    @advert = Advert.new(advert_params)
    @advert.check_list = CheckList.new
    if @advert.save
      redirect_to adverts_path(@advert)
    else
      render new_advert_path
    end
  end

  def show
    @advert = Advert.find(params[:id])
    @check_list = @advert.check_list
  end

  def edit
    @advert = Advert.find(params[:id])
    @categories = Category.all
    @check_list = @advert.check_list
  end

  def update
    if @advert = Advert.update(advert_params)
      redirect_to adverts_path
    else
      render edit_advert_path
    end
  end

  def destroy
    @advert = Advert.find(params[:id])
    @advert.destroy

    redirect_to adverts_path
  end

    private
      def advert_params
        params.require(:advert).permit(:category_id, :year, :seller, :phone, :url, :price, :vin, :city, :notes, :complectation, :category_id, :owners)
      end
end