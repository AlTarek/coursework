require 'spec_helper'

describe "Static Pages" do
	describe "Index Page" do
		it "should have the h1 'Sample App'" do
			visit '/static_pages/index'
   			page.should have_selector('h1', :text => 'Sample App')
   		end

   		it "should have the title 'Home'" do
			visit '/static_pages/index'
			page.should have_selector('title', :text => 'Ruby on Rails Sample App | Home')
		end
	end

	describe "About Page" do
		it "should have the h1 'Sample App'" do
			visit '/static_pages/about'
   			page.should have_selector('h1', :text => 'Sample App')
   		end
   		it "should have the title 'About'" do
			visit '/static_pages/about'
			page.should have_selector('title', :text => 'Ruby on Rails Sample App | About')
		end
	end

	describe "Contact Page" do
		it "should have the h1 'Sample App'" do
			visit '/static_pages/contact'
   			page.should have_selector('h1', :text => 'Sample App')
   		end

   		it "should have the title 'Contact Us'" do
			visit '/static_pages/contact'
			page.should have_selector('title', :text => 'Ruby on Rails Sample App | Contact')
		end
	end

	describe "Help Page" do
		it "should have the h1 'Sample App'" do
			visit '/static_pages/help'
   			page.should have_selector('h1', :text => 'Sample App')
   		end

   		it "should have the title 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('title', :text => 'Ruby on Rails Sample App | Help')
		end
	end
end