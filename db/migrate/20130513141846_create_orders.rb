class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :consumer_id
      t.string :store_id
      t.float :total_price
      t.integer :zip_code
      t.string :shipping_address

      t.timestamps
    end
  end
end
