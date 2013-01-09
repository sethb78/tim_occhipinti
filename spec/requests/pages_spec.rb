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

	describe "Vision 2017 page" do
		before { visit vision_path }
		let(:page_title) { 'Vision For 2017' }
		it_should_behave_like "all Pages"
	end

	describe "Contact page" do
		before { visit contact_path }
		let(:page_title) { 'Contact' }
		it_should_behave_like "all Pages"
	end

	describe "Status Reports page" do
		before { visit status_reports_path }
		let(:page_title) { 'Status Reports' }
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
    click_link "Vision 2017"
    page.should have_selector 'title', text: full_title('Vision For 2017') 
    click_link "Photo Galleries"
    page.should have_selector 'title', text: full_title('Photo Galleries') 
    click_link "Contact"
    page.should have_selector 'title', text: full_title('Contact') 
    click_link "Status Reports"
    page.should have_selector "title", text: full_title('Status Reports')
    end
end
