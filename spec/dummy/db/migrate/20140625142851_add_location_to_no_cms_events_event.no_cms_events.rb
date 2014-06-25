# This migration comes from no_cms_events (originally 20140624150431)
class AddLocationToNoCmsEventsEvent < ActiveRecord::Migration
  def change
    add_reference :no_cms_events_events, :location, index: true
  end
end
