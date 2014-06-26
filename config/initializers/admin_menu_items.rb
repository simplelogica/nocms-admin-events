NoCms::Admin.menu_items << {
  name: 'locations',
  url: proc { NoCms::Admin::Events::Engine.routes.url_helpers.locations_path }
}
