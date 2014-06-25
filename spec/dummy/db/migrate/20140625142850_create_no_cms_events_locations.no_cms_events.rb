# This migration comes from no_cms_events (originally 20140624145055)
class CreateNoCmsEventsLocations < ActiveRecord::Migration
  def change
    create_table :no_cms_events_locations do |t|
      t.float :lat
      t.float :lng

      t.timestamps
    end

    create_table :no_cms_events_location_translations do |t|

      t.belongs_to :no_cms_events_location, index: { name: 'index_nocms_events_location_translations_on_location_id' }
      t.string :locale
      t.string :name
      t.text :description

    end
  end
end
