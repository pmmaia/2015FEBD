ActiveAdmin.register User do
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
    column :name
    column :email
    column :role
    actions 
  end

  form do |f|
    f.inputs "User information" do
      f.input :name
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :role, as: :radio, collection: User.roles.keys
    end
    f.actions
  end

  permit_params :email , :name, :role, :password, :password_confirmation

end
