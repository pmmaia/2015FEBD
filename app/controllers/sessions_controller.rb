class SessionsController < Devise::SessionsController
  protected

  def after_sign_in_path_for(resource)
    # visitors_path
    test12_dashboard_path
  end

  def after_inactive_sign_in_path_for(resource)
    # visitors_path
    test12_dashboard_path
  end

end
