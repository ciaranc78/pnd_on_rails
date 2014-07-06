require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("PND Ireland | Home")
    end

    it "should have the content 'PND'" do
      visit '/static_pages/home'
      expect(page).to have_content('PND')
    end
  end

  describe "Contact page" do
  	it "should have the content 'Contact Us'" do
  	  visit '/static_pages/contact' 
  	  expect(page).to have_content('Contact Us')
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    
  	it "should have the content 'About PND Ireland'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About PND Ireland')
  	end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

  	it "should have the content 'Help'" do
  	  visit '/static_pages/help' 
  	  expect(page).to have_content('Help')
    end
  end

end