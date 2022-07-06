class RemovingColumnsFromMovie < ActiveRecord::Migration[7.0]
  def change
    remove_column :movies, :show_id
    remove_column :movies, :movie_type
    remove_column :movies, :director
    remove_column :movies, :cast
    remove_column :movies, :date_added
    remove_column :movies, :rating
    remove_column :movies, :duration
    remove_column :movies, :listed_in
  end
end
