class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    (resource.sign_in_count > 1 || resource.organisation) ? root_path : welcome_path
  end
end
