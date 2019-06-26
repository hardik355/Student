class AddlastnameToWelcomes < ActiveRecord::Migration[5.2]
  def change
    add_column :Welcomes, :last_name, :string
    add_column :Welcomes, :email, :string
    add_column :Welcomes, :user, :string
    add_column :Welcomes, :password, :string
  end
end
