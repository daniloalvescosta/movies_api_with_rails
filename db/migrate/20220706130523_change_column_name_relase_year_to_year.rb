class ChangeColumnNameRelaseYearToYear < ActiveRecord::Migration[7.0]
  def change
    rename_column :movies, :release_year, :year
  end
end
