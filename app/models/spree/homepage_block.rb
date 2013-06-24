module Spree
  class HomepageBlock < ActiveRecord::Base
    has_many :homepage_block_images
    validates_presence_of :name
    attr_accessible :name, :width, :height, :flotation, :left_margin, :right_margin, :top_margin, :bottom_margin, :content, :position
    
    default_scope :order => "#{self.table_name}.position"
  end
end