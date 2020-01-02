class AddbooknameToBook < ActiveRecord::Migration[5.2]
  def change
    add_column :Books, :bookname, :string
  end
end
