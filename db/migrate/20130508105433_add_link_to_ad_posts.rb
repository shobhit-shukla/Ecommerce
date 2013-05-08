class AddLinkToAdPosts < ActiveRecord::Migration
  def change
    add_column :ad_posts, :link, :string
  end
end
