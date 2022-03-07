class RegistrationsController < Devise::RegistrationsController
  protected

  # def after_sign_up_path_for(resource)
  #   request.referrer || root_path
  # end
end
