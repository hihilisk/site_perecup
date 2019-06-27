class CheckListsController < ApplicationController

  def index
    @check_lists = CheckList.all
  end

  def new
    @check_list = CheckList.new
  end

  def create
    @check_list = Check_list.create(check_list_params)
    redirect_to adverts_path(@advert)
  end

  def show
    @check_list = CheckList.find(params[:id])
  end

  def edit
    @check_list = CheckList.find(params[:id])
  end

  def update
    @check_list = CheckList.find(params[:id])
    @check_list.update(check_list_params)
  end

  def destroy
    @check_list = CheckList.find(params[:id])
    @check_list.destroy

    redirect_to check_list_url(@check_list)
  end

    private
      def check_list_params
        params.require(:check_list).permit(:id, :category_id, :spending, :condicion, :service, :painted, :body_repair, :price, :notes )
      end
end
