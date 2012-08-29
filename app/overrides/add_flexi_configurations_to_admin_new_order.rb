Deface::Override.new(:virtual_path => 'spree/admin/orders/_add_product',
                     :name => 'add_flexi_configurations_to_admin_new_order',
                     :insert_after => '[data-hook="add_button"]',
                     :partial => 'spree/admin/orders/flexi_configurations')
