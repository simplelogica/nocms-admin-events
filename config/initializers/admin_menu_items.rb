NoCms::Admin.menu_items << {
  name: 'events_root',
  url: proc { NoCms::Admin::Events::Engine.routes.url_helpers.events_path },
  children: [
    {
      name: 'events',
      url: proc { NoCms::Admin::Events::Engine.routes.url_helpers.events_path }
    },{
      name: 'locations',
      url: proc { NoCms::Admin::Events::Engine.routes.url_helpers.locations_path }
    }
  ]
}
