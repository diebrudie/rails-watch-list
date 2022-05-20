class ListsController < ApplicationController
  before_action :find_resto, only: %i[show edit]
  # before_action :new_resto, only: %i[new create]

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

  private

  def find_resto
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
