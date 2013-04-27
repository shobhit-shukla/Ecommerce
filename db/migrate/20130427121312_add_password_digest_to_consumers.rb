class AddPasswordDigestToConsumers < ActiveRecord::Migration
  def change
    add_column :consumers, :password_digest, :string
  end
end
