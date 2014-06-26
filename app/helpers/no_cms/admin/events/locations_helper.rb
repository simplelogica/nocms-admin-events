module NoCms
  module Admin
    module Events
      module LocationsHelper
        def location_listing_item_classes item, current
          classes = []
          classes << 'current' if current == item
          classes
        end
      end
    end
  end
end
