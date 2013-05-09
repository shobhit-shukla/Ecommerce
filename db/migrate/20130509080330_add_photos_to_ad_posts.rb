class AddPhotosToAdPosts < ActiveRecord::Migration
 def self.up
      add_column :ad_posts, :photo_file_name,    :string
      add_column :ad_posts, :photo_content_type, :string
      add_column :ad_posts, :photo_file_size,    :integer
      add_column :ad_posts, :photo_updated_at,   :datetime
  end

  def self.down
     remove_column :ad_posts, :photo_file_name
     remove_column :ad_posts, :photo_content_type
     remove_column :ad_posts, :photo_file_size
     remove_column :ad_posts, :photo_updated_at
  end 
end 
