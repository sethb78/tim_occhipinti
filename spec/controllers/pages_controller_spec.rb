require 'spec_helper'

describe PagesController do

  describe "GET 'about_tim'" do
    it "returns http success" do
      get 'about_tim'
      response.should be_success
    end
  end

  describe "GET 'media'" do
    it "returns http success" do
      get 'media'
      response.should be_success
    end
  end

  describe "GET 'contribute'" do
    it "returns http success" do
      get 'contribute'
      response.should be_success
    end
  end

  describe "GET 'photo'" do
    it "returns http success" do
      get 'photo'
      response.should be_success
    end
  end

  describe "GET 'gallery'" do
    it "returns http success" do
      get 'gallery'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
  end

end
