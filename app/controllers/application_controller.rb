class ApplicationController < ActionController::Base
  include SessionsHelper
  include ContributionsHelper

    protect_from_forgery
def set_layout_variables
  	@blog=Blog.last
  end
end
