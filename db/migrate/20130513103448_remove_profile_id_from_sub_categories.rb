class RemoveProfileIdFromSubCategories < ActiveRecord::Migration
  def up
    remove_column :sub_categories, :profile_id
  end

  def down
    add_column :sub_categories, :profile_id, :integer
  end
end
