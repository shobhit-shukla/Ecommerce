class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :content
      t.integer :category_id

      t.timestamps
    end
    add_index :products, [:category_id, :created_at]
  end
end
