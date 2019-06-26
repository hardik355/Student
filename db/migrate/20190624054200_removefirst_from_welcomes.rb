class RemovefirstFromWelcomes < ActiveRecord::Migration[5.2]
  def change
    remove_column :Welcomes, :lasename, :string
  end
end
