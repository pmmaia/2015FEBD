ActiveAdmin.register Record do
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
  active_admin_importable

  index :download_links => false do
    column :sampleid
    column :finalvalue
    column :soil
    column :water
    actions
  end

  csv do
    column :sampleid
    column :finalvalue
    column :soil
    column :water
  end

  form do |f|
    f.inputs "Recorded sample" do
      f.input :sampleid
      f.input :finalvalue
      f.input :soil
      f.input :water
    end
    f.actions
  end

  permit_params :finalvalue, :soil, :water
end
