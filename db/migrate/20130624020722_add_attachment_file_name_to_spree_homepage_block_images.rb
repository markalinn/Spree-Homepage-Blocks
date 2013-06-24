class AddAttachmentFileNameToSpreeHomepageBlockImages < ActiveRecord::Migration
  def change
    add_column :spree_homepage_block_images, :attachment_file_name, :string
    add_column :spree_homepage_block_images, :attachment_content_type, :string
    add_column :spree_homepage_block_images, :attachment_file_size, :integer
    add_column :spree_homepage_block_images, :attachement_updated_at, :date
  end
end
