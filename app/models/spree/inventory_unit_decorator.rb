module Spree
  InventoryUnit.class_eval do

    # Overriden from Spree Core.
    # Only want to update variants once.
    def self.assign_opening_inventory(order)
      return [] unless order.completed?

      # Here's the part we change. Group everything by variant and
      # sum up the quantities.
      order.line_items.group(:variant_id).sum(:quantity).each do |id, quantity|
        variant = Variant.find(id)
        increase(order, variant, quantity)
      end
    end
  end
end
