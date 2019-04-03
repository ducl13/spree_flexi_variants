module Spree
  CompareLineItems.class_eval do
    def compare(_line_item, _options)
      opts = _options["ad_hoc_option_value_ids"]||[]
      opts =   opts.compact.reject{|o|o==""}
      ret = true

      if opts.present?
        ret = _line_item.ad_hoc_option_value_ids.map(&:to_s).all?{|obj|opts.include?(obj)}
      end

      ret
    end
  end
end