require 'spec_helper'

describe "Pages" do
	subject { page }


	shared_examples_for "all Pages" do
		it { should have_selector('title', text: full_title(page_title)) }
		it { should have_button('Sign Up') }
	end


	describe "Home Page" do
		before { visit root_path }
		let(:page_title) { '' }

		it_should_behave_like "all Pages"
		it { should_not have_selector('title', 'Home') }
	end

	describe "About Tim page" do
		before { visit about_tim_path }
		let(:page_title) { 'About Tim' }
		it_should_behave_like "all Pages"
	end

	describe "Media page" do
		before { visit media_path }
		let(:page_title) { 'Media' }
		it_should_behave_like "all Pages"
	end

	describe "Contribute page" do
		before { visit contribute_path }
		let(:page_title) { 'Contribute' }
		it_should_behave_like "all Pages"
	end

	describe "Photo page" do
		before { visit photos_path }
		let(:page_title) { 'Photos' }
		it_should_behave_like "all Pages"
	end

	describe "Gallery page" do
		before { visit gallery_path }
		let(:page_title) { 'Gallery' }
		it_should_behave_like "all Pages"
	end

	describe "Contact page" do
		before { visit contact_path }
		let(:page_title) { 'Contact' }
		it_should_behave_like "all Pages"
	end

	it "should have the right links on the layout" do
    visit root_path 
    click_link "About Tim"
    page.should have_selector('title', text: full_title("About Tim")) 
    click_link "Media"
    page.should have_selector 'title', text: full_title('Media') 
    click_link "Contribute"
   	page.should have_selector 'title', text: full_title('Contribute') 
     click_link "Photos"
    page.should have_selector 'title', text: full_title('Photos') 
    click_link "Gallery"
    page.should have_selector 'title', text: full_title('Gallery') 
    click_link "Contact"
    page.should have_selector 'title', text: full_title('Contact') 
    end
end
