class AddStoreIdToSubCategories < ActiveRecord::Migration
  def change
    add_column :sub_categories, :store_id, :integer
  end
end
