class AddRememberTokenToConsumers < ActiveRecord::Migration
  def change
    add_column :consumers, :remember_token, :string
    add_index  :consumers, :remember_token
  end
end
