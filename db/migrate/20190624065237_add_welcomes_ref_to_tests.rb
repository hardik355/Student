class AddWelcomesRefToTests < ActiveRecord::Migration[5.2]
  def change
    add_reference :tests, :Welcomes, foreign_key: true
  end
end
