class AddfirstToTests < ActiveRecord::Migration[5.2]
  def change
    add_column :Tests, :first, :string
    add_column :Tests, :last, :string
  end
end

