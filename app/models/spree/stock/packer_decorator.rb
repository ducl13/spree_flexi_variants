Spree::Stock::Packer.class_eval do
  def default_package
    package = Spree::Stock::Package.new(stock_location)

    # Override: inventory_units/variant_id are no longer unqiue.  Can not use index_by(&:variant_id) in original code.
    inventory_units.each do |inventory_unit|
      variant = Spree::Variant.find(inventory_unit.variant_id)
      unit = inventory_unit.dup # Can be used by others, do not use directly
      if variant.should_track_inventory?
        next unless stock_location.stocks? variant

        on_hand, backordered = stock_location.fill_status(variant, unit.quantity)
        package.add(InventoryUnit.split(unit, backordered), :backordered) if backordered.positive?
        package.add(InventoryUnit.split(unit, on_hand), :on_hand) if on_hand.positive?
      else
        package.add unit
      end
    end

    package
  end
end
