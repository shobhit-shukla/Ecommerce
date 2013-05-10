class AddMrpToProducts < ActiveRecord::Migration
  def change
    add_column :products, :mrp, :integer
  end
end
