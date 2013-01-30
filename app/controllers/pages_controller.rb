class PagesController < ApplicationController
before_filter :signed_in_user, only: [:admin]
  def home
    @blog=Blog.last
    @latest_news=NewsArticle.find(:all, :limit => 5, :order => "date DESC")
  end
end
