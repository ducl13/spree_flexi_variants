Spree::Stock::Prioritizer.class_eval do
  # Override to add ad_hoc_option_values hash as well
  def hash_item(item)
    shipment = item.inventory_unit.shipment
    variant  = item.inventory_unit.variant
    ad_hoc_option_values = item.inventory_unit.line_item.ad_hoc_option_values

    if shipment.present?
      current_hash = variant.hash ^ shipment.hash
    else
      current_hash = variant.hash
    end

    if ad_hoc_option_values.present?
      current_hash ^ ad_hoc_option_values.hash
    else
      current_hash
    end
  end
end
