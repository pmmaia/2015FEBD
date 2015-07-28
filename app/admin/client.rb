ActiveAdmin.register Client do
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

  index :download_links => false do
    column :company
    column :division
    column :address_01
    column :address_02
    column :city
    column :state
    actions
  end

  csv do
    column :company
    column :division
    column :address_01
    column :address_02
    column :city
    column :state
  end

  permit_params :company, :division, :address_01, :address_02, :city, :state

end
