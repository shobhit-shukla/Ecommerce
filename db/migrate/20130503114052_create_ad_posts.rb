class CreateAdPosts < ActiveRecord::Migration
  def change
    create_table :ad_posts do |t|
      t.string :name
      t.string :description
      t.float :price

      t.timestamps
    end
  end
end
