module NoCms
  module Admin
    module Events
      module EventsHelper
        def event_listing_item_classes item, current
          classes = []
          classes << 'current' if current == item
          classes
        end
      end
    end
  end
end
