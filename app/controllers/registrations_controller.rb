class RegistrationsController < ApplicationController
  def after_sign_up_path_for(resources)
    after_sign_in_path_for(resources)
  end
end
