module Admin
  class BaseController < ApplicationController
    before_action :check_if_admin

    private

  end
end