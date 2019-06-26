class CreateRegisters < ActiveRecord::Migration[5.2]
  def change
    create_table :registers do |t|
      t.text :first_name
      t.text :last_name
      t.string :email
      t.text :city
      t.text :area
      t.integer :mobile_no
      t.string :password

      t.timestamps
    end
  end
end
