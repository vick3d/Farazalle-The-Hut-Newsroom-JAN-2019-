# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_locale
  # before_action :redirect_if_password_empty

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  # def redirect_if_password_empty
  #   binding.pry
  #   if user_signed_in? && current_user.encrypted_password.empty?
  #     redirect_to edit_user_registration_path,
  #                 alert: 'You must change your password before logging in for the first time'
  #   end
  # end
end
