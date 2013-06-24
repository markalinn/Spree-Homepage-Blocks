class CreateSpreeHomepageBlocks < ActiveRecord::Migration
  def up
    create_table :spree_homepage_blocks do |t|
      t.string :name
      t.integer :width
      t.integer :height
      t.string :flotation
      t.integer :left_margin
      t.integer :right_margin
      t.integer :top_margin
      t.integer :bottom_margin
      t.integer :position
      
      t.timestamps
    end
  end

  def down
    drop_table :spree_homepage_blocks
  end
end
