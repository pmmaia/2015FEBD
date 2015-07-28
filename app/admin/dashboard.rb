ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: "Live Monitoring Dashboard"do # proc{ I18n.t("active_admin.dashboard") } do
    # div class: "blank_slate_container", id: "dashboard_default_message" do
    #  span class: "blank_slate" do
    #   span I18n.t("active_admin.dashboard_welcome.welcome")
    #   small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #  end
    # end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
     columns do
       column do
         panel "CLIENT" do

           table_for Client.last(1) do 
             column :company
             column :division
             column :city
           end
         end
       end

       column do
         panel "PROJECT" do

           table_for Project.last(3) do 
             column "Project Number", :number
             column "Project Name", :name
             column "Projet Location", :location

           end
         end
       end

     end

     columns do
       column do
         panel "MONITORING ACTIVITIES" do

           table_for Activity.last(3) do 
             column "Date", :date
             column "Recored By", :recorded_by
             column "Equipment", :equipment
             column "Monitoring Parameter", :monitoring_parameter
             column "Action Level", :action_level
             column "Weather Condition", :weather

           end
         end
       end

     end

     columns do
       column do
         panel "MONITORING RECORDS" do

           table_for MonitoringRecord.last(20) do 
             column "TAG ID", :tag
             column "Start Time", :start_time
             column "End Time", :end_time
             column "Temperature (\u2109)", :temperature
             column "Pressure (\"Hg)", :pressure
             column "Relative Humidity (%)", :relative_humidity
             column "Wind Speed (mph)", :wind_speed
             column "Wind Direction", :wind_direction
             column "Measurement", :measurement
             column "Site Activity", :site_activity
             column "Site Location", :site_location

           end
         end
       end

     end

  end # content
end
