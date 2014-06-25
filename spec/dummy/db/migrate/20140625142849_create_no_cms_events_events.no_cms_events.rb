# This migration comes from no_cms_events (originally 20140624115121)
class CreateNoCmsEventsEvents < ActiveRecord::Migration
  def change
    create_table :no_cms_events_events do |t|
      t.datetime :starts_at
      t.datetime :ends_at

      t.timestamps
    end

    create_table :no_cms_events_event_translations do |t|

      t.belongs_to :no_cms_events_event, index: { name: 'index_no_cms_events_event_translations_on_event_id' }
      t.string :locale
      t.string :title
      t.text :description

    end
  end
end
