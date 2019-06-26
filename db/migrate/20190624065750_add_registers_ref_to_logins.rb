class AddRegistersRefToLogins < ActiveRecord::Migration[5.2]
  def change
    add_column :logins, :references, :Registers
  end
end
