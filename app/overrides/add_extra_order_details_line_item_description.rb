Deface::Override.new(
  virtual_path: "spree/shared/_order_details",
  name: "add_extra_order_details_line_item_description",
  insert_bottom: "[data-hook='order_item_description']",
  partial: "spree/shared/extra_order_details_line_item_description"
)

Deface::Override.new(
  virtual_path: "spree/admin/shared/_order_details",
  name: "add_extra_order_details_line_item_description_admin",
  insert_bottom: "[data-hook='order_details_line_item_row'] td:first",
  partial: "spree/shared/extra_order_details_line_item_description"
)

### START spree_html_invoice overrides

Deface::Override.new(
  virtual_path: "spree/admin/invoice/_line_items_invoice",
  name: "add_extra_order_details_line_item_description_admin_line_items_invoice",
  insert_bottom: "[data-hook='line_items_invoice'] td:nth-of-type(2)",
  partial: "spree/shared/extra_order_details_line_item_description"
)

Deface::Override.new(
  virtual_path: "spree/admin/invoice/_line_items_packaging_slip",
  name: "add_extra_order_details_line_item_description_admin_line_items_packaging_slip",
  insert_bottom: "[data-hook='line_items_packaging_slip'] td:nth-of-type(2)",
  partial: "spree/shared/extra_order_details_line_item_description"
)

Deface::Override.new(
  virtual_path: "spree/invoice_mailer/_line_items_invoice",
  name: "add_extra_order_details_line_item_description_mailer_line_items_invoice",
  insert_bottom: "[data-hook='line_items_invoice'] td:nth-of-type(2)",
  partial: "spree/shared/extra_order_details_line_item_description"
)

Deface::Override.new(
  virtual_path: "spree/invoice_mailer/_line_items_packaging_slip",
  name: "add_extra_order_details_line_item_description_mailer_line_items_packaging_slip",
  insert_bottom: "[data-hook='line_items_packaging_slip'] td:nth-of-type(2)",
  partial: "spree/shared/extra_order_details_line_item_description"
)
### END spree_html_invoice overrides
