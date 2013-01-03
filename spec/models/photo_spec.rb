require 'spec_helper'

describe Photo do

  let(:gallery) { Gallery.create(name: "Tims Party", description: 'Tims gala') }
  before { @photo = gallery.photos.build(image: "lorem ipsum") }

  subject { @photo }

  it { should respond_to(:image) }
  it { should respond_to(:description) }
  it { should respond_to(:gallery_id) }
  its(:gallery) { should == gallery }

  it { should be_valid }

  describe "accessible attributes" do
    it "should not allow access to gallery_id" do
      expect do
        Photo.new(gallery_id: gallery.id)
      end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
    end   
  end
  
  describe "when gallery_id is not present" do
    before { @photo.gallery_id = nil }
    it { should_not be_valid }
  end

  describe "with blank content" do
    before { @photo.image = " " }
    it { should_not be_valid }
  end
end

