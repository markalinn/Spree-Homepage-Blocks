module Spree
  module Admin
    class HomepageBlockImagesController < ResourceController
      
      before_filter :find_homepage_block
      create.before :set_homepage_block
      update.before :set_homepage_block
      
      def index
        @homepage_block_images = @homepage_block.homepage_block_images
      end
      
      def update_positions
        params[:positions].each do |id, index|
          HomepageBlockImage.update_all(['position=?', index], ['id=?', id])
        end
    
        respond_to do |format|
          format.js  { render :text => 'Ok' }
        end
      end
    private
    
      def find_homepage_block
        @homepage_block = HomepageBlock.find(params[:homepage_block_id])
      end
      
      def set_homepage_block
        @homepage_block_image.homepage_block = @homepage_block
      end
      
      def location_after_save
        admin_homepage_block_homepage_block_images_url(@homepage_block)
      end

      def location_after_delete
        admin_homepage_block_homepage_block_images_url(@homepage_block)
      end

    end
  end
end
