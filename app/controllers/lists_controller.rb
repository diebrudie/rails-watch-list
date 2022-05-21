class ListsController < ApplicationController
  before_action :find_list, only: %i[show edit destroy]

  def index
    @lists = List.all
  end

  def show
    @bookmark = Bookmark.new
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to list_path(@list)
  end

  def edit; end

  def destroy
    @list.destroy
    redirect_to lists_path, status: :see_other
  end

  private

  def find_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
