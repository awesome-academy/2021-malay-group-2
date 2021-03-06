class ApplicationController < ActionController::Base
  before_action :set_locale
  protect_from_forgery with: :exception
  include SessionsHelper

  def set_locale
      I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options = {})
      { locale: I18n.locale }.merge options
  end

  private
end
