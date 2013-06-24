module Spree
  class HomePageController < Spree::BaseController
    def index
      @homepage_blocks = HomepageBlock.all(:order => 'position')
    end
  end
end