class RenamefirstToTests < ActiveRecord::Migration[5.2]
  def change
    rename_column :Tests, :first, :second
  end
end
