Rails.application.routes.draw do
  mount NoCms::Admin::Engine => "/admin"
  mount NoCms::Admin::Events::Engine => "/no_cms/admin/events"
  mount NoCms::Events::Engine => "/events"
end
