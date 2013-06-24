class AddContentToSpreeHomepageBlocks < ActiveRecord::Migration
  def change
    add_column :spree_homepage_blocks, :content, :text
  end
end
