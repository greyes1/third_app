require 'spec_helper'

describe "StaticPages" do

  subject{page}

  describe "Home Page" do

    before {visit root_path}

    it {page.should have_selector("h1", text: 'Home Page')}
    it {page.should have_selector("title", text: 'Third App')}
  end

  describe "Help Page" do

    before {visit help_path}

    it {page.should have_selector("h1", text: 'Help Page')}
    it {page.should have_selector("title", text: 'Help Page')}
  end

  describe "About Us" do
    
    before {visit root_path}

    it {page.should have_selector("h1", text: 'About Us')}
    it {page.should have_selector("title", text: 'About Us')}
  end

  describe "About Us Page" do

    before {visit contact_path}

    it {page.should have_selector("h1", text: 'Contact Us')}
    it {page.should have_selector("title", text: 'Contact Us')} 
  end
  it "should have the correct links" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: 'About Us'
    click_link "Help"
    page.should have_selector 'title', text: 'Help'
    click_link "Contact"
    page.should have_selector 'title', text: 'Contact'
    click_link "Home"
    click_link "Sign up now!"
    page.should have_selector 'title', text: 'Sign up'
  end
end