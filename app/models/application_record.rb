class ApplicationRecord < ActiveRecord::Base

  # befofe_action :configure_permitted_parameters, if: :devise_controller?
  self.abstract_class = true

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(sign_up).push(:nickname, :avatar)
  # end
end
