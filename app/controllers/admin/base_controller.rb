module Admin
  class BaseController < ApplicationController
    before_filter :verify_admin

    layout 'admin'

    def index

    end

    def verify_admin
      redirect_to root_url unless current_user.admin?
    end
  end
end