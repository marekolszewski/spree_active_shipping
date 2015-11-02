require_dependency 'spree/calculator'

module Spree
  module Calculator::Shipping
    module Fedex
      class InternationalEconomy < Spree::Calculator::Shipping::Fedex::Base
        def self.description
          I18n.t("fedex.intl_economy")
        end

        protected
        def max_weight_for_country(country)
          return 36
        end
      end
    end
  end
end
