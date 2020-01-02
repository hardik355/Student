class AddAuthorsToBooks < ActiveRecord::Migration[5.2]
  def change
    add_reference :Books, :Authors, foreign_key: true
  end
end
