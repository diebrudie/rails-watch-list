class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
    redirect_to bookmark_path(@bookmark)
  end

  def destroy
    @bookmark.destroy
    redirect_to bookmark_path(@bookmark.list)
  end

  private

  def add_list
    @list = List.find(params[:list_id])
  end

  def add_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  def list_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
