class AddPhoneNoToConsumers < ActiveRecord::Migration
  def change
    add_column :consumers, :phone_no, :integer
  end
end
