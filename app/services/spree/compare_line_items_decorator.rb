module Spree
  CompareLineItems.class_eval do
    def compare(_line_item, _options)
		if  _options["ad_hoc_option_value_ids"].present?
        	_line_item.ad_hoc_option_value_ids.map(&:to_s) == _options["ad_hoc_option_value_ids"]
		end
    end
  end
end