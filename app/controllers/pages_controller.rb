class PagesController < ApplicationController
before_filter :signed_in_user, only: [:admin]

  def new
  end
  
  def home
    @blog=Blog.last
    @latest_news=NewsArticle.find(:all, :limit => 5, :order => "date DESC")
  end
  
  def about_tim
  end

  def media
  end

  def contribute
  end

  def vision
  end

  def gallery
  end

  def contact
  end
  def admin
  end
  def status_reports
  end
end
