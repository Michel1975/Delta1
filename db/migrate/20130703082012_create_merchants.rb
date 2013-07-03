class CreateMerchants < ActiveRecord::Migration
  def change
    create_table :merchants do |t|
      t.string :store_name
      t.string :street
      t.string :postal_code
      t.string :city
      t.string :describtion

      t.timestamps
    end
  end
end
