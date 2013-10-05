class ApplicationController < ActionController::Base
  include SessionsHelper
  include ContributionsHelper
  before_filter :set_layout_variables

    protect_from_forgery

def after_sign_out_path_for(resource_or_scope)
root_path
end
end

def set_layout_variables
        @first_carousel_picture=CarouselPicture.order("RANDOM()").first
        @carousel_pictures = CarouselPicture.find(:all, :conditions => ["id != #{@first_carousel_picture.id}"])  
      end