class ApplicationController < ActionController::Base
  include SessionsHelper
  include ContributionsHelper

    protect_from_forgery

def after_sign_out_path_for(resource_or_scope)
root_path
end
end
