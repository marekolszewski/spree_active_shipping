module Spree
  module Calculator::Shipping
    module Usps
      class PriorityMailInternationalFlatRateEnvelope < Spree::Calculator::Shipping::Usps::Base
        def self.geo_group
          :international
        end

        def self.service_code
          "#{SERVICE_CODE_PREFIX[geo_group]}:16" #Priority Mail {0}™ Flat Rate Envelope
        end

        def self.description
          I18n.t("usps.priority_mail_international_flat_rate_envelope")
        end

        protected
        # weight limit in ounces or zero (if there is no limit)
        def max_weight_for_country(country)
          return 36
        end
      end
    end
  end
end
