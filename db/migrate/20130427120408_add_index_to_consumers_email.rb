class AddIndexToConsumersEmail < ActiveRecord::Migration
  def change
    add_index :consumers, :email, unique: true
  end
end
