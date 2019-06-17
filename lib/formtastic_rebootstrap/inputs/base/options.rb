module FormtasticRebootstrap
  module Inputs
    module Base
      module Options

        def input_options
          options.except(*FormtasticRebootstrap_options)
        end

        def FormtasticRebootstrap_options
          [:priority_countries, :priority_zones, :member_label, :member_value, :collection, :required, :label, :as, :hint, :input_html, :value_as_class, :class]
        end
      end
    end
  end
end

