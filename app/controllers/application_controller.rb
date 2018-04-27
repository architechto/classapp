class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include DefaultPageContent

  before_action :set_source

  def set_source
  	session[:source] = params[:q] if params[:q]
  end 

  before_action :set_title

  def set_title
  	@page_title = "ClassApp | CC"
  end

end
