class AddProfileIdToSubCategories < ActiveRecord::Migration
  def change
    add_column :sub_categories, :profile_id, :integer
  end
end
