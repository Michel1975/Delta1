class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.text :describtion
      t.references :merchant

      t.timestamps
    end
    add_index :offers, :merchant_id
  end
end
