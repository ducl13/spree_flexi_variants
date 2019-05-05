module Spree
  CompareLineItems.class_eval do
    def compare(_line_item, _options)
      opts = _options["ad_hoc_option_value_ids"]||[]
      opts =   opts.compact.reject{|o|o==""}
      ret = true

      if opts.present?
        ret = (_line_item.ad_hoc_option_value_ids.empty? ? false : _line_item.ad_hoc_option_value_ids.map(&:to_i).all?{|obj|opts.include?(obj)})
      else
        ret = false unless _line_item.ad_hoc_option_value_ids.empty?
      end

      ret
    end
  end
end