class AddAddressToConsumers < ActiveRecord::Migration
  def change
    add_column :consumers, :address, :string
  end
end
