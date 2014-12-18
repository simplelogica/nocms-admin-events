require_dependency "no_cms/admin/events/application_controller"

module NoCms::Admin::Events
  class EventsController < ApplicationController

    before_filter :load_menu_section
    before_filter :load_event, only: [:edit, :update, :destroy]
    before_filter :load_sidebar, only: [:index, :new, :edit]


    def new
      @event = NoCms::Events::Event.new
    end

    def create
      @event = NoCms::Events::Event.new event_params
      if @event.save
        @nocms_logger.info(I18n.t('.no_cms.admin.events.events.create.success', title: @event), true)
        redirect_to edit_event_path(@event)
      else
        @nocms_logger.error(I18n.t('.no_cms.admin.events.events.create.error', title: @event))
        load_sidebar
        render :new
      end
    end

    def edit
      @nocms_logger.add_message :events, I18n.t('.no_cms.admin.events.events.edit.log_messages', title: @event)
    end

    def update
      if @event.update_attributes event_params
        @nocms_logger.info(I18n.t('.no_cms.admin.events.events.update.success', title: @event), true)
        redirect_to edit_event_path(@event)
      else
        @nocms_logger.error(I18n.t('.no_cms.admin.events.events.update.error', title: @event))
        load_sidebar
        render :edit
      end
    end

    def destroy
      if @event.destroy
        @nocms_logger.info(I18n.t('.no_cms.admin.events.events.destroy.success', title: @event), true)
      else
        @nocms_logger.error(I18n.t('.no_cms.admin.events.events.destroy.error', title: @event), true)
      end
      redirect_to events_path
    end

    private

    def load_menu_section
      @current_section = 'events'
    end

    def load_event
      @event = NoCms::Events::Event.friendly.find(params[:id])
    end

    def load_sidebar
      @events = NoCms::Events::Event.all
    end

    def event_params
      event_params = params.require(:event).permit(:title, :slug, :description, :location_id, :starts_at, :ends_at)
    end

  end
end
