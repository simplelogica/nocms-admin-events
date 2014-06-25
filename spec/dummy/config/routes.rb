Rails.application.routes.draw do

  mount NoCms::Admin::Events::Engine => "/no_cms/admin/events"
end
