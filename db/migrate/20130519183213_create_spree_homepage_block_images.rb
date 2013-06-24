class CreateSpreeHomepageBlockImages < ActiveRecord::Migration
  def up
    create_table :spree_homepage_block_images do |t|
      t.references :homepage_block
      t.string :alt
      t.integer :attachment_width
      t.integer :attachment_height
      t.string :destination_url
      t.integer :position
      
      t.timestamps
    end
  end

  def down
    drop_table :spree_homepage_block_images
  end
end
