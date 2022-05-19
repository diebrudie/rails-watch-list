class UpdatePosterTypeInMovies < ActiveRecord::Migration[7.0]
  def change
    change_column :movies, :poster, :string
    rename_column :movies, :poster, :poster_url
  end
end
