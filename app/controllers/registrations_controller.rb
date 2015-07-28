class RegistrationsController < Devise::RegistrationsController

  protected 

  def after_sign_up_path_for(resource)
    visitors_path
  end

  def after_inactive_sign_up_path_for(resource)
    visitors_path
  end

  private 

  def account_update_params
    params.require(:user).permit(:name)
  end

end
