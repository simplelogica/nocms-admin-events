require_dependency "no_cms/admin/events/application_controller"

module NoCms::Admin::Events
  class LocationsController < ApplicationController

    before_filter :load_menu_section
    before_filter :load_location, only: [:edit, :update, :destroy]
    before_filter :load_sidebar, only: [:index, :new, :edit]


    def new
      @location = NoCms::Events::Location.new
    end

    def create
      @location = NoCms::Events::Location.new location_params
      if @location.save
        @nocms_logger.info(I18n.t('.no_cms.admin.events.locations.create.success', title: @location), true)
        redirect_to edit_location_path(@location)
      else
        @nocms_logger.error(I18n.t('.no_cms.admin.events.locations.create.error', title: @location))
        load_sidebar
        render :new
      end
    end

    def edit
      @nocms_logger.add_message :events, I18n.t('.no_cms.admin.events.locations.edit.log_messages', title: @location)
    end

    def update
      if @location.update_attributes location_params
        @nocms_logger.info(I18n.t('.no_cms.admin.events.locations.update.success', title: @location), true)
        redirect_to edit_location_path(@location)
      else
        @nocms_logger.error(I18n.t('.no_cms.admin.events.locations.update.error', title: @location))
        load_sidebar
        render :edit
      end
    end

    def destroy
      if @location.destroy
        @nocms_logger.info(I18n.t('.no_cms.admin.events.locations.destroy.success', title: @location), true)
      else
        @nocms_logger.error(I18n.t('.no_cms.admin.events.locations.destroy.error', title: @location), true)
      end
      redirect_to locations_path
    end

    private

    def load_menu_section
      @current_section = 'locations'
    end

    def load_location
      @location = NoCms::Events::Location.find(params[:id])
    end

    def load_sidebar
      @locations = NoCms::Events::Location.all
    end

    def location_params
      location_params = params.require(:location).permit(:name, :description, :lat, :lng)
    end

  end
end
