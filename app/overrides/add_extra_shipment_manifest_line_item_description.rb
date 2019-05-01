### START spree_custom overrides

Deface::Override.new(
  virtual_path: 'spree/admin/orders/_shipment_manifest',
  name: 'add_extra_shipment_manifest_line_item_description',
  insert_bottom: "[data-hook='item_shipping_manifest'] td:nth-of-type(2)",
  partial: 'spree/shared/extra_shipment_manifest_line_item_description'
)

### END spree_custom overrides
