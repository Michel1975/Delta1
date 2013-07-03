class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.string :street
      t.string :postal_code
      t.string :city
      t.string :gender
      t.references :merchant

      t.timestamps
    end
    add_index :members, :merchant_id
  end
end
