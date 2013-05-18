class AddPasswordResetToConsumers < ActiveRecord::Migration
  def change
    add_column :consumers, :password_reset_token, :string
    add_column :consumers, :password_reset_sent_at, :datetime
  end
end
