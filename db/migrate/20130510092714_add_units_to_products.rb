class AddUnitsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :units, :string
  end
end
