ActiveAdmin.register MonitoringRecord do
  before_filter :skip_sidebar!, :only => :index


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  config.batch_actions = false
  menu false

  controller do
    def scoped_collection
      super.includes :activity
    end

    def index
      params[:order] = "tag_asc"
      super
    end
  end

  index :download_links => false do

    column "Date ", :activity, sortable: 'activity.date'
    column "Tag ID", :tag
    column :start_time
    column :end_time
    column "Temperature (\u2109)", :temperature
    column "Pressure (\"Hg)", :pressure
    column "Relative Humidity (%)", :relative_humidity
    column "Wind Speed (mph)", :wind_speed
    column :wind_direction
    column :measurement
    column :site_activity
    column :site_location
    actions
  end

  permit_params :tag, :start_time, :end_time, :temperature, :pressure, :relative_humidity, :wind_direction, :wind_speed, :measurement, :site_activity, :site_location, activity_attributes: []

end
