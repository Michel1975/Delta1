class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :title
      t.datetime :start_time
      t.text :method
      t.references :offer

      t.timestamps
    end
    add_index :promotions, :offer_id
  end
end
