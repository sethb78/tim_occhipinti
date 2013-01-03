require 'spec_helper'

describe "Gallery pages" do

  describe "gallery page" do
    let(:gallery) { FactoryGirl.create(:gallery) }
    let!(:p1) { FactoryGirl.create(:photo, gallery: gallery, image: "Foo") }
    let!(:p2) { FactoryGirl.create(:photo, gallery: gallery, image: "Bar") }

    before { visit gallery_path(gallery) }

    it { should have_selector('h1',    text: gallery.name) }
    it { should have_selector('title', text: gallery.name) }

    describe "microposts" do
      it { should have_content(m1.image) }
      it { should have_content(m2.image) }
      it { should have_content(gallery.microposts.count) }
    end
  end
end