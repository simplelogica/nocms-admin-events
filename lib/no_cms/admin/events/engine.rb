module NoCms
  module Admin
    module Events
      class Engine < ::Rails::Engine
        isolate_namespace NoCms::Admin::Events
      end
    end
  end
end
