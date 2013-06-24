Deface::Override.new(:virtual_path => "spree/layouts/admin", 
                     :name => "homepage_blocks_tab", 
                     :insert_bottom => "[data-hook='admin_tabs']", 
                     :partial => "spree/admin/shared/homepage_blocks_tab")

