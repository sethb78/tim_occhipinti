class PagesController < ApplicationController
before_filter :signed_in_user, only: [:admin]

  def new
  end
  
  def home
  end
  
  def about_tim
  end

  def media
  end

  def contribute
  end

  def photos
  end

  def gallery
  end

  def contact
  end
  def admin
  end
end
