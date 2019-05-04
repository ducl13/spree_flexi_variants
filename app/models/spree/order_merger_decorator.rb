module Spree
  OrderMerger.class_eval do
    
    # Compare the line item of the other order with mine.
    # Make sure you allow any extensions to chime in on whether or
    # not the extension-specific parts of the line item match
    def find_matching_line_item(other_order_line_item)
      order.line_items.detect do |my_li|
        my_li.variant == other_order_line_item.variant &&
          Spree::Dependencies.cart_compare_line_items_service.constantize.new.call(order: order,
                                                                                   line_item: my_li,
                                                                                   options: other_order_line_item.serializable_hash.merge("ad_hoc_option_value_ids" => other_order_line_item.ad_hoc_option_value_ids)).value
      end
    end

  end
end
