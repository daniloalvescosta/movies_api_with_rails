class RenameColumnTypeToMovieType < ActiveRecord::Migration[7.0]
  def change
    rename_column :movies, :type, :movie_type
  end
end
