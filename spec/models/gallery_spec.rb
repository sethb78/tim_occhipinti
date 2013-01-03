require 'spec_helper'

describe Gallery do
  before { @gallery=Gallery.new(name: "Tims party", description: "tims gala") }
    subject { @gallery }

  it { should respond_to(:name) }
  it { should respond_to(:description) }
  it { should respond_to(:photos) }

  describe "when gallery name is not present" do
    before { @gallery.name = nil }
    it { should_not be_valid }
  end

  describe "photos association" do
    before { @gallery.save }
   	let!(:photo1) do 
     	FactoryGirl.create(:photo, gallery: @gallery)
   	end
	
    it "should destroy associated photos" do
	   	photos = @gallery.photos.dup
	   	@gallery.destroy
	   	photos.should_not be_empty
	   	photos.each do |photo|
	   		Photo.find_by_id(photo.id).should be_nil
   		end
   	end
  end
end
