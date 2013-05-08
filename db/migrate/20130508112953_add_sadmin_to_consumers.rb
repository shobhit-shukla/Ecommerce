class AddSadminToConsumers < ActiveRecord::Migration
  def change
    add_column :consumers, :sadmin, :boolean, default: false
  end
end
