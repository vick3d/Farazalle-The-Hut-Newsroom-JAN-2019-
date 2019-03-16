class RegistrationsController < Devise::RegistrationsController

  def create
    # get paid first before we actually create the user
    random_password = [*('a'..'z'),*('0'..'9')].shuffle[0,6].join
    build_resource(sign_up_params.merge(password: random_password))

    resource.save

    yield resource if block_given?
    if resource.persisted?
      if resource.active_for_authentication?
        set_flash_message! :notice, :signed_up
        sign_up(resource_name, resource)
        respond_with resource, location: after_sign_up_path_for(resource)
      else
        set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      set_minimum_password_length
      respond_with resource
    end

  end

end