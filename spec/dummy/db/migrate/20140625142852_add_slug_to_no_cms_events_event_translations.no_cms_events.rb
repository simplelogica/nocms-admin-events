# This migration comes from no_cms_events (originally 20140625133038)
class AddSlugToNoCmsEventsEventTranslations < ActiveRecord::Migration
  def change
    add_column :no_cms_events_event_translations, :slug, :string
  end
end
