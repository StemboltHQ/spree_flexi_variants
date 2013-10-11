Deface::Override.new(
  :virtual_path => "spree/admin/shared/_routes",
  :name => "add_variant_configurations_to_spree_routes",
  :insert_bottom => "script",
  :partial => "spree/admin/shared/flexi_variant_routes"
)
