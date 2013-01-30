class ApplicationController < ActionController::Base
  include SessionsHelper
  include ContributionsHelper

    protect_from_forgery
end
