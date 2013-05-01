module Admin
  class BaseController < ApplicationController
    before_filter :verify_admin
    #before_filter :verify_admin

    layout 'admin'

    def index

    end

    def logged_in?
    	redirect_to sign_in unless current_user
    	
    end

    def verify_admin
    	if current_user.nil?
      	redirect_to root_url
    	else
    		redirect_to root_url unless current_user.admin?
    	end
    end
  end
end