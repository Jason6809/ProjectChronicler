class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :full_name
      t.string :phone_num
      t.string :shop_name
      t.string :ic_no
      t.decimal :temp, precision: 3, scale: 1

      t.timestamps
    end
  end
end
